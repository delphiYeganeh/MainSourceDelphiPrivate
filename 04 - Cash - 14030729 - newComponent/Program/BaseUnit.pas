unit BaseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList,ywhereedit,DBGrids,StdCtrls,DBCtrls, Mask, UemsVCL,Ydbgrid,db, Spin,
  ComCtrls, ExtCtrls, QuickRpt, Menus,QRCtrls, ADODB,SolarCalendarPackage ,YAmountEdit
  ,xpPanel,Buttons;

type
  TYBaseForm = class(TForm)
    ahmadvand: TActionList;
    AExit: TAction;
    searchAccount: TAction;
    AExportToExcel: TAction;
    SearchLoan: TAction;
    Grid_PopupMenu: TPopupMenu;
    wordMenuItem: TMenuItem;
    ExcelMenuItem: TMenuItem;
    TextMenuItem: TMenuItem;
    PrintMenuItem: TMenuItem;
    CustomMenuItem: TMenuItem;
    qSetting: TADOQuery;
    procedure AExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TEditExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure searchAccountExecute(Sender: TObject);
    procedure GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TEditEnter(Sender: TObject);
    procedure AExportToExcelExecute(Sender: TObject);
    procedure SearchLoanExecute(Sender: TObject);
    procedure CurrencyKeyUp(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure ShowMsgString(AppMessage: string);
    Function  MessageShowString_WithExit(AppMessage: string):byte; //0 ok 1- cancel - 2 exit
    Function  MessageShowString(AppMessage: string;ShowCancel:boolean;FormTitle : String = 'ÅÌ€«„'):boolean;
    procedure wordMenuItemClick(Sender: TObject);
    procedure ExcelMenuItemClick(Sender: TObject);
    procedure TextMenuItemClick(Sender: TObject);
    procedure PrintMenuItemClick(Sender: TObject);
    procedure CustomMenuItemClick(Sender: TObject);
    procedure SaveSetting;
    procedure LoadSetting;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure SetSetting;

  private
    { Private declarations }
  public
    BaseNewWidth : Integer;
    BaseNewHeight: Integer;
  end;

var
  YBaseForm: TYBaseForm;

implementation

uses dmu,  YShamsiDate, ShowmessageU, MainU, searchLoanU, Upreview, BusinessLayer;

var
   CurrentColor:Tcolor;

{$R *.dfm}

procedure TYBaseForm.AExitExecute(Sender: TObject);
begin
  try
    Close;
  except On E:Exception do
    ShowMessage('ERROR TYBaseForm.AExit :: ' + E.Message);
  end;
end;

procedure TYBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    Action := caFree;
  except On E:Exception do
    ShowMessage('ERROR TYBaseForm.FormClose :: ' + E.Message);
  end;

end;

procedure TYBaseForm.TEditExit(Sender: TObject);
Var
   D:String;
begin
   if Sender.ClassNameIs('TEdit') then
   begin
      TEdit(Sender).Color := clWhite;
      TEdit(Sender).Font.Style:=[];
   end else
   if Sender.ClassNameIs('TComboBox') then
   begin
      TComboBox(Sender).Color := clWhite;
      TComboBox(Sender).Font.Style:=[];
   end else
   if Sender.ClassNameIs('TDBEdit') then
   begin
      TdbEdit(Sender).Color := clWhite;
      TdbEdit(Sender).Font.Style:=[];
      {Ranjbar}
      if TDBEdit(Sender).DataSource.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask = '˛!9999/99/99;1;_' then
      begin
         D := TDBEdit(Sender).Text;
         if (Txt_Del254(d)<>'    /  /  ') and not isValidDate(D) then
         begin
            ShowMyMessage('ÅÌ€«„',' «—ÌŒ Ê«—œ ‘œÂ  «‘ »«Â „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ',[mbOK],mtInformation);
            TDBEdit(Sender).Text := #254+'   /  /  ';
            TDBEdit(Sender).SetFocus;
         end;
      end;
      //---
   end else
   {Ranjbar}
   if Sender.ClassNameIs('TMaskEdit') then
   begin
      if TMaskEdit(Sender).EditMask = '˛!####/##/##;1;_' then
      begin
         D := TMaskEdit(Sender).Text;
         if (Txt_Del254(d)<>'    /  /  ') and not isValidDate(D) then
         begin
            ShowMyMessage('ÅÌ€«„',' «—ÌŒ Ê«—œ ‘œÂ  «‘ »«Â „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ',[mbOK],mtInformation);
            TMaskEdit(Sender).Text := #254+'   /  /  ';
            TDBEdit(Sender).SetFocus;

         end;
      end;
      //---
   end else
   if Sender.ClassNameIs('TDBShamsiDateEdit') then
   begin
      TDBShamsiDateEdit(Sender).Color := clWhite;
      TDBShamsiDateEdit(Sender).Font.Style:=[];
   end else
   if Sender.ClassNameIs('TDBMemo') then
   begin
      TDBMemo(Sender).Color := clWhite;
      TDBMemo(Sender).Font.Style:=[];
   end;
end;

procedure TYBaseForm.CurrencyKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   TDBEdit(Sender).Text := CommaSeperate(TDBEdit(Sender).Text);
   TDBEdit(Sender).SelStart := length(TDBEdit(Sender).Text);
   try

//      TDBEdit(Sender).hint := Bill(StrToInt64(DeleteComma(TDBEdit(sender).Text)))+' —Ì«·'
      TDBEdit(Sender).hint   := Bill(StrToInt64(DeleteComma(TDBEdit(sender).Text)))+' '+ Get_SystemSetting('EdtMoneyUnit')+' ';
   except
   end;
end;


procedure TYBaseForm.FormCreate(Sender: TObject);
var
  i:integer;
begin

  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TYdbgrid') then
       begin
          try  TYDBGrid(Components[i]).Font:=_GridFont; except end;
          try  TYDBGrid(Components[i]).TitleFont:=_GridFont; except end;
      if TYDBGrid(Components[i]).PopupMenu =nil then
           TYDBGrid(Components[i]).PopupMenu:= Grid_PopupMenu;


        if    pos('((',TYdbgrid(Components[i]).PrintTitle)=0 then
          TYdbgrid(Components[i]).PrintTitle:=_SoftTitle;
       end else
    //Hamed_Ansari_990622_S
    if Components[i].ClassNameIs('TSolarDatePicker') then
    begin
      TSolarDatePicker(Components[i]).ColorStyle := csWhiteOrange;
      TSolarDatePicker(Components[i]).CheckInputOnExit := True;
      TSolarDatePicker(Components[i]).MonthObject := moComboBox;
      TSolarDatePicker(Components[i]).BiDiMode := bdRightToLeft;
      TSolarDatePicker(Components[i]).ButtonStyle := bsRectangular;
      try  TSolarDatePicker(Components[i]).Font:=_EditFont; except end

    end else
    //Hamed_Ansari_990622_E
    if Components[i].ClassNameIs('TDBEdit') then
    begin
       try TDBEdit(Components[i]).Font := _EditFont; except end;
       if TDBEdit(Components[i]).DataSource.DataSet.FieldByName(TDBEdit(Components[i]).DataField).ClassNameIs('TYIntegerField')  or
          TDBEdit(Components[i]).DataSource.DataSet.FieldByName(TDBEdit(Components[i]).DataField).ClassNameIs('TYLargeIntField') then
       begin
          TDBEdit(Components[i]).OnKeyUp:=CurrencyKeyUp;
          TDBEdit(Components[i]).ShowHint:=true;
       end;

    end
    else
    if Components[i].ClassNameIs('TEdit') then
    begin
      if TDBEdit(Components[i]).Tag <> 1 then
      try  TDBEdit(Components[i]).Font:=_EditFont; except end
    end
    else
    if Components[i].ClassNameIs('TShamsiDateEdit') then
      try  TShamsiDateEdit(Components[i]).Font:=_EditFont; except end
    else
    if Components[i].ClassNameIs('TDBShamsiDateEdit') then
      try  TDBShamsiDateEdit(Components[i]).Font:=_EditFont; except end
    else

    if Components[i].ClassNameIs('TYWhereEdit') then
    begin
      if TYWhereEdit(Components[i]).Tag <> 1 then
        try  TYWhereEdit(Components[i]).Font:=_EditFont; except end
    end
    else
    if Components[i].ClassNameIs('TYAmountEdit') then
    begin
        try  TYAmountEdit(Components[i]).Font:=_EditFont; except end
    end
    else
    if Components[i].ClassNameIs('TSolarDatePicker') then
      try  TSolarDatePicker(Components[i]).Font:=_EditFont; except end
    else
    if Components[i].ClassNameIs('TSpinEdit') then
      try  TSpinEdit(Components[i]).Font:=_EditFont; except end
    else
    if Components[i].ClassNameIs('TComboBox') then
      try  TComboBox(Components[i]).Font:=_EditFont; except end
    else
    if Components[i].ClassNameIs('TDBLookupComboBox') then
      try  TDBLookupComboBox(Components[i]).Font:=_EditFont; except end
    else


    if Components[i].ClassNameIs('TQRImage') and (pos('CASHLOGO',UpperCase(Components[i].Name))<>0) then
        try TQRImage(Components[i]).Picture.LoadFromFile(_LogoPath); except end;

end;

procedure TYBaseForm.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
var
   i: integer;
begin
   if key in [vk_return,Vk_Down,Vk_Up,Vk_Space] then
   begin
      if (Sender is TYWhereEdit) then
         if key=Vk_Space then
            if (ssctrl in shift) and (TYWhereEdit(sender).ListTable<>'') then
            begin
               i:=DM.Search(TYWhereEdit(Sender));
               if i>0 then
                  if trim(TYWhereEdit(Sender).Text)<>'' then
                     TYWhereEdit(Sender).Text:=TYWhereEdit(Sender).Text+','+IntToStr(i)
                  else
                     TYWhereEdit(Sender).Text:=IntToStr(i);
            end;
      if key=Vk_Up then
         if not(Sender is TDblookUpCombobox) then
            SelectNext(Sender as TwinControl,False,True);
      if key=vk_return then
      begin
         If (Sender is TDblookUpCombobox) then (TDblookUpCombobox(sender).closeup(true));
            SelectNext(Sender as TwinControl,True,True);
      end;
      if key=Vk_Down then
         if not(Sender is TDblookUpCombobox) then
            SelectNext(Sender as TwinControl,True,True);
   end;
end;

procedure TYBaseForm.TEditEnter(Sender: TObject);
begin

  if Sender.ClassNameIs('TEdit') then
  begin
    TEdit(Sender).Color := _FocusedColor;
    TEdit(sender).Font.Style:=[fsBold];
  end else
  if Sender.ClassNameIs('TdbEdit') then
  begin
     TdbEdit(Sender).Color := _FocusedColor;;
     TdbEdit(Sender).font.Style:=[fsBold];
     {Ranjbar}
     if TDBEdit(Sender).DataSource.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask = '˛!9999/99/99;1;_' then
        TDBEdit(Sender).SelStart := 2;
       //---
  end else
  {Ranjbar}
  if Sender.ClassNameIs('TMaskEdit') then
  begin
     if TMaskEdit(Sender).EditMask = '˛!####/##/##;1;_' then
        TMaskEdit(Sender).SelStart := 3;
  end else
  //---
  if Sender.ClassNameIs('TComboBox') then
  begin
    TComboBox(Sender).Color := _FocusedColor;;
    TComboBox(Sender).font.Style:=[fsBold];
  end else
  if Sender.ClassNameIs('TDBShamsiDateEdit') then
  begin
    TDBShamsiDateEdit(Sender).Color := _FocusedColor;;
    TDBShamsiDateEdit(Sender).Font.Style:=[fsBold];
  end else
  if Sender.ClassNameIs('TDBMemo') then
  begin
    TDBMemo(Sender).Color := _FocusedColor;;
    TDBMemo(Sender).Font.Style:=[fsBold];
  end;
end;

procedure TYBaseForm.FormShow(Sender: TObject);
var i: integer;
begin
   Self.Color    := _Maincolor1 ;
   CurrentColor:=clWindow;
   for i:=0 to ComponentCount-1 do
   begin
     if Components[i].InheritsFrom(TDBLookupComboBox) then
         TDBLookupComboBox(Components[i]).OnKeyDown:=GotoNext
     else
     if Components[i].InheritsFrom(TShamsiDateEdit) then
     begin
         if not Assigned(TShamsiDateEdit(Components[i]).OnKeyDown) then
           TShamsiDateEdit(Components[i]).OnKeyDown:=GotoNext;
        TShamsiDateEdit(Components[i]).OnEnter:=TEditEnter;
        TShamsiDateEdit(Components[i]).OnExit:=TEditExit;
     end else
     if Components[i].InheritsFrom(TEdit) then
     begin
         if not Assigned(TEdit(Components[i]).OnKeyDown) then
           TEdit(Components[i]).OnKeyDown:=GotoNext;
        TEdit(Components[i]).OnEnter:=TEditEnter;
        TEdit(Components[i]).OnExit:=TEditExit;
     end else
     if (Components[i].InheritsFrom(TDBEdit)) and (Name <> 'FrPayPart' ) and (Name <> 'FrAddPayment') then
     begin
        TdbEdit(Components[i]).OnKeyDown:=GotoNext;
        TdbEdit(Components[i]).OnEnter:=TEditEnter;
        TdbEdit(Components[i]).OnExit:=TEditExit;
     end else
     if Components[i].InheritsFrom(TDBShamsiDateEdit) then
     begin
        TDBShamsiDateEdit(Components[i]).OnKeyDown:=GotoNext;
        TDBShamsiDateEdit(Components[i]).OnEnter:=TEditEnter;
        TDBShamsiDateEdit(Components[i]).OnExit:=TEditExit;
        TDBShamsiDateEdit(Components[i]).BiDiMode:=bdLeftToRight;
     end else
     if Components[i].ClassNameIs('TDBMemo') then
     begin
        TDBMemo(Components[i]).OnKeyDown:=GotoNext;
        TDBMemo(Components[i]).OnEnter:=TEditEnter;
        TDBMemo(Components[i]).OnExit:=TEditExit;
     end else
     if Components[i].ClassNameIs('TYDBGrid') then
     begin
        if TYDBGrid(Components[i]).Color=clWindow then
           TYDBGrid(Components[i]).Color:=$00F4FFFF;
        TYDBGrid(Components[i]).Options:=TYDBGrid(Components[i]).Options-[dgtabs];
     end else
     if Components[i].ClassNameIs('TDBRadioGroup') then
     begin
        TDBRadioGroup(Components[i]).OnEnter:=TEditEnter;
        TDBRadioGroup(Components[i]).OnExit:=TEditExit;
     end else
     if Components[i].ClassNameIs('TCheckbox') then
     begin
        TCheckbox(Components[i]).OnKeyDown:=GotoNext;
        TCheckbox(Components[i]).OnEnter:=TEditEnter;
        TCheckbox(Components[i]).OnExit:=TEditExit;
     end else
     //Hamed_Ansari_990223_S
    if Components[i] is TMaskEdit then
    begin
      if (Components[i].Tag <> 1) then
        TMaskEdit(Components[i]).EditMask := '˛!####/##/##;1;_';
    end;


    if Components[i].InheritsFrom(TPanel) then
    begin
       if TPanel(Components[i]).Name='pnlMain' then
       begin
          TPanel(Components[i]).Color :=  _Maincolor1 ;
       end;
    end
    else
    if Components[i].InheritsFrom(TxpPanel) then
    begin
      TxpPanel(Components[i]).StartColor :=  _Maincolor3 ;
      TxpPanel(Components[i]).EndColor   :=  _Maincolor1 ;

      TxpPanel(Components[i]).TitleStartColor :=  _Maincolor1 ;
      TxpPanel(Components[i]).TitleEndColor   :=  _Maincolor3 ;
      TxpPanel(Components[i]).TitleFont.Name := 'Tahoma' ;
    end
    else
    if Components[i].InheritsFrom(TYDBGrid) then
    begin
      TYDBGrid(Components[i]).FixedColor   := $00E4E4E4 ;// _Maincolor2 ;
    end
    else
    if Components[i].InheritsFrom(TSpeedButton) then
    begin
      TSpeedButton(Components[i]).Transparent := False;
      TSpeedButton(Components[i]).Transparent := True;
    end;

   end;
     //Hamed_Ansari_990223_E
     {Ranjbar 88.05.21}
     //Form_Animate(Self,100);
     //---
     { TODO -oparsa : 14030628- bug369 }
     BaseNewWidth := Self.Width;
     BaseNewHeight:= Self.Height;
     { TODO -oparsa : 14030628- bug369 }
end;

procedure TYBaseForm.searchAccountExecute(Sender: TObject);
begin
   FrMain.FindContact(false,1,True);
   if _FoundAccountID>0 then
    if ActiveControl.InheritsFrom(tcustomedit) then
      TCustomEdit(ActiveControl).Text:=_FoundAcountNo;
end;

procedure TYBaseForm.AExportToExcelExecute(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).ExportToExcel;
end;

procedure TYBaseForm.SearchLoanExecute(Sender: TObject);
begin
  FrSearchLoan:=TFrSearchLoan.Create(Application);
  FrSearchLoan.ShowModal;
   if _FoundLoanID>0 then
  if ActiveControl.InheritsFrom(tcustomedit) then
    TCustomEdit(ActiveControl).Text:=_FoundLoanNo;
end;

procedure TYBaseForm.ShowMsgString(AppMessage: string);
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.Caption := 'ÅÌ€«„';
  ShowMessageF.ShowCancel:=false;
  ShowMessageF.ShowModal;
end;

Function TYBaseForm.MessageShowString_WithExit(AppMessage: string):byte;
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.Caption := 'ÅÌ€«„';
  ShowMessageF.ShowExit:=true;
  ShowMessageF.ShowModal;
   if ShowMessageF.Exit_Clicked then
     Result:=2
    else
     if ShowMessageF.Done then
       Result:=0
     else
      Result:=1;
end;

Function TYBaseForm.MessageShowString(AppMessage: string;ShowCancel:boolean;FormTitle : String = 'ÅÌ€«„' ):boolean;
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.Caption := FormTitle;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TYBaseForm.wordMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
  TYDBGrid(ActiveControl).ExportToWord;

end;

procedure TYBaseForm.ExcelMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).ExportToExcel;

end;

procedure TYBaseForm.TextMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).ExportToText;

end;

procedure TYBaseForm.PrintMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).Print;

end;

procedure TYBaseForm.CustomMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).CustomizePrint;

end;

procedure TYBaseForm.LoadSetting;
var
  I: integer;
begin
  qSetting.Close;
  qSetting.SQL.Text :=  'select * from setting ';
  qSetting.Open;

  for I :=0 to  ComponentCount-1  do
  begin
    qSetting.Locate('VariableName',Components[i].Name,[loCaseInsensitive]);
    if Components[i].ClassName ='TEdit' then
      TEdit(Components[i]).Text:=qSetting.Fields.FieldByName('Value').Value ;
    if Components[i].ClassName ='TCheckBox' then
      TCheckBox(Components[i]).Checked:=qSetting.Fields.FieldByName('Value').Value ;
  end;
end;

procedure TYBaseForm.SaveSetting;
var I: integer;
begin
  qSetting.Close;
  qSetting.SQL.Text :=  'select * from setting ';
  qSetting.Open;

  for I :=0 to  ComponentCount-1  do
  begin
    if qSetting.Locate('VariableName',Components[i].Name,[loCaseInsensitive]) then
    begin
      qSetting.Edit;
      if Components[i].ClassName ='TEdit' then
        qSetting.Fields.FieldByName('Value').Value :=TEdit(Components[i]).Text;
      if Components[i].ClassName ='TCheckBox' then
        qSetting.Fields.FieldByName('Value').Value :=(TCheckBox(Components[i]).Checked);
      qSetting.Post;
    end
  end;
end;

procedure TYBaseForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030628- bug369 }

  if (NewWidth < BaseNewWidth)  or (NewHeight < BaseNewHeight) then
    Resize := False
  else Resize := True;

  { TODO -oparsa : 14030628- bug369 }
end;

procedure TYBaseForm.SetSetting;
var
  i: word;
begin
  for i:=0 to ComponentCount-1 do
  begin

    if Components[i].InheritsFrom(TPanel) then
    begin
       if TPanel(Components[i]).Name='pnlMain' then
       begin
          TPanel(Components[i]).Color :=  _Maincolor1 ;
       end;
    end;
  end;
end;

end.
