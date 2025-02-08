unit FolderToLetterFm;

{Ranjbar 21/10/89 ID=91}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ExtActns, ActnList, DB, ExtCtrls, StdCtrls,
  FileCtrl, Buttons, Grids, DBGrids, imageen, OleCtrls, ScanLibCtl_TLB,
  ieview, imageenview, ievect, dbimageenvect, DBCtrls, ComCtrls, ShellCtrls,
  YDbgrid, iemio, iemview, ADODB;

type
  TFMFolderToLetter = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SBConvert: TSpeedButton;
    ImageEnDBVect1: TImageEnDBVect;
    ImageEn1: TImageEn;
    DBNavigator1: TDBNavigator;
    SBScanImage: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    YDBGrid1: TYDBGrid;
    Label2: TLabel;
    ShellTreeView1: TShellTreeView;
    FileListBox1: TFileListBox;
    SBLetter: TSpeedButton;
    ImageEnMView1: TImageEnMView;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBNavigator2: TDBNavigator;
    SBExportToWord: TSpeedButton;
    ImageEnView1: TImageEnView;
    Button1: TButton;
    Timer1: TTimer;
    Bevel1: TBevel;
    SpeedButton2: TSpeedButton;
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
Var
   I:integer;
begin
   //–ŒÌ—Â „Ì ‘Ê‰œ Jpg «“ ‰ê«—‘ 5 »Â »⁄œ  „«„Ì  ’«ÊÌ— »« ›—„ 
   //–ŒÌ—Â »’Ê—  TIFF

   Try
      if aFileName <> '' then
      begin
         ImageEnMView1.Clear;
         ImageEnMView1.MIO.LoadFromFile(aFileName);
      end;

      For I:=0 to ImageEnMView1.ImageCount-1 do
      begin
         With DMFolderToLetter do
         begin
            ImageEnMView1.MIO.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            ImageEnView1.io.LoadFromFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            ImageEnView1.io.SaveToFileTIFF(_TempPath+'\output'+IntToStr(i+1)+'.tif');
            ImageEnMView1.MoveImage(0,imageEnMView1.ImageCount-1);

            QrLetterData.Append;
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
         end;
      end;
      ImageEnMView1.Clear;
   Except

   End;
end;

procedure TFMFolderToLetter.SBConvertClick(Sender: TObject);
Var
   SrRec : TSearchRec;
   R , I : Integer;
   Path,Extention : String;

   fullFileName : string;
   name :string;
   b,c,d: Integer;

begin
   inherited;
   //Hamed_Ansari_990126_S
   if CBExtention.ItemIndex = -1 then
    begin
     ShowMyMessage('ÅÌ€«„','·ÿ›« ›—„  ›«Ì· Â« —« «‰ Œ«» ‰„«ÌÌœ',[mbOK],mtInformation);
     if CBExtention.Enabled then CBExtention.SetFocus;
     Abort;
    end;
   //Hamed_Ansari_990126_E
   {ShellTreeView1.Selected.getFirstChild.Index;
   ShellTreeView1.Selected.GetLastChild.Index;
   Showmessage(ShellTreeView1.Selected.Item[0].Text);}
   if not(ChSendColor.Checked) then
   begin
       Try
          SBConvert.Enabled := False;
          Screen.Cursor := crHourGlass;

          With DMFolderToLetter do
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

             For I:=0 to ShellTreeView1.Selected.GetLastChild.Index do
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
                      QrLetterData.Post;
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
       Finally

          Screen.Cursor := crDefault;
          SBConvert.Enabled := True;
       End;
   end
   else
   begin
     SBConvert.Enabled := False;
     Screen.Cursor := crHourGlass;
          With DMFolderToLetter do
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

          For I:=0 to ShellTreeView1.Selected.GetLastChild.Index do
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
                if R <> 0 then //«ê— ›«Ì· ÅÌœ« ‰‘œ
                   Continue;
                While R = 0 do //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
                begin
                 //Hamed_Ansari_990126_S
                 if CBExtention.ItemIndex <> 1 then //Jpg
                 //if RGImageFormat.ItemIndex = 0 then //Jpg
                 //Hamed_Ansari_990126_E
                 begin
                    fullFileName := Path;//'D:\DataBase\¬»Ì_5000';
                    name := extractfilename  (fullFileName);
                    c:= AnsiPos('_',name)  ;
                    b :=  Length(name);
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
      
   With DMFolderToLetter do
      While QrLetter.RecordCount <> 0 do
         QrLetter.Delete;
end;

procedure TFMFolderToLetter.YDBGrid1DrawColumnCell(Sender: TObject;
          const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   inherited;
   DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlightText);//Uses Types,Graphics
end;

procedure TFMFolderToLetter.ShellTreeView1Change(Sender: TObject;Node: TTreeNode);
Var
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
   FindFile := FindFirst(InportPath+'\*.'+Extention, FaAnyfile, InportSearchRec);  ///
   if FindFile = 0 then //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
   begin
      //Hamed_Ansari_990126_S
      if CBExtention.ItemIndex = 0 then //Jpg
         ImageEn1.IO.LoadFromFileJpeg(InportPath+InportSearchRec.Name);
      if CBExtention.ItemIndex = 1 then
         ImageEn1.IO.LoadFromFileTIFF(InportPath+InportSearchRec.Name);
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
   end;      
end;

procedure TFMFolderToLetter.SpeedButton7Click(Sender: TObject);
Var
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
   end;
end;

procedure TFMFolderToLetter.ShellTreeView1Click(Sender: TObject);
begin
   inherited;
   //Ã” ÃÊÌ —ﬂÊ—œ „ ‰«Ÿ—
   if (DMFolderToLetter.QrLetter.Active)And(DMFolderToLetter.QrLetter.RecordCount > 0) then
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
      for I:=0 to ShellTreeView1.Items.Count-1 do
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
   I, TotalImages:integer; // 1391/10/11 Edited
   recCount : integer;
begin
   Try
      if aFileName <> '' then
      begin
         ImageEnMView1.Clear;
         ImageEnMView1.MIO.LoadFromFile(aFileName);
      end;

      For I:=0 to ImageEnMView1.ImageCount-1 do
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
   Except

   End;
end;

procedure TFMFolderToLetter.Button1Click(Sender: TObject);
var
  fullFileName : string;
  name,ext :string;
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
 Result := -1;
 AQry := TADOQuery.Create(nil);
 try
  AQry.Connection := Dm.YeganehConnection;
  AQry.Close;
  AQry.SQL.Text := 'Select ExtentionId From Extention Where Extention = ' + QuotedStr(FileExt);
  AQry.Open;
 Result := AQry.FieldByName('ExtentionId').AsInteger;
 finally
  FreeAndNil(AQry);
 end;
end;
//Hamed_Ansari_990126_E
end.
