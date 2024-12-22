unit LetterReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, xpWindow, xpBitBtn, ComCtrls, ImgList,
  Mask, DBCtrls, AdvGlowButton;

type
  TDblclickAction=(viewLetter,ViewJpg,ViewWord,ViewPdf);
  TLetterReport = class(TMBaseForm)
    Panel1: TPanel;
    SelectLetter: TADOStoredProc;
    Action1: TAction;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    Number: TLabel;
    MakeRep: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Button6: TAdvGlowButton;
    SelectLetterLetterID: TAutoIncField;
    SelectLetterIndicatorID: TIntegerField;
    SelectLetterMYear: TWordField;
    SelectLetterLetter_Type: TWordField;
    SelectLetterletterformat: TWordField;
    SelectLetterIncommingNO: TWideStringField;
    SelectLetterIncommingdate: TWideStringField;
    SelectLetterCenterNo: TWideStringField;
    SelectLetterCenterDate: TStringField;
    SelectLetterFromOrgID: TIntegerField;
    SelectLetterToOrgID: TIntegerField;
    SelectLetterSignerid: TWideStringField;
    SelectLetterClassificationID: TWordField;
    SelectLetterUrgencyID: TSmallintField;
    SelectLetterMemo: TWideStringField;
    SelectLetterAttachTitle: TWideStringField;
    SelectLetterNumberOfAttachPages: TSmallintField;
    SelectLetterNumberOfPage: TWordField;
    SelectLetterReceiveTypeID: TWordField;
    SelectLetterUserID: TIntegerField;
    SelectLetterRetroactionNo: TWideStringField;
    SelectLetterUserMemo: TWideStringField;
    SelectLetterRegistrationDate: TStringField;
    SelectLetterRegistrationTime: TStringField;
    SelectLetterFollowLetterNo: TWideStringField;
    SelectLetterToStaffer: TWideStringField;
    SelectLetterSentLetterID: TIntegerField;
    SelectLetterTemplateID: TIntegerField;
    SelectLetterHeaderID: TIntegerField;
    SelectLetterLetterRecommites: TWideStringField;
    SelectLetterFromStaffer: TWideStringField;
    SelectLetterLastUpdate: TDateTimeField;
    SelectLetterSendStatusID: TWordField;
    SelectLetterUserTableID: TIntegerField;
    SelectLetterFinalized: TBooleanField;
    SelectLetterUserMemo1: TWideStringField;
    SelectLetterUserMemo2: TWideStringField;
    SelectLetterColor: TIntegerField;
    SelectLetterLinked_LetterID: TIntegerField;
    SelectLetterVersionDate: TStringField;
    SelectLetterVersionNumber: TStringField;
    SelectLetterReciveTitle: TWideStringField;
    SelectLetterClassificatioTitle: TWideStringField;
    SelectLetterUrgencyTitle: TWideStringField;
    SelectLetterUserTitle: TWideStringField;
    SelectLetterFormatTitle: TWideStringField;
    SelectLetterToOrgTitle: TWideStringField;
    SelectLetterTemplateTitle: TWideStringField;
    SelectLetterFromTitle: TWideStringField;
    SelectLetterLetterTypeTitle: TWideStringField;
    SelectLetterAnswerMYear: TWordField;
    SelectLetterAnswerIndicatorID: TIntegerField;
    SelectLetterhas_Page: TBooleanField;
    ImageList: TImageList;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    SelectLetterHasTasvir: TIntegerField;
    SelectLetterSubject: TWideStringField;
    SelectLetterHas_WordPage: TBooleanField;
    SelectLetterHas_File: TBooleanField;
    SelectLetterHas_Page_1: TBooleanField;
    SelectLetterSecretariatID: TIntegerField;
    pnlMain: TPanel;
    ImageList_new: TImageList;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure YDBGrid1NeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    DblclickAction : TDblclickAction;
    DoNotsaveDBColumn : Boolean;
  end;

Var
   LetterReport: TLetterReport;


implementation

uses Dmu, LetterFilterU, UMain, businessLayer, Settingsu,YShamsiDate,
  ScanImageFm, LetterEditFm;

{$R *.dfm}

procedure TLetterReport.MakeRepClick(Sender: TObject);
 var w:string;
begin
   inherited;
   //W := '(l.SecretariatID='+IntToStr(Dm.SecId)+')';
   if MainForm.searchAll.Checked then
     W := '1=1'
   else
     W := '(l.SecretariatID='+IntToStr(Dm.SecId)+')';
   if LetterFilter.Where <> '' then
      W := W + ' And ' + LetterFilter.Where;

   With SelectLetter do
   begin
      Close;
      Parameters.ParamByName('@where').Value := W ;
      Open;
      Number.Caption := '  ⁄œ«œ :' + IntToStr(RecordCount)
   end;
   {Ranjbar 89.06.22 ID=52}
   //YDBGrid1.Columns.Items[0].Width := 25;
   //---
end;

procedure TLetterReport.FormShow(Sender: TObject);
var i: byte;
begin
   DBGrid_SaveColumns(Self.Name+'_Temp',YDBGrid1);// ‰ŸÌ„ ÅÌ‘ ›—÷ ” Ê‰Â«
   DBGrid_LoadColumns(Self.Name,YDBGrid1);
   inherited;
   with dm,YDBGrid1,Columns do
      for i:=0 to Count-1 do
         if UpperCase(Columns[i].FieldName)='USERMEMO'  then
            Columns[i].Title.Caption:=UserMemo1
         else
            if UpperCase(Columns[i].FieldName)='USERMEMO1'  then
               Columns[i].Title.Caption:=UserMemo2
            else
               if UpperCase(Columns[i].FieldName)='USERMEMO2'  then
                  Columns[i].Title.Caption:=UserMemo3;

  // LetterFilter := TLetterFilter.Create(self);
  // LetterFilter.ShowInPanel(Panel1);

   {Ranjbar 89.06.22 ID=52}
   YDBGrid1.Columns.Items[0].Width := 25;
   //---
end;

procedure TLetterReport.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TLetterReport.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TLetterReport.Button2Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.Print;
end;

procedure TLetterReport.Button6Click(Sender: TObject);
begin
   inherited;
   YDBGrid1.CustomizePrint;
end;

procedure TLetterReport.Action1Execute(Sender: TObject);
begin
  inherited;
 MakeRepClick(MakeRep);

end;

procedure TLetterReport.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TLetterReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   {Ranjbar 88.03.25}
   if not DoNotsaveDBColumn then
      DBGrid_SaveColumns(Self.Name,YDBGrid1);
   //---
end;

procedure TLetterReport.YDBGrid1DblClick(Sender: TObject);
begin
   inherited;
   if SelectLetter.IsEmpty then
      Exit;

   if UpperCase(YDBGrid1.SelectedField.FieldName)=UpperCase(SelectLetterhas_Page.FieldName) then
   begin
      if SelectLetterhas_Page.AsBoolean then
      begin
         {if (DblclickAction = ViewJpg ) And  dm.Get_All_Letterhas_Page.AsBoolean then
         Apicture.Execute}
         Try
            FmScanImage := TFmScanImage.Create(Nil);
            FmScanImage.LetterID := SelectLetterLetterID.AsInteger;
            Dm.SelectLetter := SelectLetterLetterID.AsString;
            FmScanImage.ShowModal;
         Finally
            FreeAndNil(FmScanImage);
         End;

         Try
            //Exec_insert_UserLog(SBScanImage.Name,Select_LetterLetterID.AsInteger);
         Except
         End;

      end;
      Exit;
   end;

   MainForm.ViewDocumnet( SelectLetter.fieldbyname('LetterID').AsInteger,false);

end;

procedure TLetterReport.YDBGrid1NeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
   inherited;
   {Ranjbar 89.06.22 ID=52}
   // ’«ÊÌ—
   if UpperCase(Column.FieldName)=UpperCase('has_Page') then
      if SelectLetterhas_Page.AsBoolean then
         ImageIndex:=3
      else
         ImageIndex:=0;
   //---      
end;

procedure TLetterReport.BitBtn1Click(Sender: TObject);
begin
   inherited;
   DBGrid_LoadColumns(Self.Name+'_Temp',YDBGrid1);// ‰ŸÌ„ ÅÌ‘ ›—÷ ” Ê‰Â«
   ShowMessage(' ‰ŸÌ„«  «⁄„«· ‘œ');
end;

procedure TLetterReport.BitBtn2Click(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.08 ID=12}
   if not(SelectLetter.Active)or(SelectLetter.RecordCount = 0) then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;

   FmLetterEdit := TFmLetterEdit.Create(Self);
   FmLetterEdit.LetterID := SelectLetterLetterID.AsInteger;
   FmLetterEdit.UsersID := 0;
   FmLetterEdit.ShowModal;
   //---
end;

procedure TLetterReport.FormCreate(Sender: TObject);
begin
  inherited;
   LetterFilter := TLetterFilter.Create(self);
   LetterFilter.ShowInPanel(Panel1);
end;

end.
