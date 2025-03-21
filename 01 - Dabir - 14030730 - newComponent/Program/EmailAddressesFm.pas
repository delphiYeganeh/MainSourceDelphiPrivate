unit EmailAddressesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, ComCtrls, Menus,
  ExtActns, ActnList, DB, Mask, Buttons, Grids, DBGrids, YDbgrid, AppEvnts,
  AdvGlowButton;

type
  TFmEmailAddresses = class(TMBaseForm)
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label4: TLabel;
    ComboBox1: TDBComboBox;
    ComboBox2: TDBComboBox;
    Label8: TLabel;
    YDBGrid1: TYDBGrid;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit10: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    SBExit: TAdvGlowButton;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure SBExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEmailAddresses: TFmEmailAddresses;

implementation

uses EmailsDM, YShamsiDate, Dmu;

{$R *.dfm}

procedure TFmEmailAddresses.FormCreate(Sender: TObject);
begin
   inherited;
   DBNav_Setup(DBNavigator1);
   Keyboard_English;
end;

procedure TFmEmailAddresses.YDBGrid1DblClick(Sender: TObject);
begin
   inherited;
   PageControl.ActivePageIndex:=0;
end;

procedure TFmEmailAddresses.PageControlChange(Sender: TObject);
begin
   inherited;
   if PageControl.TabIndex = 0 then
      DBNavigator1.Visible := True
   else
      DBNavigator1.Visible := False;
end;

procedure TFmEmailAddresses.SBExitClick(Sender: TObject);
begin
   inherited;
   Close;
end;

end.
