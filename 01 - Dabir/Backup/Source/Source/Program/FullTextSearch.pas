unit FullTextSearch;

interface

uses
   Variants, BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, ComCtrls,
  StdCtrls, Controls, ExtCtrls, Classes, ActnList,sysutils, Buttons,
  ExtActns,dialogs,  xpBitBtn, Menus, AppEvnts;

type
  TFullTextSearchF = class(TMBaseForm)
    makeRep: TBitBtn;
    Button2: TBitBtn;
    Button5: TBitBtn;
    Number: TLabel;
    Button6: TBitBtn;
    Action1: TAction;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    letterContainText: TADOStoredProc;
    BitBtn1: TBitBtn;
    AviewLetter: TAction;
    letterContainTextLetterID: TAutoIncField;
    letterContainTextRegistrationDate: TStringField;
    letterContainTextMemo: TWideStringField;
    letterContainTextFromTitle: TWideStringField;
    letterContainTextToTitle: TWideStringField;
    Button3: TBitBtn;
    Button4: TBitBtn;
    YDBGrid1: TYDBGrid;
    letterContainTextindicatorid: TIntegerField;
    letterContainTextLetter_type: TIntegerField;
    procedure makeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure AviewLetterExecute(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    function MemoCondition(MemoText:string;FieldName:string):String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FullTextSearchF: TFullTextSearchF;

implementation

uses Dmu, UMain, YShamsiDate;

{$R *.dfm}

procedure TFullTextSearchF.makeRepClick(Sender: TObject);
// Amin 1391/0715 Start
var
   prmOrgID, prmWhere, prmSecID : TParameter;
// Amin 1391/07/15 End
begin
  inherited;
  // Amin 1391/07/15 Start
  if Project = 'Cartable' then
  begin
      letterContainText.ProcedureName := 'letterContainTextCartable;1';

      if letterContainText.Parameters.FindParam('@secID') = nil then
      begin
         prmSecID:= TParameter.Create(letterContainText.Parameters);
         prmSecID.Name:= '@secID';
         prmSecID.DataType:= ftWord;
         prmSecID.Direction:= pdInput;
      end;   

      if letterContainText.Parameters.FindParam('@where') = nil then
      begin
         prmWhere:= TParameter.Create(letterContainText.Parameters);
         prmWhere.Name:= '@where';
         prmWhere.DataType:= ftWideString;
         prmWhere.Direction:= pdInput;
         prmWhere.Size:= 500;
      end;
               
      if letterContainText.Parameters.FindParam('@OrgID') = nil then
      begin
         prmOrgID:= TParameter.Create(letterContainText.Parameters);
         prmOrgID.Name:= '@OrgID';
         prmOrgID.DataType:= ftInteger;
         prmOrgID.Direction:= pdInput;
      end;

      with letterContainText,Parameters do
      begin
         Close;
         ParamByName('@where').Value:=MemoCondition(edit1.Text,'typetext');
         ParamByName('@SecID').Value:=Dm.SecId;
         ParamByName('@OrgID').Value:= MainForm.GetUserOrgID;
         Open;
         Number.Caption:=' йзого :'+IntToStr(RecordCount)
      end;
  end
  else
  begin
       letterContainText.ProcedureName := 'letterContainText;1'; 

      if letterContainText.Parameters.FindParam('@secID') = nil then
      begin
         prmSecID:= TParameter.Create(letterContainText.Parameters);
         prmSecID.Name:= '@secID';
         prmSecID.DataType:= ftWord;
         prmSecID.Direction:= pdInput;
      end;   

      if letterContainText.Parameters.FindParam('@where') = nil then
      begin
         prmWhere:= TParameter.Create(letterContainText.Parameters);
         prmWhere.Name:= '@where';
         prmWhere.DataType:= ftWideString;
         prmWhere.Direction:= pdInput;
         prmWhere.Size:= 500;
      end;
  // Amin 1391/07/15 End
    with letterContainText,Parameters do
     begin
       Close;
        ParamByName('@where').Value:=MemoCondition(edit1.Text,'typetext');
        ParamByName('@SecID').Value:=Dm.SecId;
      Open;
      Number.Caption:=' йзого :'+IntToStr(RecordCount)
     end;
  end;
end;


function TFullTextSearchF.MemoCondition(MemoText:string;FieldName:string):String;
var  memoItems:TStrings;
i:byte;
begin
    result:=result+' ('+FieldName+' like N''%'+MemoText+'%'')'
end;

procedure TFullTextSearchF.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFullTextSearchF.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFullTextSearchF.Button3Click(Sender: TObject);
begin
  inherited;
   YDBGrid1.ExportToWord

end;

procedure TFullTextSearchF.Button2Click(Sender: TObject);
begin
  inherited;
YDBGrid1.Print
end;

procedure TFullTextSearchF.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint
end;

procedure TFullTextSearchF.Action1Execute(Sender: TObject);
begin
  inherited;
 makeRepClick(makeRep);

end;

procedure TFullTextSearchF.AviewLetterExecute(Sender: TObject);
begin
  inherited;
   with letterContainText do
if not dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger,not _AllowToEditWordFiles) then
        ShowMsg(53);

end;

procedure TFullTextSearchF.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
 with letterContainText,MainForm do  
   begin
      Case letterContainTextLetter_type.AsInteger of
         1: ViewReceivedLetter(letterContainTextLetterID.AsInteger);
         2: ViewSentLetter(letterContainTextLetterID.AsInteger);
         3: ViewInnerLetter(letterContainTextLetterID.AsInteger);
         4: ViewDocument(letterContainTextLetterID.AsInteger);
      end;
   end;
end;

end.
