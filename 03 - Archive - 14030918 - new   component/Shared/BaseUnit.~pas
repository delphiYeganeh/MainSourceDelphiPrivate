unit BaseUnit;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  CurvyControls, xpPanel, AdvGlowButton, ExtCtrls,  ActnCtrls, ActnMenus, DBTreeView, 
  ExtActns, xpWindow, ComCtrls,Buttons,StrUtils;


type
  TMBaseForm = class(TForm)
    DSForm: TDataSource;
    ActionList: TActionList;
    APrint: TAction;
    ACustomizePrint: TAction;
    SearchAddedInfo: TAction;
    AHelp1: TAction;
    LoadHtm: TBrowseURL;
    RefreshAction: TAction;
    xpWindow1: TxpWindow;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure TEditEnter(Sender: TObject);
   procedure TEditExit(Sender: TObject);
   procedure APrintExecute(Sender: TObject);
   procedure ACustomizePrintExecute(Sender: TObject);
   procedure GetAccess;
   procedure FormCreate(Sender: TObject);
   procedure GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
   procedure SearchAddedInfoExecute(Sender: TObject);
   procedure MemoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
   Function MessageShow(AppMessageID: integer;ShowCancel:boolean):boolean;
   procedure ShowMsg(AppMessageID: integer);
   procedure ShowMsgString(AppMessage: string);
   Function MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
   procedure DoNoChange(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure RefreshActionExecute(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);

   private
     procedure SetColor ;
   public
    BaseNewWidth : Integer;
    BaseNewHeight: Integer;
    { Private declarations }
  end;

var
  MBaseForm: TMBaseForm;

implementation

uses Dmu, UsearchStno, ShowmessageU, businessLayer, UsearchShortCut,YShamsiDate;

{$R *.dfm}

procedure TMBaseForm.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
var  i:integer;
begin
  if (Sender is TYWhereEdit) then
    if key=Vk_Space then
      if (ssctrl in shift) and (TYWhereEdit(sender).ListTable<>'') then
      begin
        i:=DM.Search(TYWhereEdit(Sender));
        if i>-1 then
          if Trim(TYWhereEdit(Sender).Text)<>'' then
            TYWhereEdit(Sender).Text:=TYWhereEdit(Sender).Text+','+IntToStr(i)
          else
            TYWhereEdit(Sender).Text:=IntToStr(i);
      end;
end;

procedure TMBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMBaseForm.TEditEnter(Sender: TObject);
begin
  if Sender.ClassNameIs('TEdit') then
  begin
    TEdit(Sender).Color := dm.focusedColor;
    TEdit(sender).Font.Style:=[fsBold];
  end
  else
  if Sender.ClassNameIs('TdbEdit') then
  begin
    TdbEdit(Sender).Color := dm.focusedColor;;
    TdbEdit(Sender).font.Style:=[fsBold];
  end
  else
  if Sender.ClassNameIs('TComboBox') then
  begin
    TComboBox(Sender).Color := dm.focusedColor;;
    TComboBox(Sender).font.Style:=[fsBold];
  end
  else
  if Sender.ClassNameIs('TDBShamsiDateEdit') then
  begin
    TDBShamsiDateEdit(Sender).Color := dm.focusedColor;;
    TDBShamsiDateEdit(Sender).Font.Style:=[fsBold];
  end
  else
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
  end
  else
  if Sender.ClassNameIs('TComboBox') then
  begin
    TComboBox(Sender).Color := clWhite;
    TComboBox(Sender).Font.Style:=[];
  end
  else
  if Sender.ClassNameIs('TdbEdit') then
  begin
    TdbEdit(Sender).Color := clWhite;
    TdbEdit(Sender).Font.Style:=[];
  end
  else
  if Sender.ClassNameIs('TDBShamsiDateEdit') then
  begin
    TDBShamsiDateEdit(Sender).Color := clWhite;
    TDBShamsiDateEdit(Sender).Font.Style:=[];
  end
  else
  if Sender.ClassNameIs('TDBMemo') then
  begin
    TDBMemo(Sender).Color := clWhite;
    TDBMemo(Sender).Font.Style:=[];
  end;
end;

procedure TMBaseForm.APrintExecute(Sender: TObject);
begin
  if ActiveControl.ClassNameIs('TYDBGrid') then
    TYDBGrid(ActiveControl).ExportToWord
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

procedure TMBaseForm.GetAccess;
var i: word;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].InheritsFrom(Taction) then
    begin
      TAction(Components[i]).Visible:=dm.GetActionAccess(TAction(Components[i]).Name,self.tag);
      TAction(Components[i]).Enabled:=TAction(Components[i]).Visible;
    end;
  end;
end;

procedure TMBaseForm.FormCreate(Sender: TObject);
begin
  GetAccess;
  SetColor ;
end;

Function TMBaseForm.MessageShow(AppMessageID: integer;ShowCancel:boolean):boolean;
begin
  ShowMessageF := TShowMessageF.Create(self);
  ShowMessageF.AppMsgID:=AppMessageID;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TMBaseForm.ShowMsg(AppMessageID: Integer);
begin
  ShowMessageF := TShowMessageF.Create(Self);
  ShowMessageF.AppMsgID := AppMessageID;
  ShowMessageF.ShowCancel := False;
  ShowMessageF.ShowModal;
end;

procedure TMBaseForm.ShowMsgString(AppMessage: string);
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=false;
  ShowMessageF.ShowModal;
end;

Function TMBaseForm.MessageShowString(AppMessage: string;ShowCancel:boolean):boolean;
begin
  ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TMBaseForm.SearchAddedInfoExecute(Sender: TObject);
var
  t:TWinControl;
begin
  t:=ActiveControl;
  SearchStno:=TSearchStno.Create(Application);
  SearchStno.ShowModal;

 if dm.SearchStResult<>'*' then
  if t.InheritsFrom(TCustomEdit) then
    TEdit(t).Text:=dm.SearchStResult;
end;

procedure TMBaseForm.DoNoChange(Sender: TObject);
begin
  ShowMsg(2);
  Abort;
end;

procedure TMBaseForm.MemoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssalt in shift)  then
    if dm.UserShortCut.Locate('altKey',char(key),[]) then
    begin
      TCustomMemo( Sender).Text:=TCustomMemo(Sender).text+dm.UserShortCutkeyText.AsString;
      TCustomMemo(Sender).SelLength:=0;
      TCustomMemo(Sender).SelStart:=length(TCustomMemo(Sender).text);
    end;

  if (ssctrl in shift) and (key=32) then
  begin
    FrsearchShortCut:=TFrsearchShortCut.create(Application);
    FrsearchShortCut.ShowModal;
    if DM.keytext='' then
      exit;
    TCustomMemo( Sender).Text:=TCustomMemo(Sender).text+DM.keytext;
    TCustomMemo(Sender).SelLength:=0;
    TCustomMemo(Sender).SelStart:=length(TCustomMemo(Sender).text);
  end;
end;

procedure TMBaseForm.FormShow(Sender: TObject);
var
  i,J: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].ClassNameIs('TMemo')  then
      TMemo(Components[i]).OnKeyDown:=MemoKeyDown
    else
      if Components[i].ClassNameIs('TDBMemo')  then
        TMemo(Components[i]).OnKeyDown := MemoKeyDown
      else
        if Components[i].ClassNameIs('TYDBGrid')  then
          TYDBGrid(Components[i]).PrintTitle := _yeganeh;
                  {if not dm.ShowFarsiCaption then
                      Caption:='Yeganeh Software Company'}

      // €ÌÌ— ⁄‰Ê«‰ ”‰œ
    if (dm.CanChangeDoc)And(dm.UserDocCaption <> '') then
    begin
      if Components[i].ClassNameIs('Tlabel')  then
      begin
           {Ranjbar 89.05.17 ID=7}
            //TLabel(Components[i]).Caption := Replace(TLabel(Components[i]).Caption,'”‰œ',dm.UserDocCaption);// €ÌÌ— ⁄‰Ê«‰ ”‰œ »Â œÌê— ⁄‰Ê«‰Â«
        TLabel(Components[i]).Caption := AnsiReplaceText(TLabel(Components[i]).Caption,'”‰œ',dm.UserDocCaption);// €ÌÌ— ⁄‰Ê«‰ ”‰œ »Â œÌê— ⁄‰Ê«‰Â«
            //---
        TLabel(Components[i]).Caption := AnsiReplaceText(TLabel(Components[i]).Caption,'„Ê÷Ê⁄',dm.UserSubject);
        TLabel(Components[i]).Caption := AnsiReplaceText(TLabel(Components[i]).Caption,'Œ·«’Â',dm.UserMainMemo);
      end
      else
        if Components[i].ClassNameIs('TAction')  then
          TAction(Components[i]).Caption := AnsiReplaceText(TAction(Components[i]).Caption,'”‰œ',dm.UserDocCaption)
        else
          if Components[i].ClassNameIs('TYDBGrid')  then
          begin
                  //Õ–› ê—œœ UserFolder «“ ›Ê·œ— Cfg œ— ’Ê— ÌﬂÂ ⁄‰Ê«‰ ” Ê‰Â«  €ÌÌ— ‰ﬂ—œÂ »«Ìœ ›«Ì·Â«Ì ‰Ê⁄
            with TYDBGrid(Components[i]).Columns do
              for J:=0 to Count-1 do
              begin
                Items[J].Title.Caption := AnsiReplaceText(Items[J].Title.Caption,'”‰œ',dm.UserDocCaption);
                Items[J].Title.Caption := AnsiReplaceText(Items[J].Title.Caption,'„Ê÷Ê⁄',dm.UserSubject);
                Items[J].Title.Caption := AnsiReplaceText(Items[J].Title.Caption,'Œ·«’Â',dm.UserMainMemo);
              end;
          end
          else
            if Components[i].ClassNameIs('TCheckBox')  then
              TCheckBox(Components[i]).Caption := AnsiReplaceText(TCheckBox(Components[i]).Caption,'”‰œ',dm.UserDocCaption)
            else
              if Components[i].ClassNameIs('TGroupBox')  then
                TGroupBox(Components[i]).Caption := AnsiReplaceText(TGroupBox(Components[i]).Caption,'”‰œ',dm.UserDocCaption)
              else
                if Components[i].ClassNameIs('TRadioButton')  then
                  TRadioButton(Components[i]).Caption := AnsiReplaceText(TRadioButton(Components[i]).Caption,'”‰œ',dm.UserDocCaption)
                else
                  if Components[i].ClassNameIs('TSpeedButton')  then
                    TSpeedButton(Components[i]).Caption := AnsiReplaceText(TSpeedButton(Components[i]).Caption,'”‰œ',dm.UserDocCaption)
                  else
                    if Components[i].ClassNameIs('TTabSheet')  then
                      if Pos('”‰œ', TTabSheet(Components[i]).Caption) > 0 then //«Ì‰ Œÿ Õ–› ‰‘Êœ
                        TTabSheet(Components[i]).Caption := AnsiReplaceText(TTabSheet(Components[i]).Caption,'”‰œ',dm.UserDocCaption)
                      else
                        if Pos('”‰œ', Self.Caption) > 0 then
                          Self.Caption := AnsiReplaceText(Self.Caption,'”‰œ',dm.UserDocCaption); // €ÌÌ— ⁄‰Ê«‰ ›—„
      end;
   end;
   BaseNewWidth := Self.Width;
   BaseNewHeight:= Self.Height;
end;

procedure TMBaseForm.RefreshActionExecute(Sender: TObject);
var
  i: word;
begin
   //Õ–› œ” —”Ì Â«
  if Self.Tag=100 then
    Exec_delete_Actions_ByFormID(1)
  else
    Exec_delete_Actions_ByFormID(Self.Tag);

   //TAction œ«œ‰ œ” —”Ì »Â ﬂ‰ —·Â«ÌÌ ﬂÂ  ê ¬‰Â« »“—ê — «“ ’›— «”  Ê «“ ‰Ê⁄
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].tag > 0 then
      if Components[i].InheritsFrom(TAction) then
      begin
        if Self.Tag=100 then
          Exec_insert_Actions(1,TAction(Components[i]).Name,TAction(Components[i]).Caption)
        else
          Exec_insert_Actions(self.Tag,TAction(Components[i]).Name,TAction(Components[i]).Caption);
      end;
  end;
end;

procedure TMBaseForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030717 }
  if (NewWidth < BaseNewWidth)  or (NewHeight < BaseNewHeight) then
    Resize := False
  else Resize := True;
  { TODO -oparsa : 14030717 }
end;

procedure TMBaseForm.SetColor;
var
  i: word;
begin
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;
     
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].InheritsFrom(TxpPanel) then
    begin

      TxpPanel(Components[i]).StartColor := _Color1;// := dm.GetActionAccess(TxpPanel(Components[i]).Name, Self.Tag);
      TxpPanel(Components[i]).EndColor := _Color2;//:= TxpPanel(Components[i]).Visible;

      TxpPanel(Components[i]).TitleStartColor := _Color3;// := dm.GetActionAccess(TxpPanel(Components[i]).Name, Self.Tag);

      if _ColorSetting = 0 then
        TxpPanel(Components[i]).TitleEndColor  := _Color4
      else  TxpPanel(Components[i]).TitleEndColor  := _Color1; //:= TxpPanel(Components[i]).Visible;

      TxpPanel(Components[i]).TitleFont.Name :=  _MainFont  ;
     // TxpPanel(Components[i]).TitleEndColor. := _MainFont;

    end
    else
    if Components[i].InheritsFrom(TPanel) then
    begin

      TPanel(Components[i]).Font.Name := _MainFont  ;
      if TPanel(Components[i]).Tag <> 100 then
        TPanel(Components[i]).Color     := _Color1 ;

    end
    else if Components[i].InheritsFrom(TAdvGlowButton) then
    begin
      TAdvGlowButton(Components[i]).Font.Name := _MainFont  ;
      TAdvGlowButton(Components[i]).NotesFont.Name := _MainFont  ;
      TAdvGlowButton(Components[i]).ParentFont := True ; //Font.Name := _MainFont  ;
     // TAdvGlowButton(Components[i]).Color := _Color5 ;
    end

    else if Components[i].InheritsFrom(TCurvyEdit) then
    begin
      TCurvyEdit(Components[i]).Font.Name := _MainFont  ;
     // TCurvyEdit(Components[i]).ParentFont := True ;
     TCurvyEdit(Components[i]).Color := _Color5 ;

    end
    else if Components[i].InheritsFrom(TLabel) then
    begin
      TLabel(Components[i]).Font.Name := _MainFont  ;
     // TLabel(Components[i]).ParentFont := True ;
    end
    else if Components[i].InheritsFrom(TActionToolBar) then
    begin
      TActionToolBar(Components[i]).Font.Name := _MainFont  ;
     // TActionToolBar(Components[i]).ParentFont := True ;
    end
    else if Components[i].InheritsFrom(TActionMainMenuBar) then
    begin
      TActionMainMenuBar(Components[i]).Font.Name := _MainFont  ;
     // TActionMainMenuBar(Components[i]).ParentFont := True ;
    end
    else if Components[i].InheritsFrom(TYDBGrid) then
    begin
      TYDBGrid(Components[i]).Font.Name := _MainFont  ;
     // TYDBGrid(Components[i]).ParentFont := True ;
      TYDBGrid(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TDBGrid) then
    begin
      TDBGrid(Components[i]).Font.Name := _MainFont  ;
     // TDBGrid(Components[i]).ParentFont := True ;
      TDBGrid(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TDBMemo) then
    begin
      TDBMemo(Components[i]).Font.Name := _MainFont  ;
     // TDBMemo(Components[i]).ParentFont := True ;
      TDBMemo(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TMemo) then
    begin
      TMemo(Components[i]).Font.Name := _MainFont  ;
     // TMemo(Components[i]).ParentFont := True ;
      TMemo(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TDBEdit) then
    begin
      TDBEdit(Components[i]).Font.Name := _MainFont  ;
     // TDBEdit(Components[i]).ParentFont := True ;
      TDBEdit(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TEdit) then
    begin
      TEdit(Components[i]).Font.Name := _MainFont  ;
     // TEdit(Components[i]).ParentFont := True ;
      TEdit(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TDBText) then
    begin
      TDBText(Components[i]).Font.Name := _MainFont  ;
     // TDBText(Components[i]).ParentFont := True ;

    end
    else if Components[i].InheritsFrom(TDBShamsiDateEdit) then
    begin
      TDBShamsiDateEdit(Components[i]).Font.Name := _MainFont  ;
     // TDBShamsiDateEdit(Components[i]).ParentFont := True ;
      TDBShamsiDateEdit(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TDBLookupComboBox) then
    begin
      TDBLookupComboBox(Components[i]).Font.Name := _MainFont  ;
     // TDBLookupComboBox(Components[i]).ParentFont := True ;
      TDBLookupComboBox(Components[i]).Color := _Color5 ;
    end
    else if Components[i].InheritsFrom(TDBTreeView) then
    begin
      TDBTreeView(Components[i]).Font.Name := _MainFont  ;
     // TDBTreeView(Components[i]).ParentFont := True ;
      TDBTreeView(Components[i]).Color := _Color5 ;
    end;

    {
    else if Components[i].InheritsFrom(TDBNavigator) then
    begin
      TDBNavigator(Components[i]).Font.Name := _MainFont  ;
     // TDBNavigator(Components[i]).ParentFont := True ;

    end;
      }

  end;
end;

end.
