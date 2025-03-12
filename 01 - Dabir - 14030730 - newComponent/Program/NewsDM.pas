unit NewsDM;

interface

uses
  SysUtils, Classes, DB, ADODB, frxExportImage, frxExportPDF, frxExportXLS,
  frxExportText, frxExportTXT, frxExportXML, frxExportRTF, frxDesgn,
  frxClass, frxDBSet;

type
  TDMNews = class(TDataModule)
    DSNews: TDataSource;
    SpNews: TADOStoredProc;
    QrUsersList: TADOQuery;
    DSUsersList: TDataSource;
    DSImageData: TDataSource;
    SPImageData: TADOStoredProc;
    SPImageDataImageDataID: TAutoIncField;
    SPImageDataData: TBlobField;
    SPImageDataTableName: TWideStringField;
    SPImageDataTableID: TIntegerField;
    SPImageDataTag: TIntegerField;
    SpNewsNewsID: TAutoIncField;
    SpNewsCode: TIntegerField;
    SpNewsTitle: TWideStringField;
    SpNewsDateAnnounce: TWideStringField;
    SpNewsTimeAnnounce: TWideStringField;
    SpNewsDateExpire: TWideStringField;
    SpNewsUserID: TIntegerField;
    QrUsersListId: TAutoIncField;
    QrUsersListTitle: TWideStringField;
    QrUsersListUserName: TWideStringField;
    QrUsersListPassWord: TWideStringField;
    QrUsers: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    DSUsers: TDataSource;
    SpNewsUrgenceisID: TSmallintField;
    SPImageDataFileName: TWideStringField;
    SpNewsMemo: TWideStringField;
    DSNewsGroup: TDataSource;
    QrNewsGroupUsers: TADOQuery;
    DSNewsGroupUsers: TDataSource;
    SPNewsGroup: TADOStoredProc;
    SPNewsGroupNewsGroupID: TIntegerField;
    SPNewsGroupTitle: TWideStringField;
    SPNewsGroupDescript: TWideStringField;
    SPNewsGroupUsersID: TIntegerField;
    QrNewsGroupUsersNewsGroupUsersID: TIntegerField;
    QrNewsGroupUsersUsersID: TIntegerField;
    QrNewsGroupUsersNewsGroupID: TIntegerField;
    frxJPEGExport1: TfrxJPEGExport;
    frxDesigner1: TfrxDesigner;
    frxBMPExport1: TfrxBMPExport;
    frxRTFExport1: TfrxRTFExport;
    frxXMLExport1: TfrxXMLExport;
    frxTXTExport1: TfrxTXTExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxGIFExport1: TfrxGIFExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxDesigner2: TfrxDesigner;
    QrRepNews: TADOQuery;
    DSRepNews: TDataSource;
    QrRepNewsNewsID: TAutoIncField;
    QrRepNewsCode: TIntegerField;
    QrRepNewsTitle: TWideStringField;
    QrRepNewsMemo: TWideStringField;
    QrRepNewsUrgenceisID: TSmallintField;
    QrRepNewsDateAnnounce: TWideStringField;
    QrRepNewsTimeAnnounce: TWideStringField;
    QrRepNewsDateExpire: TWideStringField;
    QrRepNewsUserID: TIntegerField;
    QrRepNewsUserName: TWideStringField;
    frxDBRepNews: TfrxDBDataset;
    frxRepNews: TfrxReport;
    QrNewsUsers: TADOQuery;
    DSNewsUsers: TDataSource;
    QrNewsUsersNewsUsersID: TAutoIncField;
    QrNewsUsersNewsID: TIntegerField;
    QrNewsUsersUsersID: TIntegerField;
    QrNewsUsersIsRead: TBooleanField;
    QrNewsUsersNotShow: TBooleanField;
    SpNewsUserTitle: TStringField;
    procedure SpNewsAfterScroll(DataSet: TDataSet);
    procedure SpNewsAfterInsert(DataSet: TDataSet);
    procedure SpNewsAfterPost(DataSet: TDataSet);
    procedure SpNewsBeforeDelete(DataSet: TDataSet);
    procedure SpNewsBeforePost(DataSet: TDataSet);
  private

  public

  end;

var
  DMNews: TDMNews;

implementation

uses Dmu , businessLayer ,BaseUnit,yShamsiDate, UMain;

{$R *.dfm}

procedure TDMNews.SpNewsAfterScroll(DataSet: TDataSet);
begin
   SPImageData.Close;
   SPImageData.Parameters.ParamByName('@TableName').Value := 'News';
   SPImageData.Parameters.ParamByName('@TableID').Value := SpNewsNewsID.AsInteger;
   SPImageData.Open;

   QrUsers.Close;
   QrUsers.Parameters.ParamByName('Pa_UserID').Value := SpNewsUserID.AsInteger;
   QrUsers.Open;

   QrNewsUsers.Close;
   QrNewsUsers.Parameters.ParamByName('Pa_NewsID').Value := SpNewsNewsID.AsInteger;
   QrNewsUsers.Open;
end;

procedure TDMNews.SpNewsAfterInsert(DataSet: TDataSet);
begin
   SpNewsUserID.AsInteger := _userid;             
   SpNewsCode.AsInteger := StrToIntDef( Qry_GetResult('Select IsNull(Max(Code)+1,1)as MaxCode From News' ,dm.YeganehConnection),1);
   SpNewsDateAnnounce.AsString := _Today;
   SpNewsTimeAnnounce.AsString := Time_GetTime(dm.YeganehConnection);
   SpNewsDateExpire.AsString := ShamsiIncDate(_Today,0,1,0);//«⁄„«· œ—  ‰ŸÌ„« 
   dm.Urgenceis.First;
   SpNewsUrgenceisID.AsInteger := dm.UrgenceisID.AsInteger;
end;

procedure TDMNews.SpNewsAfterPost(DataSet: TDataSet);
begin
   if SPImageData.State in [dsInsert,dsEdit] then
   begin
      SPImageDataTableName.AsString := 'News';
      SPImageDataTableID.AsInteger := SpNewsNewsID.AsInteger;
      SPImageData.Post;
   end;
end;

procedure TDMNews.SpNewsBeforeDelete(DataSet: TDataSet);
begin
   if not MBaseForm.messageShowString('¬Ì« „«Ì· »Â Õ–› —òÊ—œ Ã«—Ì Â” Ìœ', True) then
      Abort;
end;

procedure TDMNews.SpNewsBeforePost(DataSet: TDataSet);
begin
   IFFieldIsEmpty(SpNewsTitle,'⁄‰Ê«‰ Œ»—');
   if (SpNewsDateExpire.AsString) < (SpNewsDateAnnounce.AsString) then
   begin
      MBaseForm.messageShowString(' «—ÌŒ «‰ﬁ÷«¡ òÊçò — «“  «—ÌŒ «⁄·«‰ „Ì»«‘œ. ·ÿ›« «’·«Õ ‰„«ÌÌœ', False);
      Abort;
   end;
end;




{frxDBRepNews
-NewsID=NewsID
Code=òœ Œ»—
Title=⁄‰Ê«‰ Œ»—
Memo=„ ‰ Œ»—
-UrgenceisID=UrgenceisID
DateAnnounce= «—ÌŒ «⁄·«‰
TimeAnnounce=”«⁄  «⁄·«‰
DateExpire= «—ÌŒ «‰ﬁ÷«¡
-UserID=UserID
-NewsUsersID=NewsUsersID
UserName=‰«„ ò«—»— À»  ò‰‰œÂ
}
end.
