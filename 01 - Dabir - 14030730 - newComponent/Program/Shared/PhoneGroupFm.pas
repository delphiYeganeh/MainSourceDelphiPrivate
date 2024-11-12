unit PhoneGroupFm;

interface

uses
  BaseUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, Grids, DBGrids, YDbgrid,
  ExtCtrls,  ExtActns, ActnList, DB, Menus, AppEvnts, AdvGlowButton;

type
  TFmPhoneGroup = class(TMBaseForm)
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    DBN1: TDBNavigator;
    Panel4: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    xpBitBtn1: TAdvGlowButton;
    DBETitle: TDBEdit;
    Label2: TLabel;
    DBECode: TDBEdit;
    pnlMain: TPanel;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBN1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPhoneGroup: TFmPhoneGroup;

implementation

uses PhoneGroupDM , YShamsiDate , DMU;

{$R *.dfm}

procedure TFmPhoneGroup.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFmPhoneGroup.FormShow(Sender: TObject);
begin
  inherited;
  With DMPhoneGroup do
  begin
    QrPhoneGroup.Close;
    QrPhoneGroup.Parameters.ParamByName('UsersID').Value := _Userid;
    QrPhoneGroup.Open;
    QrPhoneGroup.Last;
  end;
  DBNav_Setup(DBN1);
end;

procedure TFmPhoneGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DMPhoneGroup.QrPhoneGroup.State in [dsEdit,dsInsert] then
  begin
    MBaseForm.messageShowString('»«‰ò «ÿ·«⁄« Ì œ— Õ«·  ÊÌ—«Ì‘ „Ì »«‘œ . ·ÿ›« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ', False);
    Abort;
  end;
  DMPhoneGroup.QrPhoneGroup.Close;
end;

procedure TFmPhoneGroup.DBN1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  YDBGrid1.SetFocus;

  if Button in [nbInsert,nbEdit] then
    DBETitle.SetFocus;
end;

procedure TFmPhoneGroup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Form_SetShortCut(Self, DBN1, nil, nil, Sender, Key, Shift);
end;

end.
