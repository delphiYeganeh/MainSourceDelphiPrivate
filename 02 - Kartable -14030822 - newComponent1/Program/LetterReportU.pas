unit LetterReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons,  xpBitBtn, Menus;

type
  TLetterReport = class(TMBaseForm)
    Panel1: TPanel;
    SelectLetter: TADOStoredProc;
    Action1: TAction;
    Panel2: TPanel;
    Button4: TBitBtn;
    Button3: TBitBtn;
    Button6: TBitBtn;
    MakeRep: TBitBtn;
    Button5: TBitBtn;
    Allsec: TCheckBox;
    Label1: TLabel;
    Number: TLabel;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    SelectLetterLetterID: TAutoIncField;
    SelectLetterIndicatorID: TIntegerField;
    SelectLetterMYear: TWordField;
    SelectLetterSecretariatID: TIntegerField;
    SelectLetterLetter_Type: TIntegerField;
    SelectLetterletterformat: TIntegerField;
    SelectLetterIncommingNO: TWideStringField;
    SelectLetterIncommingdate: TWideStringField;
    SelectLetterCenterNo: TWideStringField;
    SelectLetterCenterDate: TStringField;
    SelectLetterFromOrgID: TIntegerField;
    SelectLetterToOrgID: TIntegerField;
    SelectLetterSignerid: TWideStringField;
    SelectLetterClassificationID: TIntegerField;
    SelectLetterUrgencyID: TIntegerField;
    SelectLetterMemo: TWideStringField;
    SelectLetterAttachTitle: TWideStringField;
    SelectLetterNumberOfAttachPages: TSmallintField;
    SelectLetterNumberOfPage: TWordField;
    SelectLetterReceiveTypeID: TIntegerField;
    SelectLetterUserID: TIntegerField;
    SelectLetterRetroactionNo: TWideStringField;
    SelectLetterRegistrationDate: TStringField;
    SelectLetterRegistrationTime: TStringField;
    SelectLetterFollowLetterNo: TWideStringField;
    SelectLetterToStaffer: TWideStringField;
    SelectLetterSentLetterID: TIntegerField;
    SelectLetterTemplateID: TIntegerField;
    SelectLetterHeaderID: TIntegerField;
    SelectLetterLetterRecommites: TWideStringField;
    SelectLetterPreCode: TWideStringField;
    SelectLetterfromstaffer: TWideStringField;
    SelectLetterFinalized: TBooleanField;
    SelectLetterSendStatusID: TIntegerField;
    SelectLetterLastUpdate: TDateTimeField;
    SelectLetterUserTableID: TIntegerField;
    SelectLetterUniqueID: TLargeintField;
    SelectLetterArchived: TBooleanField;
    SelectLetterSubjectDescription: TWideStringField;
    SelectLetterSubjectID: TIntegerField;
    SelectLetterLatestActionTypeID: TIntegerField;
    SelectLetterLatestActionReason: TWideStringField;
    SelectLetterDeadLineDate: TStringField;
    SelectLetterActionTypeID: TIntegerField;
    SelectLetterUserTableID2: TIntegerField;
    SelectLetterEmailNuFromDate: TWideStringField;
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
    SelectLetterUserMemo: TWideStringField;
    SelectLetterOldSecretariatID: TIntegerField;
    SelectLetterCustomerID: TIntegerField;
    SelectLetterInnerNO: TStringField;
    SelectLetterHas_File: TBooleanField;
    SelectLetterHas_Page: TBooleanField;
    SelectLetterHas_WordPage: TBooleanField;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure YDBGrid1NeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure YDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LetterReport: TLetterReport;

implementation

uses Dmu, LetterFilterU, UMain,BusinessLayer;

{$R *.dfm}

procedure TLetterReport.MakeRepClick(Sender: TObject);
var
   w:string;
   I : integer;
begin
   inherited;
   if Allsec.Checked then
      w:=''
   else
      w:='(l.SecretariatID='+IntToStr(Dm.SecId)+')';

   if LetterFilter.Where<>'' then
      if w<>'' then
         w:=w+' and '+LetterFilter.Where
      else
         w:=LetterFilter.Where ;

   //Ranjbar
   if Trim(LetterFilter.EdtIncommingNO.Text)<>'' then
      W := W + ' And l.IncommingNO like ''%'+ LetterFilter.EdtIncommingNO.Text + '%''';

   //⁄ÿ›
   if Trim(LetterFilter.EdtRetroactionNo.Text)<>'' then
      W := W + ' And l.RetroactionNo like ''%'+ LetterFilter.EdtRetroactionNo.Text + '%''';
   //ÅÌ—Ê
   if Trim(LetterFilter.EdtFollowLetterNo.Text)<>'' then
      W := W + ' And l.FollowLetterNo like ''%'+ LetterFilter.EdtFollowLetterNo.Text + '%''';
   //----

   {Ranjbar 89.10.05 ID=232}
   For I:=0 to YDBGrid1.Columns.Count-1 do
      if UpperCase(YDBGrid1.Columns[I].FieldName) = UpperCase('UserMemo') then
      begin
         YDBGrid1.Columns[I].Title.Caption := GetSystemSetting('UserMemoDisplay');
         Break;
      end;
   //---

   With SelectLetter do
   begin
      Close;
      Parameters.ParamByName('@where').Value:= w ;
      Open;
      Number.Caption:='  ⁄œ«œ : '+IntToStr(RecordCount);
   end;
end;

procedure TLetterReport.FormShow(Sender: TObject);

begin
   inherited;
   LetterFilter := TLetterFilter.Create(self);
   LetterFilter.ShowInPanel(Panel1);
   

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

procedure TLetterReport.YDBGrid1NeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;
  // Amin 1391/12/01 Start
   if UpperCase(Column.FieldName) = 'HAS_PAGE' then
      if SelectLetterhas_Page.AsBoolean then
         ImageIndex := 3
      else
         ImageIndex := 0;

   if UpperCase(Column.FieldName) = 'HAS_WORDPAGE' then
      if SelectLetterhas_WordPage.AsBoolean then
         ImageIndex := 2
      else
         ImageIndex := 0;

   if Uppercase(Column.FieldName) = 'HAS_FILE' then
      if SelectLetterhas_file.AsBoolean then
         ImageIndex := 1
      else
         ImageIndex := 0;
   // Amin 1391/12/01 End
end;

procedure TLetterReport.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;       
   // Amin 1391/12/01 Start
    Case SelectLetterLetter_Type.AsInteger of
         1: MainForm.ViewReceivedLetter(SelectLetterLetterID.AsInteger);
         2: MainForm.ViewSentLetter(SelectLetterLetterID.AsInteger);
         3: MainForm.ViewInnerLetter(SelectLetterLetterID.AsInteger);
         4: MainForm.ViewDocument(SelectLetterLetterID.AsInteger);
      end;
   // Amin 1391/12/01 End
end;

end.

