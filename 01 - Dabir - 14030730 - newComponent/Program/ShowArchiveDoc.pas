unit ShowArchiveDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmFarsi, Grids, DBGrids, YDbgrid, StdCtrls, DBCtrls, UemsVCL,
  Mask, DB, ADODB, Buttons, ShellAPI;

type
  TfmShowArchiveDoc = class(TfmFarsi)
    DBEIncommingNO: TDBEdit;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEIndicatorID: TDBEdit;
    Label24: TLabel;
    DBERegistrationDate: TDBShamsiDateEdit;
    Label12: TLabel;
    DBERegistrationTime: TDBEdit;
    Label13: TLabel;
    DBEUserTitle: TDBEdit;
    DBMemo2: TDBMemo;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    AttachTitle: TDBEdit;
    LBUserMemo1: TLabel;
    LBUserMemo2: TLabel;
    LBUserMemo3: TLabel;
    YDBGrid1: TYDBGrid;
    DataSource1: TDataSource;
    dsAttachments: TDataSource;
    qryAttachments: TADOQuery;
    qryAttachmentsLetterDataID: TAutoIncField;
    qryAttachmentsPageNumber: TIntegerField;
    qryAttachmentsExtentionTitle: TWideStringField;
    qryAttachmentsDescription: TWideStringField;
    qryAttachmentsextention: TStringField;
    qryAttachmentsExtentionID: TAutoIncField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    qryImage: TADOQuery;
    btnSelAttach: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog: TSaveDialog;
    qryImageImage: TBlobField;
    Select_Letter: TADOQuery;
    Select_LetterLetterID: TAutoIncField;
    Select_LetterIndicatorID: TIntegerField;
    Select_LetterMYear: TWordField;
    Select_LetterSecretariatID: TWordField;
    Select_LetterLetter_Type: TWordField;
    Select_Letterletterformat: TWordField;
    Select_LetterIncommingNO: TWideStringField;
    Select_LetterIncommingdate: TWideStringField;
    Select_LetterCenterNo: TWideStringField;
    Select_LetterCenterDate: TStringField;
    Select_LetterFromOrgID: TIntegerField;
    Select_LetterToOrgID: TIntegerField;
    Select_LetterSignerid: TWideStringField;
    Select_LetterClassificationID: TWordField;
    Select_LetterUrgencyID: TSmallintField;
    Select_LetterMemo: TWideStringField;
    Select_LetterAttachTitle: TWideStringField;
    Select_LetterNumberOfAttachPages: TSmallintField;
    Select_LetterNumberOfPage: TIntegerField;
    Select_LetterReceiveTypeID: TWordField;
    Select_LetterUserID: TIntegerField;
    Select_LetterRetroactionNo: TWideStringField;
    Select_LetterUserMemo: TWideStringField;
    Select_LetterRegistrationDate: TStringField;
    Select_LetterRegistrationTime: TStringField;
    Select_LetterFollowLetterNo: TWideStringField;
    Select_LetterToStaffer: TWideStringField;
    Select_LetterSentLetterID: TIntegerField;
    Select_LetterTemplateID: TIntegerField;
    Select_LetterHeaderID: TIntegerField;
    Select_LetterLetterRecommites: TWideStringField;
    Select_LetterFromStaffer: TWideStringField;
    Select_LetterLastUpdate: TDateTimeField;
    Select_LetterSendStatusID: TWordField;
    Select_LetterUserTableID: TIntegerField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterUserMemo1: TWideStringField;
    Select_LetterUserMemo2: TWideStringField;
    Select_LetterColor: TIntegerField;
    Select_LetterLinked_LetterID: TIntegerField;
    Select_LetterVersionDate: TStringField;
    Select_LetterVersionNumber: TStringField;
    Select_LettersenderTitle: TWideStringField;
    Select_LetterUserTitle: TStringField;
    Select_LetterClassificTitle: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnSelAttachClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LetterID : integer;
  end;

var
  fmShowArchiveDoc: TfmShowArchiveDoc;

implementation

uses Dmu;

{$R *.dfm}

procedure TfmShowArchiveDoc.FormCreate(Sender: TObject);
begin
  inherited;

   if Trim(_Arch_Documnt_Caption)='' then
   begin
      _Arch_Documnt_Caption := dm.GetArchiveSetting(52);
      _Arch_Subject_Caption := dm.GetArchiveSetting(53);
      _Arch_Summery_Caption := dm.GetArchiveSetting(54);
      _Arch_UsrFld1_Caption := dm.GetArchiveSetting(15);
      _Arch_UsrFld2_Caption := dm.GetArchiveSetting(45);
      _Arch_UsrFld3_Caption := dm.GetArchiveSetting(46);
   end;
   Label1.Caption := '‘„«—Â' + ' ' + _Arch_Documnt_Caption;
   Label2.Caption := ' «—ÌŒ' + ' ' + _Arch_Documnt_Caption;
   Label3.Caption := _Arch_Subject_Caption;
   Label5.Caption :=  _Arch_Summery_Caption;
   LBUserMemo1.Caption :=  _Arch_UsrFld1_Caption;
   LBUserMemo2.Caption :=  _Arch_UsrFld2_Caption;
   LBUserMemo3.Caption :=  _Arch_UsrFld3_Caption;
end;

procedure TfmShowArchiveDoc.FormShow(Sender: TObject);
begin
  inherited;
   Select_Letter.Close;
   Select_Letter.Parameters[0].Value := LetterID;
   Select_Letter.Open;

   qryAttachments.Close;
   qryAttachments.Parameters[0].Value := LetterID;
   qryAttachments.Open;
end;

procedure TfmShowArchiveDoc.YDBGrid1DblClick(Sender: TObject);
begin
   btnSelAttachClick(self);
end;

procedure TfmShowArchiveDoc.BitBtn2Click(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TfmShowArchiveDoc.btnSelAttachClick(Sender: TObject);
var
   f: string;
begin
  inherited;
   f:=_TempPath + 'temp'+qryAttachmentsLetterDataID.AsString+'.'+qryAttachmentsextention.AsString;
   SysUtils.FileSetReadOnly(pchar(f), false);
   DeleteFile(pchar(f));
   qryImage.Close;
   qryImage.Parameters[0].Value :=  qryAttachmentsLetterDataID.AsInteger;
   qryImage.Open;
   qryImageImage.SaveToFile(f);
   ShellExecute(Handle, 'open',pchar(f),nil,nil,SW_SHOWNORMAL);
end;

procedure TfmShowArchiveDoc.BitBtn1Click(Sender: TObject);
var
   f: string;
begin
  inherited;
   SaveDialog.Filter:=UpperCase(qryAttachmentsextention.AsString)+' Files|*.'+qryAttachmentsextention.AsString;
   if SaveDialog.Execute then
   begin
      f:= SaveDialog.FileName+'.'+qryAttachmentsextention.AsString;
      SysUtils.FileSetReadOnly(pchar(f), false);
      DeleteFile(pchar(f));
      qryImage.Close;
      qryImage.Parameters[0].Value :=  qryAttachmentsLetterDataID.AsInteger;
      qryImage.Open;
      qryImageImage.SaveToFile(f);
      ShellExecute(Handle, 'open',pchar(f),nil,nil,SW_SHOWNORMAL);
   end;
end;

end.
