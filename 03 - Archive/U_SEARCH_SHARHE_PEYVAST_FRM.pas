unit U_SEARCH_SHARHE_PEYVAST_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB , frmWait , GenTransparent , u_err_msg , ActiveX,ShellAPI;

type
  TSEARCH_SHARHE_PEYVAST_FRM = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SHARH: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    SRCH_QRY: TADOQuery;
    SRCH_QRYEX: TStringField;
    SRCH_QRYLetterDataID: TAutoIncField;
    SRCH_QRYLetterID: TIntegerField;
    SRCH_QRYPageNumber: TIntegerField;
    SRCH_QRYImage: TBlobField;
    SRCH_QRYextention: TWordField;
    SRCH_QRYDescription: TWideStringField;
    SRCH_QRYLastUpdate: TDateTimeField;
    SRCH_QRYListItemsID: TIntegerField;
    SRCH_QRYIsCorrectedImage: TBooleanField;
    SRCH_QRYColorID: TIntegerField;
    SRCH_QRYVersionNo: TStringField;
    SRCH_QRYVersionDate: TStringField;
    SRCH_QRYLetterID_1: TAutoIncField;
    SRCH_QRYIndicatorID: TIntegerField;
    SRCH_QRYMYear: TWordField;
    SRCH_QRYLetter_Type: TWordField;
    SRCH_QRYletterformat: TWordField;
    SRCH_QRYIncommingNO: TWideStringField;
    SRCH_QRYIncommingdate: TWideStringField;
    SRCH_QRYCenterNo: TWideStringField;
    SRCH_QRYCenterDate: TStringField;
    SRCH_QRYFromOrgID: TIntegerField;
    SRCH_QRYToOrgID: TIntegerField;
    SRCH_QRYSignerid: TWideStringField;
    SRCH_QRYClassificationID: TWordField;
    SRCH_QRYUrgencyID: TSmallintField;
    SRCH_QRYMemo: TWideStringField;
    SRCH_QRYAttachTitle: TWideStringField;
    SRCH_QRYNumberOfAttachPages: TSmallintField;
    SRCH_QRYNumberOfPage: TWordField;
    SRCH_QRYReceiveTypeID: TWordField;
    SRCH_QRYUserID: TIntegerField;
    SRCH_QRYRetroactionNo: TWideStringField;
    SRCH_QRYUserMemo: TWideStringField;
    SRCH_QRYRegistrationDate: TStringField;
    SRCH_QRYRegistrationTime: TStringField;
    SRCH_QRYFollowLetterNo: TWideStringField;
    SRCH_QRYToStaffer: TWideStringField;
    SRCH_QRYSentLetterID: TIntegerField;
    SRCH_QRYTemplateID: TIntegerField;
    SRCH_QRYHeaderID: TIntegerField;
    SRCH_QRYLetterRecommites: TWideStringField;
    SRCH_QRYFromStaffer: TWideStringField;
    SRCH_QRYLastUpdate_1: TDateTimeField;
    SRCH_QRYSendStatusID: TWordField;
    SRCH_QRYUserTableID: TIntegerField;
    SRCH_QRYFinalized: TBooleanField;
    SRCH_QRYUserMemo1: TWideStringField;
    SRCH_QRYUserMemo2: TWideStringField;
    SRCH_QRYColor: TIntegerField;
    SRCH_QRYLinked_LetterID: TIntegerField;
    SRCH_QRYVersionDate_1: TStringField;
    SRCH_QRYVersionNumber: TStringField;
    SRCH_QRYSubject: TWideStringField;
    SRCH_QRYExtentionID: TAutoIncField;
    SRCH_QRYExtentionTitle: TWideStringField;
    SRCH_QRYExtention_1: TStringField;
    SRCH_QRYIsSystem: TBooleanField;
    SRCH_QRYSecretariatID: TIntegerField;
    procedure FormShow(Sender: TObject);

    procedure FIRST_SET;

    procedure SRCH(S : String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

TReIndexThread = class(TThread)
private
FrmWait : TWaitForm;
protected
procedure Execute; override;
public
Class procedure Run;
end;  

var
  SEARCH_SHARHE_PEYVAST_FRM: TSEARCH_SHARHE_PEYVAST_FRM;

implementation

uses Dmu;

{$R *.dfm}

procedure TSEARCH_SHARHE_PEYVAST_FRM.FormShow(Sender: TObject);
begin
FIRST_SET;
end;

procedure TSEARCH_SHARHE_PEYVAST_FRM.FIRST_SET;
BEGIN
//
SHARH.Text := '';

SRCH_QRY.Close;
END;

procedure TSEARCH_SHARHE_PEYVAST_FRM.SRCH(S : String);
BEGIN
SRCH_QRY.Close;
SRCH_QRY.SQL.Clear;
SRCH_QRY.SQL.Add('SELECT E.Extention AS EX,* FROM dbo.LetterData LD');
SRCH_QRY.SQL.Add('INNER JOIN dbo.Letter L ON L.LetterID = LD.LetterID');
SRCH_QRY.SQL.Add('INNER JOIN Extention E  ON LD.extention = E.ExtentionID');
SRCH_QRY.SQL.Add('WHERE LD.Description LIKE ''%'+S+'%'' ');
SRCH_QRY.Open;
END;


//-----------------------------------------------------------------------
{ TReIndexThread }

procedure TReIndexThread.Execute;
var
err : TErr_msg;
begin
  inherited;

  CoInitialize(nil);

  try
  FrmWait.Cursor := crSQLWait;

     try

     TSEARCH_SHARHE_PEYVAST_FRM(Application.MainForm).SRCH_QRY.Close;

     WITH TSEARCH_SHARHE_PEYVAST_FRM(Application.MainForm).SRCH_QRY DO
       BEGIN
       SQL.Clear;
       SQL.Add('SELECT E.Extention AS EX,* FROM dbo.LetterData LD');
       SQL.Add('INNER JOIN dbo.Letter L ON L.LetterID = LD.LetterID');
       SQL.Add('INNER JOIN Extention E  ON LD.extention = E.ExtentionID');
       SQL.Add('WHERE LD.Description LIKE ''%'+TSEARCH_SHARHE_PEYVAST_FRM(Application.MainForm).SHARH.Text+'%'' ');
       Open;
       END;

     except
     on e:exception do
     begin
     TSEARCH_SHARHE_PEYVAST_FRM(Application.MainForm).SRCH_QRY.Close;
     err      := TErr_msg.Create(nil);
     err.MSG_1 := '???';
     err.MSG_2 := E.Message;
     err.ShowModal;
     err.Free;
     END;
     END;

  finally
  Terminate;
  FrmWait.Close;
  end;

  CoUninitialize();

end;

class procedure TReIndexThread.Run;
begin

  with TReIndexThread.Create( True ) do
  begin
    FreeOnTerminate := True;
    Priority := tpTimeCritical;
    Application.CreateForm(TWaitForm, FrmWait);
    Resume;
    try
    FrmWait.ShowModal;
    finally

    end;
  end;

end;
//-----------------------------------------------------------------------


procedure TSEARCH_SHARHE_PEYVAST_FRM.SpeedButton1Click(Sender: TObject);
//VAR
///a : TTransparentForm;
begin
//  a := TTransparentForm.Create(Self);
//  a.Dispaly;
//  TReIndexThread.Run;
//  a.Free;
SRCH(SHARH.Text);
end;

procedure TSEARCH_SHARHE_PEYVAST_FRM.BitBtn1Click(Sender: TObject);
begin

if SRCH_QRY.RecordCount > 0 then
BEGIN
SRCH_QRYImage.SaveToFile(_TempPath +'temp'+SRCH_QRYLetterID_1.AsString+'.'+SRCH_QRYEX.AsString);
ShellExecute(Handle, 'open',pchar(_TempPath +'temp'+SRCH_QRYLetterID_1.AsString+'.'+SRCH_QRYEX.AsString),nil,nil,SW_SHOWNORMAL);
end;

END;

end.
