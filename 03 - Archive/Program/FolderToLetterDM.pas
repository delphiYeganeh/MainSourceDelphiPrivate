unit FolderToLetterDM;

{Ranjbar 21/10/89 ID=91}

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMFolderToLetter = class(TDataModule)
    QrLetter: TADOQuery;
    DSLetter: TDataSource;
    QrLetterLetterID: TAutoIncField;
    QrLetterIndicatorID: TIntegerField;
    QrLetterMYear: TWordField;
    QrLetterLetter_Type: TWordField;
    QrLetterletterformat: TWordField;
    QrLetterIncommingNO: TWideStringField;
    QrLetterIncommingdate: TWideStringField;
    QrLetterCenterNo: TWideStringField;
    QrLetterCenterDate: TStringField;
    QrLetterFromOrgID: TIntegerField;
    QrLetterToOrgID: TIntegerField;
    QrLetterSignerid: TWideStringField;
    QrLetterClassificationID: TWordField;
    QrLetterUrgencyID: TSmallintField;
    QrLetterMemo: TWideStringField;
    QrLetterAttachTitle: TWideStringField;
    QrLetterNumberOfAttachPages: TSmallintField;
    QrLetterNumberOfPage: TWordField;
    QrLetterReceiveTypeID: TWordField;
    QrLetterUserID: TIntegerField;
    QrLetterRetroactionNo: TWideStringField;
    QrLetterUserMemo: TWideStringField;
    QrLetterRegistrationDate: TStringField;
    QrLetterRegistrationTime: TStringField;
    QrLetterFollowLetterNo: TWideStringField;
    QrLetterToStaffer: TWideStringField;
    QrLetterSentLetterID: TIntegerField;
    QrLetterTemplateID: TIntegerField;
    QrLetterHeaderID: TIntegerField;
    QrLetterLetterRecommites: TWideStringField;
    QrLetterFromStaffer: TWideStringField;
    QrLetterLastUpdate: TDateTimeField;
    QrLetterSendStatusID: TWordField;
    QrLetterUserTableID: TIntegerField;
    QrLetterFinalized: TBooleanField;
    QrLetterUserMemo1: TWideStringField;
    QrLetterUserMemo2: TWideStringField;
    QrLetterColor: TIntegerField;
    QrLetterLinked_LetterID: TIntegerField;
    QrLetterVersionDate: TStringField;
    QrLetterVersionNumber: TStringField;
    QrLetterData: TADOQuery;
    DSLetterData: TDataSource;
    QrLetterDataLetterDataID: TAutoIncField;
    QrLetterDataLetterID: TIntegerField;
    QrLetterDataPageNumber: TIntegerField;
    QrLetterDataImage: TBlobField;
    QrLetterDataextention: TWordField;
    QrLetterDataDescription: TWideStringField;
    QrLetterDataLastUpdate: TDateTimeField;
    QrLetterDataListItemsID: TIntegerField;
    QrSelImage: TADOQuery;
    QrSelImageLetterDataID: TAutoIncField;
    QrSelImageLetterID: TIntegerField;
    QrSelImageImage: TBlobField;
    QrSelImageextention: TWordField;
    QrSelImageDescription: TWideStringField;
    QrSelImageLastUpdate: TDateTimeField;
    QrSelImageImageSize_Calc: TStringField;
    QrSelImageListItemsID: TIntegerField;
    QrSelImagePageNumber: TIntegerField;
    QrSelImageIsCorrectedImage: TBooleanField;
    QrSelImageColorID: TIntegerField;
    QrLetterDataColorID: TIntegerField;
    QrLetterSubject: TWideStringField;
    QrLetterHas_Page: TBooleanField;
    QrLetterHas_WordPage: TBooleanField;
    QrLetterHas_File: TBooleanField;
    QrLetterSecretariatID: TIntegerField;
    procedure QrLetterAfterScroll(DataSet: TDataSet);
    procedure QrLetterBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFolderToLetter: TDMFolderToLetter;

implementation

Uses DMu;

{$R *.dfm}

procedure TDMFolderToLetter.QrLetterAfterScroll(DataSet: TDataSet);
begin
   QrLetterData.Close;
   QrLetterData.Parameters.ParamByName('LetterID').Value := QrLetterLetterID.AsInteger;
   QrLetterData.Open;

   //if (QrLetter.State = dsInsert)And not(QrLetterData.State = dsInsert) then
      //QrLetterData.Append;
end;

procedure TDMFolderToLetter.QrLetterBeforeDelete(DataSet: TDataSet);
begin
   //Õ–›  ’«ÊÌ—
   While not QrLetterData.RecordCount = 0 do
      QrLetterData.Delete;
end;

end.
