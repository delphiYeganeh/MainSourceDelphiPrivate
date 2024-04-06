unit SystemSettingU;

interface

uses
  Windows, db,Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnList, StdCtrls, Spin, ExtCtrls,
  ExtDlgs, Grids, DBGrids, YDbgrid, DBCtrls, Menus, Buttons,
  ComCtrls, ADODB, Mask;

type
  TFrSystemSetting = class(TYBaseForm)
    OpenPictureDialog: TOpenPictureDialog;
    FontDialog: TFontDialog;
    Panel1: TPanel;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TShTitle: TTabSheet;
    TShValue: TTabSheet;
    GroupBox1: TGroupBox;
    LblCashTitle: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label9: TLabel;
    Cashlogo: TImage;
    CashTitle: TEdit;
    Edit7: TEdit;
    PayBookMessage: TEdit;
    BackupPath: TEdit;
    Edit6: TEdit;
    xpBitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    YDBGrid1: TDBGrid;
    PersonalTitle: TEdit;
    FamilyTitle: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    AccountLength: TSpinEdit;
    PartRound: TSpinEdit;
    RoundFromBegin: TComboBox;
    GroupBox7: TGroupBox;
    SBDBGridFont: TSpeedButton;
    ChBoEnterDataFont: TCheckBox;
    SBEnterDataFont: TSpeedButton;
    ChBoDBGridFont: TCheckBox;
    LblEnterDataFont: TLabel;
    LblDBGridFont: TLabel;
    GBLoanGaurantor: TGroupBox;
    RBLoanGaurantor1: TRadioButton;
    RBLoanGaurantor2: TRadioButton;
    RBLoanGaurantor0: TRadioButton;
    SELoanGrtCount: TSpinEdit;
    EdtLoanGrtPrice: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    RBPrintBill: TGroupBox;
    RBPrintBill1: TRadioButton;
    RBPrintBill2: TRadioButton;
    GroupBox4: TGroupBox;
    EdtMoneyUnit: TEdit;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    EdtResiveAccount: TEdit;
    LoanLength: TSpinEdit;
    Label15: TLabel;
    Label10: TLabel;
    EdtPayAccount: TEdit;
    Label14: TLabel;
    GroupBox8: TGroupBox;
    Label16: TLabel;
    EdtFirstLineTop: TEdit;
    ChBoLineHight: TComboBox;
    Label17: TLabel;
    Label21: TLabel;
    ChBoDocNo_1: TCheckBox;
    ChBoDate_1: TCheckBox;
    ChBoCredit_2: TCheckBox;
    ChBoCredit_H_2: TCheckBox;
    ChBoDesc_1: TCheckBox;
    ChBoRemain_1: TCheckBox;
    ChBoRemain_H_1: TCheckBox;
    Label22: TLabel;
    ChBoDocNo_2: TCheckBox;
    ChBoDate_2: TCheckBox;
    ChBoDesc_2: TCheckBox;
    ChBoRemain_2: TCheckBox;
    ChBoRemain_H_2: TCheckBox;
    ChBoDebit_2: TCheckBox;
    ChBoDebit_H_2: TCheckBox;
    ChBoCredit_1: TCheckBox;
    ChBoCredit_H_1: TCheckBox;
    ChBoDebit_1: TCheckBox;
    ChBoDebit_H_1: TCheckBox;
    ChBoDebCrd_1: TCheckBox;
    ChBoDebCrd_H_1: TCheckBox;
    ChBoDebCrd_H_2: TCheckBox;
    ChBoDebCrd_2: TCheckBox;
    ChBoAccountNo_1: TCheckBox;
    ChBoAccountTitle_1: TCheckBox;
    ChBoAccountNo_2: TCheckBox;
    ChBoAccountTitle_2: TCheckBox;
    ChBoBenefit_H_1: TCheckBox;
    ChBoBenefit_1: TCheckBox;
    ChBoSumBenefitPrice_H_1: TCheckBox;
    ChBoSumBenefitPrice_1: TCheckBox;
    ChBoBenefit_H_2: TCheckBox;
    ChBoBenefit_2: TCheckBox;
    ChBoSumBenefitPrice_H_2: TCheckBox;
    ChBoSumBenefitPrice_2: TCheckBox;
    GroupBox9: TGroupBox;
    EdtVosoulAccount: TEdit;
    BENEFITACCOUNTID: TDBLookupComboBox;
    Label18: TLabel;
    ChBoEtayeSoodTasviyeh: TCheckBox;
    GroupBox5: TGroupBox;
    LblGraphic: TLabel;
    ListBox1: TListBox;
    GroupBox10: TGroupBox;
    ChBoRefresh: TCheckBox;
    Label20: TLabel;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    RBLoanPoint0: TRadioButton;
    RBLoanPoint1: TRadioButton;
    RBMonthPoint0: TRadioButton;
    RBMonthPoint1: TRadioButton;
    rgBenefitType: TRadioGroup;
    Label23: TLabel;
    RoundSUM: TComboBox;
    DefaultRowCount: TSpinEdit;
    Label24: TLabel;
    Label25: TLabel;
    CanEditPaymentDate: TComboBox;
    CalcBenefitAndWage: TCheckBox;
    SELECTBenefitAccount: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    DSBenefitAccount: TDataSource;
    BenefitFromHazineh: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure SBDBGridFontClick(Sender: TObject);
    procedure SBEnterDataFontClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ChBoEnterDataFontClick(Sender: TObject);
    procedure ChBoDBGridFontClick(Sender: TObject);
    procedure RBLoanGaurantor0Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BenefitFromHazinehClick(Sender: TObject);
  private
    EnterDataFont , RBGridFont : TFont;
  public
    { Public declarations }
  end;

var
  FrSystemSetting: TFrSystemSetting;

implementation

uses BusinessLayer, dmu, YShamsiDate, MainU;

{$R *.dfm}

procedure TFrSystemSetting.FormCreate(Sender: TObject);
var
   i: integer;
   SkinName : String;
begin
   inherited;
   Open_CashLogo;
   if not dm.Select_CashLogoCashLogo.IsNull then
   begin
      dm.Select_CashLogoCashLogo.SaveToFile(_LogoPath);
      Cashlogo.Picture.LoadFromFile(_LogoPath);
   end;

   for i:=0 to ComponentCount-1 do
   begin
      if Components[i].ClassNameIs('Tedit') then
        try TEdit(Components[i]).Text:=Get_SystemSetting(Components[i].Name) except end
        else
      if Components[i].ClassNameIs('TCheckBox') then
        try TCheckBox(Components[i]).Checked:=Get_SystemSetting(Components[i].Name) except end
      else
      if Components[i].ClassNameIs('TSpinEdit') then
        try TSpinEdit(Components[i]).Value:=Get_SystemSetting(Components[i].Name)  except end
      else
      if Components[i].ClassNameIs('TDBLookupComboBox') then
        try TDBLookupComboBox(Components[i]).KeyValue:=Get_SystemSetting(Components[i].Name)  except end
      else
      if Components[i].ClassNameIs('TComboBox') then
        try TComboBox(Components[i]).ItemIndex:=Get_SystemSetting(Components[i].Name)  except end;

   end;

   {Ranjbar}
   {try
      GridFont.Font:=StrToFont( Get_SystemSetting('GridFont'))
   except
      CBEditFont.Checked:=true;
   end;
   try
      EditFont.Font:=StrToFont( Get_SystemSetting('EditFont'))
   except
      CBGridFont.Checked:=true;
   end;}
   Try
      ChBoEnterDataFont.Checked := StrToBool(Get_UserSetting(_Userid,'ChBoEnterDataFont'));
      LblEnterDataFont.Font :=  StrToFont(Get_UserSetting(_Userid,'EditFont'));
      SBEnterDataFont.Enabled := ChBoEnterDataFont.Checked;
   Except
   End;

   Try
      ChBoDBGridFont.Checked := StrToBool(Get_UserSetting(_Userid,'ChBoDBGridFont'));
      LblDBGridFont.Font :=  StrToFont(Get_UserSetting(_Userid,'GridFont'));
      SBDBGridFont.Enabled := ChBoDBGridFont.Checked;
   Except
   End;
   //---

   {Ranjbar Ver3
   if _WithDongle then
   begin       
      CashTitle.Text := _SoftTitle;
      CashTitle.Enabled := False;
      LblCashTitle.Enabled := False;
   end;     }

   {ê—«›Ìﬂ ‰—„ «›“«—}
   SkinName := Get_UserSetting(_Userid,'SkinName');
   LblGraphic.Caption := '  ‰«„ ê—«›Ìﬂ –ŒÌ—Â ‘œÂ :  '+ SkinName;
   listbox1.Items.IndexOf( SkinName );

   {Ranjbar}
   //„ÕœÊœÌ  ÷«„‰
   Try
      Case Get_SystemSetting('LoanGrt') of
         0: RBLoanGaurantor0.Checked := True;
         1: begin //÷«„‰ ‘œ‰ »— «”«”  ⁄œ«œ Ê«„
               RBLoanGaurantor1.Checked := True;
               SELoanGrtCount.Value := Get_SystemSetting('LoanGrtCount');
            end;
         2: begin //÷«„‰ ‘œ‰ »— «”«” „»·€ Ê«„
               RBLoanGaurantor2.Checked := True;
               EdtLoanGrtPrice.Text := Get_SystemSetting('LoanGrtPrice');
            end;
      End;
   Except
      RBLoanGaurantor0.Checked := True;
   End;
   //«„ Ì«“ Ê«„
   Try
      Case Get_SystemSetting('LoanPoint') of
         0: RBLoanPoint0.Checked := True;
         1: RBLoanPoint1.Checked:=True;
      End;
   Except
      RBLoanPoint0.Checked := True;
   End;

   //«„ Ì«“ „«ÂÌ«‰Â
   Try
      Case Get_SystemSetting('MonthPoint') of
         0: RBMonthPoint0.Checked :=True;
         1: RBMonthPoint1.Checked :=True;
      end;
   Except
      RBLoanPoint0.Checked := True;
   End;

   //--- ⁄œ«œ ç«Å
   Try
      Case Get_SystemSetting('PrintBill') of
         1: RBPrintBill1.Checked := True;
         2: RBPrintBill2.Checked := True;
      end;
   except
      RBLoanGaurantor1.Checked := True;
   end;
   //---

   // Amin 1391/10/24 Start
   // ‰ÕÊÂ „Õ«”»Â ”Êœ
   Try
      rgBenefitType.ItemIndex := Get_SystemSetting('BenefitCalcType');
   except
      rgBenefitType.ItemIndex := 0;
   end;
   // Amin 1391/10/24 End

   PageControl1.ActivePageIndex := 0;
end;


procedure TFrSystemSetting.xpBitBtn1Click(Sender: TObject);
begin
  if dm.Select_CashLogo.State=dsedit then
    dm.Select_CashLogo.Cancel;
  close;
end;

procedure TFrSystemSetting.xpBitBtn2Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  if Get_AccountID_ByAccountNo(EdtResiveAccount.Text)=0 then
  begin
    PageControl1.ActivePageIndex:=1;
    ShowMessage('‘„«—Â Õ”«» «”‰«œ œ—Ì«› ‰Ì «‘ »«Â „Ì »«‘œ');
    EdtResiveAccount.SetFocus;
    Exit;
  end;

  if Get_AccountID_ByAccountNo(EdtPayAccount.Text)=0 then
  begin
    PageControl1.ActivePageIndex:=1;
    ShowMessage('‘„«—Â Õ”«» «”‰«œ Å—œ«Œ ‰Ì «‘ »«Â „Ì »«‘œ');
    EdtPayAccount.SetFocus;
    exit;
  end;

  if Get_AccountID_ByAccountNo(EdtVosoulAccount.Text)=0 then
  begin
    PageControl1.ActivePageIndex:=1;
    ShowMessage('‘„«—Â Õ”«» «”‰«œ œ— Ã—Ì«‰ Ê’Ê· «‘ »«Â „Ì »«‘œ');
    EdtVosoulAccount.SetFocus;
    exit;
  end;

  IF (Get_SystemSetting('EdtResiveAccount')<>EdtResiveAccount.Text) AND
     (NOT  CanChangeTheAccountNo(Get_AccountID_ByAccountNo(  Get_SystemSetting('EdtResiveAccount')   ))) THEN
        BEGIN
          ShowMessage('Õ”«» «”‰«œ œ—Ì«› ‰Ì ° „ÊÃÊœÌ œ«—œ Ê «„ò«‰  €ÌÌ— ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
          EdtVosoulAccount.SetFocus;
          exit;
        END;
  IF    (Get_SystemSetting('EdtPayAccount')<>EdtPayAccount.Text) AND
        (NOT CanChangeTheAccountNo(Get_AccountID_ByAccountNo(  Get_SystemSetting('EdtPayAccount')   ))) THEN
        BEGIN
          ShowMessage('Õ”«» «”‰«œ Å—œ«Œ ‰Ì ° „ÊÃÊœÌ œ«—œ Ê «„ò«‰  €ÌÌ— ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
          EdtVosoulAccount.SetFocus;
          exit;
        END;

  IF (Get_SystemSetting('EdtVosoulAccount') <>EdtVosoulAccount.Text) AND
        (NOT CanChangeTheAccountNo(Get_AccountID_ByAccountNo(  Get_SystemSetting('EdtVosoulAccount')   )) )THEN
        BEGIN
          ShowMessage('Õ”«» «”‰«œ œ— Ã—Ì«‰ Ê’Ê· „ÊÃÊœÌ œ«—œ Ê «„ò«‰  €ÌÌ— ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
          EdtVosoulAccount.SetFocus;
          exit;
        END;



   if not IsSelectedSettingAccountCorrect(Get_AccountID_ByAccountNo(EdtResiveAccount.Text)) then
     begin
      PageControl1.ActivePageIndex:=1;
      ShowMessage('‰Ê⁄ Õ”«» œ—Ì«› Ì »«Ìœ ’‰œÊﬁ »«‘œ');
      EdtVosoulAccount.SetFocus;
      exit;
     end;
   if not IsSelectedSettingAccountCorrect(Get_AccountID_ByAccountNo(EdtPayAccount.Text)) then
     begin
      PageControl1.ActivePageIndex:=1;
      ShowMessage('‰Ê⁄ Õ”«» Å—œ«Œ Ì »«Ìœ ’‰œÊﬁ »«‘œ');
      EdtVosoulAccount.SetFocus;
      exit;
     end;
   if not IsSelectedSettingAccountCorrect(Get_AccountID_ByAccountNo(EdtVosoulAccount.Text)) then
     begin
      PageControl1.ActivePageIndex:=1;
      ShowMessage('‰Ê⁄ Õ”«» œ— Ã—Ì«‰ Ê’Ê· »«Ìœ ’‰œÊﬁ »«‘œ');
      EdtVosoulAccount.SetFocus;
      exit;
     end;

   if (trim(EdtFirstLineTop.Text)='') then
     begin
       EdtFirstLineTop.Text:='70';
     end;


   For i:=0 to ComponentCount-1 do
   begin
      if Components[i].ClassNameIs('Tedit') then
         Set_SystemSetting(Components[i].name,trim(TEdit(Components[i]).text))
      else
         if Components[i].ClassNameIs('TCheckBox') then
            Set_SystemSetting(Components[i].name,TCheckBox(Components[i]).Checked)
         else
            if Components[i].ClassNameIs('TSpinEdit') then
               Set_SystemSetting(Components[i].Name,TSpinEdit(Components[i]).Value)
            else
               if Components[i].ClassNameIs('TDBLookupComboBox') then
                  Set_SystemSetting(Components[i].Name,TDBLookupComboBox(Components[i]).KeyValue)
               else
                  if Components[i].ClassNameIs('TComboBox') then
                     Set_SystemSetting(Components[i].Name,TComboBox(Components[i]).ItemIndex);
   end;


   {Ranjbar} // €ÌÌ— ›Ê‰  ﬂ‰ —·Â«
   {if CBEditFont.Checked then
      Set_SystemSetting('EditFont','')
   else
      Set_SystemSetting('EditFont',FontToStr(EditFont.Font));
   if CBGridFont.Checked then
      Set_SystemSetting('GridFont','')
   else
     Set_SystemSetting('GridFont',FontToStr(GridFont.Font)); }

   if ChBoEnterDataFont.Checked then
   begin
      Set_UserSetting(_Userid,'ChBoEnterDataFont','True');
      Set_UserSetting(_Userid,'EditFont',FontToStr(LblEnterDataFont.Font));
   end
      else
         begin
            Set_UserSetting(_Userid,'ChBoEnterDataFont','False');
            Set_UserSetting(_Userid,'EditFont',FontToStr(LblEnterDataFont.Font));
         end;

   if ChBoDBGridFont.Checked then
   begin
      Set_UserSetting(_Userid,'ChBoDBGridFont','True');
      Set_UserSetting(_Userid,'GridFont',FontToStr(LblDBGridFont.Font));
   end
      else
         begin
            Set_UserSetting(_Userid,'ChBoDBGridFont','False');
            Set_UserSetting(_Userid,'GridFont',FontToStr(LblDBGridFont.Font));
         end;
   //---
   if dm.Select_CashLogo.State = dsedit then
   begin
      dm.Select_CashLogo.Post;
      Open_CashLogo;
   end;

   {Ranjbar}
   //„ÕœÊœÌ  ÷«„‰
   if RBLoanGaurantor0.Checked then
      Set_SystemSetting('LoanGrt',0)
   else
      if RBLoanGaurantor1.Checked then
      begin
         Set_SystemSetting('LoanGrt',1);
         Set_SystemSetting('LoanGrtCount',SELoanGrtCount.Value);
      end
         else
            if RBLoanGaurantor2.Checked then
            begin
               Set_SystemSetting('LoanGrt',2);
               Set_SystemSetting('LoanGrtPrice',StrToFloatDef(EdtLoanGrtPrice.Text,0));
            end;
   //---
   if (RBLoanPoint0.Checked)then
     Set_SystemSetting('LoanPoint',0);
   if (RBLoanPoint1.Checked)then
     Set_SystemSetting('LoanPoint',1);
   if (RBMonthPoint0.Checked)then
     Set_SystemSetting('MonthPoint',0);
   if (RBMonthPoint1.Checked)then
     Set_SystemSetting('MonthPoint',1);

   Set_SystemSetting('BenefitCalcType', rgBenefitType.ItemIndex); // Amin 1391/10/24

//

//ç«Å ﬁ»÷
   if RBPrintBill1.Checked then
      Set_SystemSetting('PrintBill',1)
   else
      if RBPrintBill2.Checked then
         Set_SystemSetting('PrintBill',2);
   //---
   {Ranjbar 88.06.31}
   MessageShowString('·ÿ›« ÃÂ  «⁄„«·  €ÌÌ—«  ° ‰—„ «›“«— —« œÊ»«—Â «Ã—« ‰„«ÌÌœ', False);
   //---
   Close;
end;

procedure TFrSystemSetting.xpBitBtn3Click(Sender: TObject);
begin
  Inherited;
  If OpenPictureDialog.Execute then
  Begin
   Cashlogo.Picture.LoadFromFile(OpenPictureDialog.FileName);
   Dm.Select_CashLogo.Edit;
   Dm.Select_CashLogoCashLogo.LoadFromFile(OpenPictureDialog.FileName);
  End;
End;

procedure TFrSystemSetting.YDBGrid1DblClick(Sender: TObject);
 var s: string;
begin
   inherited;
   with YDBGrid1,Columns do
      if SelectedIndex>0 then
         if dm.Y_InputQuery('„ﬁœ«— ÃœÌœ',SelectedField.Value,s) then
         begin
            dm.ContactType.Edit;
            SelectedField.Value:=s;
            Dm.ContactType.Post;
        end;
end;

procedure TFrSystemSetting.SBDBGridFontClick(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   FontDialog.Font := LblDBGridFont.Font;
   //---
   if FontDialog.Execute then
   begin
      {Ranjbar}
      if (FontDialog.Font.size<8 ) or (FontDialog.Font.size>18 )  then
      begin
         ShowMessage('«‰œ«“Â ›Ê‰  ‰„Ì  Ê«‰œ Œ«—Ã «“ „ÕœÊœ 8  « 18 »«‘œ');
         FontDialog.Font.Size:=8;
      end;
      //GridFont.Font:=FontDialog.Font;
      LblDBGridFont.Font := FontDialog.Font;
      //---
   end;
end;

procedure TFrSystemSetting.SBEnterDataFontClick(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   FontDialog.Font := LblEnterDataFont.Font;
   //---
   if FontDialog.Execute then
   begin
      if (FontDialog.Font.size<8 ) or (FontDialog.Font.size>18 )  then
      begin
         ShowMessage('«‰œ«“Â ›Ê‰  ‰„Ì  Ê«‰œ Œ«—Ã «“ „ÕœÊœ 8  « 18 »«‘œ');
         FontDialog.Font.Size:=8;
      end;
      {Ranjbar}
      //EditFont.Font:=FontDialog.Font;
      LblEnterDataFont.Font := FontDialog.Font;
      //---
   end;
end;

procedure TFrSystemSetting.ListBox1Click(Sender: TObject);
Var
   ItemNamePath : String;
begin
   inherited;
   if listbox1.Itemindex >= 0 then
   begin
      if Not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Skins') then
      begin
         MessageShowString(' ›Ê·œ— '+ ' Skins ' +' œ— ﬂ‰«— ›«Ì· «Ã—«ÌÌ Ì«›  ‰‘œ ', False);
         Exit;
      end;
      
      ItemNamePath := ExtractFilePath(Application.ExeName)+ 'Skins\' +Trim(listbox1.Items[listbox1.Itemindex]);
//      FrMain.SkinData1.LoadFromFile(ItemNamePath+'.Skn');
   end;
   {ê—«›Ìﬂ ‰—„ «›“«—}
   Set_UserSetting(_Userid,'SkinName',listbox1.Items[listbox1.Itemindex]);
   //---
end;

procedure TFrSystemSetting.ChBoEnterDataFontClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.06.31}
   if ChBoEnterDataFont.Checked then
      SBEnterDataFont.Enabled := True
   else
      begin
         SBEnterDataFont.Enabled := False;
         LblEnterDataFont.Font := Self.Font;
      end;
   //---
end;

procedure TFrSystemSetting.ChBoDBGridFontClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 88.06.31}
   if ChBoDBGridFont.Checked then
      SBDBGridFont.Enabled := True
   else
      begin
         SBDBGridFont.Enabled := False;
         LblDBGridFont.Font := Self.Font;
      end;
   //---   
end;

procedure TFrSystemSetting.RBLoanGaurantor0Click(Sender: TObject);
begin
   inherited;
   SELoanGrtCount.Enabled := False;
   Label5.Enabled := False;
   EdtLoanGrtPrice.Enabled := False;
   Label6.Enabled := False;

   if RBLoanGaurantor1.Checked then
   begin
      SELoanGrtCount.Enabled := True;
      Label5.Enabled := True;
   end;
   if RBLoanGaurantor2.Checked then
   begin
      EdtLoanGrtPrice.Enabled := True;
      Label6.Enabled := True;
   end;
end;

procedure TFrSystemSetting.FormShow(Sender: TObject);
begin
  inherited;
    CashTitle.Text:=_SoftTitle;
  if BenefitFromHazineh.Checked then
   begin
      SELECTBenefitAccount.Close;
      SELECTBenefitAccount.Parameters[0].Value := 8;
      SELECTBenefitAccount.Open;
   end
   else
   begin
      SELECTBenefitAccount.Close;
      SELECTBenefitAccount.Parameters[0].Value := 9;
      SELECTBenefitAccount.Open;
   end;
end;

procedure TFrSystemSetting.BenefitFromHazinehClick(Sender: TObject);
begin
  inherited;
   if BenefitFromHazineh.Checked then
   begin
      SELECTBenefitAccount.Close;
      SELECTBenefitAccount.Parameters[0].Value := 8;
      SELECTBenefitAccount.Open;
   end
   else
   begin
      SELECTBenefitAccount.Close;
      SELECTBenefitAccount.Parameters[0].Value := 9;
      SELECTBenefitAccount.Open;
   end;
end;

end.
