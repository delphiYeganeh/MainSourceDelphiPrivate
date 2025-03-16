unit MakeInputAndExp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, DBActns, ActnList, ImgList, ActnMan,
  Word2000, OleServer, Yeganeh_Word,office2000;

type

  TFrMakeInputAndExp = class(TForm)
    Sample: TADODataSet;
    DSample: TDataSource;
    Panel1: TPanel;
    Button4: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    YDBG: TYDBGrid;
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Fields: TADODataSet;
    FieldsID: TAutoIncField;
    FieldsTableID: TWordField;
    FieldsFieldName: TStringField;
    FieldsDescription: TStringField;
    FieldsIsWhere: TBooleanField;
    FieldsISString: TBooleanField;
    FieldsIsLike: TBooleanField;
    FieldsEveryLike: TBooleanField;
    FieldsVisibleInGrid: TBooleanField;
    TabSheet3: TTabSheet;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    NewPage: TCheckBox;
    GetValueInNull: TCheckBox;
    ReplaceInHeader: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Label4: TLabel;
    Button6: TButton;
    Button2: TButton;
    Yeganeh_Word: TYeganeh_Word;
    WordApplication: TWordApplication;
    WordDocument: TWordDocument;
    procedure MakePanelFilter(Control:TWinControl);
    procedure openFields;
    procedure FormShow(Sender: TObject);
    procedure FillReport;
    procedure SetGrid;
    procedure CreateWhereEdits;
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Yeganeh_WordNeedDataBaseField(FieldDescription: WideString;
      var fieldName: WideString);
    procedure Yeganeh_WordNeedTextOnNull(FieldDescription: WideString;
      var fieldValue: WideString);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableName    :string ;
    TableDescription:string;
    TableID:integer;
    Connection:TADOConnection;

  end;

var
  FrMakeInputAndExp: TFrMakeInputAndExp;

  const NumberOfColumns=2;
        EditLenght=150;
        HorSpaces=10;
        VerSpaces=30;


implementation

uses Dmu;
{$R *.dfm}
var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    Edits:array[0..199] of TDBEdit;

procedure TFrMakeInputAndExp.openFields;
begin
 with Fields do
  begin
   Close;
   Parameters.ParamByName('@tableid').Value:=TableID;
   Open;
  end;
end;

procedure TFrMakeInputAndExp. MakePanelFilter(Control:TWinControl);
 var
Labels:array[0..199] of TLabel;
  k: byte;
  EditTop,EditLeft,SpaceForOneField,
  EditStartLeft,EditStartTop:integer;
begin

 SpaceForOneField:=((Control.Width-HorSpaces)  div NumberOfColumns);
 LabelLength:=SpaceForOneField-EditLenght-HorSpaces;
 EditStartLeft:=Control.Width-SpaceForOneField;
 EditStartTop:=5;
 k:=0;


 with Fields do
  begin
   NumberOfRows:=RecordCount div NumberOfColumns;
   if RecordCount mod NumberOfColumns<>0 then inc(NumberOfRows);

   if PageControl1.Height<NumberOfRows*VerSpaces+40 then       //
       PageControl1.Height:=NumberOfRows*VerSpaces+40;

     EditLeft:=EditStartLeft;
     Edittop:=EditStartTop;

   while not eof do
    begin
       Labels[k]:=TLabel.Create(self);
       Labels[k].Caption:=FieldsDescription.AsString;
       Labels[k].Parent:=Control;

       Edits[k]:=TDBEdit.Create(self);
       Edits[k].Parent:=Control;
       Edits[k].DataField:=FieldsFieldName.AsString;
       Edits[k].DataSource:=DSample;

       if  EditLeft<HorSpaces then
          begin
            EditLeft:=EditStartLeft;
            EditTop:=EditTop+VerSpaces;
          end;

       Labels[k].Left:=EditLeft+EditLenght+5;
       Labels[k].Top:=EditTop+3;

       Edits[k].Left:=EditLeft;
       Edits[k].Width:=EditLenght;
       Edits[k].Top:=EditTop;

       EditLeft:=EditLeft-SpaceForOneField;
       inc(k);
       next;
    end;
  end;
 NumberOfFields:=k;
end;

procedure TFrMakeInputAndExp.FillReport;
begin
 with Sample do
  begin
   Close;
   CommandText:='select top 10 * from '+TableName;
   Open;
  end;
end;

procedure TFrMakeInputAndExp.SetGrid;
 var i: byte;
begin
  with Fields,YDBG,Columns do
   begin
    for i:=0 to Count-1 do
     begin
       if Locate('FieldName',Items[i].FieldName,[]) then
          begin
           Items[i].Title.Caption:=FieldsDescription.AsString;
           Items[i].Visible:=FieldsVisibleInGrid.AsBoolean;
           if not FieldsISString.AsBoolean then
            Items[i].width:=30
           else
           if FieldsEveryLike.AsBoolean then
            Items[i].Width:=130
           else
            Items[i].Width:=80;
          end;
     end;
   end;
end;

procedure TFrMakeInputAndExp.FormShow(Sender: TObject);
begin
 Fields.Connection:=Connection;
 Sample.Connection:=Connection;
 Caption:=' ÂÌÂ ê“«—‘ «“'+TableDescription;
 openFields;
 CreateWhereEdits;
 FillReport;
 SetGrid;
end;

procedure TFrMakeInputAndExp.CreateWhereEdits;
begin
 MakePanelFilter(TabSheet1);

end;

procedure TFrMakeInputAndExp.Button4Click(Sender: TObject);
begin
close;

end;

procedure TFrMakeInputAndExp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrMakeInputAndExp.DataSetDelete1Execute(Sender: TObject);
begin
  if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)<>mryes then
   exit;
end;

procedure TFrMakeInputAndExp.Button2Click(Sender: TObject);
 var i: byte;
begin
    DM.SaveTemplateToFile;
    Yeganeh_Word.NewPage:=NewPage.Checked;
    Yeganeh_Word.ReplaceInHeader:=ReplaceInHeader.Checked;
    Sample.Last;
    Sample.Prior;
    Yeganeh_Word.PasteRecords;
with WordApplication.Selection,InlineShapes do
 begin
  WholeStory;
  for i:= 1 to Count do
    begin
       Item(i).LockAspectRatio := msoFalse;
       Item(i).Height := WordApplication.CentimetersToPoints(StrToFloat(Edit1.Text));
       Item(i).Width := WordApplication.CentimetersToPoints(StrToFloat(Edit2.Text));
    end;
 end;
    WordApplication.Disconnect;
    ShowMessage('»« „Ê›ﬁÌ  «‰Ã«„ ‘œ');

end;

procedure TFrMakeInputAndExp.FormCreate(Sender: TObject);
begin
  with dm.LetterTemplate do if not Active then Open;
 DBLookupComboBox2.KeyValue:=dm.GetSystemValue(27);
 NewPage.Checked:=dm.GetSystemValue(28);
 GetValueInNull.Checked:=dm.GetSystemValue(29);
 ReplaceInHeader.Checked:=dm.GetSystemValue(30);
 Edit1.Text:=dm.GetSystemValue(31);
 Edit2.Text:=dm.GetSystemValue(32);

end;

procedure TFrMakeInputAndExp.Yeganeh_WordNeedDataBaseField(
  FieldDescription: WideString; var fieldName: WideString);
begin
 with Fields do
  if Locate('Description',FieldDescription,[]) then
   fieldName:=FieldsFieldName.AsString;

end;

procedure TFrMakeInputAndExp.Yeganeh_WordNeedTextOnNull(
  FieldDescription: WideString; var fieldValue: WideString);
 var s: string;
  
begin
 if GetValueInNull.Checked then
  if InputQuery(FieldDescription,FieldDescription,s) then
     fieldValue:=s;

end;

procedure TFrMakeInputAndExp.Button6Click(Sender: TObject);
begin
 dm.SetSystemValue(27,DBLookupComboBox2.KeyValue);
 dm.SetSystemValue(28,NewPage.Checked);
 dm.SetSystemValue(29,GetValueInNull.Checked);
 dm.SetSystemValue(30,ReplaceInHeader.Checked);
 dm.SetSystemValue(31,Edit1.Text);
 dm.SetSystemValue(32,Edit2.Text);
end;

end.
