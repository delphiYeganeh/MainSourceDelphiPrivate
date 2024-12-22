unit FullTextSearch;

interface

uses
   Variants, BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, ComCtrls,
  StdCtrls, Controls, ExtCtrls, Classes, ActnList,sysutils, Buttons,
  ExtActns,dialogs, xpWindow, xpBitBtn, AdvGlowButton;

type
  TFullTextSearchF = class(TMBaseForm)
    Action1: TAction;
    Panel1: TPanel;
    SearchEdit: TEdit;
    Label1: TLabel;
    letterContainText: TADOStoredProc;
    AviewLetter: TAction;
    letterContainTextLetterID: TAutoIncField;
    letterContainTextRegistrationDate: TStringField;
    letterContainTextMemo: TWideStringField;
    letterContainTextindicatorid: TIntegerField;
    Panel2: TPanel;
    Number: TLabel;
    makeRep: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    pnlMain: TPanel;
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

uses Dmu, UMain, businessLayer, YShamsiDate, DateUtils;

{$R *.dfm}

procedure TFullTextSearchF.makeRepClick(Sender: TObject);
begin  
   inherited;
   if Trim(SearchEdit.Text)='' then
      Exit;
   with letterContainText,Parameters do
   begin
      Close;
      ParamByName('@where').Value:=ReplaceKaf( SearchEdit.Text);
      ParamByName('@SecID').Value:=Dm.SecId;
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
   //Ranjbar
   if not letterContainText.Active then
      Exit;
   if letterContainText.RecordCount = 0 then
      Exit;
   //---

   With letterContainText do
      if not dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger,false) then
         ShowMsg(53);

end;

end.
