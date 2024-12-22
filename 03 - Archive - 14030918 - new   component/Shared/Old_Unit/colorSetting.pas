unit colorSetting;

interface

uses
   Graphics,Forms, BaseUnit, Dialogs, StdCtrls, Buttons, DBCtrls, Grids,
  DBGrids, Controls, ExtCtrls, ComCtrls, Classes, xpBitBtn, xpWindow,
  ExtActns, ActnList, DB, xpPages;

type
  TColorSettingF = class(TMBaseForm)
    ColorDialog: TColorDialog;
    Pcolor: TPanel;
    BitBtn2: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    SpeedButton1: TSpeedButton;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet3: TxpTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    Panel7: TPanel;
    Label14: TLabel;
    Number: TLabel;
    Label1: TLabel;
    FocusedEdit: TComboBox;
    LetterDbGrid: TDBGrid;
    Panel8: TPanel;
    Label15: TLabel;
    Memo: TDBMemo;
    PArchivedata: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    ToolBar: TTreeView;
    PFromOrg: TPanel;
    FromOrgTree: TTreeView;
    Panel10: TPanel;
    PArchive: TPanel;
    Panel11: TPanel;
    ArchiveTree: TTreeView;
    ReceivedLetterFormPanel: TTreeView;
    procedure FormCreate(Sender: TObject);
    procedure ArchiveTreeClick(Sender: TObject);
    procedure LetterDbGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FocusedEditEnter(Sender: TObject);
    procedure MemoEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ColorSettingF: TColorSettingF;

implementation

uses  Dmu;

{$R *.dfm}

procedure TColorSettingF.FormCreate(Sender: TObject);
begin
inherited;
with dm do
 begin
 ToolBar.Color:=GetValue(1011);
 ReceivedLetterFormPanel.Color:=GetValue(1007);
 LetterDbGrid.Color:=GetValue(1009);
 ToolBar.Color:=GetValue(1011);
 Memo.Color:=GetValue(1012);
 FocusedEdit.Color:=GetValue(1013);
 ArchiveTree.Color:=GetValue(1014);
 FromOrgTree.Color:=GetValue(1016);
end;
end;

procedure TColorSettingF.ArchiveTreeClick(Sender: TObject);
begin
 Pcolor.color:=TTreeView(Sender).Color;
end;

procedure TColorSettingF.LetterDbGridMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if ssleft in shift  then
 Pcolor.color:=TDBGrid(Sender).Color;
 
end;

procedure TColorSettingF.BitBtn1Click(Sender: TObject);
begin
with dm do
 begin
 setvalue(1007,ReceivedLetterFormPanel.Color);
 setvalue(1009,LetterDbGrid.Color);
 setvalue(1011,ToolBar.Color);
 setvalue(1012,Memo.Color);
 setvalue(1013,FocusedEdit.Color);
 FocusedColor:=FocusedEdit.Color;
 setvalue(1014,ArchiveTree.Color);
 setvalue(1016,FromOrgTree.Color);
 SetValue(1011,ToolBar.Color);
end;
close;
end;

procedure TColorSettingF.SpeedButton1Click(Sender: TObject);
begin
 if ColorDialog.Execute then
  begin
   try
    TDBGrid(ActiveControl).Color:=ColorDialog.Color;
   except
   end;
   try
    TDBMemo(ActiveControl).Color:=ColorDialog.Color;
   except
   end;
   try
    TEdit(ActiveControl).Color:=ColorDialog.Color;
   except
   end;
   try
    TTreeView(ActiveControl).Color:=ColorDialog.Color;
   except
   end;
end;
end;

procedure TColorSettingF.FocusedEditEnter(Sender: TObject);
begin
 Pcolor.color:=TEdit(Sender).Color;
end;

procedure TColorSettingF.MemoEnter(Sender: TObject);
begin
 Pcolor.color:=TDBMemo(Sender).Color;
end;

procedure TColorSettingF.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
