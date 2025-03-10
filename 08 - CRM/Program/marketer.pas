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
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnlMain: TPanel;
    Panel3: TPanel;
    DBGFromORG: TYDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEMarketerNo: TDBEdit;
    DBEMarketerTitle: TDBEdit;
    DBEPPercent: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    SBClose: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBCheckBox2: TDBCheckBox;
    Marketer: TADOQuery;
    MarketerMarketerID: TAutoIncField;
    MarketerMarketerNo: TStringField;
    MarketerMarketerTitle: TWideStringField;
    MarketerTag: TBooleanField;
    MarketerPPercent: TWordField;
    MarketerOrgID: TIntegerField;
    MarketerIsActive_: TBooleanField;
    MarketerMarketerIsDone: TBooleanField;
    t1: TMenuItem;
    MarketerOrderByID: TIntegerField;
    Label5: TLabel;
    DBEdit1: TDBEdit;
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
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure t1Click(Sender: TObject);
    procedure DBGFromORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);

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
   Dm.Marketer.Close;
   Dm.Marketer.Open;
   Dm.MarketerALL.Close;
   Dm.MarketerALL.Open;
end;

procedure TmarketerInp.Edit1Change(Sender: TObject);
begin
   Marketer.Locate('marketertitle',edit1.Text,[lopartialkey]);
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
  t1Click (self);
  
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

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
    Marketer.Close;
    Marketer.SQL.Clear;
    Marketer.SQL.Add('SELECT * FROM Marketer');
    Marketer.SQL.Add('WHERE IsActive_=1');
    Marketer.Open;
end;

procedure TmarketerInp.N2Click(Sender: TObject);
begin
  inherited;
    Marketer.Close;
    Marketer.SQL.Clear;
    Marketer.SQL.Add('SELECT * FROM Marketer');
    Marketer.SQL.Add('WHERE IsActive_=0');
    Marketer.Open;

end;

procedure TmarketerInp.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 599)  or (NewHeight < 461) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TmarketerInp.t1Click(Sender: TObject);
begin
  inherited;
    Marketer.Close;
    Marketer.SQL.Clear;
    Marketer.SQL.Add(' SELECT * FROM Marketer ');
    Marketer.Open;
end;

procedure TmarketerInp.DBGFromORGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   Color:= clWindow;
   try

     if MarketerMarketerIsDone.AsBoolean THEN
         Color:= $00DDDDFF ;

   except
   end;
end;

end.
