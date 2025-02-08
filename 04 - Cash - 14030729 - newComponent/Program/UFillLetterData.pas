unit UFillLetterData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DB, ADODB, DBCtrls, ExtActns, ActnList,
  Buttons,FileCtrl, YFillPictureFields, xpWindow, xpBitBtn, ExtCtrls,
  ComCtrls, ShellCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxInplaceContainer;

type
  TFillLetterData = class(TMBaseForm)
    LetterData: TADODataSet;
    LetterDataLetterDataID: TAutoIncField;
    LetterDataLetterID: TIntegerField;
    LetterDataPageNumber: TWordField;
    LetterDataImage: TBlobField;
    LetterDataextention: TWordField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SBOpen: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    LabelHelp: TLabel;
    EditPath: TEdit;
    Button1: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    Edit3: TEdit;
    CBExtention: TComboBox;
    ShellTreeView1: TShellTreeView;
    Panel1: TPanel;
    Button2: TBitBtn;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    Memo3: TMemo;
    Label10: TLabel;
    Memo4: TMemo;
    ShellTreeView2: TShellTreeView;
    SpeedButton1: TSpeedButton;
    qryCheckIndicatorID: TADOQuery;
    qryCheckIndicatorIDCnt: TIntegerField;
    ComboBox1: TComboBox;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    QrLetterData: TADOQuery;
    QrLetterDataLetterDataID: TAutoIncField;
    QrLetterDataLetterID: TIntegerField;
    QrLetterDataPageNumber: TIntegerField;
    QrLetterDataImage: TBlobField;
    QrLetterDataextention: TWordField;
    QrLetterDataDescription: TWideStringField;
    QrLetterDataLastUpdate: TDateTimeField;
    QrLetterDataListItemsID: TIntegerField;
    QrLetterDataColorID: TIntegerField;
    qryCheckIndicatorIDLetterID: TIntegerField;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FindLetterData(FileName:string);
    procedure SBOpenClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    Procedure Fill;
    Procedure Fill_New;
    procedure CBExtentionKeyPress(Sender: TObject; var Key: Char);
    procedure ShellTreeView1DblClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    FUNCTION  FIND_EXTENTON(Extention:String):String;
    procedure BitBtn1Click(Sender: TObject);
    procedure ShellTreeView2Change(Sender: TObject; Node: TTreeNode);
  private
    InportPath : String;
    FindFile : Integer;
    InportSearchRec : TSearchRec;

  public

  end;

Var
   FillLetterData: TFillLetterData;

implementation

Uses Dmu,UMain,YShamsiDate,BusinessLayer;

{$R *.dfm}

Var
   Errors,OpenedFiles,Folder,Extention,Delimeter,Delimeter2:string;


procedure TFillLetterData.Button2Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFillLetterData.SBOpenClick(Sender: TObject);
Var s: string;
begin
   inherited;
//   if SelectDirectory(_yeganeh,'',s) then
      //EditPath.Text := S+'\';
//     EditPath.Text := S;
   ShellTreeView1.Visible:=True;
   
end;

procedure TFillLetterData.FindLetterData(FileName:string);
Var
   j , IndicatorID , PageNumber , LetterID ,NextPageNumber: Integer;
begin
   j := pos(Delimeter,FileName);
   if j = 0 then
      try
         IndicatorID := StrToInt(FileName);
         {Ranjbar 89.11.26 ID=87}
         //PageNumber := 0;
         //---
      except
         Errors := Errors + ',' + FileName;
         exit;
      end
   else
      try
         IndicatorID := StrToInt(copy(FileName,1,j-1));
         {Ranjbar 89.11.26 ID=87}
         //PageNumber := StrToInt(Copy(FileName,j+1,length(filename)-j));
         //---
      except
         Errors := Errors + ',' + FileName;
         exit;
      end;

   LetterID := Exec_Get_LetterID_ByIndicatorID(IndicatorID,0,0,0,Dm.SecId);//DM.CurrentMyear
   if LetterID = 0 then
   begin
      Errors := Errors + ',' + FileName;
      Exit;
   end;

   With LetterData,Parameters do
   begin
      {Ranjbar 89.11.26 ID=87}
      Close;
      ParamByName('@secID').Value:=Dm.SecId;
      //ParamByName('@PageNumber').Value:=PageNumber;
      ParamByName('@Myear').Value := 0;
      ParamByName('@IndicatorID').Value := IndicatorID;
      Open;

      NextPageNumber := StrToIntDef(Qry_GetResult('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                       ' from LetterData Where LetterID = ' + IntToStr(LetterID),Dm.YeganehConnection),1);
      //---
      if Recordcount > 0 then
      begin
         Edit;
         LetterDataImage.LoadFromFile(Folder + FileName + '.' + Extention);
         {Ranjbar 89.11.26 ID=87}
         LetterDataPageNumber.AsInteger := NextPageNumber;
         //---
         Post;
      end
         else
         begin
            if FIND_EXTENTON(Extention) <> '-1' then
            BEGIN
            LetterData.Insert;
            FieldByName('LetterID').AsInteger := LetterID;
            {Ranjbar 89.11.26 ID=87}
            //FieldByName('PageNumber').AsInteger:=PageNumber;
            LetterDataPageNumber.AsInteger := NextPageNumber;
            //---
            LetterDataextention.AsInteger  := StrToInt(FIND_EXTENTON(Extention));
            LetterDataImage.LoadFromFile(Folder + FileName + '.' + Extention);
            Post;
            OpenedFiles := OpenedFiles + ',' + FileName;
            END
            ELSE
            ShowMessage('«Ì‰ ‰Ê⁄ «“ ›«Ì· œ— ﬁ”„   ⁄—Ì› «‰Ê«⁄ ›«Ì· Â«Ì ÅÌÊ”   ⁄—Ì› ‰‘œÂ «”  ø');
         end;
   end;
end;

FUNCTION TFillLetterData.FIND_EXTENTON(Extention:String):String;
VAR
QRY : TADOQuery;
BEGIN
//
QRY := TADOQuery.Create(NIL);
QRY.Connection := Dm.YeganehConnection;
QRY.Close;
QRY.SQL.Clear;
QRY.SQL.Add('SELECT EXTENTIONID FROM dbo.Extention WHERE Extention = '''+Extention+''' ');
QRY.Open;

if QRY.RecordCount = 1 then
   Result := QRY.FIELDBYNAME('EXTENTIONID').AsString
   ELSE
   Result := '-1';
FreeAndNil(QRY);
//
END;


Procedure TFillLetterData.Fill;
var Find,FileName: string;
   sr: TSearchRec;
   FileAttrs: Integer;
begin
   inherited;

   if Folder[length(Folder)]<>'\' then
      Folder:=Folder+'\';
   FileName:=Folder + '*.'+Extention;
   FileAttrs := 0;
   Errors:='';
   OpenedFiles:='';
   if FindFirst(fileName, FileAttrs, sr) = 0 then
   begin
      Repeat
         Find := ExtractFileName(sr.Name);
         //ShowMessage(IntToStr(POS(Find,'.')));
         Find := COPY(Find,1,POS('.',Find)-1);//LENGth(Find)-4);
         FindLetterData(Find);
      until FindNext(sr) <> 0;
   end;
   FindClose(sr);
end;

procedure TFillLetterData.Button1Click(Sender: TObject);
begin
   inherited;
   if Trim(EditPath.Text)='' then
   begin
      MBaseForm.MessageShowString('·ÿ›« "›·œ— Õ«ÊÌ  ’«ÊÌ—" —« „ﬁœ«— œÂÌ ‰„«ÌÌœ', False);
      EditPath.SetFocus;
      Exit;
   end;

   {Ranjbar 89.11.26 ID=87}
   if Trim(Edit3.Text) = '' then
      Edit3.Text := '-';
   //---
   Delimeter := Edit3.Text;
   if not messageShow(46,True) then
      Exit;

   Folder := EditPath.Text;
   {Ranjbar 89.11.26 ID=87}
   //Extention := Edit2.Text;
   Extention := CBExtention.Text;
   //---
   Fill;
   Memo1.Text := OpenedFiles;
   Memo2.Text := Errors;
end;

procedure TFillLetterData.CBExtentionKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   Key := #0;
end;

procedure TFillLetterData.ShellTreeView1DblClick(Sender: TObject);
begin
  inherited;
//  ShowMessage( ShellTreeView1.SelectedFolder.PathName );
  EditPath.Text := ShellTreeView1.SelectedFolder.PathName+'\';
  ShellTreeView1.Visible:=False;
{    if (DMFolderToLetter.QrLetter.Active)And(DMFolderToLetter.QrLetter.RecordCount > 0) then
      DMFolderToLetter.QrLetter.Locate('IncommingNO',ShellTreeView1.Selected.Text,[]);
 }
end;

procedure TFillLetterData.Panel2Click(Sender: TObject);
begin
  inherited;
  if ShellTreeView1.Visible=True then
      ShellTreeView1.Visible:=False;
end;

procedure TFillLetterData.FormCreate(Sender: TObject);
begin
  inherited;
   ShellTreeView1.Top := 67;
   ShellTreeView1.left := 16;
   ShellTreeView1.Height := 222;
end;

procedure TFillLetterData.BitBtn1Click(Sender: TObject);
Var
   j , IndicatorID , PageNumber , LetterID ,NextPageNumber: Integer;

begin
  inherited;

   Delimeter := '-';

   if not messageShow(46,True) then
      Exit;

   Fill_New;
   Memo3.Text := OpenedFiles;
   Memo4.Text := Errors;

end;

procedure TFillLetterData.Fill_New;
var Find,FileName: string;
   sr: TSearchRec;
   FileAttrs: Integer;
   I,j,R,g : Integer;
   Path,Root,fullFileName,name,RootName,Extention :string;
   SrRec : TSearchRec;
   b,c,d,Node: Integer;

begin
   OpenedFiles := '';
   Errors := '';
   QrLetterData.Close;
   QrLetterData.Parameters.ParamByName('LetterID').Value := 0;
   QrLetterData.Open;

     //*******************************************************
   if ShellTreeView2.Selected.GetLastChild.Index = -1 then
   begin
      ShowMessage('ÂÌç “Ì— ÅÊ‘Â «Ì Ì«›  ‰‘œ ° ·ÿ›« ”—‘«ŒÂ «’·Ì —« «‰ Œ«» ‰„«ÌÌœ');
      Screen.Cursor := crDefault;
//      SBConvert.Enabled := True;
      Exit;
   end;
    For I:=0 to 0 do
     begin
       Root := ShellTreeView2.Path;//+'\'+ShellTreeView2.Selected.Item[j].Text;
       RootName := extractfilename  (Root);
//       ShowMessage(RootName);


       qryCheckIndicatorID.Close;
       qryCheckIndicatorID.Parameters.ParamByName('myear').Value := dm.CurrentMyear;
       qryCheckIndicatorID.Parameters.ParamByName('IndicatorID').Value := StrToInt(RootName);
       qryCheckIndicatorID.Parameters.ParamByName('SecretariatID').Value := Dm.SecID;
       qryCheckIndicatorID.Open;

       if qryCheckIndicatorIDCnt.AsInteger < 1   then
       begin
         ShowMessage('‰«„Â «Ì »« ‘„«—Â «‰œÌò« Ê—' + ' ' + RootName + ' ' + 'Ì«›  ‰‘œ');
         Abort;
         Exit;
       end;

     end;

     For I:=0 to ShellTreeView2.Selected.GetLastChild.Index do

     begin
       Path := ShellTreeView2.Path+'\'+ShellTreeView2.Selected.Item[I].Text;;
         Extention := ComboBox1.Text;
       R := FindFirst(Path+'\*.'+Extention , FaAnyfile, SrRec); //
       if R <> 0 then //«ê— ›«Ì· ÅÌœ« ‰‘œ
       begin
         fullFileName := Path;//'D:\DataBase\¬»Ì_5000';
         name := extractfilename  (fullFileName);

         Errors := Errors + ',' + name;
         Continue;
       end;
       While R = 0 do //0: ÅÌœ« ﬂ—œ‰ ›«Ì·
       begin
         fullFileName := Path;//'D:\DataBase\¬»Ì_5000';
         name := extractfilename  (fullFileName);
         //ShowMessage(name);
         c:= AnsiPos('_',name)  ;
         b :=  Length(name);
         d := strtoint(copy(name,c + 1, b));
         QrLetterData.Append;
         QrLetterDataLetterID.AsInteger := qryCheckIndicatorIDLetterID.AsInteger;
         if QrLetterData.State = dsInsert then
            QrLetterDataPageNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
              ' from LetterData Where LetterID = '+QrLetterDataLetterID.AsString).Fields[0].value;
         QrLetterDataImage.LoadFromFile(Path+'\'+SrRec.Name);
         QrLetterDataExtention.AsInteger := 1; //Jpg=1 , Tif=2
         QrLetterDataLastUpdate.AsDateTime := Now;
         QrLetterDataDescription.AsString := Path;
         QrLetterDataColorID.AsInteger := d;
         QrLetterData.Post;
         OpenedFiles := OpenedFiles + ',' + name;
         R := FindNext(SrRec);
      end;
     end;
      { else //Ê –ŒÌ—Â œ— œÌ «»Ì” Jpg »Â Tif  «»⁄  »œÌ·
                         ChangeTifToJpgAndSave(Path+'\'+SrRec.Name);
                      R := FindNext(SrRec);}
    ShowMessage('«‰ ﬁ«· ⁄ò” »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
  {   Abort;
     Exit}
     //*******************************************************
 end;


procedure TFillLetterData.ShellTreeView2Change(Sender: TObject;Node: TTreeNode);
Var
   Extention : String[3];
begin
  inherited;
   InportPath := ShellTreeView2.Path+'\';
   FindFile := FindFirst(InportPath+'\*.'+Extention, FaAnyfile, InportSearchRec);  ///
end;

end.
