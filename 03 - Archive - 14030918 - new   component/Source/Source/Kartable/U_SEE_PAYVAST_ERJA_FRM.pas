unit U_SEE_PAYVAST_ERJA_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,ShellAPI,ShowArchiveDoc,
  Menus,U_ADD_PEYVAST_DIALOG_FRM,BaseUnit;

type
  TSEE_PAYVAST_ERJA_FRM = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ADOQuery1Extention: TStringField;
    ADOQuery1ExtentionTitle: TWideStringField;
    ADOQuery1letterid: TAutoIncField;
    ADOQuery1extention_1: TWordField;
    ADOQuery1DESCRIPTION: TWideStringField;
    ADOQuery1VersionNo: TStringField;
    ADOQuery1VersionDate: TStringField;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn3: TBitBtn;
    AddBtn: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    popAdd: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ADOQuery1archiveID: TIntegerField;
    ADOQuery1Archived: TBooleanField;
    QRY: TADOQuery;
    DataSource2: TDataSource;
    QRYID: TAutoIncField;
    QRYLetterID: TIntegerField;
    QRYRecommiteID: TIntegerField;
    QRYImage: TBlobField;
    QRYextention: TWordField;
    QRYDescription: TWideStringField;
    QRYPageNumber: TIntegerField;
    QRYLastUpdate: TDateTimeField;
    QRYVersionNo: TStringField;
    QRYVersionDate: TStringField;
    ADOQuery1ID: TAutoIncField;
    ADOQuery2: TADOQuery;
    ADOQuery2ID: TAutoIncField;
    ADOQuery2Extention: TStringField;
    ADOQuery2Image: TBlobField;
    ADOQuery2letterid: TAutoIncField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

    procedure SAVE_PEYVAST(F : String;SHOW : Boolean;SAVE : Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);

    Function MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
    procedure BitBtn3Click(Sender: TObject);

    procedure GET_PEYVAST_INFO_DIALOG(TYP : STRING);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LETTERID   : String;
    RecommitID : String;
    Letter_Or_Erja: String;
  end;

var
  SEE_PAYVAST_ERJA_FRM: TSEE_PAYVAST_ERJA_FRM;

implementation

uses Dmu, UaddLetterData, UAddLetterDataDialog, ShowmessageU;

{$R *.dfm}

procedure TSEE_PAYVAST_ERJA_FRM.FormShow(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT DISTINCT                                                                                ');
ADOQuery1.SQL.Add('RecommitePayvast.ID,LetterData.archiveID,Archived,dbo.Extention.Extention,                     ');
//ADOQuery1.SQL.Add('dbo.RecommitePayvast.Image,                                                                    ');
ADOQuery1.SQL.Add('dbo.Extention.ExtentionTitle,Letter.letterid, RecommitePayvast.extention,                      ');
ADOQuery1.SQL.Add('dbo.RecommitePayvast.DESCRIPTION , RecommitePayvast.VersionNo, RecommitePayvast.VersionDate    ');
ADOQuery1.SQL.Add('FROM   dbo.Letter                                                                              ');
ADOQuery1.SQL.Add('INNER  JOIN dbo.RecommitePayvast ON dbo.RecommitePayvast.LetterID = letter.LetterID            ');
ADOQuery1.SQL.Add('INNER  JOIN dbo.Extention        ON RecommitePayvast.extention    = Extention.ExtentionID      ');
ADOQuery1.SQL.Add('LEFT   JOIN LetterData           ON dbo.LetterData.LetterID = dbo.Letter.LetterID              ');
ADOQuery1.SQL.Add('WHERE                                                                                          ');
ADOQuery1.SQL.Add('letter.LetterID = '+LETTERID+'                                                                 ');
ADOQuery1.SQL.Add('AND                                                                                            ');
ADOQuery1.SQL.Add('RecommiteID     = '+RecommitID+'                                                               ');
ADOQuery1.Open;
end;

procedure TSEE_PAYVAST_ERJA_FRM.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TSEE_PAYVAST_ERJA_FRM.DBGrid1DblClick(Sender: TObject);
BEGIN
SAVE_PEYVAST(_TempPath + 'temp'+LETTERID+'.'+ADOQuery1.FIELDBYNAME('Extention').AsString,True,False);
end;

procedure TSEE_PAYVAST_ERJA_FRM.SAVE_PEYVAST(F : String;SHOW : Boolean;SAVE : Boolean);
var
   ArchivLetID : integer;
begin

ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT                                                                                    ');
ADOQuery2.SQL.Add('RecommitePayvast.ID,                                                                      ');
ADOQuery2.SQL.Add('dbo.Extention.Extention,                                                                  ');
ADOQuery2.SQL.Add('dbo.RecommitePayvast.Image,                                                               ');
ADOQuery2.SQL.Add('Letter.letterid                                                                           ');
ADOQuery2.SQL.Add('FROM   dbo.Letter                                                                         ');
ADOQuery2.SQL.Add('INNER  JOIN dbo.RecommitePayvast ON dbo.RecommitePayvast.LetterID = letter.LetterID       ');
ADOQuery2.SQL.Add('INNER  JOIN dbo.Extention        ON RecommitePayvast.extention    = Extention.ExtentionID ');
ADOQuery2.SQL.Add('LEFT   JOIN LetterData           ON dbo.LetterData.LetterID       = dbo.Letter.LetterID   ');
ADOQuery2.SQL.Add('WHERE                                                                                     ');
ADOQuery2.SQL.Add('letter.LetterID     = '+LETTERID+'                                                        ');
ADOQuery2.SQL.Add('AND                                                                                       ');
ADOQuery2.SQL.Add('RecommiteID         = '+RecommitID+'                                                      ');
ADOQuery2.SQL.Add('AND                                                                                       ');
ADOQuery2.SQL.Add('RecommitePayvast.ID = '+ADOQuery1ID.AsString+'                                            ');
ADOQuery2.Open;

ADOQuery2.Last;


   if Letter_Or_Erja='Letter' then
   begin
          if ADOQuery1.FieldByName('archiveID').AsInteger > 0 then
          begin
             if dm.ArchiveConnection.Connected then
             begin
                if not dm.Get_LetterData_by_LetterIDisDocument.AsBoolean then
                begin
                   with TADOQuery.Create(nil)do
                   begin
                      Connection := dm.ArchiveConnection;
                      SQL.Text := 'SELECT LetterID FROM LetterData WHERE LetterDataID='+dm.Get_LetterData_by_LetterIDarchiveID.AsString;
                      Open;
                      if not IsEmpty then
                      ArchivLetID := fields[0].Value;
                   end;
                   if(not _Can_View_Classified_Archive_Docs)then
                   with TADOQuery.Create(nil)do
                   begin
                      Connection := dm.ArchiveConnection;
                      SQL.Text := 'SELECT ClassificationID FROM Letter WHERE LetterID='+IntToStr(ArchivLetID);
                      Open;
                      if (Fields[0].AsInteger >1) then
                      begin
                         ShowMessage('«Ì‰ ”‰œ œ«—«Ì ”ÿÕ „Õ—„«‰Â „Ì »«‘œ');
                         Exit;
                      end;
                   end;

                   DeleteFile(pchar(f));
                   //ADOQuery1Image.SaveToFile(f);
                   if SHOW then
                      ShellExecute(Handle, 'open',pchar(f),nil,nil,SW_SHOWNORMAL);
                end
                else
                begin
                    ArchivLetID :=  dm.Get_LetterData_by_LetterIDarchiveID.AsInteger;
                    if (not _Can_View_Classified_Archive_Docs)then
                    with TADOQuery.Create(nil)do
                    begin
                      Connection := dm.ArchiveConnection;
                      SQL.Text := 'SELECT ClassificationID FROM Letter WHERE LetterID='+IntToStr(ArchivLetID);
                      Open;
                      if (Fields[0].AsInteger >1) then
                      begin
                         ShowMessage('«Ì‰ ”‰œ œ«—«Ì ”ÿÕ „Õ—„«‰Â „Ì »«‘œ');
                         Exit;
                      end;
                    end;
                    fmShowArchiveDoc := TfmShowArchiveDoc.Create(Application);
                    fmShowArchiveDoc.LetterID := StrToInt(LETTERID);
                    fmShowArchiveDoc.ShowModal;
                end;
             end
             else
                ShowMessage('«— »«ÿ »« Å«Ìê«Â œ«œÂ »«Ìê«‰Ì „ﬁœÊ— ‰Ì” ');
          end
          else
          begin
                   f:=_TempPath + 'temp'+LETTERID+'.'+ADOQuery2.FIELDBYNAME('Extention').AsString;
                   DeleteFile(pchar(f));
                   ADOQuery2Image.SaveToFile(f);
                   if SHOW then
                      ShellExecute(Handle, 'open',pchar(f),nil,nil,SW_SHOWNORMAL);
          end;
   end;

   if Letter_Or_Erja='Erja' then
   begin
      ADOQuery2Image.SaveToFile(f);
      if SHOW then
         BEGIN
         ShellExecute(Handle, 'open',pchar(f),nil,nil,SW_SHOWNORMAL);
         //DeleteFile(pchar(f));
         END;

      if SAVE then
         BEGIN
         //DeleteFile(pchar(f));
         ShowMessage('›«Ì· »« „Ê›ﬁÌ  –ŒÌ—Â ‘œ');
         END;
   end;

END;

procedure TSEE_PAYVAST_ERJA_FRM.BitBtn2Click(Sender: TObject);
begin
SaveDialog1.Filter:=UpperCase(ADOQuery1.FieldBYNAME('ExtentionTitle').AsString)+' Files|*.'+ADOQuery1.FieldBYNAME('Extention').AsString;
SaveDialog1.Execute;
if SaveDialog1.FileName <> '' then
   SAVE_PEYVAST(SaveDialog1.FileName+'.'+ADOQuery1.FieldBYNAME('Extention').AsString,False,True);
end;

function IntToY(l:byte):string ;
var i,j,k,n:integer;
begin
   Result:='';
   i:=60+3+1+1;
   j:=2*60+2*3+1;
   k:=15*11+3+1;
   for n:=1 to l do
   begin
      if (i>=28+1-1) and (i<=128+1-1) then
         Result:=Result+char(i);
      i := k*i mod j;
   end;
end;

procedure TSEE_PAYVAST_ERJA_FRM.AddBtnClick(Sender: TObject);
begin
   if (dm.ArchiveConnection.Connected) and (Letter_Or_Erja = 'Letter') then
   begin
      popAdd.Popup(Self.left + AddBtn.Left, Self.Top + AddBtn.Height + 490 );
   end
   else
   begin
      if (Letter_Or_Erja = 'Letter') then
         N1Click(self)
      else
         try
            with DM.ArchiveConnection do
            begin
               Connected:=false;
               ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=SABZ;Initial Catalog='+ArchiveDBName+';Data Source='+ ArchiveServerName;
               ConnectionTimeout:=3;
            end;
            try
               dm.ArchiveConnection.Open('YeganehCorporate_Archive', IntToY(66));
               dm.ArchiveConnection.Connected:=true;
               _ConnectedToArchive := true;
            except
               _ConnectedToArchive := false;
            end;
            if (_ConnectedToArchive = true) then
               popAdd.Popup(Self.left + AddBtn.Left+ 130, Self.Top + AddBtn.Height + 28 + Self.Top + AddBtn.Top)
            else
               N1Click(self);
            except
               N1Click(self);
      end;
   end;
end;


procedure TSEE_PAYVAST_ERJA_FRM.GET_PEYVAST_INFO_DIALOG(TYP : STRING);
VAR
extention : INTEGER;
ADD_FILE_DIALG : TADD_PEYVAST_DIALOG_FRM;
begin

QRY.Close;
QRY.SQL.Clear;
QRY.SQL.Add('SELECT * FROM RecommitePayvast  ');
QRY.SQL.Add('WHERE LetterID = '+LETTERID+'   ');
if TYP = 'EDIT' then
QRY.SQL.Add('AND ID = '+ADOQuery1.FIELDBYNAME('ID').AsString+'   ');
QRY.Open;

if TYP = 'INSERT' then
   QRY.Insert
   ELSE
   QRY.EDIT;
QRY.FieldByName('LetterID').AsString     := LetterID;
QRY.FieldByName('VersionDate').AsString  :=_Today;
QRY.FieldByName('RecommiteID').AsVariant :=RecommitID;
ADD_FILE_DIALG := TADD_PEYVAST_DIALOG_FRM.Create(Self);
ADD_FILE_DIALG.DESCRIPTION.DataSource    := DataSource2;
ADD_FILE_DIALG.VersionNo.DataSource      := DataSource2;
ADD_FILE_DIALG.ExtentionTitle.DataSource := DataSource2;
ADD_FILE_DIALG.ShowModal;
ADD_FILE_DIALG.ExtentionTitle.DataSource := DataSource2;
if FileExists(ADD_FILE_DIALG.Path.Text) then
   QRYImage.LoadFromFile(ADD_FILE_DIALG.Path.Text);
if ADD_FILE_DIALG.DO_ = 'POST' then
   QRY.POST
   ELSE
if ADD_FILE_DIALG.DO_ = 'CANCEL' then
   QRY.Cancel;
ADD_FILE_DIALG.Free;
QRY.Close;

ADOQuery1.Close;
ADOQuery1.Open;

end;

procedure TSEE_PAYVAST_ERJA_FRM.N1Click(Sender: TObject);
begin

GET_PEYVAST_INFO_DIALOG('INSERT');

end;

procedure TSEE_PAYVAST_ERJA_FRM.N2Click(Sender: TObject);
begin
//
end;

Function TSEE_PAYVAST_ERJA_FRM.MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
begin
  ShowMessageF := TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TSEE_PAYVAST_ERJA_FRM.BitBtn6Click(Sender: TObject);
var
delqry : TADOQuery;
begin
if ADOQuery1.RecordCount > 0 then
   if MessageShowString('',true) then
   begin
   delqry := TADOQuery.Create(Self);
   delqry.Connection := Dm.YeganehConnection;
   delqry.Close;
   delqry.SQL.Clear;
   delqry.SQL.Add('delete from RecommitePayvast where ID = ' + ADOQuery1.fieldbyname('ID').AsString);
   delqry.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.Open;
   end;
end;

procedure TSEE_PAYVAST_ERJA_FRM.BitBtn3Click(Sender: TObject);
begin
SAVE_PEYVAST(_TempPath + 'temp'+LETTERID+'.'+ADOQuery1.FIELDBYNAME('Extention').AsString,True,False);
end;

procedure TSEE_PAYVAST_ERJA_FRM.BitBtn5Click(Sender: TObject);
begin
GET_PEYVAST_INFO_DIALOG('EDIT');
end;

end.
