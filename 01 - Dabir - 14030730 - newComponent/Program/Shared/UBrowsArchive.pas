unit UBrowsArchive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, XPStyleActnCtrls, ActnMan, Grids, DBGrids, YDbgrid,
  ExtCtrls,  ExtActns, ActnList, DB, ADODB, StdCtrls, Mask,
  DBCtrls, xpBitBtn, Buttons, Menus, AppEvnts, xpPanel, AdvGlowButton;

type
  TFrBrowsArchive = class(TMBaseForm)
    Panel1: TxpPanel;
    MainActionManager: TActionManager;
    Arecommite: TAction;
    AviewAllletter: TAction;
    Apicture: TAction;
    AExpotToWord: TAction;
    AloadPDF: TAction;
    AEditSubject: TAction;
    Get_Letter_By_UserMemo: TADOStoredProc;
    Get_Letter_By_UserMemoLetterID: TAutoIncField;
    Get_Letter_By_UserMemoIndicatorID: TIntegerField;
    Get_Letter_By_UserMemoMYear: TWordField;
    Get_Letter_By_UserMemoSecTitle: TWideStringField;
    Get_Letter_By_UserMemoLetterType: TWideStringField;
    Get_Letter_By_UserMemoIncommingNO: TWideStringField;
    Get_Letter_By_UserMemoIncommingdate: TWideStringField;
    Get_Letter_By_UserMemoMemo: TWideStringField;
    Get_Letter_By_UserMemoAttachTitle: TWideStringField;
    Get_Letter_By_UserMemoRetroactionNo: TWideStringField;
    Get_Letter_By_UserMemoUserMemo: TWideStringField;
    Get_Letter_By_UserMemoRegistrationDate: TStringField;
    Get_Letter_By_UserMemoFollowLetterNo: TWideStringField;
    Get_Letter_By_UserMemoSubjectDescription: TWideStringField;
    Get_Letter_By_UserMemoSubjectTitle: TWideStringField;
    Get_Letter_By_UserMemoClassificationTitle: TWideStringField;
    Get_Letter_By_UserMemoFromTitle: TWideStringField;
    Get_Letter_By_UserMemoToTitle: TWideStringField;
    DGet_Letter_By_UserMemo: TDataSource;
    UserField: TLabel;
    UserMemo: TEdit;
    Label1: TLabel;
    Title: TEdit;
    Get_Letter_By_UserMemoLetter_Type: TWordField;
    OnlyDocumnet: TCheckBox;
    xpBitBtn3: TAdvGlowButton;
    Label2: TLabel;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    Button1: TAdvGlowButton;
    ShowDetail: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    pnlMain: TPanel;
    procedure RefreshQuery;
    procedure UserMemoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ShowDetailClick(Sender: TObject);
    procedure ViewReceivedLetter(LetterID:integer);
    procedure ViewSentLetter(LetterID:integer);
    procedure ViewInnerLetter(LetterID:integer);
    procedure ViewDocument(LetterID:integer);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBrowsArchive: TFrBrowsArchive;

implementation

uses Dmu, UAddDocument, UMain, EnteredLetterInputF, ExitedLetterInputF,
  {ScanImageU1,ScanImageU,} UinnerLetter, YShamsiDate, ScanImageFm,
  businessLayer;

{$R *.dfm}

procedure TFrBrowsArchive.UserMemoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=13) and (trim(UserMemo.Text)<>'') then RefreshQuery;
end;


procedure TFrBrowsArchive.RefreshQuery;
begin
   inherited;
   with dm,Get_Letter_By_UserMemo do
   begin
      Close;
      Parameters.ParamByName('@UserMemo').Value := UserMemo.Text;
      if OnlyDocumnet.Checked then
         Parameters.ParamByName('@Letter_Type').Value:=4
      else
         Parameters.ParamByName('@Letter_Type').Value:=0;
      Open;
      {Ranjbar 89.10.26 ID=283}
      //ShowDetail.visible:=RecordCount>0;
      ShowDetail.Enabled := RecordCount>0;
      xpBitBtn1.Enabled := RecordCount>0;
      xpBitBtn2.Enabled := RecordCount>0;
      //---
      Try
         Title.Text := YeganehConnection.Execute(
         'Select '+GetSystemSetting('RelatedDisplayField')+' from '+GetSystemSetting('RelatedTableName')+' where '+GetSystemSetting('RelatedIDField')+
         ' ='''+UserMemo.Text+'''').Fields[0].Value;
      Except
         {Ranjbar 89.10.26 ID=283}
         //Title.Text:= 'Œÿ« œ— ›—«ŒÊ«‰Ì «ÿ·«⁄«  œ«‰‘ÃÊ';
         Title.Text:= '';
         //---
      End;
   end;
end;



procedure TFrBrowsArchive.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrBrowsArchive.FormCreate(Sender: TObject);
begin
  inherited;
  UserField.Caption:=dm.UserMemoDisplay;

end;

procedure TFrBrowsArchive.Button1Click(Sender: TObject);
begin
   inherited;
   FrAddDocument:=TFrAddDocument.Create(Application);
   FrAddDocument.GetLetter(0);
   FrAddDocument.acSBDataSetInsert.Execute;
   FrAddDocument.select_LetterUserMemo.Text:=UserMemo.Text;
   FrAddDocument.ShowModal;
end;
procedure TFrBrowsArchive.ViewReceivedLetter(LetterID:integer);
begin
  inherited;
with ReceivedLetterInputForm do
  begin
     ReceivedLetterInputForm:=TReceivedLetterInputForm.Create(Application);
     select_Letter.LockType:=ltReadOnly;
     GetLetter(LetterID);
     ShowModal;
   end
end;
procedure TFrBrowsArchive.ViewSentLetter(LetterID:integer);
begin
  inherited;
with sentLetterInputForm do
  begin
     SentLetterInputForm:=TSentLetterInputForm.Create(Application);
     select_Letter.LockType:=ltReadOnly;
     GetLetter(LetterID);
     ShowModal;
   end
end;

procedure TFrBrowsArchive.ViewInnerLetter(LetterID:integer);
begin
  inherited;
with FinnerLetter do
  begin
     FinnerLetter:=TFinnerLetter.Create(Application);
     select_Letter.LockType:=ltReadOnly;
     GetLetter(LetterID);
     ShowModal;
   end
end;
procedure TFrBrowsArchive.ViewDocument(LetterID:integer);
begin
  inherited;
with FrAddDocument do
  begin
     FrAddDocument:=TFrAddDocument.Create(Application);
     GetLetter(LetterID);
     ShowModal;
   end
end;


procedure TFrBrowsArchive.ShowDetailClick(Sender: TObject);
begin
   inherited;
   Case Get_Letter_By_UserMemoLetter_Type.AsInteger of
      1: ViewReceivedLetter(Get_Letter_By_UserMemoLetterID.AsInteger);
      2: ViewSentLetter(Get_Letter_By_UserMemoLetterID.AsInteger);
      3: ViewInnerLetter(Get_Letter_By_UserMemoLetterID.AsInteger);
      4: ViewDocument(Get_Letter_By_UserMemoLetterID.AsInteger);
   end;
end;

procedure TFrBrowsArchive.xpBitBtn1Click(Sender: TObject);
begin
   inherited;//
   {if dm.HasJpg then
    begin
    ScanImageF:=TScanImageF.Create(Application);
    with ScanImageF do
     begin
      LetterID:=Get_Letter_By_UserMemoLetterID.AsInteger;
      ShowModal;
     end;
    end
   else
   begin
    TifImageF:=TTifImageF.Create(Application);

    with TifImageF do
     begin
      LetterID:=Get_Letter_By_UserMemoLetterID.AsInteger;
      ShowModal;
     end;
   end;}

   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.LetterID := Get_Letter_By_UserMemoLetterID.AsInteger;
   FmScanImage.ShowModal;
end;

procedure TFrBrowsArchive.xpBitBtn2Click(Sender: TObject);
begin
   if _Word_Is_Opened then
      if Application_Is_Run('winword.exe') then
      begin
         messageShow(86,FALSE) ;
         exit;
      end;

   with Get_Letter_By_UserMemo do
      Dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger,true);
end;

procedure TFrBrowsArchive.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
if  (trim(UserMemo.Text)<>'') then
RefreshQuery;

end;

end.
