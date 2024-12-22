unit SystemSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ComCtrls, DB,  Buttons, DBCtrls, ADODB,
  ActnList, ExtCtrls, ExtActns, Mask, Spin, xpWindow, xpBitBtn,
  AdvGlowButton;

type
  TSystemSettings = class(TMBaseForm)
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    PageControl1: TPageControl;
    TShOthers: TTabSheet;
    TShOtherSoft: TTabSheet;
    TShSystem: TTabSheet;
    TShDocNu: TTabSheet;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label1: TLabel;
    BeginIndicator: TEdit;
    LetterHasArchiveCopy: TCheckBox;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    MaxNumber_Of_Letter: TEdit;
    DayInWeekForBackup: TComboBox;
    InsertLog: TCheckBox;
    FulltextSearch: TCheckBox;
    Refresh_PriodTime: TSpinEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    maintablename: TDBLookupComboBox;
    codefield: TEdit;
    titlefield: TEdit;
    GroupBox6: TGroupBox;
    Label36: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    ORGANAME: TEdit;
    AllowMultiUser: TCheckBox;
    RecommiteCopy: TCheckBox;
    UseTemplate: TCheckBox;
    DefaultRentDays: TEdit;
    GroupBox4: TGroupBox;
    LblDocument: TLabel;
    LblSubject: TLabel;
    LblMemo: TLabel;
    EdtDocument: TEdit;
    EdtSubject: TEdit;
    EdtMemo: TEdit;
    ChBoTitle: TCheckBox;
    Label16: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    lkjskldsa: TLabel;
    UserMemo3: TEdit;
    UserMemo2: TEdit;
    UserMemo1: TEdit;
    pnlMain: TPanel;
    procedure GetFromDm;
    procedure SetFromDm;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ChBoTitleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label16Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemSettings: TSystemSettings;

implementation

uses Dmu , YShamsiDate , UMain;

{$R *.dfm}

procedure TSystemSettings.GetFromDm;
begin
  inherited;
  try
    MaxNumber_Of_Letter.Text:=Dm.GetSystemValue(2);
    BeginIndicator.Text:=Dm.GetSystemValue(3);
    DayInWeekForBackup.ItemIndex :=Dm.GetSystemValue(8);

    UserMemo1.Text:=dm.GetSystemValue(15);
    UserMemo2.Text:=dm.GetSystemValue(45);
    UserMemo3.Text:=dm.GetSystemValue(46);

    ORGANAME.Text:=dm.GetSystemValue(16);
    FullTextSearch.Checked:=dm.GetSystemValue(17);
    LetterHasArchiveCopy.Checked:=dm.GetSystemValue(18);

    maintablename.KeyValue:=dm.GetSystemValue(24);
    titlefield.Text:=dm.GetSystemValue(25);
    codefield.Text:=dm.GetSystemValue(26);
    Refresh_PriodTime.Value:=dm.GetSystemValue(28);
    AllowMultiUser.Checked:=Dm.GetSystemValue(29);
    RecommiteCopy.Checked:=dm.GetSystemValue(30);
    UseTemplate.Checked:=Dm.GetSystemValue(31);
    InsertLog.Checked:=dm.GetSystemValue(32);
    DefaultRentDays.Text:=Dm.GetSystemValue(10);

    // €ÌÌ— ⁄‰«ÊÌ‰
    ChBoTitle.Checked := Dm.GetSystemValue(51);
    EdtDocument.Text := Trim(Dm.GetSystemValue(52));
    EdtSubject.Text := Trim(Dm.GetSystemValue(53));
    EdtMemo.Text := Trim(Dm.GetSystemValue(54));
      //---
  except

  end;
end;

procedure TSystemSettings.SetFromDm;
Var
   Old1 : Boolean;
   //I:integer;
   edtUM1, edtUM2, edtUM3, edtDoc, edtSub, edtMem : String;
begin
  inherited;

  Dm.SetSystemValue(2,MaxNumber_Of_Letter.Text);
  Dm.SetSystemValue(3,BeginIndicator.Text);
  Dm.SetSystemValue(8,DayInWeekForBackup.ItemIndex);

  edtUM1 := Trim(Dm.GetSystemValue(15));
  edtUM2 := Trim(Dm.GetSystemValue(45));
  edtUM3 := Trim(Dm.GetSystemValue(46));

  dm.SetSystemValue(15,UserMemo1.Text);
  dm.SetSystemValue(45,UserMemo2.Text);
  dm.SetSystemValue(46,UserMemo3.Text);

  dm.SetSystemValue(16,ORGANAME.Text);
  dm.SetSystemValue(17,FulltextSearch.Checked);
  dm.SetSystemValue(18,LetterHasArchiveCopy.Checked);

  dm.SetSystemValue(24,maintablename.KeyValue);
  dm.SetSystemValue(25,titlefield.Text);
  dm.SetSystemValue(26,codefield.Text);
   //Dm.SetSystemValue(27,HasJpg.ItemIndex=0); //«”ﬂ‰  ’ÊÌ—
  Dm.SetSystemValue(28,Refresh_PriodTime.Text);
  Dm.SetSystemValue(29,AllowMultiUser.Checked);
  Dm.SetSystemValue(30,RecommiteCopy.Checked);
  Dm.SetSystemValue(31,UseTemplate.Checked);
  Dm.SetSystemValue(32,InsertLog.Checked);
   //Ranjbar
  if StrToIntDef(DefaultRentDays.Text , 0) < 1 then
    DefaultRentDays.Text := '1';
  Dm.SetSystemValue(10,DefaultRentDays.Text);

  Old1 := Dm.GetSystemValue(51);
  edtDoc := Trim(Dm.GetSystemValue(52));
  edtSub := Trim(Dm.GetSystemValue(53));
  edtMem := Trim(Dm.GetSystemValue(54));

  Dm.SetSystemValue(51,ChBoTitle.Checked);
  Dm.SetSystemValue(52,EdtDocument.text);
  Dm.SetSystemValue(53,EdtSubject.text);
  Dm.SetSystemValue(54,EdtMemo.text);

  if (edtUM1 <> Trim(UserMemo1.Text)) or (edtUM2 <> Trim(UserMemo2.Text)) or
      (edtUM3 <> Trim(UserMemo3.Text)) or (edtDoc <> Trim(EdtDocument.Text)) or
      (edtSub <> Trim(EdtSubject.Text)) or (edtMem <> Trim(EdtMemo.Text)) then
    MainForm.blnChangeDbgrid := True;

   //MainForm.lettersDbGrid »—œ«‘ ‰ Ê œÊ»«—Â –ŒÌ—Â ﬂ—œ‰  ‰ŸÌ„«  ” Ê‰Â«Ì ﬂ‰ —·
  if Old1 <> ChBoTitle.Checked then
    MainForm.DelDBGridSettings := True;
   //----
end;


procedure TSystemSettings.FormCreate(Sender: TObject);
begin
  inherited;
  GetFromDm;
  with dm.Tables do
    if not Active then
      Open;
  //Ranjbar
  PageControl_SetTabSheet(PageControl1,'TShDocNu');// ÅÌ‘ ›—÷ Â«
end;

procedure TSystemSettings.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SetFromDm;
  dm.GetValues;
  MBaseForm.messageShowString('·ÿ›« ÃÂ  «⁄„«·  €ÌÌ—«  ° «“ ‰—„ «›“«— Œ«—Ã Ê œÊ»«—Â Ê«—œ ‘ÊÌœ', False);
  Close;
end;

procedure TSystemSettings.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TSystemSettings.ChBoTitleClick(Sender: TObject);
//Var
  //I:integer;
begin
  inherited;
  if ChBoTitle.Checked then
  begin
    EdtDocument.Enabled := True;
    EdtSubject.Enabled := True;
    EdtMemo.Enabled := True;
  end
  else
  begin
    EdtDocument.Enabled := False;
    EdtSubject.Enabled := False;
    EdtMemo.Enabled := False;
  end;
end;

procedure TSystemSettings.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.04.01}
  LblDocument.Caption := '"”‰œ"  »Â :';
  LblSubject.Caption := '"„Ê÷Ê⁄"  »Â :';
  LblMemo.Caption := '"Œ·«’Â"  »Â :';
  //---
end;

procedure TSystemSettings.Label16Click(Sender: TObject);
begin
  inherited;
  if ChBoTitle.Checked then
    ChBoTitle.Checked := False
  else
    ChBoTitle.Checked := True;
  ChBoTitleClick(Sender);
end;

end.



