unit MakeInputData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, DBActns, ActnList, ImgList, ActnMan,
  Mask, UemsVCL, XPStyleActnCtrls;

type

  TFrMakeInputData = class(TForm)
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
    FieldsFieldName: TWideStringField;
    FieldsTableID: TIntegerField;
    FieldsDescription: TWideStringField;
    FieldsIsWhere: TBooleanField;
    FieldsEveryLike: TBooleanField;
    FieldsVisibleInGrid: TBooleanField;
    FieldsFieldGroupID: TWordField;
    Fieldsorder: TWordField;
    FieldsFieldTypeID: TWordField;
    FieldsRefrenceTableID: TWordField;
    FieldsIsString: TBooleanField;
    FieldsIsLike: TBooleanField;
    Fieldsreftable: TWideStringField;
    procedure MakePanelFilter(Control:TWinControl);
    procedure openFields;
    procedure FormShow(Sender: TObject);
    procedure FillReport;
    procedure SetGrid;
    procedure CreateWhereEdits;
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetDelete1Execute(Sender: TObject);
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
  FrMakeInputData: TFrMakeInputData;

  const NumberOfColumns=3;
        EditLenght=150;
        HorSpaces=5;
        VerSpaces=25;


implementation

uses Dmu;


{$R *.dfm}
var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    Edits      : array[0..99] of TDBEdit;
    ShamsiEdits: array[0..99] of TDBShamsiDateEdit;
    Lookups    : array[0..99] of TDBLookupComboBox;
    CheckBoxs  : array[0..99] of TDBCheckBox;
    tables     : array[0..99] of TADOTable;
    datasourses: array[0..99] of TDataSource;



procedure TFrMakeInputData.openFields;
begin
 with Fields do
  begin
   Close;
   Parameters.ParamByName('@tableid').Value:=TableID;
   Open;
  end;
end;

procedure TFrMakeInputData. MakePanelFilter(Control:TWinControl);
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


       if  EditLeft<HorSpaces then
          begin
            EditLeft:=EditStartLeft;
            EditTop:=EditTop+VerSpaces;
          end;

       Labels[k].Left:=EditLeft+EditLenght+5;
       Labels[k].Top:=EditTop+3;

       case FieldsFieldTypeID.AsInteger of
        1,2,3,8:
           begin
            Edits[k]:=TDBEdit.Create(self);
            Edits[k].Parent:=Control;
            Edits[k].DataField:=FieldsFieldName.AsString;
            Edits[k].DataSource:=DSample;
            Edits[k].Left:=EditLeft;
            Edits[k].Width:=EditLenght;
            Edits[k].Top:=EditTop;
           end;
        5:
           begin
            CheckBoxs[k]:=TDBCheckBox.Create(self);
            CheckBoxs[k].Parent:=Control;
            CheckBoxs[k].DataField:=FieldsFieldName.AsString;
            CheckBoxs[k].DataSource:=DSample;
            CheckBoxs[k].Left:=EditLeft;
            CheckBoxs[k].Width:=EditLenght;
            CheckBoxs[k].Top:=EditTop;
           end;
        6:
           begin
            Lookups[k]:=TDBLookupComboBox.Create(self);
            Lookups[k].Parent:=Control;
            Lookups[k].DataField:=FieldsFieldName.AsString;
            Lookups[k].DataSource:=DSample;
            Lookups[k].Left:=EditLeft;
            Lookups[k].Width:=EditLenght;
            Lookups[k].Top:=EditTop;
            Lookups[k].KeyField := 'id';
            Lookups[k].ListField := 'title'  ;
            tables [k]:=TADOTable.Create(self);
            tables [k].Connection:=Sample.Connection;
            tables [k].TableName:=Fieldsreftable.AsString;
            tables [k].Open;
            datasourses[k]:=TDataSource.Create(self);
            datasourses[k].DataSet:=tables[k];
            Lookups[k].ListSource := datasourses[k]
           end;
        7:
           begin
            ShamsiEdits[k]:=TDBShamsiDateEdit.Create(self);
            ShamsiEdits[k].Parent:=Control;
            ShamsiEdits[k].DataField:=FieldsFieldName.AsString;
            ShamsiEdits[k].DataSource:=DSample;
            ShamsiEdits[k].Left:=EditLeft;
            ShamsiEdits[k].Width:=EditLenght;
            ShamsiEdits[k].Top:=EditTop;
           end;
         end;

       EditLeft:=EditLeft-SpaceForOneField;
       inc(k);
       next;
    end;
  end;
 NumberOfFields:=k;
end;

procedure TFrMakeInputData.FillReport;
begin
 with Sample do
  begin
   Close;
   CommandText:='select top 10 * from '+TableName;
   Open;
  end;
end;

procedure TFrMakeInputData.SetGrid;
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

procedure TFrMakeInputData.FormShow(Sender: TObject);
begin
 Fields.Connection:=Connection;
 Sample.Connection:=Connection;
 Caption:='æÑæÏ ÇØáÇÚÇÊ '+TableDescription;
 openFields;
 CreateWhereEdits;
 FillReport;
 SetGrid;
end;

procedure TFrMakeInputData.CreateWhereEdits;
begin
 MakePanelFilter(TabSheet1);

end;

procedure TFrMakeInputData.Button4Click(Sender: TObject);
begin
close;

end;

procedure TFrMakeInputData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrMakeInputData.DataSetDelete1Execute(Sender: TObject);
begin
  if MessageDlg('ÂíÇ ÇÒ ÍÐÝ ãØãÆä åÓÊíÏ',mtConfirmation,[mbyes,mbno],0)<>mryes then
   exit;
end;

end.
