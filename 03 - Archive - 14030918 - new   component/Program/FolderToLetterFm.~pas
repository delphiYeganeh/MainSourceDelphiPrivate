unit FolderToLetterFm;

{Ranjbar 21/10/89 ID=91}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ExtActns, ActnList, DB, ExtCtrls, StdCtrls,
  FileCtrl, Buttons, Grids, DBGrids, imageen, OleCtrls, ScanLibCtl_TLB,
  ieview, imageenview, ievect, dbimageenvect, DBCtrls, ComCtrls, ShellCtrls,
  YDbgrid, iemio, iemview, ADODB, psAPI, mmSystem, ShlObj, ShellApi, ShFolder,
  AdvGlowButton;

type
  TFMFolderToLetter = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SBConvert: TAdvGlowButton;
    ImageEnDBVect1: TImageEnDBVect;
    ImageEn1: TImageEn;
    DBNavigator1: TDBNavigator;
    SBScanImage: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    Label1: TLabel;
    SpeedButton1: TAdvGlowButton;
    YDBGrid1: TYDBGrid;
    Label2: TLabel;
    ShellTreeView1: TShellTreeView;
    FileListBox1: TFileListBox;
    SBLetter: TAdvGlowButton;
    ImageEnMView1: TImageEnMView;
    SpeedButton6: TAdvGlowButton;
    SpeedButton7: TAdvGlowButton;
    DBNavigator2: TDBNavigator;
    SBExportToWord: TAdvGlowButton;
    ImageEnView1: TImageEnView;
    Button1: TAdvGlowButton;
    Timer1: TTimer;
    Bevel1: TBevel;
    SpeedButton2: TAdvGlowButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    ChSendColor: TCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    Bevel2: TBevel;
    GroupBox2: TGroupBox;
    CBExtention: TComboBox;
    Label9: TLabel;
    pnlMain: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBConvertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure YDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ShellTreeView1Click(Sender: TObject);
    procedure YDBGrid1CellClick(Column: TColumn);
    procedure SBScanImageClick(Sender: TObject);
    procedure RGImageFormatClick(Sender: TObject);
    procedure SBLetterClick(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SBExportToWordClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function GetFileExt(FileExt : String):Integer;
  private
    InportSearchRec : TSearchRec;
    InportPath : String;
    FindFile : Integer;
    procedure ChangeTifToJpgAndSave(aFileName:String);
    procedure ChangeMultyTifToTifsAndSave(aFileName:String);
    function CurrentProcessMemory: Cardinal;
    procedure DSiTrimWorkingSet;
  public
    { Public declarations }
  end;

Var
   FMFolderToLetter: TFMFolderToLetter;

implementation

Uses FolderToLetterDM,YShamsiDate,DMu, ScanImageFm, UAddDocument, StrUtils,
  StdConvs;

{$R *.dfm}

procedure TFMFolderToLetter.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMFolderToLetter.ChangeTifToJpgAndSave(aFileName:String);
var
   I :Integer;
   error : String;
//   img : TImageEnMView;
begin
   //–ŒÌ—Â „Ì ‘Ê‰œ Jpg «“ ‰ê«—‘ 5 »Â »⁄œ  „«„Ì  ’«ÊÌ— »« ›—„ 
   //–ŒÌ—Â »’Ê—  TIFF
   error := 'AA';
   try
      if aFileName <> '' then
      begin
         //img := TImageEnMView.Create(FMFolderToLetter);
         //ShowMessage(error + ' ::' + IntToStr(CurrentProcessMemory));
         ImageEnMView1.Clear;
         ImageEnMView1.Deselect;
         error := 'BB';
         ImageEnMView1.MIO.LoadFromFile(aFileName);
         //img.MIO.LoadFromFile(aFileName);
      end;

      for I:=0 to ImageEnMView1.ImageCount-1 do
      begin

         With DMFolderToLetter do
         begin
            QrLetterData.Close;

            ImageEnMView1.MIO.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            ImageEnView1.IO.LoadFromFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            ImageEnView1.IO.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            ImageEnMView1.MoveImage(0,ImageEnMView1.ImageCount-1);
            error := 'CC';
            //ShowMessage(error + ' ::' + IntToStr(CurrentProcessMemory));

            QrLetterData.Parameters.ParamByName('LetterID').Value := QrLetterLetterID.AsInteger;
            QrLetterData.Open;
            QrLetterData.Append;
            error := 'DD';
            //ShowMessage(error + ' ::' + IntToStr(CurrentProcessMemory));
            QrLetterDataLetterID.AsInteger := QrLetterLetterID.AsInteger;
            if QrLetterData.State = dsInsert then
               QrLetterDataPageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                    ' from LetterData Where LetterID = '+QrLetterDataLetterID.AsString).Fields[0].value;
            //„Ì ‘Êœ Jpg »œ·Ì·  »œÌ· ‘œ‰ ›—„   ’«ÊÌ— Jpg=1 , Tiff=2
            QrLetterDataExtention.AsInteger := 2;
            QrLetterDataLastUpdate.AsDateTime := Now;
            QrLetterDataDescription.AsString := aFileName;

          {  ImageEnMView1.CopyToIEBitmap(ImageEnMView1.ImageRow[I] , ImageEnDBVect1.IEBitmap );
            ImageEnDBVect1.Update;

            ImageEnDBVect1.IO.SaveToFileJpeg(_TempPath+'\Tmp.JPG');}
            Application.ProcessMessages;
            QrLetterDataImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.tif') then
               DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            QrLetterData.Post;
            error := 'EE';
         end;
      end;
      ImageEnMView1.Clear;
      DSiTrimWorkingSet;
      //img.Free;
   except on E : Exception do
      begin
        ShowMessage('Exception message = ' + error + ' -- ' + E.Message);
      end;
   end;
end;

procedure TFMFolderToLetter.SBConvertClick(Sender: TObject);
var
   SrRec : TSearchRec;
   R , I, b, c, d, x, PageNumber : Integer;
   Path, Extention, fullFileName, ServerPath : String;
   BLKQry : TADOQuery;
begin
   inherited;
   //Hamed_Ansari_990126_S
    if CBExtention.ItemIndex = -1 then
    begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ›—„  ›«Ì· Â« —« «‰ Œ«» ‰„«ÌÌœ',[mbOK],mtInformation);
      if CBExtention.Enabled then
        CBExtention.SetFocus;
      Abort;
    end;
   //Hamed_Ansari_990126_E
   {ShellTreeView1.Selected.getFirstChild.Index;
   ShellTreeView1.Selected.GetLastChild.Index;
   Showmessage(ShellTreeView1.Selected.Item[0].Text);}
  if not(ChSendColor.Checked) then
  begin
    try
      SBConvert.Enabled := False;
      Screen.Cursor := crHourGlass;

      with DMFolderToLetter do
      begin
        if ShellTreeView1.Selected.HasChildren then
          ShellTreeView1.Selected.Expanded := True;

             //«ê— “Ì— ÅÊ‘Â «Ì ÊÃÊœ ‰œ«‘ 
        if ShellTreeView1.Selected.GetLastChild.Index = -1 then
        begin
          ShowMessage('ÂÌç “Ì— ÅÊ‘Â «Ì Ì«›  ‰‘œ ° ·ÿ›« ”—‘«ŒÂ «’·Ì —« «‰ Œ«» ‰„«ÌÌœ');
          Exit;
        end;


        QrLetter.Close;
        QrLetter.Open;

        for I:=0 to ShellTreeView1.Selected.GetLastChild.Index do
        begin
          Path := ShellTreeView1.Path+'\'+ShellTreeView1.Selected.Item[I].Text;

                //Hamed_Ansari_990126_S
          Extention := CBExtention.Text;
                //if RGImageFormat.ItemIndex = 0 then //Jpg
                //   Extention := 'Jpg'
                //else
                //   Extention := 'Tif';
                //Hamed_Ansari_990126_E
          R := FindFirst(Path+'\*.'+Extention , FaAnyfile, SrRec); //
          if R <> 0 then //«ê— ›«Ì· ÅÌœ« ‰‘œ
            Continue;

                //ﬁ—«— œ«œ‰ ‰«„ ÅÊ‘Â »⁄‰Ê«‰ ‘„«—Â ”‰œ
          QrLetter.Append;
          QrLetterIndicatorID.AsInteger := Dm.LastIndicatorID(1,1); //LetterFormat:=1;
          QrLetterRegistrationDate.AsString := _Today;
          QrLetterRegistrationTime.AsString := Dm.GetServerTime;
          QrLetterIncommingNO.AsString := ShellTreeView1.Selected.Item[I].Text; //‰«„ ÅÊ‘Â
          QrLetterIncommingdate.AsString := _Today;
          QrLetterMemo.AsString := ' »œÌ· ÅÊ‘Â »Â ”‰œ' + '  -  „”Ì— ÅÊ‘Â :  ' + Path;
          QrLetterClassificationID.AsInteger := Dm.DefaultRClassificationID;
          QrLetterUrgencyID.AsInteger := Dm.DefaultRUrgencyID    ;
          QrLetterNumberOfPage.AsInteger := Dm.DefaultNumberOfPage ;
          QrLetterReceiveTypeID.AsInteger := Dm.DefaultRReceiveTypeID;
          QrLetterFromOrgID.AsInteger := Dm.DefaultRFromOrgId;
          QrLetterMYear.AsInteger := Dm.CurrentMyear;
          QrLetterletterformat.AsInteger := 1;//LetterFormat;
          QrLetterSecretariatID.AsInteger := Dm.SecId;
          QrLetterUserID.AsInteger := _UserId;
          QrLetterLetter_Type.AsInteger := 1;
          QrLetterFinalized.AsBoolean := True;
          QrLetterToOrgID.AsInteger := _UserFromOrgID;
          if CBExtention.ItemIndex in [0,1] then
          begin
            QrLetterHas_Page.AsBoolean := True;
            QrLetterHas_WordPage.AsBoolean := False;
            QrLetterHas_File.AsBoolean := False;
          end
          else
          begin
            QrLetterHas_Page.AsBoolean := False;
            QrLetterHas_WordPage.AsBoolean := False;
            QrLetterHas_File.AsBoolean := True;
          end;
          QrLetter.Post;

                //Ê«—œ ﬂ—œ‰  ’«ÊÌ— »Â œÌ «»Ì”
          While R = 0 do //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
          begin
             //Hamed_Ansari_990126_S
             //if RGImageFormat.ItemIndex = 0 then //Jpg
            if CBExtention.ItemIndex <> 1 then
             //Hamed_Ansari_990126_E
            begin
              (*
              QrLetterData.Append;
              QrLetterDataLetterID.AsInteger := QrLetterLetterID.AsInteger;
              if QrLetterData.State = dsInsert then
              QrLetterDataPageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                     ' from LetterData Where LetterID = '+QrLetterDataLetterID.AsString).Fields[0].value;
              if FileExists(_ApplicationPath+'tmpFile')then
               DeleteFile(pchar(_ApplicationPath+'tmpFile'));
              if CopyFileW( dm.replacePWC(dm.StringToPWide(Path+'\'+SrRec.Name,x)), dm.StringToPWide(_ApplicationPath+'tmpFile',x), False) then
              //QrLetterDataImage.LoadFromFile(Path+'\'+SrRec.Name);
              QrLetterDataImage.LoadFromFile(_ApplicationPath+'tmpFile');
                //Hamed_Ansari_990126_S
              QrLetterDataExtention.AsInteger := GetFileExt(Extention);
                //QrLetterDataExtention.AsInteger := 1; //Jpg=1 , Tif=2
                //Hamed_Ansari_990126_E
              QrLetterDataLastUpdate.AsDateTime := Now;
              QrLetterDataDescription.AsString := ExtractFileName(Path+'\'+SrRec.Name);
              QrLetterData.Post;
              *)
              try
               { TODO -oparsa : 1403-01-05 }
               {
               ServerPath := Copy(Dm.ServerName,1,Pos('\',Dm.ServerName));
               ServerPath := '\\' + ServerPath + 'BulkInsert\' + 'tmpFile.' + CBExtention.Text;
                }
               ServerPath := _ApplicationPath + 'tmpFileBulkInsert.' + CBExtention.Text  ;
               { TODO -oparsa : 1403-01-05 }

               BLKQry := TADOQuery.Create(Self);
               BLKQry.Connection := Dm.YeganehConnection;
               BLKQry.CommandTimeout := 0;
               BLKQry.Close;
               PageNumber := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber from LetterData Where LetterID = '+QrLetterLetterID.AsString).Fields[0].value;

               { TODO -oparsa : 1403-01-05 }
               if FileExists(ServerPath)then
                 DeleteFile(pchar(ServerPath));

               //CopyFileW(PWideChar(Path+'\'+SrRec.Name),ServerPath,False);

               //CopyFileW(dm.replacePWC(dm.StringToPWide(Path+'\'+SrRec.Name,x)), dm.StringToPWide(ServerPath,x), False);
               if not CopyFile(Pchar(Path+'\'+SrRec.Name), Pchar(ServerPath), false) then
                 RaiseLastOSError;
               if FileExists(ServerPath)then
               { TODO -oparsa : 1403-01-05 }
               begin
                BLKQry.SQL.Text :=  ' INSERT INTO LetterData(LetterID,PageNumber,Extention,LastUpdate,[Description],[Image]) ' +
                                    ' SELECT ' + IntToStr(QrLetterLetterID.AsInteger) + ',' +
                                    IntToStr(PageNumber) +
                                    ',' + IntToStr(GetFileExt(Extention)) + ',' + DateToStr(Now) + ',' + QuotedStr(ExtractFileName(Path+'\'+SrRec.Name))+
                                    ', * FROM OPENROWSET(BULK N' + QuotedStr(ServerPath) + ', SINGLE_BLOB) AS Document ';
               end;
               BLKQry.ExecSQL;
              finally
               FreeAndNil(BLKQry);
              end;
            end
            else //Ê –ŒÌ—Â œ— œÌ «»Ì” Jpg »Â Tif  «»⁄  »œÌ·
              ChangeTifToJpgAndSave(Path+'\'+SrRec.Name);

            R := FindNext(SrRec);
          end;
        end;//For
      QrLetter.First;
      QrLetterData.First;
      Sysutils.FindClose(SrRec);
      YDBGrid1CellClick(nil);
      ShowMyMessage('ÅÌ€«„','«‰ ﬁ«· »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',[mbOK],mtInformation);
    end;//With
    finally

      Screen.Cursor := crDefault;
      SBConvert.Enabled := True;
    end;

  end
  else
  begin
    SBConvert.Enabled := False;
    Screen.Cursor := crHourGlass;
      with DMFolderToLetter do
      begin
             //«ê— “Ì— ÅÊ‘Â «Ì ÊÃÊœ ‰œ«‘ 
        if ShellTreeView1.Selected.GetLastChild.Index = -1 then
        begin
          ShowMessage('ÂÌç “Ì— ÅÊ‘Â «Ì Ì«›  ‰‘œ ° ·ÿ›« ”—‘«ŒÂ «’·Ì —« «‰ Œ«» ‰„«ÌÌœ');
          Screen.Cursor := crDefault;
          SBConvert.Enabled := True;
          Exit;
        end;

        QrLetter.Close;
        QrLetter.Open;

        Path := ShellTreeView1.Path;//+'\'+ShellTreeView1.Selected.Item[0].Text;
        QrLetter.Append;
        QrLetterIndicatorID.AsInteger := Dm.LastIndicatorID(1,1); //LetterFormat:=1;
        QrLetterRegistrationDate.AsString := _Today;
        QrLetterRegistrationTime.AsString := Dm.GetServerTime;
        QrLetterIncommingNO.AsString := ShellTreeView1.Selected.Text; //‰«„ ÅÊ‘Â
        QrLetterIncommingdate.AsString := _Today;
        QrLetterMemo.AsString := ' »œÌ· ÅÊ‘Â »Â ”‰œ' + '  -  „”Ì— ÅÊ‘Â :  ' + Path;
        QrLetterClassificationID.AsInteger := Dm.DefaultRClassificationID;
        QrLetterUrgencyID.AsInteger := Dm.DefaultRUrgencyID    ;
        QrLetterNumberOfPage.AsInteger := Dm.DefaultNumberOfPage ;
        QrLetterReceiveTypeID.AsInteger := Dm.DefaultRReceiveTypeID;
        QrLetterFromOrgID.AsInteger := Dm.DefaultRFromOrgId;
        QrLetterMYear.AsInteger := Dm.CurrentMyear;
        QrLetterletterformat.AsInteger := 1;//LetterFormat;
        QrLetterSecretariatID.AsInteger := Dm.SecId;
        QrLetterUserID.AsInteger := _UserId;
        QrLetterLetter_Type.AsInteger := 1;
        QrLetterFinalized.AsBoolean := True;
        QrLetterToOrgID.AsInteger := _UserFromOrgID;
       //Hamed_Ansari_990126_S
        if CBExtention.ItemIndex in [0,1] then
        begin
          QrLetterHas_Page.AsBoolean := True;
          QrLetterHas_WordPage.AsBoolean := False;
          QrLetterHas_File.AsBoolean := False;
        end
        else
        begin
          QrLetterHas_Page.AsBoolean := False;
          QrLetterHas_WordPage.AsBoolean := False;
          QrLetterHas_File.AsBoolean := True;
        end;
       //Hamed_Ansari_990126_E
        QrLetter.Post;

        for I:=0 to ShellTreeView1.Selected.GetLastChild.Index do
        begin
          Path := ShellTreeView1.Path+'\'+ShellTreeView1.Selected.Item[I].Text;
                //Hamed_Ansari_990126_S
                //if RGImageFormat.ItemIndex = 0 then //Jpg
                //   Extention := 'Jpg'
                //else
                //   Extention := 'Tif';
          Extention := CBExtention.Text;
                //Hamed_Ansari_990126_E
          R := FindFirst(Path+'\*.'+Extention , FaAnyfile, SrRec); //
          while R = 0 do //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
          begin
                 //Hamed_Ansari_990126_S
            if CBExtention.ItemIndex <> 1 then //Jpg
                 //if RGImageFormat.ItemIndex = 0 then //Jpg
                 //Hamed_Ansari_990126_E
            begin
              fullFileName := Path;//'D:\DataBase\¬»Ì_5000';
              name := extractfilename(fullFileName);
              c:= AnsiPos('_',name);
              b := Length(name);
              d := strtoint(copy(name,c + 1, b));

              QrLetterData.Append;
              QrLetterDataLetterID.AsInteger := QrLetterLetterID.AsInteger;
              if QrLetterData.State = dsInsert then
                QrLetterDataPageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                   ' from LetterData Where LetterID = '+QrLetterDataLetterID.AsString).Fields[0].value;
              QrLetterDataImage.LoadFromFile(Path+'\'+SrRec.Name);
              //Hamed_Ansari_990126_S
              QrLetterDataExtention.AsInteger := GetFileExt(Extention);
              //QrLetterDataExtention.AsInteger := 1; //Jpg=1 , Tif=2
              //Hamed_Ansari_990126_E
              QrLetterDataLastUpdate.AsDateTime := Now;
              QrLetterDataDescription.AsString := Path;
              QrLetterDataColorID.AsInteger := d;
              QrLetterData.Post;
            end
            else //Ê –ŒÌ—Â œ— œÌ «»Ì” Jpg »Â Tif  «»⁄  »œÌ·
              ChangeTifToJpgAndSave(Path+'\'+SrRec.Name);

            R := FindNext(SrRec);
          end;

        end;

      end;
      Sysutils.FindClose(SrRec);
      YDBGrid1CellClick(nil);
      Screen.Cursor := crDefault;
      SBConvert.Enabled := True;
      ShowMyMessage('ÅÌ€«„','«‰ ﬁ«· »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',[mbOK],mtInformation);
    end;
end;

procedure TFMFolderToLetter.FormCreate(Sender: TObject);
begin
  inherited;
  DMFolderToLetter := TDMFolderToLetter.Create(Self);
  Qry_CloseAllQry(DMFolderToLetter);
end;

procedure TFMFolderToLetter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   Sysutils.FindClose(InportSearchRec);
   Qry_CloseAllQry(DMFolderToLetter);
   FreeAndNil(DMFolderToLetter);
end;

procedure TFMFolderToLetter.FormShow(Sender: TObject);
begin
   inherited;
   DBNav_Setup(DBNavigator1);
end;

procedure TFMFolderToLetter.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–›  „«„Ì ”‰œÂ«Ì Õ–› ‘œÂ Â” Ìœø',mbOKCancel,mtWarning)= mrCancel then
    Exit;

  with DMFolderToLetter do
    while QrLetter.RecordCount <> 0 do
      QrLetter.Delete;
end;

procedure TFMFolderToLetter.YDBGrid1DrawColumnCell(Sender: TObject;
          const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
  inherited;
  DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlightText);//Uses Types,Graphics
end;

procedure TFMFolderToLetter.ShellTreeView1Change(Sender: TObject;Node: TTreeNode);
var
  Extention : String;
begin
  inherited;
  //»«—ê–«—Ì  ’ÊÌ—
  //Hamed_Ansari_990126_S
  Extention := CBExtention.Text;
   //if RGImageFormat.ItemIndex = 0 then //Jpg
   //begin
   //   Extention := 'Jpg';
   //
   //end
   //   else
   //   begin
   //      Extention := 'Tif';
   //   end;
   //Hamed_Ansari_990126_S
  InportPath := ShellTreeView1.Path;
  { TODO -oparsa : 1403-01-03 }
  if  Extention <> ''  then
  { TODO -oparsa : 1403-01-03 }
    FindFile := SysUtils.FindFirst(InportPath+'\*.'+Extention, FaAnyfile, InportSearchRec);  ///

  { TODO -oparsa : 1403-01-05 }
  //if FindFile <> 0 then //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
  if (FindFile = 0) and (InportSearchRec.Name <> '') then //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
  { TODO -oparsa : 1403-01-05 }
  begin
      //Hamed_Ansari_990126_S
    Case CBExtention.ItemIndex of //Jpg
     0 : ImageEn1.IO.LoadFromFileJpeg(InportPath + '\'+ InportSearchRec.Name);
     1 : ImageEn1.IO.LoadFromFileTIFF(InportPath + '\'+ InportSearchRec.Name);
    end;
      //Hamed_Ansari_990126_E
  end
  else
    ImageEn1.Clear;

  FileListBox1.Directory := ShellTreeView1.Path;

  FileListBox1.Mask :=  '*.'+Extention;
end;

procedure TFMFolderToLetter.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FindFile := FindNext(InportSearchRec);
  if FindFile = 0 then //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
  begin
    //Hamed_Ansari_990126_S
    { TODO -oparsa : 1403-01-05 }
    {
    if CBExtention.ItemIndex = 0 then //Jpg
      ImageEn1.IO.LoadFromFileJpeg(InportPath+InportSearchRec.Name);
    if CBExtention.ItemIndex = 1 then //Jpg
      ImageEn1.IO.LoadFromFileTIFF(InportPath+InportSearchRec.Name);
      }
    Case CBExtention.ItemIndex of //Jpg
     0 : ImageEn1.IO.LoadFromFileJpeg(InportPath + '\'+ InportSearchRec.Name);
     1 : ImageEn1.IO.LoadFromFileTIFF(InportPath + '\'+ InportSearchRec.Name);
    end;
    { TODO -oparsa : 1403-01-05 }
      //if RGImageFormat.ItemIndex = 0 then //Jpg
      //   ImageEn1.IO.LoadFromFileJpeg(InportPath+InportSearchRec.Name)
      //else
      //   ImageEn1.IO.LoadFromFileTIFF(InportPath+InportSearchRec.Name);
      //Hamed_Ansari_990126_E
      { TODO -oparsa : 1403-01-05 }
      //FileListBox1.FileName := InportPath+InportSearchRec.Name;
      FileListBox1.FileName := InportPath+ '\'+ InportSearchRec.Name;
      { TODO -oparsa : 1403-01-05 }
  end;
end;

procedure TFMFolderToLetter.SpeedButton7Click(Sender: TObject);
var
  Extention : String;
begin
   inherited;
   //Hamed_Ansari_990126_S
   Extention := CBExtention.Text;
   //if RGImageFormat.ItemIndex = 0 then //Jpg
   //   Extention := 'Jpg'
   //else
   //   Extention := 'Tif';
   //Hamed_Ansari_990126_E
   FindFile := FindFirst(InportPath+'\*.'+Extention , FaAnyfile, InportSearchRec);  ///
   if FindFile = 0 then //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
   begin
      //Hamed_Ansari_990126_S
      { TODO -oparsa : 1403-01-05 }
      {
      if CBExtention.ItemIndex = 0 then //Jpg
         ImageEn1.IO.LoadFromFileJpeg(InportPath+InportSearchRec.Name);
      if CBExtention.ItemIndex = 1 then //Jpg
         ImageEn1.IO.LoadFromFileTIFF(InportPath+InportSearchRec.Name);
      //if RGImageFormat.ItemIndex = 0 then //Jpg
      //   ImageEn1.IO.LoadFromFileJpeg(InportPath+InportSearchRec.Name)
      //else
      //   ImageEn1.IO.LoadFromFileTIFF(InportPath+InportSearchRec.Name);
      //Hamed_Ansari_990126_E
      FileListBox1.FileName := InportPath+InportSearchRec.Name;
      }
      Case CBExtention.ItemIndex of //Jpg
        0 : ImageEn1.IO.LoadFromFileJpeg(InportPath + '\'+ InportSearchRec.Name);
        1 : ImageEn1.IO.LoadFromFileTIFF(InportPath + '\'+ InportSearchRec.Name);
      end;

      FileListBox1.FileName := InportPath+ '\'+ InportSearchRec.Name;
      { TODO -oparsa : 1403-01-05 }
   end;
end;

procedure TFMFolderToLetter.ShellTreeView1Click(Sender: TObject);
begin
   inherited;
   //Ã” ÃÊÌ —ﬂÊ—œ „ ‰«Ÿ—
  if (DMFolderToLetter.QrLetter.Active) And (DMFolderToLetter.QrLetter.RecordCount > 0) then
    DMFolderToLetter.QrLetter.Locate('IncommingNO',ShellTreeView1.Selected.Text,[]);
end;

procedure TFMFolderToLetter.YDBGrid1CellClick(Column: TColumn);
Var
   I : Integer;
begin
   inherited;
   //«‰ Œ«» ÅÊ‘Â «“ —ÊÌ —ﬂÊ—œ
  ShellTreeView1.SetFocus;
  if (DMFolderToLetter.QrLetter.Active)And(DMFolderToLetter.QrLetter.RecordCount > 0) then
  begin
    for I := 0 to ShellTreeView1.Items.Count - 1 do
      if ShellTreeView1.Items.Item[I].Text = Trim(DMFolderToLetter.QrLetterIncommingNO.AsString) then
        ShellTreeView1.Select(ShellTreeView1.Items.Item[I]);
  end;
end;

procedure TFMFolderToLetter.SBScanImageClick(Sender: TObject);
begin
   inherited;
   Try
      FmScanImage := TFmScanImage.Create(nil);
      FmScanImage.LetterID := DMFolderToLetter.QrLetterLetterID.AsInteger;
      FmScanImage.ShowModal;
   Finally
      FreeAndNil(FmScanImage);
   End;
end;

procedure TFMFolderToLetter.RGImageFormatClick(Sender: TObject);
begin
   inherited;
   ShellTreeView1Change(Sender,nil);
   ShellTreeView1Click(Sender);
end;

procedure TFMFolderToLetter.SBLetterClick(Sender: TObject);
begin
   inherited;
   if not(DMFolderToLetter.QrLetter.Active)or(DMFolderToLetter.QrLetter.RecordCount = 0) then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç ”‰œ À»  ‘œÂ «Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;

   FrAddDocument := TFrAddDocument.Create(Application);
   FrAddDocument.GetLetter(DMFolderToLetter.QrLetterLetterID.AsInteger);
   //if EditMode then
      //DataSetEdit.Execute;
   FrAddDocument.DataSetDelete.Visible := False;
   FrAddDocument.DataSetDelete.Enabled := False;
   FrAddDocument.ShowModal;
end;

procedure TFMFolderToLetter.FileListBox1Click(Sender: TObject);
begin
   inherited;
   //Hamed_Ansari_990126_S
   if CBExtention.ItemIndex = 0 then //Jpg
      ImageEn1.IO.LoadFromFileJpeg(FileListBox1.FileName);
   if CBExtention.ItemIndex = 1 then
      ImageEn1.IO.LoadFromFileTIFF(FileListBox1.FileName);
   (*
   if RGImageFormat.ItemIndex = 0 then //Jpg
      ImageEn1.IO.LoadFromFileJpeg(FileListBox1.FileName) //ShellTreeView1.Path+'\'+
   else
      ImageEn1.IO.LoadFromFileTIFF(FileListBox1.FileName);*)
   //Hamed_Ansari_990126_S
end;

procedure TFMFolderToLetter.YDBGrid1DblClick(Sender: TObject);
begin
   inherited;
   SBLetter.Click;
end;

procedure TFMFolderToLetter.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   inherited;
   YDBGrid1CellClick(nil);
end;

procedure TFMFolderToLetter.SBExportToWordClick(Sender: TObject);
begin
   inherited;
   if DMFolderToLetter.QrLetter.RecordCount = 0 then
      Exit;
   YDBGrid1.ExportToWord('');//Convert.doc
end;

procedure TFMFolderToLetter.ChangeMultyTifToTifsAndSave(aFileName: String);
Var
   I:integer; // 1391/10/11 Edited
begin
  try
    if aFileName <> '' then
    begin
      ImageEnMView1.Clear;
      ImageEnMView1.MIO.LoadFromFile(aFileName);
    end;

    for I:=0 to ImageEnMView1.ImageCount-1 do
    begin
      With DMFolderToLetter do
      begin
        ImageEnMView1.MIO.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
        ImageEnView1.io.LoadFromFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
        ImageEnView1.io.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
        ImageEnMView1.MoveImage(0,imageEnMView1.ImageCount-1);
        QrSelImage.Append;
        QrSelImageLetterID.AsInteger := FmScanImage.LetterID;
        if QrLetterData.State=dsinsert then
           QrSelImagePageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                ' from LetterData Where LetterID = '+QrSelImageLetterID.AsString).Fields[0].value;

        QrSelImageExtention.AsInteger := 2;
        QrSelImageLastUpdate.AsDateTime := Now;
        QrSelImageDescription.AsString := aFileName;
        Application.ProcessMessages;
        QrSelImageImage.LoadFromFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
        if FileExists(_TempPath+'\output'+IntToStr(i+1)+'.tif') then
          DeleteFile(_TempPath+'\output'+IntToStr(i+1)+'.tif');
        QrSelImage.Post;
      end;
    end;
      ImageEnMView1.Clear;
  except

  end;
end;

procedure TFMFolderToLetter.Button1Click(Sender: TObject);
var
  fullFileName : string;
  name :string;
  b,c: Integer;
begin
  fullFileName := 'D:\DataBase\¬»Ì_5000';
  name := extractfilename  (fullFileName);
  c:= AnsiPos('_',name)  ;
  b :=  Length(name);
  name := copy(name,c + 1, b);
end;

procedure TFMFolderToLetter.Timer1Timer(Sender: TObject);
begin
  { if Bevel1.Visible then
     Bevel1.Visible:= false
   else
     Bevel1.Visible:= True
   }
end;
//Hamed_Ansari_990126_S
function TFMFolderToLetter.GetFileExt(FileExt: String): Integer;
var
  AQry : TADOQuery;
begin
  AQry := TADOQuery.Create(nil);
  try
    AQry.Connection := Dm.YeganehConnection;
    AQry.Close;
    AQry.SQL.Text := 'Select ExtentionId From Extention Where Extention = ' + QuotedStr(FileExt);
    AQry.Open;
    if AQry.RecordCount > 0 then
      Result := AQry.FieldByName('ExtentionId').AsInteger
    else
      Result := -1;
  finally
    FreeAndNil(AQry);
  end;
end;
//Hamed_Ansari_990126_E

function TFMFolderToLetter.CurrentProcessMemory: Cardinal;
var
  MemCounters: TProcessMemoryCounters;
begin
  MemCounters.cb := SizeOf(MemCounters);
  if GetProcessMemoryInfo(GetCurrentProcess, @MemCounters, SizeOf(MemCounters)) then
    Result := MemCounters.WorkingSetSize
  else
    RaiseLastOSError;
end;

procedure TFMFolderToLetter.DSiTrimWorkingSet;
var
  hProcess: THandle;
begin
  hProcess := OpenProcess(PROCESS_SET_QUOTA, false, GetCurrentProcessId);
  try
    SetProcessWorkingSetSize(hProcess, $FFFFFFFF, $FFFFFFFF);
  finally
    CloseHandle(hProcess);
  end;
end;

end.
