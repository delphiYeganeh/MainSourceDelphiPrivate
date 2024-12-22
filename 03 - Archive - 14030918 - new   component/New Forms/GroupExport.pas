unit GroupExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, Yeganeh_Word, Word2000, OleServer,
  WordXP;

type

  TFrMakeGroupExport = class(TForm)
    Sample: TADODataSet;
    DSample: TDataSource;
    Fields: TADOStoredProc;
    FieldsID: TAutoIncField;
    FieldsTableID: TWordField;
    FieldsFieldName: TStringField;
    FieldsDescription: TStringField;
    FieldsISString: TBooleanField;
    FieldsIsLike: TBooleanField;
    FieldsEveryLike: TBooleanField;
    FieldsIsWhere: TBooleanField;
    FieldsVisibleInGrid: TBooleanField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    FilterPanel: TPanel;
    YDBG: TYDBGrid;
    Yeganeh_Word: TYeganeh_Word;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    NewPage: TCheckBox;
    GetValueInNull: TCheckBox;
    Button2: TButton;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    ReplaceInHeader: TCheckBox;
    Panel1: TPanel;
    Button4: TButton;
    Button3: TButton;
    Button5: TButton;
    Label5: TLabel;
    Button1: TButton;
    procedure MakePanelFilter(Control:TWinControl);
    procedure openFields;
    procedure FormShow(Sender: TObject);
    procedure FillReport;
    procedure SetGrid(Dbg:TYDBGrid);
    procedure reportClick(Sender: TObject);
    procedure CreateWhereEdits;
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Yeganeh_WordNeedDataBaseField(FieldDescription: WideString;
      var fieldName: WideString);
    procedure Yeganeh_WordNeedTextOnNull(FieldDescription: WideString;
      var fieldValue: WideString);
    procedure WordApplicationDocumentBeforeClose(Sender: TObject; var Doc,
      Cancel: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
    TableName    :string ;
    TableDescription:string;
    TableID:integer;
    Connection:TADOConnection;
    function  Where:string;

  end;

var
  FrMakeGroupExport: TFrMakeGroupExport;

  const NumberOfColumns=3;
        EditLenght=150;
        HorSpaces=10;
        VerSpaces=30;


implementation

uses Dmu;
{$R *.dfm}
var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    Edits:array[0..199] of TYWhereEdit;

procedure TFrMakeGroupExport.openFields;
begin
 with Fields do
  begin
   Close;
   Parameters.ParamByName('@tableid').Value:=TableID;
   Open;
  end;
end;

procedure TFrMakeGroupExport. MakePanelFilter(Control:TWinControl);
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

   if PageControl1.Height<NumberOfRows*VerSpaces+40+YDBG.Height then
     PageControl1.Height:=NumberOfRows*VerSpaces+40+YDBG.Height;

   if Control.Height<NumberOfRows*VerSpaces+10 then
     Control.Height:=NumberOfRows*VerSpaces+10;

     EditLeft:=EditStartLeft;
     Edittop:=EditStartTop;

   while not eof do
    begin
       Labels[k]:=TLabel.Create(self);
       Labels[k].Caption:=FieldsDescription.AsString;
       Labels[k].Parent:=Control;

       Edits[k]:=TYWhereEdit.Create(self);
       Edits[k].Parent:=Control;
       Edits[k].FieldName:=FieldsFieldName.AsString;
       Edits[k].isLike:=FieldsIsLike.AsBoolean;
       Edits[k].EveryLike:=FieldsEveryLike.AsBoolean;
       Edits[k].isString:=FieldsIsString.AsBoolean;
       Edits[k].TableName:=TableName;

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

function  TFrMakeGroupExport.where:string;
 var i: integer;
 begin
   Result:='';
   for i:=0 to NumberOfFields-1 do
     begin
     if Edits[i].Resultwhere<>'' then
        if Result='' then Result:='('+edits[i].Resultwhere+')'
        else  Result:=Result+' and ('+edits[i].Resultwhere+')'
     end;
 end;
procedure TFrMakeGroupExport.FillReport;
begin
 with Sample do
  begin
   Close;
   CommandText:='select top 10000 * from '+TableName;
   if where<>'' then
     CommandText:=CommandText+' where '+where;
   Open;
   Label5.Caption:=' ⁄œ«œ :'+IntToStr(RecordCount);
  end;
end;


procedure TFrMakeGroupExport.SetGrid(dbg:TYDBgrid);
 var i: byte;
begin
  with Fields,dbg,Columns do
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

procedure TFrMakeGroupExport.FormShow(Sender: TObject);
begin
 Fields.Connection:=Connection;
 Sample.Connection:=Connection;
 Caption:=' ÂÌÂ ê“«—‘ «“'+TableDescription;
 openFields;
 CreateWhereEdits;
end;

procedure TFrMakeGroupExport.reportClick(Sender: TObject);
begin
 FillReport;
 SetGrid(YDBG);
end;

procedure TFrMakeGroupExport.CreateWhereEdits;
begin
 MakePanelFilter(FilterPanel);

end;

procedure TFrMakeGroupExport.Button4Click(Sender: TObject);
begin
close;

end;

procedure TFrMakeGroupExport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrMakeGroupExport.Button5Click(Sender: TObject);
begin
 if PageControl1.ActivePageIndex<>2 then
   PageControl1.SelectNextPage(true);
end;

procedure TFrMakeGroupExport.Button3Click(Sender: TObject);
begin
 if PageControl1.ActivePageIndex<>0 then
   PageControl1.SelectNextPage(False);
end;

procedure TFrMakeGroupExport.FormCreate(Sender: TObject);
begin
  with dm.LetterTemplate do if not Active then Open;
end;

procedure TFrMakeGroupExport.Button2Click(Sender: TObject);
begin
    DM.SaveTemplateToFile;
    Yeganeh_Word.NewPage:=NewPage.Checked;
    Yeganeh_Word.ReplaceInHeader:=ReplaceInHeader.Checked;
    Yeganeh_Word.PasteRecords;

end;

procedure TFrMakeGroupExport.Yeganeh_WordNeedDataBaseField(
  FieldDescription: WideString; var fieldName: WideString);
begin
 with Fields do
  if Locate('Description',FieldDescription,[]) then
   fieldName:=FieldsFieldName.AsString;

end;




procedure TFrMakeGroupExport.Yeganeh_WordNeedTextOnNull(
  FieldDescription: WideString; var fieldValue: WideString);
 var s: string;
begin
 if GetValueInNull.Checked then
  if InputQuery(FieldDescription,FieldDescription,s) then
     fieldValue:=s;
end;

procedure TFrMakeGroupExport.WordApplicationDocumentBeforeClose(
  Sender: TObject; var Doc, Cancel: OleVariant);
begin
 WordApplication.Disconnect;
end;

end.
