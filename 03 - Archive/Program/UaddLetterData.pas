unit UaddLetterData;

interface

uses
   YDbgrid,shellApi, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls, ADODB, Dialogs,windows,
  xpWindow, xpBitBtn, ExtCtrls, WordXP, OleServer, ExtDlgs, TntDialogs,
  {HKH Woner Unit}
  UrlMon, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP,
  BaseUnits, ComCtrls,IdURI;

type
  TFraddLetterData = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    Action2: TAction;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BtnInsert: TBitBtn;
    BtnDelete: TBitBtn;
    BtnEdit: TBitBtn;
    BBSaveFile: TBitBtn;
    BBShow: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    Button1: TButton;
    WordApplication: TWordApplication;
    WordDocument: TWordDocument;
    BBLoadFile: TBitBtn;
    SavePictureDialog1: TSavePictureDialog;
    TntOpenDialog: TTntOpenDialog;
    aDeleteAttachment: TAction;
    IdFTP1: TIdFTP;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    Panel_Wait: TPanel;
    edtSearch: TEdit;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure RefreshData;
    procedure FormShow(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
    procedure BBLoadFileClick(Sender: TObject);
    procedure BBSaveFileClick(Sender: TObject);
    procedure BBShowClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    procedure Button1Click(Sender: TObject);
    procedure aDeleteAttachmentExecute(Sender: TObject);
    procedure IdFTP1Work(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
  private
    TempFileNamePath : OleVariant;
    _DownloadSetting:TDownloadSetting;
    _BaseSQLConnection:TBaseSQLConnection;
  public
    { Public declarations }
    LetterID : integer;
    LetterDataID : integer;
    procedure SHowFiles(FileName:String);
    Function DownloadFiles(_URL:String):String;
    function SaveFile(_URL:String):string;
    procedure ItializeDownloadSetting;

  end;

var
  FraddLetterData: TFraddLetterData;

implementation

uses  Dmu, businessLayer, Forms, UAddLetterDataDialog, AddLetterDataDM,
  VersionEditUnit, Mask, UAddDocument;

{$R *.dfm}

procedure TFraddLetterData.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFraddLetterData.Action1Execute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFraddLetterData.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid2.Color:=dm.GetValue(1009);
end;

procedure TFraddLetterData.BtnEditClick(Sender: TObject);
begin
  inherited;
  with  dm,Get_LetterData_by_LetterID do
  begin
    if not Get_LetterData_by_LetterID.Active then Exit;
    VersionEditFrom:=TVersionEditFrom.Create(Application);
    VersionEditFrom.output.Text:=Get_LetterData_by_LetterIDdescription.AsString;
    VersionEditFrom.Edit1.Text:=Get_LetterData_by_LetterIDVersionNo.AsString;
    VersionEditFrom.MaskEdit1.Text:=Get_LetterData_by_LetterIDVersionDate.AsString;
    if VersionEditFrom.ShowModal=mrok then
    begin
       Get_LetterData_by_LetterDataID.Edit;
       Get_LetterData_by_LetterIDdescription.AsString:=VersionEditFrom.output.Text;
       Get_LetterData_by_LetterIDVersionNo.AsString:=VersionEditFrom.Edit1.Text;
       Get_LetterData_by_LetterIDVersionDate.AsString:=VersionEditFrom.MaskEdit1.Text;
       Get_LetterData_by_LetterDataID.Post;
       Exec_insert_UserLog(BtnEdit.Name , dm.Get_All_LetterLetterID.AsInteger);
    end;
  end;
end;

procedure TFraddLetterData.RefreshData;
begin
  with dm.Get_LetterData_by_LetterID do
  begin
    Close;
    Parameters.ParamByName('@LetterID').Value:=LetterID;
    Open;
  end;
end;

procedure TFraddLetterData.FormShow(Sender: TObject);
var
 AQry : TADOQuery;
 UserIdCreator : Integer;
begin
  inherited;
   AQry := TADOQuery.Create(Self);
   try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := 'Select UserID From Letter Where LetterId = ' + Dm.SelectLetter;
    AQry.Open;
    UserIdCreator := AQry.FieldByName('UserId').AsInteger;
   finally
    FreeAndNil(AQry);
   end;
   if not Dm.UsersShowAllDoc.AsBoolean then
     if Dm.UsersId.AsInteger <> UserIdCreator then
      begin
       BtnInsert.Enabled := False;
       BtnEdit.Enabled := False;
       BtnDelete.Enabled := False;
      end;
  ItializeDownloadSetting;
  RefreshData;
  if LetterDataID>0 then
      dm.Get_LetterData_by_LetterID.Locate('LetterDataID',LetterDataID,[]);
end;

procedure TFraddLetterData.BtnInsertClick(Sender: TObject);
var
 AQry : TADOQuery;
begin
   inherited;
   dm.Get_LetterData_by_LetterID.Insert;
   dm.Get_LetterData_by_LetterIDletterid.AsInteger:=StrToIntDef(Dm.SelectLetter,0);
   FrAddLetterDataDialog:=TFrAddLetterDataDialog.Create(Application);
   FrAddLetterDataDialog.ShowModal;
   { TODO -oparsa : 14030126 }
   //dm.Get_LetterData_by_LetterID.Post;
   { TODO -oparsa : 14030126 }

   Exec_insert_UserLog(BtnInsert.Name , LetterID);
   AQry := TADOQuery.Create(nil);
   try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := ' update letter set Has_Page = dbo.has_Page(letterid), ' +
                     ' Has_WordPage = dbo.has_WordPage(letterid), ' +
                     ' Has_File = dbo.has_file(letterid) from Letter Where LetterID = ' + IntToStr(LetterID);
    AQry.ExecSQL;
   finally
    FreeAndNil(AQry);
   end;

   Dm.Insert_LetterEdit(Dm.Get_All_LetterLetterID.AsInteger,'«ÌÃ«œ Ìﬂ ÅÌÊ”  ÃœÌœ');
end;


procedure TFraddLetterData.BBLoadFileClick(Sender: TObject);
var
   i : integer;
begin
   inherited;
   if tntOpenDialog.Execute then
   begin
      with dm.Get_LetterData_by_LetterDataID do
      begin
         close;
         Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
         Open;
         Edit;
         if FileExists(_ApplicationPath+'tmpFile')then
           DeleteFile(pchar(_ApplicationPath+'tmpFile'));

            if CopyFileW( dm.replacePWC(dm.StringToPWide(TntOpenDialog.filename,i)), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
               dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(_ApplicationPath+'tmpFile')
            else if CopyFileW( dm.StringToPWide(TntOpenDialog.filename,i), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
               dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(_ApplicationPath+'tmpFile')
            else
               ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
        // dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(OpenDialog.FileName);
         Post;
      end;
      {Ranjbar 89.06.06 ID=3}
      //Exec_insert_UserLog(4000+ BBLoadFile.Tag , dm.Get_All_LetterLetterID.AsInteger);
      Exec_insert_UserLog(BBLoadFile.Name , dm.Get_All_LetterLetterID.AsInteger);
      //---
   end;
end;

procedure TFraddLetterData.BBSaveFileClick(Sender: TObject);
var
   FileName , Extention :String;
begin
   inherited;
   Panel3.Visible:=True;


   Exit;
   {Ranjbar 89.06.21 ID=50}
   //”«Œ  Å”Ê‰œ Ê ‰«„ ›«Ì·
   Extention := Trim(dm.Get_LetterData_by_LetterIDExtentionName.AsString);
   FileName := 'Andi'+IntToStr(Dm.Get_All_LetterIndicatorID.AsInteger) +'_P'+
                          IntToStr(dm.Get_LetterData_by_LetterID.RecNo)+'.'+Extention;
   SaveDialog.FileName := FileName;
   SaveDialog.Filter := '*.'+Extention + '|*.' + Extention;

   if SaveDialog.Execute then
   begin
      with dm.Get_LetterData_by_LetterDataID do
      begin
         close;
         Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
         Open;

         if Trim(SaveDialog.FileName)='' then
            SaveDialog.FileName := FileName;
         if Pos('.'+Extention,SaveDialog.FileName) = 0 then //œ— ’Ê—  ‰œ«‘ ‰ Å”Ê‰œ
            SaveDialog.FileName := SaveDialog.FileName+'.'+Extention;
         Dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(SaveDialog.FileName);
      end;

      {Ranjbar 89.06.06 ID=3}
      //Exec_insert_UserLog(4000+ BBSaveFile.Tag , dm.Get_All_LetterLetterID.AsInteger);
      Exec_insert_UserLog(BBSaveFile.Name , dm.Get_All_LetterLetterID.AsInteger);
      //---
   end;
   SaveDialog.FileName := '';
   SaveDialog.Filter := '';
end;


procedure TFraddLetterData.BBShowClick(Sender: TObject);
var
   FileName : String;
begin
   inherited;
      Panel_Wait.Visible:=True;

      if _BaseSQLConnection.GetKeyvalue('SaveFileType')='2' then
      begin

           with dm,Get_LetterData_by_LetterDataID do
             begin
                close;
                Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
                Open;
                (FieldByName('Image') as TBlobField).SaveToFile(_TempPath +'temp'+Get_LetterData_by_LetterIDLetterDataID.AsString+'.'+Get_LetterData_by_LetterIDExt.AsString);
//                 FieldByName('').asBlobField
//                Get_LetterData_by_LetterDataIDImage.SaveToFile(_TempPath +'temp'+Get_LetterData_by_LetterIDLetterDataID.AsString+'.'+Get_LetterData_by_LetterIDExt.AsString);
                ShellExecute(Handle, 'open',pchar(_TempPath +'temp'+Get_LetterData_by_LetterIDLetterDataID.AsString+'.'+Get_LetterData_by_LetterIDExt.AsString),nil,nil,SW_SHOWNORMAL);
                {Ranjbar 89.06.06 ID=3}
                //Exec_insert_UserLog(4000+ BBShow.Tag , dm.Get_All_LetterLetterID.AsInteger);
                Exec_insert_UserLog(BBShow.Name , dm.Get_All_LetterLetterID.AsInteger);
                //---
             end;
      end
      else
        begin

   ///   with dm,Get_LetterData_by_LetterDataID do
///   begin
//      close;
//      Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
//      Open;
//      Get_LetterData_by_LetterDataIDImage.SaveToFile(_TempPath +'temp'+Get_LetterData_by_LetterIDLetterDataID.AsString+'.'+Get_LetterData_by_LetterIDExt.AsString);
///      ShellExecute(Handle, 'open',pchar(_TempPath +'temp'+Get_LetterData_by_LetterIDLetterDataID.AsString+'.'+Get_LetterData_by_LetterIDExt.AsString),nil,nil,SW_SHOWNORMAL);
//      {Ranjbar 89.06.06 ID=3}
///      //Exec_insert_UserLog(4000+ BBShow.Tag , dm.Get_All_LetterLetterID.AsInteger);
///      Exec_insert_UserLog(BBShow.Name , dm.Get_All_LetterLetterID.AsInteger);
///   end;

       with dm,Get_LetterData_by_LetterDataID do
       begin
          close;
          Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
          Open;
       end;
      FileName := dm.Get_LetterData_by_LetterDataIDPath.Value;
      Exec_insert_UserLog(BBShow.Name , dm.Get_All_LetterLetterID.AsInteger);
      SHowFiles(FileName);
             Panel_Wait.Visible:=False;
//      ShellExecute(Handle, 'Open',Pchar(dm.Get_LetterData_by_LetterDataIDPath.Value),nil,nil,SW_SHOWNORMAL);
    end;
    Panel_Wait.Visible:=False;
end;

procedure TFraddLetterData.DBGrid2DblClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.05.20 ID=0}
   BBShow.Click;
   //---
end;

procedure TFraddLetterData.WordApplicationDocumentBeforeClose(
  ASender: TObject; const Doc: _Document; var Cancel: WordBool);
begin
   inherited;
   {Ranjbar 88.05.25 ID=26}
   if Trim(TempFileNamePath) <> '' then
   begin
      WordDocument.SaveAs(TempFileNamePath);
      WordDocument.Close;
      WordApplication.Quit;
      WordApplication.Disconnect;
      Application.ProcessMessages;

      //–ŒÌ—Â ›«Ì· Ê—œ œ— œÌ «»Ì”
      Dm.Get_LetterData_by_LetterDataID.Edit;
      Dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(TempFileNamePath);
      Dm.Get_LetterData_by_LetterDataID.Post;

      TempFileNamePath := '';
   end;
   //---
end;

procedure TFraddLetterData.Button1Click(Sender: TObject);
Var
   RO,ItemIndex,Olv,Emp,F,Fals,Tru : OleVariant;
   Extention : String[5];
begin
   inherited;
   {Ranjbar 88.05.25 ID=26}
   Extention := Trim(Dm.Get_LetterData_by_LetterIDExtentionName.AsString);
   if (UpperCase(Extention) <> UpperCase('DOC'))And(UpperCase(Extention) <> UpperCase('DOCX')) then
   begin
      ShowMessage(' —« „Ì  Ê«‰ ÊÌ—«Ì‘ ‰„Êœ ' + ' Doc Ì« Docx  ' + ' ﬂ«—»— ê—«„Ì ° ›ﬁÿ ÅÌÊ” Â«Ì Ê—œ »«  Å”Ê‰œ ');
      Exit;
   end;

   with Dm , Get_LetterData_by_LetterDataID do
   begin
      Close;
      Parameters.ParamByName('@LetterdataID').Value := Dm.Get_LetterData_by_LetterIDLetterDataID.Value;
      Open;
      TempFileNamePath := _TempPath + Get_LetterData_by_LetterIDLetterDataID.AsString +
                          '.' + Get_LetterData_by_LetterIDExt.AsString;
      Get_LetterData_by_LetterDataIDImage.SaveToFile(TempFileNamePath);
   end;

   //«—”«· »Â Ê—œ
   emp  := '';
   fals := false;
   tru := true;
   olv := wdOpenFormatAuto;
   WordApplication.Disconnect;
   WordApplication.Caption := '‰—„ «›“«— »«Ìê«‰Ì'+_yeganeh;
   with WordApplication do
   begin
      ChangeFileOpenDirectory(_TempPath ); //+'Temp'
      F := Dm.Get_LetterData_by_LetterIDLetterDataID.AsString + '.' + Dm.Get_LetterData_by_LetterIDExt.AsString; //
      Ro := False; //

      Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

      If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
         ActiveWindow.Panes.Item(2).Close;

      If ActiveWindow.ActivePane.View.Type_ in [ wdNormalView ,wdOutlineView] Then
         ActiveWindow.ActivePane.View.Type_ := wdPrintView;

      ItemIndex := 1;
      WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
      Visible := True;
   end;
   //---

end;

procedure TFraddLetterData.aDeleteAttachmentExecute(Sender: TObject);
var
 _MyLetterID : string;
 AQry : TADOQuery;
begin
  inherited;
  if messageShow(39,True) then
  begin
    Exec_delete_LetterData(dm.Get_LetterData_by_LetterIDLetterDataID.AsInteger);
    RefreshData;
    {Ranjbar 89.06.06 ID=3}
    //Exec_insert_UserLog(4000+ BtnDelete.Tag , dm.Get_All_LetterLetterID.AsInteger);
    Exec_insert_UserLog(BtnDelete.Name , dm.Get_All_LetterLetterID.AsInteger);
    //---

    {Ranjbar 89.07.08 ID=12}
    //LetterEdit À»   €ÌÌ—«  «⁄„«· ‘œÂ —ÊÌ ”‰œ œ— ÃœÊ·
    Dm.Insert_LetterEdit(Dm.Get_All_LetterLetterID.AsInteger,'Õ–› Ìﬂ ÅÌÊ” ');
    //---
    AQry := TADOQuery.Create(nil);
    try
      AQry.Connection := Dm.YeganehConnection;
      AQry.Close;
      AQry.SQL.Text := ' update letter set Has_Page = dbo.has_Page(letterid), ' +
                       ' Has_WordPage = dbo.has_WordPage(letterid), ' +
                       ' Has_File = dbo.has_file(letterid) from Letter Where LetterID = ' + IntToStr(LetterID);
      AQry.ExecSQL;
    finally
      FreeAndNil(AQry);
    end;
  end;
end;

procedure TFraddLetterData.SHowFiles(FileName: String);
var
  FileExtentions:string;
begin
//
  FileExtentions:=UpperCase(ExtractFileExt(FileName));

  if  (FileExtentions='.MKV') or (FileExtentions='.MP4') or
      (FileExtentions='.DAT') or (FileExtentions='.MP3') or
      (FileExtentions='.MPEG') or (FileExtentions='.MPG')
    then
  begin
    if Application.MessageBox('¬Ì« „Ì ŒÊ«ÂÌœ ›«Ì· ÅŒ‘ ‘Êœø', '',
      MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      FileName:=_DownloadSetting._HttpUrl+'\'+FileName;
      FileName:=TIdURI.URLEncode(FileName);

      ShellExecute(Handle,nil,'wmplayer',PAnsiChar(FileName),nil,SHOW_OPENWINDOW);
    end
    else
      DownloadFiles(FileName)
    end
  else
  begin
    DownloadFiles(FileName)
  end;
end;

function TFraddLetterData.DownloadFiles(_URL: String): String;
var
  il:HRESULT;
  FileName:string;
begin

  if not  DirectoryExists('C:\Temp\') then
    CreateDir('C:\Temp\');

  FileName:='C:\Temp\'+FormatDateTime('HHMMSS',now)+ExtractFileExt(_URL);
  with IdFTP1 do
  begin
    Host:=_DownloadSetting._FtpIP;
    Username:=_DownloadSetting._FtpUserName;
    Password:=_DownloadSetting._FtpPassword;
    try
      Connect;
      if Connected then
      begin
        Get(_URL,FileName);
      end;
    except
    end;
    Disconnect;
  end;

  ShellExecute(Handle,nil,pansichar(FileName),nil,nil,SHOW_OPENWINDOW);
end;

procedure TFraddLetterData.ItializeDownloadSetting;
begin
  _BaseSQLConnection:=TBaseSQLConnection.Create;
  _DownloadSetting._HttpUrl:=_BaseSQLConnection.GetKeyvalue('HttpUrl');
  _DownloadSetting._FtpIP:=_BaseSQLConnection.GetKeyvalue('FtpIP');
  _DownloadSetting._FtpUserName:=_BaseSQLConnection.GetKeyvalue('FtpUserName');
  _DownloadSetting._FtpPassword:=_BaseSQLConnection.GetKeyvalue('FtpPassword');
end;

procedure TFraddLetterData.IdFTP1Work(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
  inherited;

  Application.ProcessMessages;
end;

function TFraddLetterData.SaveFile(_URL: String): string;
var
  il:HRESULT;
  FileName:string;
begin

  if not  DirectoryExists(Edit1.Text) then
    CreateDir('C:\Temp\');

  FileName:=Edit1.Text+FormatDateTime('HHMMSS',now)+ExtractFileExt(_URL);
  with IdFTP1 do
  begin
    Host:=_DownloadSetting._FtpIP;
    Username:=_DownloadSetting._FtpUserName;
    Password:=_DownloadSetting._FtpPassword;
    try
      Connect;
      if Connected then
      begin
        Get(_URL,FileName);
      end;
    except

    end;
    Disconnect;

  end;

  ShellExecute(Handle,nil,pansichar(Edit1.Text),nil,nil,SHOW_OPENWINDOW);
end;

procedure TFraddLetterData.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog.Execute;
  if OpenDialog.FileName<>'' then
    Edit1.Text:=OpenDialog.FileName
end;

procedure TFraddLetterData.BitBtn2Click(Sender: TObject);
var
  FileName:string;
  new_FileName:string;
begin
  inherited;
  Panel_Wait.Visible:=True;
  with dm,Get_LetterData_by_LetterDataID do
  begin
    close;
    Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
    Open;
  end;

  FileName := IntToStr(dm.Get_All_LetterLetterID.Value);
  Exec_insert_UserLog(BBShow.Name , dm.Get_All_LetterLetterID.AsInteger);
  Panel3.Visible:=False;
  new_FileName:=Edit1.Text+FileName+'.'+dm.Get_LetterData_by_LetterIDExt.AsString;
  (dm.Get_LetterData_by_LetterDataID.FieldByName('Image') as TBlobField).SaveToFile(new_FileName);
//  SaveFile(dm.Get_LetterData_by_LetterDataIDPath.Value);

  Panel_Wait.Visible:=False;

end;

procedure TFraddLetterData.edtSearchChange(Sender: TObject);
begin
  inherited;
  if Trim(edtSearch.Text) > '' then
  begin
    dm.Get_LetterData_by_LetterID.Filter := 'description Like ' + quotedstr('%' + Trim(edtSearch.Text) + '%') +
                                            ' Or VersionDate Like ' + quotedstr('%' + Trim(edtSearch.Text) + '%') +
                                            ' Or VersionNo Like ' + quotedstr('%' + Trim(edtSearch.Text) + '%');

    //dm.Get_LetterData_by_LetterID.Filter := 'ExtentionTitle Like ' + quotedstr('%' + Trim(edtSearch.Text) + '%');
    dm.Get_LetterData_by_LetterID.FilterOptions := [];
    dm.Get_LetterData_by_LetterID.Filtered := True;
  end
  else
    dm.Get_LetterData_by_LetterID.Filtered := False;
end;

end.
