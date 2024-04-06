unit U_REP_CUSTOM_01_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, DBActns, ActnList, ImgList, ActnMan,
  Mask, UemsVCL, XPStyleActnCtrls, BaseUnit,  ExtActns,ydbcombobox,
  xpBitBtn, Menus;

type
  TREP_CUSTOM_01_FRM = class(TForm)
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
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Report_UserTable: TADOStoredProc;

    procedure OpenFields;
    procedure MakePanelFilter(Control:TWinControl);

    procedure FormShow(Sender: TObject);

    procedure GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);

    function Search(Y:TYwhereEdit):integer;

    FUNCTION where :string;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  TableID    : integer;

    findate       : Boolean;
    datefieldname : String;
    datefilter    : String;
  end;

var
  REP_CUSTOM_01_FRM: TREP_CUSTOM_01_FRM;

  const NumberOfColumns=2;
        EditLenght=210;
        HorSpaces=5;
        VerSpaces=25;
        EditStartTop=5;

implementation

uses USearchTitle, Dmu, LetterFilterU, UReportUserTable;

{$R *.dfm}

var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    YWhereEdit : array[0..99] of TYWhereEdit;


procedure TREP_CUSTOM_01_FRM.openFields;
begin
 with Fields do
  begin
   Close;
   Parameters.ParamByName('@TableID').Value:=TableID;
   Open;
  end;
end;


FUNCTION TREP_CUSTOM_01_FRM.where :string;
 var
  k: byte;
  w : string;
  fpos : Integer;
begin
 k:=0;
 w :='';

 findate       := False;
 datefieldname := '';
 datefilter    := '';

 with Fields do
  begin
    if not Active then open;
    first;
   while not eof do
    begin

     findate       := False;

     with YWhereEdit[k] do
     begin

     if (pos('/',Resultwhere) > 0)and(pos('-',Resultwhere) = 11) then
        begin
        findate       := True;
        fpos := pos('1',Resultwhere);
        datefilter    := copy(Resultwhere,1,11) + ' BETWEEN ''' + copy(Resultwhere,fpos,10) + '''' + ' and ' + '''' + copy(Resultwhere,fpos+11,10) + ''' ';
        end;

     if (Resultwhere <> '') then
       if (w <> '') AND (findate) then
        w := w +' and LetterID in (select distinct LetterID from LetterFieldValue where FieldId='+IntToStr(Tag)+' and '+datefilter+')'
       ELSE
       if (w <> '') AND NOT(findate) then
        w := w +' and LetterID in (select distinct LetterID from LetterFieldValue where FieldId='+IntToStr(Tag)+' and '+Resultwhere+')'
      else
       if (w = '') AND (findate) then
        w :=  '  LetterID in (select distinct LetterID from LetterFieldValue where FieldId='+IntToStr(Tag)+' and '+datefilter+')'
      else
       if (w = '') AND NOT(findate) then
        w :=  '  LetterID in (select distinct LetterID from LetterFieldValue where FieldId='+IntToStr(Tag)+' and '+Resultwhere+')';
     end;

     inc(k);
     next;
     
    end;
  end;
  Result:=w;
  
end;


procedure TREP_CUSTOM_01_FRM.MakePanelFilter(Control:TWinControl);
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

     EditLeft := EditStartLeft;
     Edittop  := EditStartTop;

   while not eof do
    begin

         if (FieldsDescription.AsString = '‰«„ Ê ‰«„ Œ«‰Ê«œêÌ')OR(FieldsDescription.AsString = ' «—ÌŒ') then
         BEGIN
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

     END;

       EditLeft:=EditLeft-SpaceForOneField;
       inc(k);
       next;

    end;
   Panel1.Height:=EditTop+VerSpaces;

  end;
 NumberOfFields:=k;
end;




procedure TREP_CUSTOM_01_FRM.FormShow(Sender: TObject);
begin
OpenFields;
MakePanelFilter(Panel1);
end;

procedure TREP_CUSTOM_01_FRM.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
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

function TREP_CUSTOM_01_FRM.Search(Y:TYwhereEdit):integer;
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


procedure TREP_CUSTOM_01_FRM.BitBtn1Click(Sender: TObject);
 var w:string;
 i: byte;
 s : String;
begin

w:='';
with Report_UserTable do
 begin
  Close;
  Parameters.ParamByName('@LetterWhere').Value    := w;
  Parameters.ParamByName('@UserTableWhere').Value := where;
  Parameters.ParamByName('@tableID').Value        := TableID;
  Open;
 end;

end;


{
LetterID
‰«„ Ê ‰«„ Œ«‰Ê«œêÌ
 «—ÌŒ
«“ —Ê“
 « —Ê“
„œ 
IndicatorID
IncommingNO
IncommingDate
CenterNo
CenterDate
Memo
RetroactionNo
UserMemo
RegistrationDate
FollowLetterNo
LetterRecommites
SenderTitle
DeliverTitle
LetterTypeTitle
ActionTypeTitle
}

end.
