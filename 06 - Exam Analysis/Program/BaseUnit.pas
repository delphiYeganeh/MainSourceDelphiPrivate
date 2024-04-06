unit BaseUnit;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, xpWindow;


type
  TMBaseForm = class(TForm)
    ActionList: TActionList;
    APrint: TAction;
    ACustomizePrint: TAction;
    AexportToWord: TAction;
    xpWindow1: TxpWindow;
    CloseForm: TAction;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure TEditEnter(Sender: TObject);
   procedure TEditExit(Sender: TObject);
    procedure APrintExecute(Sender: TObject);
    procedure ACustomizePrintExecute(Sender: TObject);
    procedure GetAccess;
    procedure FormCreate(Sender: TObject);
    procedure ShowMsgString(AppMessage: string);
    Function messageShowString(AppMessage: string;ShowCancel:boolean):boolean;
    procedure CtrlSpace(Sender: TObject; var key: Word; Shift: TShiftState);
    procedure AexportToWordExecute(Sender: TObject);
    procedure CloseFormExecute(Sender: TObject);
    procedure GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);

   private
    { Private declarations }
   public

    { Private declarations }
  end;

var
  MBaseForm: TMBaseForm;

implementation

uses dmu, Math, ShowmessageU;


{$R *.dfm}
procedure TMBaseForm.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
var o:TDBLookupComboBox;
    i:integer;
 begin
  case key of
     vk_return:
             begin
               If (Sender is TDblookUpCombobox) then (TDblookUpCombobox(sender).closeup(true));
               SelectNext(Sender as TwinControl,True,True);
             end;
     Vk_Down: if not(Sender is TDblookUpCombobox) then  SelectNext(Sender as TwinControl,True,True);
     Vk_Up: if not(Sender is TDblookUpCombobox) then  SelectNext(Sender as TwinControl,False,True);
     Vk_Left:begin
               if Sender is TDblookUpCombobox then SelectNext(Sender as TwinControl,True,True);
             end;
     Vk_right:if Sender is TDblookUpCombobox then SelectNext(Sender as TwinControl,False,True);
     Vk_Space:begin
                if (Sender is TDblookUpCombobox) then
                  begin
                    o:=(Sender as TDblookUpCombobox);
                      begin
                       if i>0 then
                       if (o.DataSource.DataSet.State=dsedit) or (o.DataSource.DataSet.State=dsInsert) then
                         o.DataSource.DataSet.FieldByName(o.DataField).AsInteger:=i;
                      end;
                  end;
               end;
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


procedure TMBaseForm.GetAccess;
//var i: word;
begin
{ for i:=0 to ComponentCount-1 do
  begin
   if Components[i].InheritsFrom(Taction) then
    begin
     TAction(Components[i]).Visible:=dm.GetActionAccess(TAction(Components[i]).Tag,self.tag);
     TAction(Components[i]).Enabled:=TAction(Components[i]).Visible;
    end;
  end;
 }
end;

procedure TMBaseForm.FormCreate(Sender: TObject);
//var i: integer;
begin
{for i:=0 to ComponentCount-1 do
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
  end;  end;  }
end;

procedure TMBaseForm.ShowMsgString(AppMessage: string);
begin
 ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=false;
  ShowMessageF.ShowModal;
end;

Function TMBaseForm.messageShowString(AppMessage: string;ShowCancel:boolean):boolean;
begin
 ShowMessageF:=TShowMessageF.Create(self);
  ShowMessageF.Label1.Caption:=AppMessage;
  ShowMessageF.ShowCancel:=ShowCancel;
  ShowMessageF.ShowModal;
  Result:=ShowMessageF.Done;
end;

procedure TMBaseForm.CtrlSpace(Sender: TObject; var key: Word; Shift: TShiftState);
var  i:string;
begin
 if (Sender is TYWhereEdit) then
  if key=Vk_Space then
   if (ssctrl in shift) and (TYWhereEdit(sender).ListTable<>'') then
      begin
         i:=DM.Search(TYWhereEdit(Sender));
         if i <> '' then
          if trim(TYWhereEdit(Sender).Text)<>'' then
           TYWhereEdit(Sender).Text:=TYWhereEdit(Sender).Text+','+i
          else
           TYWhereEdit(Sender).Text:=i;
      end;
end;
procedure TMBaseForm.AexportToWordExecute(Sender: TObject);
begin
  if ActiveControl.ClassNameIs('TYDBGrid') then
     TYDBGrid(ActiveControl).ExportToWord;
end;

procedure TMBaseForm.CloseFormExecute(Sender: TObject);
begin
Close;
end;

end.
