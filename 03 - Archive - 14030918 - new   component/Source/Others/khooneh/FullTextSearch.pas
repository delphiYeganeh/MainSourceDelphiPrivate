unit FullTextSearch;

interface

uses
   Variants, BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, ComCtrls,
  StdCtrls, Controls, ExtCtrls, Classes, ActnList,sysutils, Buttons,
  ExtActns,dialogs, xpWindow, xpBitBtn;

type
  TFullTextSearchF = class(TMBaseForm)
    makeRep: TxpBitBtn;
    Button2: TxpBitBtn;
    Button5: TxpBitBtn;
    Number: TLabel;
    Button6: TxpBitBtn;
    Action1: TAction;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    letterContainText: TADOStoredProc;
    BitBtn1: TxpBitBtn;
    AviewLetter: TAction;
    letterContainTextLetterID: TAutoIncField;
    letterContainTextRegistrationDate: TStringField;
    letterContainTextMemo: TWideStringField;
    letterContainTextFromTitle: TWideStringField;
    letterContainTextToTitle: TWideStringField;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    YDBGrid1: TYDBGrid;
    letterContainTextindicatorid: TIntegerField;
    procedure makeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure AviewLetterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FullTextSearchF: TFullTextSearchF;

implementation

uses Dmu, UMain;

{$R *.dfm}

procedure TFullTextSearchF.makeRepClick(Sender: TObject);
begin
  inherited;
with letterContainText,Parameters do
 begin
   Close;
    ParamByName('@where').Value:=dm.MemoCondition(edit1.Text,'typetext');
    ParamByName('@SecID').Value:=Dm.SecId;;
  Open;
  Number.Caption:=' йзого :'+IntToStr(RecordCount)
 end;


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

end.
