unit ScanImageFm;
interface

uses
  BaseUnit,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, ComCtrls, StdCtrls, Mask, Buttons, DB, ADODB,
  ExtDlgs,  ExtActns, ActnList, DBActns, XPStyleActnCtrls, ActnMan,
  ieview, imageenview, dbimageen, ievect, dbimageenvect,
  rulerbox, iegradientbar, histogrambox, iemview, iemio, hvideocap,
  videocap, imageenproc, imageen, dbcgrids, imageenio, Spin , FileCtrl ,
  ShellApi    , hyieutils ,hyiedefs , Printers, OleCtrls, ScanLibCtl_TLB,
  Menus;



type
  TFmScanImage = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ImageToolPanel: TPanel;
    Panel4: TPanel;
    DBN1: TDBNavigator;
    xpBitBtn1: TBitBtn;
    FitToPage: TBitBtn;
    SpeedButton5: TBitBtn;
    SpeedButton1: TBitBtn;
    MainActionManager: TActionManager;
    Apost: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Aclose: TAction;
    NextPage: TAction;
    PreviosPage: TAction;
    NewPage: TAction;
    AEDit: TDataSetEdit;
    Aprintt: TAction;
    AClear: TAction;
    Scan: TAction;
    OpenFile: TAction;
    Adelete: TAction;
    SaveAs: TAction;
    SignPic: TAction;
    ColorDialog: TColorDialog;
    SavePictureDialog: TSavePictureDialog;
    OpenPictureDialog: TOpenPictureDialog;
    PanelRecommite: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ImageEnIO1: TImageEnIO;
    xpBitBtn2: TBitBtn;
    BBScan: TBitBtn;
    BBSaveToFile: TBitBtn;
    ImageEnProc1: TImageEnProc;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    BBSaveAllToFiles: TBitBtn;
    BBOpenFile: TBitBtn;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    LabelZoom: TLabel;
    ImageEnMIO1: TImageEnMIO;
    SBSettings: TSpeedButton;
    ActSaveAll: TAction;
    BBSelScaner: TBitBtn;
    BitBtn1: TBitBtn;
    Panel8: TPanel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    DBLkCBListItemsID: TDBLookupComboBox;
    DBENotes: TDBEdit;
    SBDelAllData: TSpeedButton;
    Panel5: TPanel;
    ImageEnMView1: TImageEnMView;
    ImageEnDBVect1: TImageEnDBVect;
    ImgScan: TImgScan;
    SBGoToPAge: TSpeedButton;
    Timer1: TTimer;
    toolpanel: TPageControl;
    BrushTab: TTabSheet;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Label1: TLabel;
    Label7: TLabel;
    SBBrush: TSpeedButton;
    SBZoom: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    SBResize: TSpeedButton;
    BBUndo: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    SpinEdit1: TSpinEdit;
    BitBtn2: TBitBtn;
    CBHideObjects: TCheckBox;
    RGPenType: TRadioGroup;
    SEBrushSize: TSpinEdit;
    BrushColor: TPanel;
    Panel6: TPanel;
    CloseBtn: TSpeedButton;
    openBtn: TSpeedButton;
    ASBDelAllData: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBSaveToFileClick(Sender: TObject);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure BBScanClick(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure FitToPageClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BBSaveAllToFilesClick(Sender: TObject);
    procedure BBOpenFileClick(Sender: TObject);
    procedure OpenFileExecute(Sender: TObject);
    procedure SaveAsExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ImageEnDBView3Click(Sender: TObject);
    procedure DBN1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure ScanExecute(Sender: TObject);
    procedure BrushColorClick(Sender: TObject);


    procedure CreateBrush(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ImageEnMView1ImageSelect(Sender: TObject; idx: Integer);
    procedure RGOperationClick(Sender: TObject);
    procedure RGPenTypeClick(Sender: TObject);
    procedure SEBrushSizeChange(Sender: TObject);
    procedure ImageEnDBVect1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImageEnDBVect1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBZoomClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ImageEnDBVect1NewObject(Sender: TObject; hobj: Integer);
    procedure ImageEnDBVect1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SignPicExecute(Sender: TObject);
    procedure CBHideObjectsClick(Sender: TObject);
    procedure BBUndoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBBrushClick(Sender: TObject);
    procedure ImageEnDBVect1ViewChange(Sender: TObject; Change: Integer);
    procedure ImageEnIO1AcquireBitmap(Sender: TObject; ABitmap: TIEBitmap;
      var Handled: Boolean);
    procedure SBSettingsClick(Sender: TObject);
    procedure AprinttExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MainActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure ActSaveAllExecute(Sender: TObject);
    procedure BBSelScanerClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SBResizeClick(Sender: TObject);
    procedure SBDelAllDataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBGoToPAgeClick(Sender: TObject);
    Procedure SetShowImageTool(Value: boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure openBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    FShowImageTool: boolean;
    StartX , StartY , LastX , LastY:integer;
    Procedure ControlEnabled(Anabled:Boolean);
    Procedure Exec_UserLog(SenderTag:string);
    procedure FillData(aFileName:String);
    procedure SetTextFontColor;
    procedure ControlAnable(anable:Boolean);
    procedure HaveAccess(Button: TNavigateBtn);
  public
    ReceiveTypeID : integer; 
    LetterID : Integer;
    RReadOnly : Boolean;
    procedure ChangeTifToJpgAndSave(aFileName:String;InsertMode:boolean);
   Property ShowImageTool: Boolean read FShowImageTool write SetShowImageTool;

    Procedure Close_Open_QrLetterData;
  end;

Var
  FmScanImage: TFmScanImage;

implementation

Uses Dmu, ScanImageDM , YShamsiDate , BusinessLayer, UMain,
     InsertText, Settingsu, AllScanImageFm, ImageDataFM, PicProgressFm, PrintFm,
  WaitPleaseFM;

{$R *.dfm}


procedure TFmScanImage.FormShow(Sender: TObject);
begin
   inherited;
if not dm.GetActionAccess(ASBDelAllData.name,Self.Tag) then SBDelAllData.Hide;
if not dm.GetActionAccess(Adelete.Name,self.Tag) then dbn1.VisibleButtons:=DBN1.VisibleButtons-[nbDelete];
if not dm.GetActionAccess(AEDit.Name,self.Tag) then dbn1.VisibleButtons:=DBN1.VisibleButtons-[nbEdit];
if not dm.GetActionAccess(Apost.Name,self.Tag) then dbn1.VisibleButtons:=DBN1.VisibleButtons-[nbPost];
if not dm.GetActionAccess(NewPage.Name,self.Tag) then dbn1.VisibleButtons:=DBN1.VisibleButtons-[nbInsert];
ShowImageTool:=false;

   //‘Êœ œ— €Ì— «Ì‰’Ê—  «Ì‰ ﬂ‰ —· ⁄„· ‰„Ìﬂ‰œ Visible=False Ì« Hide ‰»«Ìœ »Â ÂÌç ⁄‰Ê«‰ ImageEnMView1  ÊÃÂ : ﬂ‰ —·

   With DMScanImage do
   begin
      Close_Open_QrLetterData;
      LetterID2 := LetterID;

      QrListItems.Close;
      QrListItems.Parameters.ParamByName('UsersID').Value := _UserId;
      QrListItems.Open;
   end;
   //
   ImageEnDBVect1.Align := alClient;
   ImageEnDBVect1.Repaint;
   DBNav_Setup(DBN1);

   ControlEnabled(False);
   BrushColor.Color := $00FF6C6C;
   ImageEnDBVect1.MaxSelectionDistance := 1;
   ControlAnable(False);
   Toolpanel.Enabled := False;

   //‰—„ «›“«— ﬂ«— «»·
   if _Kartable then
   begin
      SBDelAllData.Visible := False;
   end
      else
      begin
         PanelRecommite.Visible := False;
      end;

   //ò«— «»·
   if RReadOnly = True then
   begin
      ImageToolPanel.Visible := False;
      BBScan.Enabled := False;
      BBSelScaner.Enabled := False;
      BBOpenFile.Enabled := False;
      DBN1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
      DBN1.Width := 220;
   end;

   Align := alClient;

     Timer1.Enabled := True;

   ImageEnProc1.AttachedImageEn := ImageEnDBVect1;
   ImageEnIO1.AttachedImageEn := ImageEnDBVect1;
   ImageEnMIO1.AttachedMView := ImageEnMView1;
end;


procedure TFmScanImage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   With DMScanImage do
   begin
      QrDelLetterData.Close;
      QrListItems.Close;
      SPAllImage.Close;
      QrSelImage.Close;
      QrLetterData.Close;
   end;

end;

procedure TFmScanImage.BBSaveToFileClick(Sender: TObject);
begin
  inherited;
  SaveAs.Execute;
  Exec_UserLog(TBitBtn(Sender).name);
end;

procedure TFmScanImage.DBN1Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  if Button = nbInsert then
  begin
     if Not(DMScanImage.QrSelImage.State = dsInsert) then
        DMScanImage.QrSelImage.Append;
     ControlEnabled(True);
  end;
  if Button = nbedit then
  begin
     ControlEnabled(True);
  end;

  if Button = nbCancel then
  begin
     DMScanImage.QrSelImage.Cancel;
     While ImageEnDBVect1.LayersCount > 1 do
        ImageEnDBVect1.LayersRemove(ImageEnDBVect1.LayersCount-1);

     ImageEnDBVect1.DataSource.DataSet.Next;
     ImageEnDBVect1.DataSource.DataSet.Prior;
     ControlEnabled(False);
  end;
  ImageEnDBVect1.FitToWidth;
end;

Procedure TFmScanImage.FillData(aFileName:String);
begin
   With DMScanImage do
   begin
     if QrLetterData.State=dsinsert then  QrSelImage.Append else QrSelImage.Edit;
     
      QrSelImageImage.LoadFromFile(aFileName);
      if UpperCase(File_GetFileExt(aFileName)) <> 'TIF' then
         QrSelImageExtention.AsInteger := 1 //Jpg or Jpeg
      else
         QrSelImageExtention.AsInteger := 2; //Tiff Format
      //
      ImageEnDBVect1.LayersRemove(1);//
      QrSelImageLastUpdate.AsDateTime := Now;
      QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
      QrSelImage.Post;
      //
      Application.ProcessMessages;
   end;
end;

procedure TFmScanImage.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure TFmScanImage.BBScanClick(Sender: TObject);
begin
  inherited;
  Scan.Execute;
  Exec_UserLog(TBitBtn(Sender).name);
end;

procedure TFmScanImage.xpBitBtn3Click(Sender: TObject);
begin
  inherited;

end;

{Ranjbar 30}
Procedure TFmScanImage.Exec_UserLog(SenderTag:string);
begin
    Exec_insert_UserLog(Self.Tag,SenderTag,LetterID);
end;


procedure TFmScanImage.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
  Aprintt.Execute;
  Exec_UserLog(TBitBtn(Sender).name);
 
end;

Procedure TFmScanImage.ControlEnabled(Anabled:Boolean);
begin
   BBScan.Enabled := Anabled;
   BBOpenFile.Enabled := Anabled;
end;

procedure TFmScanImage.FitToPageClick(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.Fit;
end;

procedure TFmScanImage.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.FitToWidth;
  
end;

procedure TFmScanImage.SpinEdit1Change(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.ChangeResolution(SpinEdit1.Value);
end;

procedure TFmScanImage.BitBtn4Click(Sender: TObject);
begin
  inherited;
  Exec_UserLog(TBitBtn(Sender).name);
  Close;
  MainForm.AAnswer.Execute;
end;

procedure TFmScanImage.BitBtn5Click(Sender: TObject);
begin
  inherited;
  Exec_UserLog(TBitBtn(Sender).name);
  close;
  MainForm.AnewRecommite.Execute;
end;

procedure TFmScanImage.BitBtn6Click(Sender: TObject);
begin
  inherited;
  Exec_UserLog(TBitBtn(Sender).name);
  Close;
  MainForm.ADoCommite.Execute;
end;

procedure TFmScanImage.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.ObjBoxHighlight[-1] := False;
  ImageEnDBVect1.ObjPenColor[-1] := clYellow;
  ImageEnDBVect1.ObjBrushStyle[-1] := bsClear;
  ImageEnDBVect1.ObjMemoCharsBrushStyle[-1] := bsClear;
  ImageEnDBVect1.MouseInteractVt := [miPutBox];
end;

procedure TFmScanImage.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.RotateAllObjects(180,ierImage);
  ImageEnDBVect1.Proc.Rotate(180);

end;

procedure TFmScanImage.BBSaveAllToFilesClick(Sender: TObject);
begin
   inherited;
   ActSaveAll.Execute;
   Exec_UserLog(TBitBtn(Sender).name);
end;

procedure TFmScanImage.BBOpenFileClick(Sender: TObject);
begin
  inherited;
  OpenFile.Execute;
  Exec_UserLog(TBitBtn(Sender).name);
end;

procedure TFmScanImage.OpenFileExecute(Sender: TObject);
Var
   I:integer;
   IsJpegFormat : Boolean;
   FileNamePath : String;
   insertmode :boolean;
begin
  inherited;

  if Not(DMScanImage.QrLetterData.State in [dsEdit,dsInsert]) then
     Exit;

  insertmode:=DMScanImage.QrLetterData.State=dsinsert;

  IsJpegFormat :=  dm.GetValue(25);
  if IsJpegFormat then
     OpenPictureDialog.Filter := 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg'
  else
     OpenPictureDialog.Filter := 'Tiff(*.Tif)|*.Tif';

  if OpenPictureDialog.Execute then
  begin

     Try
        Screen.Cursor := crHourGlass;
        BBOpenFile.Enabled := False;



        For I:=0 to OpenPictureDialog.Files.Count-1 do  
        begin
           FileNamePath := OpenPictureDialog.Files.Strings[I];

           if IsJpegFormat then //True = Jpg , False = Tif
              FillData(FileNamePath)
           else
              begin
                 //Ê œ— ‰Â«Ì  –ŒÌ—Â ¬‰ œ— œÌ «»Ì” Jpg ”Å”  »œÌ· ¬‰ »Â ‰Ê⁄ Tif »«—ê–«—Ì ›«Ì·Â«Ì ‰Ê⁄
                 ChangeTifToJpgAndSave(FileNamePath,insertmode);
//                 Close_Open_QrLetterData;
              end;
        end;
        if (DMScanImage.QrLetterData.State in [dsInsert,dsEdit]) then
           DBN1.BtnClick(nbCancel);
        Close_Open_QrLetterData;
    if insertmode then DMScanImage.QrLetterData.Last;
        //---
     Finally
        ImageEnDBVect1.FitToWidth;
        BBOpenFile.Enabled := True;
        Screen.Cursor := crDefault;
     End;
  end;
end;




procedure TFmScanImage.ChangeTifToJpgAndSave(aFileName:String;InsertMode:boolean);
Var
   I:integer;
   procedure convert(p:integer;im:boolean);
   begin
     With DMScanImage do
         begin
            if im then QrSelImage.Append else QrSelImage.edit;

            //Copy Picture from ImageEnMView1 To ImageEnDBVect1
            ImageEnMView1.CopyToIEBitmap(ImageEnMView1.ImageRow[p] , ImageEnDBVect1.IEBitmap );
            ImageEnDBVect1.Update;

            Application.ProcessMessages;
            ImageEnDBVect1.IO.SaveToFileJpeg(_TempPath+'\Tmp.JPG');
            QrSelImageImage.LoadFromFile(_TempPath+'\Tmp.JPG');

            Application.ProcessMessages;
            if FileExists(_TempPath+'\Tmp.JPG') then
               DeleteFile(_TempPath+'\Tmp.JPG');

            QrSelImageLastUpdate.AsDateTime := Now;
            QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
            //–ŒÌ—Â „Ì ‘Ê‰œ Jpg «“ ‰ê«—‘ 5 »Â »⁄œ  „«„Ì  ’«ÊÌ— »« ›—„ 
            QrSelImageExtention.AsInteger := 1; //Jpg = 1   Tiff = 2
            QrSelImage.Post;
            Application.ProcessMessages;
            Toolpanel.Enabled := False;
            ControlEnabled(False);

            if QrLetterData.State in [dsEdit,dsInsert] then
               QrLetterData.Cancel;
         end;
    end;
begin
   Try
      if aFileName <> '' then
      begin
         ImageEnMView1.Clear;
         ImageEnMView1.MIO.LoadFromFile(aFileName);
      end;

   if InsertMode then
       convert(0,true)
      else
      convert(0,false);

           For I:=1 to ImageEnMView1.ImageCount-1 do
       convert(i,true);

      ImageEnMView1.Clear;
   Except

   End;
end;


procedure TFmScanImage.SaveAsExecute(Sender: TObject);
begin
  inherited;

  if SavePictureDialog.Execute then
  begin
     if DMScanImage.QrSelImageextention.AsInteger = 1 then
        ImageEnDBVect1.IO.SaveToFileJpeg(SavePictureDialog.FileName+'.Jpg')
     else
        DMScanImage.QrSelImageImage.SaveToFile(SavePictureDialog.FileName+'.Tff');
     ShellExecute(Handle, 'Open',Pchar(SavePictureDialog.FileName+'.Jpg'),nil,nil,SW_SHOWNORMAL);
  end;
end;

procedure TFmScanImage.BitBtn2Click(Sender: TObject);
begin
  inherited;
  SignPic.Execute; //SignPicExecute
  {Ranjbar 30}
  Exec_UserLog(TBitBtn(Sender).name);
  //---
end;

procedure TFmScanImage.BitBtn3Click(Sender: TObject);
begin
  inherited;
  ImageEnProc1.ConvertToGray;
end;

procedure TFmScanImage.BitBtn7Click(Sender: TObject);
begin
  inherited;
  ImageEnProc1.ConvertToBWThreshold(spinedit1.value);
end;

procedure TFmScanImage.ImageEnDBView3Click(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.SaveSelectionToFile('c:\1.jpeg');
end;

procedure TFmScanImage.HaveAccess(Button: TNavigateBtn);
begin
   Case Button of
      nbEdit   : if not dm.GetActionAccess('ReceiveInsert' ,Tag) then Abort;
      nbPost   : if not dm.GetActionAccess('Arecommite' ,Tag) then Abort;
      nbCancel : if not dm.GetActionAccess('Afix' ,Tag) then Abort;
      nbInsert : if not dm.GetActionAccess('AARCHIVE' ,Tag) then Abort;
      nbDelete : if not dm.GetActionAccess('AChangeColor' ,Tag) then Abort;
   end;
end;

procedure TFmScanImage.DBN1BeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
   ID:Integer;
begin
  inherited;

  //œ” —”Ì œ«‘ ‰ »—«Ì Õ–› ° –ŒÌ—Â ° ÊÌ—«Ì‘ Ê «‰’—«›
  HaveAccess(Button);
  //---
  
  SBZoom.Click;
  SBZoom.down := True;

  if Button in [nbInsert,nbEdit] then
     Toolpanel.Enabled := True
  else
     Toolpanel.Enabled := False;

  With DMScanImage do
  begin
     if Button = nbEdit then
     begin
        QrSelImage.Edit;
        QrSelImageLastUpdate.AsDateTime := Now;
     end;

     if Button in [nbPost,nbDelete] then
     begin
        if Button = nbPost then
        begin
           Try
              Screen.Cursor := crHourGlass;
              if ImageEnDBVect1.IsEmpty then
              begin
                 MBaseForm.messageShowString('·ÿ›«  ’ÊÌ— —« ÃÂ  –ŒÌ—Â «‰ Œ«» ‰„«ÌÌœ', False);
                 Abort;
              end;
             ImageEnDBVect1.LayersRemove(1);//
              QrSelImageLastUpdate.AsDateTime := Now;
              QrSelImageLetterID.AsInteger := fmScanImage.LetterID;
              QrSelImage.Post;
              ImageEnDBVect1.FitToWidth;
              ControlEnabled(False);
           Finally
              Screen.Cursor := crDefault;
           end;
        end;
        if Button = nbDelete then
         begin
           if not dm.GetActionAccess('adeleteScan',1) then abort;
           if MBaseForm.messageShowString('¬Ì« „«Ì· »Â Õ–›  ’ÊÌ— Ã«—Ì Â” Ìœø', True) Then
              QrSelImage.Delete;
           ControlEnabled(False);
        end;
        ID := QrLetterDataLetterDataID.AsInteger;
        QrLetterData.Cancel;
        Close_Open_QrLetterData;
        if ID > 0 then
           QrLetterData.Locate('LetterDataID',ID,[])
        else
           QrLetterData.Last;
        Abort;
     end;
  end;//With
end;

procedure TFmScanImage.ScanExecute(Sender: TObject);
Var
   FileNamePath :String;
      insertmode :boolean;

begin
   inherited;
   insertmode:=DMScanImage.QrLetterData.State=dsinsert;

   if dm.GetValue(25) then //True = Jpg , False = Tif
   begin
      ImageEnIO1.TWainParams.SelectedSource := dm.GetValue(56);//«‰ Œ«» «”ﬂ‰—
      ImageEnIO1.TWainParams.VisibleDialog := True;
      ImageEnIO1.TWainParams.GetFromScanner;
      ImageEnIO1.TWainParams.Update;

      if ImageEnIO1.Acquire {(ieaTWain)} then
      begin
         Application.ProcessMessages;
         DBN1.BtnClick(nbPost);
      end;
   end
      else
      begin

         Try
            FileNamePath := _TempPath +'Temp.Tif';
            DeleteFile(FileNamePath);
            ImgScan.Image := FileNamePath;
            If Imgscan.ScannerAvailable then //«ê— «”ﬂ‰— ÊÃÊœ œ«‘  ¬‰ê«Â
            begin
               ImgScan.OpenScanner;
               ImgScan.StartScan;
               ImgScan.CloseScanner;
               Application.ProcessMessages;
               FMWaitPlease := TFMWaitPlease.Create(Application);
               FMWaitPlease.EmailPanel.Hide;
               FMWaitPlease.Show;
               FMWaitPlease.Refresh;
               ChangeTifToJpgAndSave(FileNamePath,True);
               FMWaitPlease.Refresh;
               Close_Open_QrLetterData;
               if insertmode then DMScanImage.QrLetterData.Last;
            end
               else
                  MBaseForm.MessageShowString('«„ﬂ«‰ œ” —”Ì »Â «”ﬂ‰— ÊÃÊœ ‰œ«—œ',False);
         Finally
            DeleteFile(FileNamePath);
            FMWaitPlease.Close;
         End;
      end;
   ImageEnDBVect1.FitToWidth;

end;



Procedure TFmScanImage.Close_Open_QrLetterData;
 var i:integer;
 GotoLatestPage:boolean;
begin
   With DMScanImage,QrLetterData do
   begin

      if active then
      begin
        i:=QrLetterDataLetterDataID.AsInteger;
        AfterScroll:=nil;
        GotoLatestPage:=True;
      end;
      Close;
      Parameters.ParamByName('Pa_LetterID').Value := LetterID;
      Open;
      if GotoLatestPage then
       begin
        AfterScroll:=QrLetterDataAfterScroll;
        Locate('letterdataid',i,[]);
       end; 
      ImageEnDBVect1.Update;
   end;
end;

procedure TFmScanImage.BrushColorClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color := BrushColor.Color;
  if ColorDialog1.Execute then
     BrushColor.Color:=ColorDialog1.Color;
  CreateBrush(self);
end;

procedure TFmScanImage.BitBtn9Click(Sender: TObject);
begin
   inherited;
   ImageEnDBVect1.MouseInteractVt := [miPutText];
   ImageEnDBVect1.ObjPenColor[-1] := FontDialog1.Font.Color;
   ImageEnDBVect1.ObjBrushColor[-1] := clNone;
   ImageEnDBVect1.ObjFontStyles[-1] := FontDialog1.Font.Style;
   ImageEnDBVect1.ObjFontHeight[-1] :=  FontDialog1.Font.Height ;
end;

procedure TFmScanImage.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
begin
   inherited;
   // Copy image
   Try
      ImageEnMView1.CopyToIEBitmap( idx, ImageEnDBVect1.IEBitmap );
      //ImageEnMView1.MIO.Params[idx].ImagingAnnot.CopyToTImageEnVect(ImageEnDBVect1);
      ImageEnDBVect1.Update;
   Except
   End;
end;

procedure TFmScanImage.RGOperationClick(Sender: TObject);
begin
  inherited;
  CreateBrush(Sender);
end;

procedure TFmScanImage.RGPenTypeClick(Sender: TObject);
begin
  inherited;
  CreateBrush(Sender);
end;

procedure TFmScanImage.SEBrushSizeChange(Sender: TObject);
begin
  inherited;
  CreateBrush(Sender);
end;

procedure TFmScanImage.ImageEnDBVect1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if SbBrush.Down then
  begin
     StartX:=X;
     startY:=Y;
     if (Toolpanel.ActivePage=BrushTab) then
        ImageEnDBVect1MouseMove(self,Shift,X,Y);
  end;
end;

procedure TFmScanImage.CreateBrush(Sender: TObject);
Var
   BrushSiz:integer;
   C:TColor;
   Transpvalue:integer;
begin
  if ImageEnDBVect1.LayersCount=1 then
     ImageEnDBVect1.LayersAdd;
  ImageEnDBVect1.LayersCurrent:=1;

  BrushSiz := SEBrushSize.Value;

  ImageEnDBVect1.Proc.ImageResize(BrushSiz,BrushSiz,iehLeft,ievTop);

  // prepare main color
  ImageEnDBVect1.IEBitmap.Canvas.Brush.Color:= BrushColor.Color;
  ImageEnDBVect1.IEBitmap.Canvas.Pen.Color:=BrushColor.Color;

  // prepare alpha channel
  ImageEnDBVect1.AlphaChannel.Fill(0);
  
  with ImageEnDBVect1.AlphaChannel.Canvas do
  begin
     Transpvalue:=255;
     C := $02000000 or (transpvalue) or (transpvalue shl 8) or (transpvalue shl 16);
     Brush.Color:= c;
     Pen.Color:=c;
  end;

  if RGPenType.ItemIndex = 0 then //„—»⁄Ì RectangleButton.Down
  begin
     ImageEnDBVect1.IEBitmap.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
     ImageEnDBVect1.AlphaChannel.Canvas.Rectangle(0,0,BrushSiz+1,BrushSiz+1);
  end
     else
        if RGPenType.ItemIndex = 1 then //œ«Ì—Â «Ì  CircleButton.Down
        begin
           ImageEnDBVect1.IEBitmap.Canvas.Ellipse(0,0,BrushSiz+1,BrushSiz+1);
           ImageEnDBVect1.AlphaChannel.Canvas.Ellipse(0,0,BrushSiz+1,BrushSiz+1);
        end;

  ImageEnDBVect1MouseMove(self,[],0,0); // refresh current brush
end;

procedure TFmScanImage.ImageEnDBVect1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
Var
  px,py:integer;
  bx,by:integer;
  op:TIERenderOperation;
  Operation : Byte;
begin
  //Œÿ ﬂ‘
  {HorizRuler.GripsPos[0] := ImageEnDBVect1.XScr2Bmp( X );
  VertRuler.GripsPos[0]  := ImageEnDBVect1.YScr2Bmp( Y );}
  //---

  if SBBrush.Down then
  begin
       Operation := 0;
       OP := TIERenderOperation(Operation);
       with ImageEnDBVect1 do
         if LayersCount=2 then
         begin
           with Layers[1] do
           begin
              bx := Bitmap.Width;
              by := Bitmap.Height;
              px := XScr2Bmp(X) - Width div 2;
              py := YScr2Bmp(Y) - Height div 2;
              PosX := px;
              PosY := py;
              Operation := op;
           end;


           if MouseCapture then  // paint the layer (the brush...)
           begin
               Layers[1].Bitmap.RenderToTIEBitmapEx( Layers[0].Bitmap, px,py,bx,by, 0,0,bx,by, 255,rfNone,op );
               Layers[1].Bitmap.MergeAlphaRectTo( Layers[0].Bitmap, 0,0,px,py, bx,by);
           end;
           Update;
         end;
     lastX:=X;
     lastY:=Y;
  end;

end;

procedure TFmScanImage.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.Zoom := 100;
end;

procedure TFmScanImage.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.MouseInteractVt := [miObjectSelect];
  ControlAnable(False);
end;

procedure TFmScanImage.SBZoomClick(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.MouseInteract := [miZoom,miScroll];
  ControlAnable(False);
end;

procedure TFmScanImage.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.RotateAllObjects(-90,ierImage);
  ImageEnDBVect1.Proc.Rotate(-90);
end;

procedure TFmScanImage.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  //ImageEnDBVect1.RotateAllObjects(90,ierImage);
  ImageEnDBVect1.Proc.Rotate(90);
end;

procedure TFmScanImage.ImageEnDBVect1NewObject(Sender: TObject;
  hobj: Integer);
begin
  inherited;
  ImageEnDBVect1.MouseInteractVt := [miObjectSelect]; 
end;

procedure TFmScanImage.ImageEnDBVect1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i: integer;
begin
  inherited;
  if Key = Vk_Delete then
  begin
     For i := ImageEnDBVect1.SelObjectsCount - 1 downto 0 do
        ImageEnDBVect1.RemoveObject(ImageEnDBVect1.SelObjects[i]);
  end;

  ImageEnDBVect1.Proc.SaveUndo();
end;

procedure TFmScanImage.SpeedButton6Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  For i := ImageEnDBVect1.SelObjectsCount - 1 downto 0 do
      ImageEnDBVect1.RemoveObject(ImageEnDBVect1.SelObjects[i]);

end;

procedure TFmScanImage.SpeedButton10Click(Sender: TObject);
var
  I, Obj: integer;
begin
  inherited;
  obj := -1;
  if FontDialog1.Execute then
     For I := -1 to ImageEnDBVect1.SelObjectsCount - 1 do
     begin
       if I >= 0 then
          Obj := ImageEnDBVect1.SelObjects[I];
       ImageEnDBVect1.ObjPenColor[obj] := FontDialog1.Font.Color;
       ImageEnDBVect1.ObjFontStyles[-1] := FontDialog1.Font.Style;
       ImageEnDBVect1.ObjFontHeight[-1] :=  FontDialog1.Font.Height ;
     end;
end;

procedure TFmScanImage.SetTextFontColor;
begin
   ///
end;

procedure TFmScanImage.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  ImageEnDBVect1.MouseInteractVt := [miPutBox];
  ImageEnDBVect1.ObjBoxHighlight[-1] := True;
  ImageEnDBVect1.ObjBrushColor[-1] := clYellow;
  ImageEnDBVect1.ObjBrushStyle[-1] := bsSolid;
end;

procedure TFmScanImage.SignPicExecute(Sender: TObject);
Var
   StreamPic :TStream;
begin
  inherited;
  Open_UserSign(_Userid);
  if dm.Select_UserSignUserSign.IsNull then
  begin
     MBaseForm.messageShowString('ò«—»— ê—«„Ì ‘„« œ«—«Ì «„÷«Ì  ’ÊÌ—Ì ‰„Ì»«‘œ', False);
     Exit;
  end;
     StreamPic := TStream.Create;
     StreamPic :=  dm.Select_UserSign.CreateBlobStream(dm.Select_UserSignUserSign,bmRead);
     ImageEnDBVect1.SetObjBitmapFromStream(-1,StreamPic,0);
     ImageEnDBVect1.MouseInteractVt := [miPutBitmap];
end;

procedure TFmScanImage.CBHideObjectsClick(Sender: TObject);
begin
  inherited;
  if CBHideObjects.Checked then
     ImageEnDBVect1.AllObjectsHidden := True
  else
     ImageEnDBVect1.AllObjectsHidden := False;
end;

procedure TFmScanImage.BBUndoClick(Sender: TObject);
begin
  inherited;
  if SBBrush.Down then
     ImageEnDBVect1.Proc.Undo
  else
     begin
        ImageEnDBVect1.ObjUndo;
        ImageEnDBVect1.ObjClearUndo;
     end;
end;

procedure TFmScanImage.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssCtrl in shift)And(DMScanImage.QrLetterData.State in [dsEdit,dsInsert]) then
     if (Key = Word('z'))or(Key = Word('Z')) then
        BBUndo.Click;
  if Key = Vk_Escape then
     Close;
end;

procedure TFmScanImage.ControlAnable(anable:Boolean);
begin
   RGPenType.Enabled := anable;
   Label1.Enabled := anable;
   Label7.Enabled := anable;
   SEBrushSize.Enabled := anable;
   BrushColor.Enabled := anable;
end;


procedure TFmScanImage.SBBrushClick(Sender: TObject);
begin
  inherited;
  ControlAnable(True);
  ImageEnDBVect1.MouseInteract := [];
  CreateBrush(Sender);
end;

procedure TFmScanImage.ImageEnDBVect1ViewChange(Sender: TObject; Change: Integer);
{var
  Z:double;}
begin
  inherited;
  {Z := (ImageEnDBVect1.Zoom / 100) ;
  HorizRuler.ViewPos := ImageEnDBVect1.ViewX / Z ;
  VertRuler.ViewPos  := ImageEnDBVect1.ViewY / Z ;
  HorizRuler.DotPerUnit := Z ;
  VertRuler.DotPerUnit  := Z ;

  if ImageEnDBVect1.Zoom > 400 then
  begin
     HorizRuler.Frequency := 1 ;
     VertRuler.Frequency  := 1 ;
     HorizRuler.LabelFreq :=10 ;
     VertRuler.LabelFreq  :=10 ;
  end;}

  LabelZoom .Caption :='»“—ê‰„«ÌÌ  :    '+ FloatToStr( Round(ImageEnDBVect1.Zoom) )+'%';
end;

procedure TFmScanImage.ImageEnIO1AcquireBitmap(Sender: TObject;
  ABitmap: TIEBitmap; var Handled: Boolean);
begin
  inherited;
  if not(DMScanImage.QrSelImage.State = dsInsert) then
     DBN1.BtnClick(nbInsert);

  DBN1.BtnClick(nbPost);
  Application.ProcessMessages;

end;

procedure TFmScanImage.SBSettingsClick(Sender: TObject);
begin
   inherited;
   Settings := TSettings.Create(Application);
   PageControl_SetTabSheet(Settings.PageControl1,'TShSystem');//PageControl «‰ Œ«» »—êÂ ò‰ —·
   {Ranjbar}
   Settings.Label34.Font.Color := clBlue;
   Settings.HasJpg.Font.Color := clBlue;
   //---
   Settings.ShowModal;
end;

procedure TFmScanImage.AprinttExecute(Sender: TObject);
begin
   inherited;

   if DMScanImage.QrSelImage.State in [dsInsert,dsEdit] then
   begin
      MBaseForm.MessageShowString('·ÿ›« «ÿ·«⁄«  ŒÊœ —«  –ŒÌ—Â ‰„«ÌÌœ', False);
      Exit;
   end;
   FmPrint := TFmPrint.Create(Application);
   FmPrint.ShowModal;
end;

procedure TFmScanImage.BitBtn1Click(Sender: TObject);
begin
   inherited;
   FmAllScanImage := TFmAllScanImage.Create(Application);
      DMScanImage.SPAllImage.Parameters.ParamByName('@LetterID').Value := LetterID;
      DMScanImage.SPAllImage.Open;
      FmAllScanImage.ShowModal;
      DMScanImage.QrLetterData.Locate('LetterDataID', DMScanImage.SPAllImageLetterDataID.AsInteger,[]);
      DMScanImage.SPAllImage.Close;
end;

procedure TFmScanImage.MainActionManagerExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
   inherited;
   if not dm.GetActionAccess(Action.name,Tag) then
   begin
      MBaseForm.MessageShowString('ﬂ«—»— ê—«„Ì ‘„« »Â «Ì‰ ﬁ”„  œ” —”Ì ‰œ«—Ìœ', false);
      Abort;
   end;
end;

procedure TFmScanImage.ActSaveAllExecute(Sender: TObject);
var
   Dir , FileName: string;
   FileNu:integer;
begin
  inherited;
  FileNu := 0;
  if DMScanImage.QrLetterData.RecordCount = 0 then
     Exit;
     
  Try
     BBSaveAllToFiles.Enabled := False;
     Screen.Cursor := crHourGlass;

     Dir := _TempPath+'YeganehPic';
     if not DirectoryExists(Dir) then
        CreateDir(Dir)
     else
        EmptyDir(Dir);
     With DMScanImage do
        if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],0) then
        begin
           QrLetterData.First;
           While Not QrLetterData.Eof do
           begin
              {if QrSelImageExtention.AsInteger = 1 then
                 FileName := Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrSelImage.RecNo)+'.Jpg'
              else
                 FileName := Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(QrSelImage.RecNo)+'.Tif';}
              //QrSelImageImage.SaveToFile(Dir+'\'+ FileName);
              Application.ProcessMessages;
              FileNu := FileNu + 1;
              FileName := Trim(QrSelImageLetterID.AsString)+'_'+IntToStr(FileNu)+'.Jpg';
              if (FileExists(FileName))and not(File_IsInUse(FileName)) then
                 DeleteFile(FileName);
              ImageEnDBVect1.IO.SaveToFileJpeg(Dir+'\'+ FileName);

              QrLetterData.Next;
           end;
           if FileExists(Dir+'\'+ FileName) then
              ShellExecute(Handle, 'Open',Pchar(Dir+'\'+ FileName),nil,nil,SW_SHOWNORMAL);
        end;
  Finally
     BBSaveAllToFiles.Enabled := True;
     Screen.Cursor := crDefault;
  End;

end;

procedure TFmScanImage.BBSelScanerClick(Sender: TObject);
begin
   inherited;
   if dm.GetValue(25) then //True = Jpg , False = Tif
   begin
      if ImageEnIO1.SelectAcquireSource {(ieaTWain)} then
         dm.SetValue(56 , ImageEnIO1.TWainParams.SelectedSource);
   end
   else
      begin
         (*if ImageEnMIO1.SelectAcquireSource {(ieaTWain)} then
            dm.SetValue(56 , ImageEnMIO1.TWainParams.SelectedSource);*)
         ImgScan.ShowSelectScanner;
      end;
end;

procedure TFmScanImage.SpeedButton2Click(Sender: TObject);
begin
  inherited;

      FmImageData := TFmImageData.Create(Application);
      FmImageData.ShowModal;

end;

procedure TFmScanImage.SBResizeClick(Sender: TObject);
begin
   inherited;
   FmPicProgress := TFmPicProgress.Create(Application);
   FmPicProgress.PicWidth := ImageEnDBVect1.Bitmap.Width;
   FmPicProgress.PicHight := ImageEnDBVect1.Bitmap.Height;
   FmPicProgress.FormStyle := fsStayOnTop;
   FmPicProgress.Show;
end;

procedure TFmScanImage.SBDelAllDataClick(Sender: TObject);
begin
   inherited;

   if MBaseForm.MessageShowString('¬Ì« „«Ì· »Â Õ–›  „«„Ì  ’ÊÌ— Â” Ìœø', True) then
      With DMScanImage do
         Try
            if QrLetterData.RecordCount = 0 then
               Exit;
            QrDelLetterData.Parameters.ParamByName('LetterID').Value := LetterID;
            QrDelLetterData.ExecSQL;
            Close_Open_QrLetterData;
            //QrLetterDataAfterScroll(QrLetterData);
            QrLetterData.Last;
         Finally
            QrDelLetterData.Close;
         end;
end;

procedure TFmScanImage.FormCreate(Sender: TObject);
begin
   inherited;
   ImageEnDBVect1.LayersSync := false;
   ImageEnDBVect1.MinBitmapSize:=1;
   ImageEnDBVect1.Proc.Fill( CreateRGB(255,255,255) );
   ImageEnDBVect1.Proc.AutoUndo:=False;

end;

procedure TFmScanImage.SBGoToPAgeClick(Sender: TObject);
Var
   PageNum:String;
begin
   inherited;
   if DMScanImage.QrLetterData.RecordCount = 0 then
      Exit;
   PageNum := InputBox('‘„«—Â ’›ÕÂ  ’ÊÌ—','·ÿ›« ‘„«—Â ’›ÕÂ —« Ê«—œ ‰„«ÌÌœ', IntToStr(DMScanImage.QrLetterData.RecNo));
   if (StrToIntDef(PageNum,0) > 0)And(StrToIntDef(PageNum,0) <= DMScanImage.QrLetterData.RecordCount) then
      DMScanImage.QrLetterData.RecNo := StrToIntDef(PageNum,0);
end;

procedure TFmScanImage.Timer1Timer(Sender: TObject);
begin
   inherited;
   ImageEnDBVect1.FitToWidth;
   Timer1.Enabled := False;
end;
Procedure TFmScanImage.SetShowImageTool(Value: boolean);
begin
  FShowImageTool:=value;
  if  value then
   begin
     CloseBtn.show;
     openBtn.hide;
     ImageToolPanel.Width:=143;
     ToolPanel.show;
   end
  else
   begin
     CloseBtn.hide;
     openBtn.show;
     ImageToolPanel.Width:=20;
     ToolPanel.Hide;
   end

end;
procedure TFmScanImage.openBtnClick(Sender: TObject);
begin
  inherited;
  ShowImageTool:=not ShowImageTool;
end;

procedure TFmScanImage.CloseBtnClick(Sender: TObject);
begin
  inherited;
  ShowImageTool:=not ShowImageTool;
end;

end.

