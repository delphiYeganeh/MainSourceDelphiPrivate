unit TextSearch;

interface

uses
   Variants, BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, ComCtrls,
  StdCtrls, Controls, ExtCtrls, Classes, ActnList,sysutils, Buttons,
  ExtActns,dialogs,  xpBitBtn, Menus, AppEvnts;

type
  TTextSearchF = class(TMBaseForm)
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
    letterContainTextLetterDataID: TIntegerField;
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
  TextSearchF: TTextSearchF;

implementation

uses Dmu, UMain, YShamsiDate;

{$R *.dfm}

procedure TTextSearchF.makeRepClick(Sender: TObject);
// Amin 1391/0715 Start
var
   prmOrgID, prmWhere, prmSecID : TParameter;
// Amin 1391/07/15 End
begin
  inherited;
  begin
       letterContainText.ProcedureName := 'letterDataTextSearch;1';

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
        ParamByName('@where').Value:=MemoCondition(edit1.Text,'textPart');
        ParamByName('@SecID').Value:=Dm.SecId;
      Open;
      Number.Caption:=' йзого :'+IntToStr(RecordCount)
     end;
  end;
end;


function TTextSearchF.MemoCondition(MemoText:string;FieldName:string):String;
var  memoItems:TStrings;
i:byte;
begin
    result:=result+' ('+FieldName+' like N''%'+MemoText+'%'')'
end;

procedure TTextSearchF.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TTextSearchF.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TTextSearchF.Button3Click(Sender: TObject);
begin
  inherited;
   YDBGrid1.ExportToWord

end;

procedure TTextSearchF.Button2Click(Sender: TObject);
begin
  inherited;
YDBGrid1.Print
end;

procedure TTextSearchF.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint
end;

procedure TTextSearchF.Action1Execute(Sender: TObject);
begin
  inherited;
 makeRepClick(makeRep);

end;

procedure TTextSearchF.AviewLetterExecute(Sender: TObject);
begin
  inherited;
   inherited;
   { TODO -oparsa : 14030411 }
    Dm.qtemp.Close;
    Dm.qtemp.SQL.Clear;
    Dm.qtemp.SQL.Add('SELECT IsCopy FROM dbo.ReCommites with(nolock) WHERE LetterID='+IntToStr(dm.Get_All_LetterLetterID.AsInteger));
    Dm.qtemp.Open;
    Dm.qtemp.Last;
    if Dm.qtemp.FieldByName('IsCopy').AsString <> '' then
      _AllowToEditWordFiles:= not Dm.qtemp.FieldByName('IsCopy').AsBoolean;
   { TODO -oparsa : 14030411 }

   with letterContainText do
if not dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger,not _AllowToEditWordFiles) then
        ShowMsg(53);

end;

procedure TTextSearchF.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
 with letterContainText do
   MainForm.ViewLetterAttachment(letterContainTextLetterID.AsInteger, letterContainTextLetter_type.AsInteger, letterContainTextLetterDataID.AsInteger);
end;

end.
