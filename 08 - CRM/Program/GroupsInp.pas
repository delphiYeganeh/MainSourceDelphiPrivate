unit GroupsInp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Buttons, ComCtrls, ExtCtrls, DB, ADODB, StdCtrls,
  Grids, DBGrids, DBActns, ActnList, ActnMan, ToolWin, Mask, DBCtrls,
  ActnCtrls, ActnMenus, YDbgrid, DBTreeView, XPStyleActnCtrls, BaseUnit,
  ExtActns;

type
  TGroupInp = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetEdit1: TDataSetEdit;
    AClose: TAction;
    Action2: TAction;
    AInsert: TAction;
    Apost: TAction;
    Adelete: TAction;
    pnlMain: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    DBGFromORG: TYDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEGroupTitle: TDBEdit;
    DBEGroupNo: TDBEdit;
    DBEeffect: TDBEdit;
    procedure ACloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGFromORGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);

  private

  public

  end;

var
  GroupInp: TGroupInp;

implementation

uses dmu, GroupDialog,YShamsiDate;

{$R *.dfm}

procedure TGroupInp.ACloseExecute(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TGroupInp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TGroupInp.Edit1Change(Sender: TObject);
begin
 dm.Groups.Locate('grouptitle',edit1.Text,[lopartialkey])
end;

procedure TGroupInp.SpeedButton1Click(Sender: TObject);
begin
   if Dm.Groups.State in [dsInsert,dsEdit] then
      Dm.Groups.Post;
   Close;
end;

procedure TGroupInp.FormShow(Sender: TObject);
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

   DBNav_Setup(DBNavigator1);
end;

procedure TGroupInp.DBGFromORGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   DBGrid_SetFocusAfterExit(DBGFromORG,Rect,DataCol,Column,State,clHighlightText);

end;

procedure TGroupInp.DBNavigator1Click(Sender: TObject;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Button: TNavigateBtn);
begin
   DBEGroupNo.SetFocus;
end;

procedure TGroupInp.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   Form_SetShortCut(Self,DBNavigator1,nil,nil,Sender,Key,Shift);
   
   if not(ssShift in shift) And (Key = Vk_Return) then
      SelectNext(ActiveControl,True,True);
end;

procedure TGroupInp.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
   if Button = nbDelete then
   begin
      if ShowMyMessage('�����','��� ���� �� ��� ����� ���� ����Ͽ',mbOKCancel,mtWarning) <> mrok then
         Abort;
   end;
end;

procedure TGroupInp.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 621)  or (NewHeight < 556) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

end.
