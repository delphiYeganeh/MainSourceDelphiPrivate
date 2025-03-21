unit Settingsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB,  Buttons, DBCtrls, ADODB,
  ActnList, ExtCtrls, ExtActns,  Mask, BaseUnit, Menus, FileCtrl, Spin,
  AppEvnts;

type
  TSettings = class(TMBaseForm)
    ColorDialog1: TColorDialog;
    FontDialog: TFontDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TShEmail: TTabSheet;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    TShGraphic: TTabSheet;
    GroupBox2: TGroupBox;
    TShOthers: TTabSheet;
    GroupBox8: TGroupBox;
    Label5: TLabel;
    ShowOriginalErrorMessage: TCheckBox;
    IninitialSearchDate: TComboBox;
    DefaultProceed: TCheckBox;
    DefaultInnerCopy: TCheckBox;
    TShSentLetter: TTabSheet;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    DefaultSUrgencyID: TEdit;
    DefaultSReceiveTypeID: TEdit;
    DefaultSClassificationID: TEdit;
    DefaultSNumberOfPage: TEdit;
    DefaultSNumberOfAttachPages: TEdit;
    DefualtSSigner: TDBLookupComboBox;
    DefaultSFromOrgId: TDBLookupComboBox;
    TShReceivedLetter: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label11: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    CheckBox1: TCheckBox;
    DefaultRClassificationID: TEdit;
    DefaultRUrgencyID: TEdit;
    DefaultRReceiveTypeID: TEdit;
    DefaultRNumberOfPage: TEdit;
    DefaultRNumberOfAttachPages: TEdit;
    DefaultRFromOrgId: TDBLookupComboBox;
    TShBaseform: TTabSheet;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    InitialReceivedMode: TComboBox;
    InitialArchiveMode: TComboBox;
    InitialDisplyMode: TComboBox;
    Label15: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    rgScanType: TRadioGroup;
    GroupBox7: TGroupBox;
    Label8: TLabel;
    Pcolor: TPanel;
    MFont: TBitBtn;
    ConvertFaxToA4: TCheckBox;
    GroupBox9: TGroupBox;
    InsertSignInWord: TCheckBox;
    EmailSSL: TCheckBox;
    EmailAutenticationType: TCheckBox;
    FileListBox: TFileListBox;
    LblGraphic: TLabel;
    cbAlarmMessage: TCheckBox;
    EmailEmailConTime: TEdit;
    AskValueForEmptyFieldInWordTemplate: TCheckBox;
    DefaultEmailSubject: TEdit;
    BitBtn3: TBitBtn;
    SBDelDefualtSSigner: TSpeedButton;
    TShFox: TTabSheet;
    GroupBox10: TGroupBox;
    Label23: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    SpeedButton1: TSpeedButton;
    Label36: TLabel;
    Label38: TLabel;
    FaxUpdate: TCheckBox;
    FaxDirectory: TEdit;
    FaxCartableOrgID: TDBLookupComboBox;
    FaxUpdatePriod: TSpinEdit;
    TreeView1: TTreeView;
    FaxExtention: TComboBox;
    Label37: TLabel;
    FaxSecID: TDBLookupComboBox;
    QrUserSec: TADOQuery;
    DSUserSec: TDataSource;
    QrUserSecSecID: TAutoIncField;
    QrUserSecSecTitle: TWideStringField;
    QrUserSecPrecode: TWideStringField;
    QrUserSecServerID: TIntegerField;
    QrUserSecArchiveCenterID: TIntegerField;
    SBDelFaxSecID: TSpeedButton;
    ReciveIsCopy: TCheckBox;
    MaxLetterInDabir: TEdit;
    Label39: TLabel;
    MaxLetterInKartable: TEdit;
    Label40: TLabel;
    DefaultIsCopy: TCheckBox;
    AskMonoSelect: TCheckBox;
    Label1: TLabel;
    emailStartDate: TEdit;
    ckBidiModeLetterGrid: TCheckBox;
    Label7: TLabel;
    Signature_RequestPass: TCheckBox;
    GroupBox11: TGroupBox;
    edpi: TEdit;
    rgColor: TRadioGroup;
    ScannerInput: TRadioGroup;
    DuplexScan: TRadioGroup;
    rgSizeImage: TRadioGroup;
    procedure GetFromDm;
    procedure SetFromDm;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MFontClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdtSendHostEnter(Sender: TObject);
    procedure EdtSendHostExit(Sender: TObject);
    procedure EdtEmailConTimeExit(Sender: TObject);
    procedure EdtEmailConTimeKeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1Click(Sender: TObject);
    procedure PcolorClick(Sender: TObject);
    procedure FileListBoxDblClick(Sender: TObject);
    procedure cbAlarmMessageClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SBDelDefualtSSignerClick(Sender: TObject);
    procedure FaxDirectoryEnter(Sender: TObject);
    procedure FaxDirectoryExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBDelFaxSecIDClick(Sender: TObject);
    procedure TreeView1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private

  public

  end;

var
   Settings: TSettings;

implementation

uses Dmu, YShamsiDate, UMain, businessLayer, StrUtils;

{$R *.dfm}

procedure TSettings.GetFromDm;
Var
   SkinFileName :String;
   i: integer;
begin
   inherited;

   Try Pcolor.Color := GetUserSetting('FocusedColor'); Except end;
   Pcolor.Refresh;

   for i:=0 to ComponentCount-1 do
   begin
      if Components[i].ClassNameIs('Tedit') then
         try TEdit(Components[i]).Text:=GetUserSetting(Components[i].Name) except end
      else
         if Components[i].ClassNameIs('TCheckBox') then
            try TCheckBox(Components[i]).Checked:= GetUserSetting(Components[i].Name) except end
         else
            if Components[i].ClassNameIs('TDBLookupComboBox') then
               try TDBLookupComboBox(Components[i]).KeyValue:= GetUserSetting(Components[i].Name) except end
            else
               if Components[i].ClassNameIs('TComboBox') then
                  try TComboBox(Components[i]).ItemIndex:=   GetUserSetting(Components[i].Name) except end
               else
                  {Ranjbar 89.07.29 ID=}
                  if Components[i].ClassNameIs('TSpinEdit') then
                     try TSpinEdit(Components[i]).Value := GetUserSetting(Components[i].Name) except end;
                  //---
   end;

   if Trim(GetUserSetting('EmailSendPort')) = '' then //���� �����
      SetUserSetting('EmailSendPort',25); //��� ���

   if Trim(GetUserSetting('EmailRecivePort')) = '' then //���� ������
      SetUserSetting('EmailRecivePort',995); //GMail=995 ��� ���

   if Trim(GetUserSetting('EmailEmailConTime')) = '' then
      SetUserSetting('EmailEmailConTime',10000);//��� ���}

   try MFont.Font:=Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   except
   end;

   if GetUserSetting('HasJpg') then
      rgScanType.ItemIndex:=0
   else
      rgScanType.ItemIndex:=1;

   if Trim(GetUserSetting('DPI')) = '0' then
     begin
      SetUserSetting('DPI',200);//��� ���}
      edpi.Text := '200';
     end
   else
      edpi.Text := GetUserSetting('DPI');

   if GetUserSetting('DuplexScan') then
      DuplexScan.ItemIndex := 0
   else
      DuplexScan.ItemIndex := 1;

   if GetUserSetting('ScanColor') then
      rgColor.ItemIndex := 0
   else
      rgColor.ItemIndex := 1;

   if GetUserSetting('ScannerInput') then
      ScannerInput.ItemIndex := 0
   else
      ScannerInput.ItemIndex := 1;

   SkinFileName := GetUserSetting('SkinFileName');
   LblGraphic.Caption := '  ��� ������ ����� ��� :  '+ SkinFileName;
   Try
      FileListBox.FileName := SkinFileName;
      FileListBox.Items.IndexOf( SkinFileName );
   except
   end;
   //---
   {Ranjbar 89.09.20 ID=247}
   if Trim(UpperCase(GetUserSetting('FaxExtention'))) = 'JPG' then
      FaxExtention.ItemIndex := 0
   else
      FaxExtention.ItemIndex := 1;
   //---

   //--------------------���� ����� ������ ������----------------
     rgSizeImage.ItemIndex := GetUserSetting('ImageSize');
  //--------------------����� ����� ������ ������---------------

end;

procedure TSettings.SetFromDm;
var i: integer;
begin
   inherited;
   for i:=0 to ComponentCount-1 do
   begin
      if Components[i].ClassNameIs('Tedit') then
         SetUserSetting(Components[i].name,trim(TEdit(Components[i]).text))
      else
         if Components[i].ClassNameIs('TCheckBox') then
            SetUserSetting(Components[i].name, TCheckBox(Components[i]).Checked)
         else
               if Components[i].ClassNameIs('TDBLookupComboBox') then
                  SetUserSetting(Components[i].Name,TDBLookupComboBox(Components[i]).KeyValue)
               else
                  if Components[i].ClassNameIs('TComboBox') then
                     SetUserSetting(Components[i].Name, TComboBox(Components[i]).ItemIndex)
                  else
                     {Ranjbar 89.07.29 ID=}
                     if Components[i].ClassNameIs('TSpinEdit') then
                        SetUserSetting(Components[i].Name, TSpinEdit(Components[i]).Value)
                  else
                     if Components[i].ClassNameIs('TRadioGroup') then
                        SetUserSetting(Components[i].Name, TRadioGroup(Components[i]).ItemIndex);
                     //---
   end;

   SetUserSetting('FocusedColor',Pcolor.Color);
   SetUserSetting('HasJpg',rgScanType.ItemIndex=0);
   SetUserSetting('DPI',edpi.Text);
   SetUserSetting('ScanColor',rgColor.ItemIndex=0);
   SetUserSetting('ScannerInput',ScannerInput.ItemIndex=0);
   SetUserSetting('DuplexScan',DuplexScan.ItemIndex=0);
   SetUserSetting('MemoFont','_178'+'_'+IntToStr(MFont.Font.Size) +'_'+MFont.Font.Name);
//    SetUserSetting('MemoFont','_178'+'_'+ MFont.Font. +'_'+IntToStr(MFont.Font) +'_'+MFont.Font.Name);
   {Ranjbar 89.09.20 ID=247}
   SetUserSetting('FaxExtention',FaxExtention.Text); //����� ���
   //---

   SetUserSetting('ImageSize', rgSizeImage.ItemIndex);

   if FileListBox.Itemindex >= 0 then
      SetUserSetting('SkinFileName',FileListBox.Items[FileListBox.Itemindex]);
end;

procedure TSettings.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  if DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Skins\') then
     FileListBox.Directory := ExtractFilePath(Application.ExeName)+ 'Skins\'
  else                 
    // ShowMyMessage('�����',' ���� ' + ' Skins ' + ' ���� ��� ',[mbOK],mtInformation);
  Dm.Signers.Open;
  GetFromDm;
  PageControl_SetTabSheet(PageControl1,'TShBaseform');// ��� ���� ������
  {$IFDEF LIGHT}
       GroupBox2.Visible := false;
       InsertSignInWord.Visible := false;
       DefaultProceed.Visible := false;
       DefaultInnerCopy.Visible := false;
       DefaultIsCopy.Visible := false;
       ShowOriginalErrorMessage.Top := DefaultIsCopy.Top;
       ConvertFaxToA4.Top := DefaultProceed.Top;
       HasJpg.Top := DefaultInnerCopy.top;
       Label40.Visible := false;
       MaxLetterInKartable.Visible := false;
       ReciveIsCopy.Visible := false;
       DefaultProceed.Visible := false;
       {$IFDEF SINGLE}
         TreeView1.Items[4].Delete;
       {$ENDIF}
   {$ENDIF}
end;

procedure TSettings.BitBtn1Click(Sender: TObject);
begin
  inherited;

  if (FaxUpdate.Checked)And((FaxCartableOrgID.KeyValue = Null)or(FaxCartableOrgID.KeyValue = 0)) then
  begin
     PageControl_SetTabSheet(PageControl1,'TShFox');
     FaxCartableOrgID.SetFocus;
     ShowMessage('����� ����� ���� �� ������� ��� ���� "������� ��� ��� �����" �� ������ ������');
     Abort;
  end;

  {Ranjbar 90.02.12 ID=354}
  if (DefaultRFromOrgId.KeyValue = 0) or (DefaultRFromOrgId.KeyValue = null) then
  begin
     PageControl_SetTabSheet(PageControl1,'TShReceivedLetter');
     DefaultRFromOrgId.SetFocus;
     ShowMessage('����� ����� � ���� �� �ѐ� "���� �����" ���� "�� ������" �� ����� ������');
     Abort;
  end;

  if (DefaultSFromOrgId.KeyValue = 0) or (DefaultSFromOrgId.KeyValue = null) then
  begin
     PageControl_SetTabSheet(PageControl1,'TShSentLetter');
     DefaultSFromOrgId.SetFocus;
     ShowMessage('����� ����� � ���� �� �ѐ� "���� �����" ���� "�������" �� ����� ������');
     Abort;
  end;

  if StrToIntDef(MaxLetterInDabir.Text,0) <= 0 then
     MaxLetterInDabir.Text := '100';
  if StrToIntDef(MaxLetterInKartable.Text,0) <= 0 then
     MaxLetterInKartable.Text := '100';
  //---

  SetFromDm;
  dm.GetUserSettings;
  {Ranjbar}
  if UpperCase(PageControl1.ActivePage.Name) <> UpperCase('TShEmail') then
     MBaseForm.messageShowString('���� ��� ����� ������� � �� ��� ����� ���� � ������ ���� ����', False);
  //---
  Close;
end;

procedure TSettings.MFontClick(Sender: TObject);
var
  d: Integer;
begin
  inherited;
    FontDialog.Font:= MFont.Font  ;
    if FontDialog.Execute then
     MFont.Font:=FontDialog.Font;
     if MFont.Font.Size>20 then
       MFont.Font.Size:=20;

   end;
procedure TSettings.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
end;


procedure TSettings.EdtSendHostEnter(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TSettings.EdtSendHostExit(Sender: TObject);
begin
  inherited;
  Keyboard_Farsi;
end;

procedure TSettings.EdtEmailConTimeExit(Sender: TObject);
begin
  inherited;
  if Trim(EmailEmailConTime.Text) = '' then
  begin
     EmailEmailConTime.Text := '10';
     Exit;
  end;

  if StrToIntDef(EmailEmailConTime.Text,0) < 5 then
  begin
     MBaseForm.MessageShowString('����� ����� : ��� ���� ����� �� ��� ���� ���� �� 5 ����� ���� ���', False);
     EmailEmailConTime.Text := '10';
  end;
end;

procedure TSettings.EdtEmailConTimeKeyPress(Sender: TObject;var Key: Char);
begin
  inherited;
  TypeNumber(Key);
end;

procedure TSettings.ListBox1Click(Sender: TObject);
Var
   ItemNamePath : String;
begin
   inherited;
   if FileListBox.Itemindex >= 0 then
   begin
      if Not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Skins') then
      begin
         MBaseForm.MessageShowString(' ����� '+ ' Skins ' +' �� ���� ���� ������ ���� ��� ', False);
         Exit;
      end;

     // ItemNamePath := ExtractFilePath(Application.ExeName)+ 'Skins\' +Trim(FileListBox.Items[FileListBox.Itemindex]);
     // MainForm.SkinData1.LoadFromFile(ItemNamePath+'.Skn');

   end;
end;

procedure TSettings.PcolorClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.20 ID=247}
   ColorDialog1.Color := Pcolor.Color;
   //---
   if ColorDialog1.Execute then
      Pcolor.Color := ColorDialog1.Color;
end;

procedure TSettings.FileListBoxDblClick(Sender: TObject);
Var
   ItemNamePath : String;
begin
   inherited;
   if FileListBox.Itemindex >= 0 then
   begin
      if Not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Skins') then
      begin
         MBaseForm.MessageShowString(' ����� '+ ' Skins ' +' �� ���� ���� ������ ���� ��� ', False);
         Exit;
      end;

      ItemNamePath := ExtractFilePath(Application.ExeName)+ 'Skins\' +Trim(FileListBox.Items[FileListBox.Itemindex]);
//       MainForm.SkinData1.LoadFromFile(ItemNamePath);
       LblGraphic.Caption := '  ��� ������ ����� ��� :  '+ FileListBox.Items[FileListBox.Itemindex];
      SetFromDm;
      dm.GetUserSettings;
   end;
end;

procedure TSettings.cbAlarmMessageClick(Sender: TObject);
begin
  Dm.ISMessageShow :=  cbAlarmMessage.Checked;
end;

procedure TSettings.FormShow(Sender: TObject);
begin
  cbAlarmMessage.Checked :=  Dm.ISMessageShow ;
  {Ranjbar 89.09.20 ID=247}
  PageControl1.TabHeight := 1;
  PageControl1.TabWidth := 1;
  BidiModeToRight(TreeView1);

  QrUserSec.Parameters.ParamByName('UserID').Value := _UserID;
  QrUserSec.Open;
  //---

end;

procedure TSettings.BitBtn3Click(Sender: TObject);
begin
   inherited;
   FileListBoxDblClick(Sender);
end;

procedure TSettings.SBDelDefualtSSignerClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.17 ID=243}
   DefualtSSigner.KeyValue := Null;
   //---
end;

procedure TSettings.FaxDirectoryEnter(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.20 ID=247}
   Keyboard_English;
   //---
end;

procedure TSettings.FaxDirectoryExit(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.20 ID=247}
   Keyboard_Farsi;
   //---
end;

procedure TSettings.SpeedButton1Click(Sender: TObject);
var
   S : String;
begin
   inherited;
      if SelectDirectory('���� ��� ������ '+_yeganeh,'',S) then
      if RightStr(Trim(S),1) <> '\' then
         FaxDirectory.Text := S + '\'
      else
         FaxDirectory.Text := S;


end;

procedure TSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   {Ranjbar 89.09.20 ID=247}
   QrUserSec.Close;
   //---
end;

procedure TSettings.SBDelFaxSecIDClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.09.20 ID=247}
   FaxSecID.KeyValue := Null;
   //---
end;

procedure TSettings.TreeView1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   inherited;
   {Ranjbar 89.09.20 ID=247}
   PageControl1.TabIndex := TreeView1.Selected.SelectedIndex;

   //����� ������� �� �����
   if UpperCase(PageControl1.ActivePage.Name) = UpperCase('TShGraphic') then
      Try
         Pcolor.Color := GetUserSetting('FocusedColor');
      Except
      End;
   //---
end;

procedure TSettings.TreeView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   TreeView1MouseUp(Sender,mbLeft,Shift,0,0);
end;

end.
