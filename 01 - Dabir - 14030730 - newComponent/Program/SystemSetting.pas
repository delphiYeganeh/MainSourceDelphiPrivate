unit SystemSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ComCtrls, DB,  Buttons, DBCtrls, ADODB,
  ActnList, ExtCtrls, ExtActns, Mask, Spin,  xpBitBtn,FileCtrl, Menus,
  AppEvnts, AdvGlowButton;

type
  TSystemSettings = class(TMBaseForm)
    Panel3: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    PageControl1: TPageControl;
    TShLetterNu: TTabSheet;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    EqualAnswerIndicator: TCheckBox;
    BeginIndicator: TEdit;
    LetterHasArchiveCopy: TCheckBox;
    Uniqeindicator: TComboBox;
    TShSystem: TTabSheet;
    GroupBox7: TGroupBox;
    Label27: TLabel;
    Label32: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    DayInWeekForBackup: TComboBox;
    InsertLog: TCheckBox;
    FulltextSearch: TCheckBox;
    RefreshPriodTime: TSpinEdit;
    TShLetterTrans: TTabSheet;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    ReplicatePriod: TEdit;
    MaxReplicateAttachSize: TEdit;
    ServerID: TEdit;
    hasReplicate: TCheckBox;
    TShOtherSoft: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RelatedTableName: TDBLookupComboBox;
    RelatedIDField: TEdit;
    RelatedDisplayField: TEdit;
    TShOthers: TTabSheet;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    UserMemoDisplay: TEdit;
    DefaultOrgPreCode: TEdit;
    OrgName: TEdit;
    AllowMultiUser: TCheckBox;
    RecommiteCopy: TCheckBox;
    UseTemplate: TCheckBox;
    ShowFarsiCaption: TCheckBox;
    ShowLifeTips: TCheckBox;
    RecommiteOtherAfterAssignNo: TCheckBox;
    UniqueIndSec: TCheckBox;
    Label1: TLabel;
    GroupBox11: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    SizeOfRecommiteAttachFile: TEdit;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Button1: TAdvGlowButton;
    PathOfECE: TEdit;
    OpenDialog1: TOpenDialog;
    AutomaticSendForECE: TCheckBox;
    GroupBox4: TGroupBox;
    cbWord: TCheckBox;
    cbExcel: TCheckBox;
    pnlMain: TPanel;
   procedure GetFromDm;
   procedure SetFromDm;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure UniqeindicatorChange(Sender: TObject);
    procedure EdtCoAddressEnter(Sender: TObject);
    procedure EdtCoAddressExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemSettings: TSystemSettings;

implementation

uses
  Dmu, YShamsiDate, businessLayer;

{$R *.dfm}

procedure TSystemSettings.GetFromDm;
var
  i: Integer;
begin
  inherited;

  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].ClassNameIs('Tedit') then
      try
        TEdit(Components[i]).Text:=GetSystemSetting(Components[i].Name);
      except
      end
    else
      if Components[i].ClassNameIs('TCheckBox') then
        try
          TCheckBox(Components[i]).Checked:= GetSystemSetting(Components[i].Name);
        except
        end
      else
        if Components[i].ClassNameIs('TDBLookupComboBox') then
          try
            TDBLookupComboBox(Components[i]).KeyValue:= GetSystemSetting(Components[i].Name);
          except
          end
        else
          if Components[i].ClassNameIs('TComboBox') then
            try
              TComboBox(Components[i]).ItemIndex := GetSystemSetting(Components[i].Name);
            except
            end
          else
            {Ranjbar 89.07.29 ID=}
            if Components[i].ClassNameIs('TSpinEdit') then
              try
                TSpinEdit(Components[i]).Value := GetSystemSetting(Components[i].Name);
              except
              end;
              //---
  end;

  cbWord.Checked := True;
  cbExcel.Checked := (GetSystemSetting('HasExcelTemplate') <> '0');

   {if Trim(EmailSendPort.Text) = '' then
     EmailSendPort.Text := '25';

   if Trim(EmailRecivePort.Text) = '' then //ÅÊ—  œ—Ì«› 
     EmailRecivePort.Text:='995';}
end;


procedure TSystemSettings.SetFromDm;
var
  i: integer;
begin
  inherited;
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].ClassNameIs('TEdit') then
      SetSystemSetting(Components[i].name,trim(TEdit(Components[i]).text))
    else
      if Components[i].ClassNameIs('TCheckBox') then
      begin
        SetSystemSetting(Components[i].name, TCheckBox(Components[i]).Checked);
//              if Components[i].name='hasReplicate' then
//              begin
//                  ShowMessage(Components[i].name);
//                  ShowMessage(BoolToStr(TCheckBox(Components[i]).Checked));
//              end;
      end
      else
        if Components[i].ClassNameIs('TDBLookupComboBox') then
          SetSystemSetting(Components[i].Name,TDBLookupComboBox(Components[i]).KeyValue)
        else
          if Components[i].ClassNameIs('TComboBox') then
            SetSystemSetting(Components[i].Name, TComboBox(Components[i]).ItemIndex)
          else
            {Ranjbar 89.07.29 ID=}
            if Components[i].ClassNameIs('TSpinEdit') then
              SetSystemSetting(Components[i].Name, TSpinEdit(Components[i]).Value);
              //---
  end;

  if (cbExcel.Checked) then
    SetSystemSetting('HasExcelTemplate', 1)
  else
    SetSystemSetting('HasExcelTemplate', 0);

  _Has_Excel_Template := (GetSystemSetting('HasExcelTemplate') <> '0');  
end;

procedure TSystemSettings.FormCreate(Sender: TObject);
begin
  inherited;
  dm.Signers.Open;
  GetFromDm;
  UniqeindicatorChange(Uniqeindicator);
  if not dm.Tables.Active then
    dm.Tables.Open;
  PageControl_SetTabSheet(PageControl1,'TShLetterNu');//‘„«—Â ‰«„Â
  {$IFDEF LIGHT}
      TShLetterTrans.TabVisible := false;
      RecommiteCopy.Visible := false;
      RecommiteOtherAfterAssignNo.Visible := false;
      {$IFDEF SINGLE}
         TShOtherSoft.TabVisible := false;
      {$ENDIF}
  {$ENDIF}
end;

procedure TSystemSettings.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SetFromDm;
  dm.GetUserSettings;
  Close;
end;

procedure TSystemSettings.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TSystemSettings.UniqeindicatorChange(Sender: TObject);
begin
  inherited;
  if not Uniqeindicator.ItemIndex = 1 then
  begin
    EqualAnswerIndicator.Checked := false;
    EqualAnswerIndicator.Enabled := false;
    {Ranjbar}
    //EqualAnswerIndicatorlabel.Font.Color := clGrayText;
  end
  else
  begin
    EqualAnswerIndicator.Enabled := True;
    {Ranjbar}
    //EqualAnswerIndicatorlabel.Font.Color := clBlack;
  end
end;

procedure TSystemSettings.EdtCoAddressEnter(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TSystemSettings.EdtCoAddressExit(Sender: TObject);
begin
  inherited;
  Keyboard_Farsi;
end;

procedure TSystemSettings.Button1Click(Sender: TObject);
var
  s:string;
begin
  inherited;
  if SelectDirectory('        ⁄ÌÌ‰ „”Ì— ›«Ì·: ‰—„ «›“«— « Ê„«”ÌÊ‰ «œ«—Ì ','',s) then
    PathOfECE.Text:=s;
end;

end.
