unit marketer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Buttons, ComCtrls, ExtCtrls, DB, ADODB, StdCtrls,
  Grids, DBGrids, DBActns, ActnList, ActnMan, ToolWin, Mask, DBCtrls,
  ActnCtrls, ActnMenus, YDbgrid, DBTreeView, XPStyleActnCtrls, BaseUnit,
  ExtActns, Menus;

type
  TmarketerInp = class(TMBaseForm)
    ActionManager1: TActionManager;
    DataSetEdit1: TDataSetEdit;
    AClose: TAction;
    Action2: TAction;
    AInsert: TAction;
    Apost: TAction;
    Adelete: TAction;
    Panel2: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    Panel3: TPanel;
    DBGFromORG: TYDBGrid;
    Panel1: TPanel;
    SBClose: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    Label1: TLabel;
    DBEMarketerNo: TDBEdit;
    Label3: TLabel;
    DBEMarketerTitle: TDBEdit;
    Label4: TLabel;
    DBEPPercent: TDBEdit;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DBCheckBox1: TDBCheckBox;
    procedure ACloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure SBCloseClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGFromORGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  private

  public

  end;

var
  marketerInp: TmarketerInp;

implementation

uses Dmu , GroupDialog , YShamsiDate;

{$R *.dfm}

procedure TmarketerInp.ACloseExecute(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TmarketerInp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TmarketerInp.Edit1Change(Sender: TObject);
begin
   Dm.Marketer.Locate('marketertitle',edit1.Text,[lopartialkey]);
end;

procedure TmarketerInp.SBCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TmarketerInp.DBNavigator1Click(Sender: TObject;Button: TNavigateBtn);
begin
   if Button = nbPost then
   begin
      if Dm.Groups.State in [dsInsert ,dsEdit] then
         Dm.Groups.Post;
   end;
   DBEMarketerNo.SetFocus;
end;

procedure TmarketerInp.DBGFromORGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   DBGrid_SetFocusAfterExit(DBGFromORG,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TmarketerInp.FormShow(Sender: TObject);
begin
   DBNav_Setup(DBNavigator1);
end;

procedure TmarketerInp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Form_SetShortCut(Self,DBNavigator1,nil,nil,Sender,Key,Shift);
   
   if not(ssShift in shift) And (Key = Vk_Return) then
      SelectNext(ActiveControl,True,True);
end;

procedure TmarketerInp.Button1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TmarketerInp.N1Click(Sender: TObject);
begin
  inherited;
    Dm.Marketer.Close;
    Dm.Marketer.SQL.Clear;
    Dm.Marketer.SQL.Add('SELECT * FROM marketer');
    Dm.Marketer.SQL.Add('WHERE IsActive_=1');
    Dm.Marketer.Open;
end;

procedure TmarketerInp.N2Click(Sender: TObject);
begin
  inherited;
    Dm.Marketer.Close;
    Dm.Marketer.SQL.Clear;
    Dm.Marketer.SQL.Add('SELECT * FROM marketer');
    Dm.Marketer.SQL.Add('WHERE IsActive_=0');
    Dm.Marketer.Open;

end;

end.