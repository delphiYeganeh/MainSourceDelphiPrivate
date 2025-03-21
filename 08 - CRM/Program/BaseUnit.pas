unit BaseUnit;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, Menus,variants, Buttons, ExtCtrls;


type
  TMBaseForm = class(TForm)
    DSForm: TDataSource;
    ActionList: TActionList;
    APrint: TAction;
    ACustomizePrint: TAction;
    SearchAddedInfo: TAction;
    AHelp: TAction;
    LoadHtm: TBrowseURL;
    ads: TAction;
    selectall: TAction;
    Aexit: TAction;
    RefreshAction: TAction;
    ShapeBase: TShape;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure TEditEnter(Sender: TObject);
   procedure TEditExit(Sender: TObject);
    procedure APrintExecute(Sender: TObject);
    procedure ACustomizePrintExecute(Sender: TObject);
    procedure GotoNextGrid(Sender: TObject; var key: Word; Shift: TShiftState);
    procedure GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
    procedure DBLookUpKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
    procedure DoNoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoadHtmAfterBrowse(Sender: TObject);
    procedure adsExecute(Sender: TObject);
    procedure selectallExecute(Sender: TObject);
    procedure AexitExecute(Sender: TObject);
    procedure ShowMsgString(AppMessage: string);
    Function MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
    procedure GetAccess;
    procedure RefreshActionExecute(Sender: TObject);
    procedure CtrlSpace(Sender: TObject; var key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);

   private
    { Private declarations }
   public
    SelfMinWidth : Integer;
    SelfMinHight : Integer;
    { Private declarations }
  end;

var
  MBaseForm: TMBaseForm;

implementation

uses YShamsiDate,ShowmessageU, dmu, BusinessLayer;



{$R *.dfm}
procedure TMBaseForm.CtrlSpace(Sender: TObject; var key: Word; Shift: TShiftState);
var  i:integer;
begin
 if (Sender is TYWhereEdit) then
  if key=Vk_Space then
   if (ssctrl in shift) and (TYWhereEdit(sender).ListTable<>'') then
      begin
         i:= DM.Search(TYWhereEdit(Sender));
          if i <> -1 then
            TYWhereEdit(Sender).Text:=IntToStr(i);
      end;
end;
procedure TMBaseForm.GotoNextGrid(Sender: TObject; var key: Word;
  Shift: TShiftState);
begin
inherited;
 if (Sender is TYDBGrid) then
   with TYDBGrid(Sender) do
    if (key = 13) then
    begin
      if ((Columns.Count-1) = SelectedIndex) then
      begin
          if  dataSource.DataSet.RecNo = dataSource.DataSet.RecordCount then
            DataSource.DataSet.Append
              else
               DataSource.DataSet.Next;

          SelectedIndex :=0;
      end
          else SelectedIndex := SelectedIndex +1
    end

end;

procedure TMBaseForm.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
 var i:integer;
 begin
   if key in [vk_return,Vk_Down,Vk_Up,Vk_Space] then
     begin
      if key=Vk_Up then
      if not(Sender is TDblookUpCombobox) then  SelectNext(Sender as TwinControl,False,True);

      if key=vk_return then
       begin
        If (Sender is TDblookUpCombobox) then (TDblookUpCombobox(sender).closeup(true));
        SelectNext(Sender as TwinControl,True,True);
       end;

     if key=Vk_Down then
      if not(Sender is TDblookUpCombobox) then
       SelectNext(Sender as TwinControl,True,True);
   end;

 if (Sender is TYWhereEdit) then
  if key=Vk_Space then
   if (ssctrl in shift) and (TYWhereEdit(sender).ListTable<>'') then
    begin
     i:=DM.Search(TYWhereEdit(Sender));
     if i>-1 then
     if trim(TYWhereEdit(Sender).Text)<>'' then
      TYWhereEdit(Sender).Text:=TYWhereEdit(Sender).Text+','+IntToStr(i)
     else
      TYWhereEdit(Sender).Text:=IntToStr(i);
    end;

end;

procedure TMBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;
procedure TMBaseForm.TEditEnter(Sender: TObject);
begin
 if Sender.ClassNameIs('TEdit') then
  begin
    TEdit(Sender).Color := dm.focusedColor;
    TEdit(sender).Font.Style:=[fsBold];
  end else
 if Sender.ClassNameIs('TdbEdit') then
  begin
     TdbEdit(Sender).Color := dm.focusedColor;;
     TdbEdit(Sender).font.Style:=[fsBold];
  end else
 if Sender.ClassNameIs('TComboBox') then
  begin
    TComboBox(Sender).Color := dm.focusedColor;;
    TComboBox(Sender).font.Style:=[fsBold];
  end else
 if Sender.ClassNameIs('TDBShamsiDateEdit') then
  begin
    TDBShamsiDateEdit(Sender).Color := dm.focusedColor;;
    TDBShamsiDateEdit(Sender).Font.Style:=[fsBold];
  end else
 if Sender.ClassNameIs('TDBMemo') then
  begin
    TDBMemo(Sender).Color := dm.focusedColor;;
    TDBMemo(Sender).Font.Style:=[fsBold];
  end;
end;
procedure TMBaseForm.TEditExit(Sender: TObject);
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
 if Sender.ClassNameIs('TdbEdit') then
  begin
    TdbEdit(Sender).Color := clWhite;
    TdbEdit(Sender).Font.Style:=[];
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
procedure TMBaseForm.APrintExecute(Sender: TObject);
begin
  if ActiveControl.ClassNameIs('TYDBGrid') then
     TYDBGrid(ActiveControl).Print
  else
  if ActiveControl.ClassNameIs('TDBLookupEdit') then
     TYDBGrid(TDBLookupEdit(ActiveControl).Dbgrid).Print;
end;

procedure TMBaseForm.ACustomizePrintExecute(Sender: TObject);
begin
  if ActiveControl.ClassNameIs('TYDBGrid') then
     TYDBGrid(ActiveControl).CustomizePrint
  else
  if ActiveControl.ClassNameIs('TDBLookupEdit') then
     TYDBGrid(TDBLookupEdit(ActiveControl).Dbgrid).CustomizePrint;
end;


procedure TMBaseForm.DoNoChange(Sender: TObject);
begin
 ShowMessage('��� �� ���  ������ ������ ������');
 Abort;
end;
procedure TMBaseForm.FormShow(Sender: TObject);
var i: integer;
begin
   //Self.ScaleBy(_PercentScale,100);
   Self.Scaled := True ;
   Self.ScaleBy(Screen.PixelsPerInch,96);
   ShapeBase.Brush.Color := _Color1 ;
   for i:=0 to ComponentCount-1 do
    if Components[i].InheritsFrom(TDBLookupComboBox) then
        if  not Assigned(TDBLookupComboBox(Components[i]).OnKeyDown) then TDBLookupComboBox(Components[i]).OnKeyDown:= GotoNext
       else
     if Components[i].InheritsFrom(TEdit) or Components[i].InheritsFrom(TShamsiDateEdit) then
       begin
        if not Assigned(TEdit(Components[i]).OnKeyDown) then
         TEdit(Components[i]).OnKeyDown:=GotoNext;
        if not Assigned(TEdit(Components[i]).OnEnter) then
         TEdit(Components[i]).OnEnter:=TEditEnter;
        if not Assigned(TEdit(Components[i]).OnExit) then
         TEdit(Components[i]).OnExit:=TEditExit;
       end    else
     if Components[i].InheritsFrom(TDBEdit) then
      begin
        TdbEdit(Components[i]).OnKeyDown:=GotoNext;
        if not Assigned(TdbEdit(Components[i]).OnEnter) then
        TdbEdit(Components[i]).OnEnter:=TEditEnter;
        if not Assigned(TdbEdit(Components[i]).OnExit) then
        TdbEdit(Components[i]).OnExit:=TEditExit;
       end    else
     if Components[i].ClassNameIs('TDBShamsiDateEdit') then
      begin
        TDBShamsiDateEdit(Components[i]).OnKeyDown:=GotoNext;
        TDBShamsiDateEdit(Components[i]).OnEnter:=TEditEnter;
        TDBShamsiDateEdit(Components[i]).OnExit:=TEditExit;
       end    else
     if Components[i].ClassNameIs('TDBMemo') then
      begin
//        TDBMemo(Components[i]).OnKeyDown:=GotoNext;
        TDBMemo(Components[i]).OnEnter:=TEditEnter;
        TDBMemo(Components[i]).OnExit:=TEditExit;
       end    else
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
        TCheckbox(Components[i]).OnEnter:=TEditEnter;
        TCheckbox(Components[i]).OnExit:=TEditExit;
       end ;
   {Ranjbar}
//   Form_Animate(Self,100);
end;

procedure TMBaseForm.LoadHtmAfterBrowse(Sender: TObject);
begin
if  ActiveControl.InheritsFrom(Tedit) then
  Dm.OpenURL('http://www.google.com/search?hl=fa&q='+TEdit(ActiveControl).Text) else

if  ActiveControl.InheritsFrom(Tdbedit) then
  Dm.OpenURL('http://www.google.com/search?hl=fa&q='+TdbEdit(ActiveControl).Text);
end;
procedure TMBaseForm.adsExecute(Sender: TObject);
begin

if  ActiveControl.InheritsFrom(Tedit) then
  Dm.OpenURL('http://www.alexa.com/data/details/traffic_details/'+UTF8Encode(TEdit(ActiveControl).Text)) else

if  ActiveControl.InheritsFrom(Tdbedit) then
  Dm.OpenURL('http://search.yahoo.com/search?p='+UTF8Encode(TDBEdit(ActiveControl).Text)+'&ei=utf-8&iscqry=&fr=sfp');

end;

procedure TMBaseForm.selectallExecute(Sender: TObject);
begin
if  ActiveControl.InheritsFrom(Tedit) then
  begin
    TEdit(ActiveControl).SelStart:=0;
    TEdit(ActiveControl).SelLength:=length(TEdit(ActiveControl).Text);
    TEdit(ActiveControl).CopyToClipboard;
  end;

if  ActiveControl.InheritsFrom(TDBedit) then
  begin
    TdbEdit(ActiveControl).SelStart:=0;
    TdbEdit(ActiveControl).SelLength:=length(TdbEdit(ActiveControl).Text);
    TdbEdit(ActiveControl).CopyToClipboard;
  end;

end;

procedure TMBaseForm.AexitExecute(Sender: TObject);
begin
close;
end;
procedure TMBaseForm.ShowMsgString(AppMessage: string);
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=false;
  ShowMessageF.ShowModal;
end;

Function TMBaseForm.MessageShowString(AppMessage: String;ShowCancel:boolean):boolean;
begin
   ShowMessageF := TShowMessageF.Create(self);
   ShowMessageF.Label1.Caption := AppMessage;
   ShowMessageF.ShowCancel := ShowCancel;
   ShowMessageF.ShowModal;
   Result := ShowMessageF.Done;
end;

procedure TMBaseForm.RefreshActionExecute(Sender: TObject);
var
   i: word;
begin
   Exec_delete_Actions_ByFormID(self.Tag);
   for i:=0 to ComponentCount-1 do
      if Components[i].InheritsFrom(TMenuItem) then
         {Ranjbar}
         if TMenuItem(Components[i]).Caption <> '-' then
         //---
            Exec_insert_Actions(TMenuItem(Components[i]).Name,self.Tag,   TMenuItem(Components[i]).Caption);
end;

procedure TMBaseForm.GetAccess;
var
  i: word;
begin

 KeyPreview  := True;

 for i:=0 to ComponentCount-1 do
  begin

    if Components[i].InheritsFrom(TMenuItem) then
    begin
      if TMenuItem(Components[i]).Name = 'N65' then                    // Amin 1391/09/18
         TMenuItem(Components[i]).Visible:= Dm.UserIsAdmin.AsBoolean   // Amin 1391/09/18
      else                                                             // Amin 1391/09/18
      begin
         TMenuItem(Components[i]).Visible:= GetActionAccess(_accessID,TAction(Components[i]).name,self.tag);
         TMenuItem(Components[i]).Enabled:= TMenuItem(Components[i]).Visible;
      end
    end;

    if Components[i].InheritsFrom(TBitBtn) then
    begin
     if TBitBtn(Components[i]).Name='btnDelEghdamat' then
     begin
        TBitBtn(Components[i]).Visible:= GetActionAccess(_accessID,'acDelEghdamat',TBitBtn(Components[i]).tag);
        TBitBtn(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end
     else
     // if TBitBtn(Components[i]).Name='btnCasesAll' then
     begin
        TBitBtn(Components[i]).Visible:= GetActionAccess(_accessID,TAction(Components[i]).name,TBitBtn(Components[i]).tag);
        TBitBtn(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TGroupBox) then
    begin
     if TGroupBox(Components[i]).Name='gbTaskTime' then
     begin
        TGroupBox(Components[i]).Visible:= GetActionAccess(_accessID,'acgbTaskTime',TGroupBox(Components[i]).tag);
        TGroupBox(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TRadioGroup) then
    begin
     if TRadioGroup(Components[i]).Name='followUpItem' then
     begin
        TRadioGroup(Components[i]).Visible:= GetActionAccess(_accessID,'acfollowUpItem',TRadioGroup(Components[i]).tag);
        TRadioGroup(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TGroupBox) then
    begin
     if TGroupBox(Components[i]).Name='gbInformationSale' then
     begin
        TGroupBox(Components[i]).Visible:= GetActionAccess(_accessID,'acgbInformationSale',TGroupBox(Components[i]).tag);
        TGroupBox(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TPanel) then
    begin
     if TPanel(Components[i]).Name='pnlCLBCompaginIDs' then
     begin
        TPanel(Components[i]).Visible:= GetActionAccess(_accessID,'acpnlCLBCompaginIDs',TPanel(Components[i]).tag);
        TPanel(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TPanel) then
    begin
     if TPanel(Components[i]).Name='pnlOtherMarketer' then
     begin
        TPanel(Components[i]).Visible:= GetActionAccess(_accessID,'acpnlOtherMarketer',TPanel(Components[i]).tag);
        TPanel(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TPanel) then
    begin
     if TPanel(Components[i]).Name='pnlContractMarketer' then
     begin
        TPanel(Components[i]).Visible:= GetActionAccess(_accessID,'acpnlContractMarketer',TPanel(Components[i]).tag);
        TPanel(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TPanel) then
    begin
     if TPanel(Components[i]).Name='pnlCustomerMarketer' then
     begin
        TPanel(Components[i]).Visible:= GetActionAccess(_accessID,'apnlCustomerMarketer',TPanel(Components[i]).tag);
        TPanel(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

    if Components[i].InheritsFrom(TPanel) then
    begin
     if TPanel(Components[i]).Name='pnlCustomerStatusFilter' then
     begin
        TPanel(Components[i]).Visible:= GetActionAccess(_accessID,'apnlCustomerStatusFilter',TPanel(Components[i]).tag);
        TPanel(Components[i]).Enabled:= TAction(Components[i]).Visible;
     end;
    end;

  end;

end;
procedure TMBaseForm.FormCreate(Sender: TObject);
var  scalefactor : Double;
begin
   GetAccess;
   scalefactor := Screen.Width /1680;
  // Self.ScaleBy(Round( scalefactor* 100),100);

   { TODO -oparsa : 14030203 }
   selfMinWidth := Self.Width;
   selfMinHight := Self.Height;
   { TODO -oparsa : 14030203 }
   //SetWindowRgn(Handle, CreateRoundRectRgn(0,0,Width,Height,20,20),True);
end;


procedure TMBaseForm.DBLookUpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_delete then
      TDBLookupListBox(Sender).KeyValue:=null;
end;

procedure TMBaseForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //
end;

procedure TMBaseForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  if (NewWidth < selfMinWidth)  or (NewHeight < selfMinHight) then
    Resize := False
  else Resize := True;
end;

end.


