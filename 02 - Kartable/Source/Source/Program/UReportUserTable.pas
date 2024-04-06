unit UReportUserTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, DBActns, ActnList, ImgList, ActnMan,
  Mask, UemsVCL, XPStyleActnCtrls, BaseUnit,  ExtActns,ydbcombobox,
  xpBitBtn, Menus;

type

  TFrReportUserTable = class(TMBaseForm)
    DSample: TDataSource;
    Fields: TADOStoredProc;
    FieldsID: TAutoIncField;
    FieldsTableID: TIntegerField;
    FieldsFieldName: TStringField;
    FieldsDescription: TStringField;
    FieldsIsWhere: TBooleanField;
    FieldsISString: TBooleanField;
    FieldsIsLike: TBooleanField;
    FieldsEveryLike: TBooleanField;
    FieldsVisibleInGrid: TBooleanField;
    FieldsISBlob: TBooleanField;
    FieldsFieldGroupID: TIntegerField;
    Fieldsorder: TIntegerField;
    Fieldsisboolean: TBooleanField;
    FieldsFieldTypeID: TWordField;
    FieldsReferenceTableID: TIntegerField;
    EditsPanel: TScrollBox;
    procedure MakePanelFilter(Control:TWinControl);
    procedure openFields;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetDelete1Execute(Sender: TObject);
    Procedure ShowInPanel(P:TWinControl);
    FUNCTION where :string;
   procedure GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
   function Search(Y:TYwhereEdit):integer;
  private
    { Private declarations }
  public
    { Public declarations }
    TableID:integer;
  end;

var
  FrReportUserTable: TFrReportUserTable;

  const NumberOfColumns=2;
        EditLenght=210;
        HorSpaces=5;
        VerSpaces=25;
        EditStartTop=5;

implementation

uses Dmu, businessLayer, USearchTitle;


{$R *.dfm}
var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    YWhereEdit : array[0..99] of TYWhereEdit;



procedure TFrReportUserTable.openFields;
begin
 with Fields do
  begin
   Close;
   Parameters.ParamByName('@TableID').Value:=TableID;
   Open;
  end;
end;

procedure TFrReportUserTable. MakePanelFilter(Control:TWinControl);
 var
  EditLabels:array[0..199] of TEdit;
  k: byte;
  EditTop,EditLeft,SpaceForOneField,
   EditStartLeft:integer;
  RowHasMemo:boolean ;
begin

 SpaceForOneField:=((Control.Width-HorSpaces)  div NumberOfColumns);
 LabelLength:=SpaceForOneField-EditLenght-HorSpaces;
 EditStartLeft:=Control.Width-SpaceForOneField;
 k:=0;


 with Fields do
  begin
   NumberOfRows:=RecordCount div NumberOfColumns;
   if RecordCount mod NumberOfColumns<>0 then inc(NumberOfRows);


     EditLeft:=EditStartLeft;
     Edittop:=EditStartTop;

   while not eof do
    begin
//       Labels[k]:=TLabel.Create(self);
//       Labels[k].Caption:=FieldsDescription.AsString;
//       Labels[k].Parent:=Control;

         EditLabels[k]:=TEdit.Create(self);
         EditLabels[k].Text:=FieldsDescription.AsString;
         EditLabels[k].Parent:=Control;
         EditLabels[k].ParentColor:=True;
         EditLabels[k].BorderStyle:=bsNone;
         EditLabels[k].TabStop:=False;
         EditLabels[k].BiDiMode:=bdLeftToRight;

       if  EditLeft<HorSpaces then
          begin
            EditLeft:=EditStartLeft;
            EditTop:=EditTop+VerSpaces;
            if RowHasMemo then
              EditTop:=EditTop+2*VerSpaces;

            RowHasMemo:=false;
          end;

       EditLabels[k].Left:=EditLeft+EditLenght+5;
       EditLabels[k].Top:=EditTop+3;
            YWhereEdit[k]:=TYWhereEdit.Create(self);
            YWhereEdit[k].Parent:=Control;
            YWhereEdit[k].Left:=EditLeft;
            YWhereEdit[k].Width:=EditLenght;
            YWhereEdit[k].Top:=EditTop;
            YWhereEdit[k].Tag:=FieldsID.AsInteger;
            YWhereEdit[k].FieldName:='FieldValue';
       case FieldsFieldTypeID.AsInteger of
        1,4:
           begin
            YWhereEdit[k].isString:=true;
            YWhereEdit[k].isLike:=true;
            YWhereEdit[k].EveryLike:=false
           end;
        2:
           begin
            YWhereEdit[k].isLike:=true;
            YWhereEdit[k].isString:=true;
            YWhereEdit[k].EveryLike:=true
           end;
        3,5:
           begin
            YWhereEdit[k].isString:=false;
            YWhereEdit[k].EveryLike:=false;
            YWhereEdit[k].isLike:=FALSE;
           end;
         6:
           begin
            YWhereEdit[k].Color:=clYellow;
            YWhereEdit[k].ListTable:=FieldsReferenceTableID.AsString;
            YWhereEdit[k].isString:=false;
            YWhereEdit[k].EveryLike:=false;
            YWhereEdit[k].isLike:=FALSE;
            YWhereEdit[k].OnKeyDown:=GotoNext;
           end;

         end;

       EditLeft:=EditLeft-SpaceForOneField;
       inc(k);
       next;
    end;
   EditsPanel.Height:=EditTop+VerSpaces;
  end;
 NumberOfFields:=k;
end;

procedure TFrReportUserTable.FormShow(Sender: TObject);
begin
//- Caption:='æÑæÏ ÇØáÇÚÇÊ '+TableDescription;
 openFields;
 MakePanelFilter(EditsPanel);
end;

procedure TFrReportUserTable.Button4Click(Sender: TObject);
begin
close;

end;

procedure TFrReportUserTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrReportUserTable.DataSetDelete1Execute(Sender: TObject);
begin
  if MessageDlg('ÂíÇ ÇÒ ÍÐÝ ãØãÆä åÓÊíÏ',mtConfirmation,[mbyes,mbno],0)<>mryes then
   exit;
end;
Procedure TFrReportUserTable.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
 end;

FUNCTION TFrReportUserTable.where :string;
 var
  k: byte;
  w : string;
begin
 k:=0;
 w :='';

 with Fields do
  begin
    if not Active then open;
    first;
   while not eof do
    begin
     with YWhereEdit[k] do
     if Resultwhere<>'' then
       if w <>'' then
        w := w +' and LetterID in (select distinct LetterID from LetterFieldValue where FieldId='+IntToStr(Tag)+' and '+Resultwhere+')'
      else
        w :=  '  LetterID in (select distinct LetterID from LetterFieldValue where FieldId='+IntToStr(Tag)+' and '+Resultwhere+')';

     inc(k);
     next;
    end;
  end;
  Result:=w;
end;

function TFrReportUserTable.Search(Y:TYwhereEdit):integer;
begin
  SearchAdoDataSet:=TSearchAdoDataSet.Create(self);
  with SearchAdoDataSet do
   begin
    SearchDataSet:=false;
    TableName:='SELECT DataID, DataTitle FROM  ReferenceTableData WHERE  TableID = '+y.ListTable;
    CodeField:='DataID';
    TitleField:='DataTitle';
    SearchF.Connection:=dm.YeganehConnection;
    ShowModal;
    Result:=dm.SearchResult;
   end;
end;

procedure TFrReportUserTable.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
var  i:integer;
begin
 if (Sender is TYWhereEdit) then
  if (key=Vk_Space) and (ssctrl in shift)  then
      begin
         i:=Search(TYWhereEdit(Sender));
         if i>-1 then
          if trim(TYWhereEdit(Sender).Text)<>'' then
           TYWhereEdit(Sender).Text:=TYWhereEdit(Sender).Text+','+IntToStr(i)
          else
           TYWhereEdit(Sender).Text:=IntToStr(i)
      end;
end;


end.
