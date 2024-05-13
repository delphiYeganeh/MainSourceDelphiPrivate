unit ShowAddDocDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMShowAddDoc = class(TDataModule)
    QrSelLetter: TADOQuery;
    DsSelLetter: TDataSource;
    QrSelLetterLetterID: TIntegerField;
    QrSelLetterIndicatorID: TIntegerField;
    QrSelLetterMYear: TWordField;
    QrSelLetterLetter_Type: TWordField;
    QrSelLetterletterformat: TWordField;
    QrSelLetterIncommingNO: TWideStringField;
    QrSelLetterIncommingdate: TWideStringField;
    QrSelLetterCenterNo: TWideStringField;
    QrSelLetterCenterDate: TStringField;
    QrSelLetterFromOrgID: TIntegerField;
    QrSelLetterToOrgID: TIntegerField;
    QrSelLetterSignerid: TWideStringField;
    QrSelLetterClassificationID: TWordField;
    QrSelLetterUrgencyID: TSmallintField;
    QrSelLetterMemo: TWideStringField;
    QrSelLetterAttachTitle: TWideStringField;
    QrSelLetterNumberOfAttachPages: TSmallintField;
    QrSelLetterNumberOfPage: TWordField;
    QrSelLetterReceiveTypeID: TWordField;
    QrSelLetterUserID: TIntegerField;
    QrSelLetterRetroactionNo: TWideStringField;
    QrSelLetterUserMemo: TWideStringField;
    QrSelLetterRegistrationDate: TStringField;
    QrSelLetterRegistrationTime: TStringField;
    QrSelLetterFollowLetterNo: TWideStringField;
    QrSelLetterToStaffer: TWideStringField;
    QrSelLetterSentLetterID: TIntegerField;
    QrSelLetterTemplateID: TIntegerField;
    QrSelLetterHeaderID: TIntegerField;
    QrSelLetterLetterRecommites: TWideStringField;
    QrSelLetterFromStaffer: TWideStringField;
    QrSelLetterLastUpdate: TDateTimeField;
    QrSelLetterSendStatusID: TWordField;
    QrSelLetterUserTableID: TIntegerField;
    QrSelLetterFinalized: TBooleanField;
    QrSelLetterUserMemo1: TWideStringField;
    QrSelLetterUserMemo2: TWideStringField;
    QrSelLetterColor: TIntegerField;
    QrSelLetterLinked_LetterID: TIntegerField;
    QrSelLettersenderTitle: TWideStringField;
    QrSelLetterClassificationTitle: TWideStringField;
    QrSelLetterUserTableTitle: TWideStringField;
    QrSelLetterSecretariatID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMShowAddDoc: TDMShowAddDoc;

implementation

{$R *.dfm}

end.
