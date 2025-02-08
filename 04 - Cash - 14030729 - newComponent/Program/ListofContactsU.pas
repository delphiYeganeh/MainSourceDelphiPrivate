unit ListofContactsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList,ywhereedit,DBGrids,StdCtrls,DBCtrls, Mask, UemsVCL,Ydbgrid,db,
  ComCtrls, ExtCtrls, QuickRpt, Menus,QRCtrls, Buttons, Grids,
  AdvGlowButton;

type
  TFrListofContacts = class(TForm)
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
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    Button5: TAdvGlowButton;
    Label1: TLabel;
    SpeedButton1: TAdvGlowButton;
    RBPersonalNo: TRadioButton;
    RBTitle: TRadioButton;
    SearchEdit: TEdit;
    RBContactTypeTitle: TRadioButton;
    Button1: TAdvGlowButton;
    pnlMain: TPanel;
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
    Function MessageShowString_WithExit(AppMessage: string):byte; //0 ok 1- cancel - 2 exit
    Function MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
    procedure wordMenuItemClick(Sender: TObject);
    procedure ExcelMenuItemClick(Sender: TObject);
    procedure TextMenuItemClick(Sender: TObject);
    procedure PrintMenuItemClick(Sender: TObject);
    procedure CustomMenuItemClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure RBPersonalNoClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListofContacts: TFrListofContacts;

implementation

uses dmu,  YShamsiDate, ShowmessageU, MainU, searchLoanU, Upreview, BusinessLayer;

var
   CurrentColor:Tcolor;

{$R *.dfm}

procedure TFrListofContacts.AExitExecute(Sender: TObject);
begin
   Close;
end;

procedure TFrListofContacts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TFrListofContacts.TEditExit(Sender: TObject);
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
      if TDBEdit(Sender).DataSource.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask = '˛!1499/99/99;1;_' then
      begin
         D := TDBEdit(Sender).Text;
         if (Txt_Del254(d)<>'14  /  /  ') and not isValidDate(D) then
         begin
            ShowMyMessage('ÅÌ€«„',' «—ÌŒ Ê«—œ ‘œÂ  «‘ »«Â „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ',[mbOK],mtInformation);
            TDBEdit(Sender).Text := #254+'14  /  /  ';
            TDBEdit(Sender).SetFocus;
         end;
      end;
      //---
   end else
   {Ranjbar}
   if Sender.ClassNameIs('TMaskEdit') then
   begin
      if TMaskEdit(Sender).EditMask = '˛!1499/99/99;1;_' then
      begin
         D := TMaskEdit(Sender).Text;
         if (Txt_Del254(d)<>'14  /  /  ') and not isValidDate(D) then
         begin
            ShowMyMessage('ÅÌ€«„',' «—ÌŒ Ê«—œ ‘œÂ  «‘ »«Â „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ',[mbOK],mtInformation);
            TMaskEdit(Sender).Text := #254+'14  /  /  ';
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

procedure TFrListofContacts.CurrencyKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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


procedure TFrListofContacts.FormCreate(Sender: TObject);
 var i:integer;
begin

  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TYdbgrid') then
       begin
          try  TYDBGrid(Components[i]).Font:=_GridFont; except end;
      if TYDBGrid(Components[i]).PopupMenu =nil then
           TYDBGrid(Components[i]).PopupMenu:=Grid_PopupMenu;


        if    pos('((',TYdbgrid(Components[i]).PrintTitle)=0 then
          TYdbgrid(Components[i]).PrintTitle:=_SoftTitle;
       end else
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
      try  TDBEdit(Components[i]).Font:=_EditFont; except end
    else
    if Components[i].ClassNameIs('TShamsiDateEdit') then
      try  TShamsiDateEdit(Components[i]).Font:=_EditFont; except end
    else
    if Components[i].ClassNameIs('TDBShamsiDateEdit') then
      try  TDBShamsiDateEdit(Components[i]).Font:=_EditFont; except end
    else

    if Components[i].ClassNameIs('TQRImage') and (pos('CASHLOGO',UpperCase(Components[i].Name))<>0) then
        try TQRImage(Components[i]).Picture.LoadFromFile(_LogoPath); except end;

end;

procedure TFrListofContacts.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
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

procedure TFrListofContacts.TEditEnter(Sender: TObject);
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
     if TDBEdit(Sender).DataSource.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask = '˛!1399/99/99;1;_' then
        TDBEdit(Sender).SelStart := 3;
       //---
  end else
  {Ranjbar}
  if Sender.ClassNameIs('TMaskEdit') then
  begin
     if TMaskEdit(Sender).EditMask = '˛!1399/99/99;1;_' then
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
procedure TFrListofContacts.FormShow(Sender: TObject);
var i: integer;
begin
   ModalResult:=mrCancel;
   CurrentColor:=clWindow;
   SpeedButton1.Click;
   for i:=0 to ComponentCount-1 do
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
     if Components[i].InheritsFrom(TDBEdit) then
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
     end ;
     {Ranjbar 88.05.21}
     Form_Animate(Self,100);
     //---
end;


procedure TFrListofContacts.searchAccountExecute(Sender: TObject);
begin
   FrMain.FindContact(false,1,True);
   if _FoundAccountID>0 then
    if ActiveControl.InheritsFrom(tcustomedit) then
      TCustomEdit(ActiveControl).Text:=_FoundAcountNo;
end;

procedure TFrListofContacts.AExportToExcelExecute(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).ExportToExcel;
end;

procedure TFrListofContacts.SearchLoanExecute(Sender: TObject);
begin
  FrSearchLoan:=TFrSearchLoan.Create(Application);
  FrSearchLoan.ShowModal;
   if _FoundLoanID>0 then
  if ActiveControl.InheritsFrom(tcustomedit) then
    TCustomEdit(ActiveControl).Text:=_FoundLoanNo;
end;




procedure TFrListofContacts.ShowMsgString(AppMessage: string);
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=false;
  ShowMessageF.ShowModal;
end;

Function TFrListofContacts.MessageShowString_WithExit(AppMessage: string):byte;
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
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

Function TFrListofContacts.MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TFrListofContacts.wordMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
  TYDBGrid(ActiveControl).ExportToWord;

end;

procedure TFrListofContacts.ExcelMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).ExportToExcel;

end;

procedure TFrListofContacts.TextMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).ExportToText;

end;

procedure TFrListofContacts.PrintMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).Print;

end;

procedure TFrListofContacts.CustomMenuItemClick(Sender: TObject);
begin
 if ActiveControl.ClassNameIs('TYDBGrid') then
   TYDBGrid(ActiveControl).CustomizePrint;

end;

procedure TFrListofContacts.SpeedButton1Click(Sender: TObject);
VAR WhereStr,ORDERBY:String;
begin
    Dm.ContactQ.Close;
    Dm.ContactQ.SQL.Text:=' SELECT     Contact.ContactID, Contact.PersonalNo, ContactTitle , Contact.ContactTypeID, '+
                          '            ContactType.ContactTypeTitle '+
                          ' FROM       Contact INNER JOIN '+
                          '            ContactType ON Contact.ContactTypeID = ContactType.ContactTypeID ';
    




    IF RBContactTypeTitle.Checked THEN
    BEGIN
      WhereStr:=' WHERE ContactTypeTitle like ''%'+SearchEdit.Text+'%''';
      ORDERBY:=' Order by ContactTypeTitle '
    END;
    IF RBPersonalNo.Checked THEN
    BEGIN
      WhereStr:=' WHERE ContactID Like ''%'+TRIM(SearchEdit.Text)+'%''';
      ORDERBY:=' Order by ContactID '
    END;

    IF RBTitle.Checked THEN
    BEGIN
      WhereStr:=' WHERE ContactTitle like ''%'+SearchEdit.Text+'%''';
      ORDERBY:=' Order by ContactTitle '
    END;
    Dm.ContactQ.Close;
    Dm.ContactQ.SQL.Text:=Dm.ContactQ.SQL.Text + WhereStr+ORDERBY;
    Dm.ContactQ.OPEN;
end;

procedure TFrListofContacts.SearchEditChange(Sender: TObject);
begin
    SpeedButton1.Click;
end;

procedure TFrListofContacts.RBPersonalNoClick(Sender: TObject);
begin
    SpeedButton1.Click;
end;

procedure TFrListofContacts.Button5Click(Sender: TObject);
begin
Close;
end;

procedure TFrListofContacts.Button1Click(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.
