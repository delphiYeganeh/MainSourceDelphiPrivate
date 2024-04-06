unit UImportFax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DB, ADODB, DBCtrls, ExtActns, ActnList,
  Buttons,FileCtrl,  xpBitBtn, ExtCtrls, Menus, ievect, imageen, imageenio,
  ieview, iemview;

type
  TFImportFax = class(TMBaseForm)
    FdataSet: TADODataSet;
    FdataSetLetterDataID: TAutoIncField;
    FdataSetLetterID: TIntegerField;
    FdataSetImage: TBlobField;
    FdataSetextention: TWordField;
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    EFolder: TEdit;
    DoBtn: TBitBtn;
    Memo: TMemo;
    Extention: TComboBox;
    FdataSetPageNumber: TIntegerField;
    ImageEnMView1: TImageEnMView;
    ADOImg: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    AdoImImage: TBlobField;
    WordField1: TWordField;
    IntegerField2: TIntegerField;
    DSImg: TDataSource;
    procedure Button2Click(Sender: TObject);
    Procedure MoveFile(FileName:string);
    procedure FindLetterData(FileName:string);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DoBtnClick(Sender: TObject);
    Procedure Fill;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SrcPath,DestPath:string;
    MoveAfter: boolean;
  end;

var
  FImportFax: TFImportFax;

implementation

uses Dmu, UMain, businessLayer, DateUtils, YShamsiDate, ScanImageDM,
  ScanImageFm;

{$R *.dfm}
var
  OpenedFiles,Folder:string;

procedure TFImportFax.Button2Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFImportFax.SpeedButton1Click(Sender: TObject);
 var s: string;
begin
  inherited;
  if SelectDirectory(_Yeganeh,'c:',s) then
  //EFolder.Text:=s+'\';
    EFolder.Text := s;
     //---
end;

procedure TFImportFax.FindLetterData(FileName:string);
var
   IndicatorID,LetterID,MySecID:integer;
   IVect : TImageEnVect; // Amin 1391/12/20
   NewFileName : string; // Amin 1391/12/20
   i: integer;
begin
  {Ranjbar 89.09.20 ID=247}
  //IndicatorID:=dm.LastIndicatorID(1,2);
  //LetterID:=Exec_insert_ReciveLetter(IndicatorID,dm.CurrentMyear,Dm.SecId,1,2,FileName,_UserID,_Today,Exec_get_NowTime,_FaxCartableOrgID);
  IndicatorID:=dm.LastIndicatorID(1,2,(_FaxUpdate)And(_FaxSecID>0) ); //_FaxUpdate = ›⁄«· »Êœ‰ ›«ﬂ”

  if _FaxSecID = 0 then
    MySecID := Dm.SecID
  else
    MySecID := _FaxSecID;

  LetterID := Exec_insert_ReciveLetter(IndicatorID, dm.CurrentMyear, MySecID, 1, 2, '›ò” : ' +  FileName,_UserID,
               _Today, Exec_get_NowTime, _FaxCartableOrgID); //LetterFormat = 2 ÅÌ‘ ‰ÊÌ” , ReceiveTypeID = 2 ›«ﬂ”
   //---
//   Exec_insert_LetterData(LetterID,1,Extention.ItemIndex+1);
                // 920128 ›«Ì· ›ﬁÿ «“ ‰Ê⁄ JPG –ŒÌ—Â „Ì‘Êœ.

      // Amin 1391/12/20 FdataSetImage.LoadFromFile(Folder+FileName);
      // Amin 1391/12/20 Start
  IVect := TImageEnVect.Create(nil);

  if Extention.ItemIndex = 0 then
  begin
    IVect.IO.LoadFromFileJpeg(Folder+FileName);
    Exec_insert_LetterData(LetterID,1,1);

    FdataSet.Close;
    FdataSet.Parameters.ParamByName('LetterID').Value := LetterID;
    FdataSet.Open;
    FdataSet.Edit;
    NewFileName := Replace(FileName, '.'+File_GetFileExt(FileName), '') + '_tmp.' + File_GetFileExt(FileName);
    IVect.IO.SaveToFileJpeg(Folder + NewFileName);
    FdataSetImage.LoadFromFile(Folder+NewFileName);
    IVect.Free;

    FdataSetPageNumber.AsInteger := 1;
    FdataSet.Post;
    Sleep(1000); // Amin 1391/12/20
    DeleteFile(Folder+NewFileName); // Amin 1391/12/20
  end
  else
   // IVect.IO.LoadFromFileTIFF(Folder+FileName);
  begin
    ImageEnMView1.Clear;
    try
      ImageEnMView1.MIO.LoadFromFile(Folder+FileName);
    except
      RenameFile(Folder+FileName,Folder+'Yeganeh'+IntToStr(LetterID)+'.'+File_GetFileExt(FileName));
      FileName := 'Yeganeh'+IntToStr(LetterID)+'.'+File_GetFileExt(FileName);
    end;

    for i:=0 to ImageEnMView1.ImageCount-1 do
    begin
      IVect := TImageEnVect.Create(nil);
      ImageEnMView1.CopyToIEBitmap(I , IVect.IEBitmap );
      IVect.Update;
      NewFileName := Replace(FileName, '.'+File_GetFileExt(FileName), '') + IntToStr(i+1)+'_tmp.'+ File_GetFileExt(FileName) ;
      IVect.IO.SaveToFileJpeg(Folder+NewFileName);
      Exec_insert_LetterData(LetterID,i+1,1);                 // 920128 ›«Ì· ›ﬁÿ «“ ‰Ê⁄ JPG –ŒÌ—Â „Ì‘Êœ.
      ADOImg.Close;
      ADOImg.Parameters.ParamByName('LetterID').value := LetterID;
      ADOImg.Parameters.ParamByName('PageNumber').value := i+1;
      ADOImg.Open;
      ADOImg.Edit;
      AdoImImage.LoadFromFile(Folder+NewFileName);
      ADOImg.Post;
      //Sleep(1000);
      DeleteFile(Folder+NewFileName);
    end;
  end;

  OpenedFiles := OpenedFiles + ',' + FileName;
end;

Procedure TFImportFax.MoveFile(FileName:string);
begin
  CopyFile(pchar(Folder+FileName),pchar(folder+'yeganeh_archive\'+FileName),False);
  DeleteFile(pchar(Folder+FileName));
end;

Procedure TFImportFax.Fill;
var
   Find,FileName: string;
   Sr: TSearchRec;
   FileAttrs: Integer;
begin
  inherited;

  if Folder[length(Folder)]<>'\' then
    Folder:=Folder+'\';

   {Ranjbar 89.09.20 ID=247}
   //FileName:=Folder + '*.'+Extention.Text;
  if Extention.ItemIndex = 0 then
    FileName := Folder + '*.JPG'
  else
    FileName := Folder + '*.TIF';
   //---
  FileAttrs := 0;
  OpenedFiles:='';
  if FindFirst(fileName, FileAttrs, sr) = 0 then
  begin
    Repeat
      Find:=ExtractFileName(sr.Name);
      try
        FindLetterData(find); // À»  ‰«„Â
        if MoveAfter then
          MoveFile(Find);
      except  on e:exception do
         ShowMessage(e.Message)
      end;
    until FindNext(sr) <> 0;
  end;
  FindClose(sr);
end;

procedure TFImportFax.DoBtnClick(Sender: TObject);
begin
  inherited;
  if  not MoveAfter then
  begin
    if not messageShow(46,True) then
      exit;
  end
  else
    CreateDir(EFolder.Text+'\yeganeh_Archive');

  Folder := EFolder.Text;
   //Ranjbar
  if Trim(Folder)='' then
    Folder := 'C:\';
  //---
  Fill; //Ê«—œ ﬂ—œ‰ «ÿ·«⁄« 
  Memo.Text := OpenedFiles;
end;

procedure TFImportFax.FormCreate(Sender: TObject);
begin
  inherited;
  MoveAfter := True;
end;

end.
