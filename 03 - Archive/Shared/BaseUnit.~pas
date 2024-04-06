unit BaseUnit;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
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

   private
    { Private declarations }
   public

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

end.
