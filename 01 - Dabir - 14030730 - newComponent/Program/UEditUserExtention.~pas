unit UEditUserExtention;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB,FileCtrl, StdCtrls, ExtActns, XPStyleActnCtrls, Dialogs,
   xpBitBtn, ADODB, Mask, DBCtrls, UemsVCL, Menus, ExtCtrls, AppEvnts,
  AdvGlowButton, xpPanel;

type
  TFrLetterHistory = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    DBGrid2: TYDBGrid;
    Get_letterHistory_by_LetterID: TADOStoredProc;
    Get_letterHistory_by_LetterIDLetterID: TAutoIncField;
    Get_letterHistory_by_LetterIDsecTitle: TWideStringField;
    Get_letterHistory_by_LetterIDIndicatorID: TIntegerField;
    Get_letterHistory_by_LetterIDIncommingNO: TWideStringField;
    Get_letterHistory_by_LetterIDIncommingDate: TWideStringField;
    Get_letterHistory_by_LetterIDMemo: TWideStringField;
    Get_letterHistory_by_LetterIDSenderTitle: TWideStringField;
    Get_letterHistory_by_LetterIDDeliverTitle: TWideStringField;
    Get_letterHistory_by_LetterIDLetterTypeTitle: TWideStringField;
    Get_letterHistory_by_LetterIDLetterRecommites: TWideStringField;
    Get_letterHistory_by_LetterIDregistrationdate: TStringField;
    Get_letterHistory_by_LetterIDCenterNo: TWideStringField;
    Get_letterHistory_by_LetterIDCenterDate: TStringField;
    pnlMain: TPanel;
    Panel1: TxpPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    Label3: TLabel;
    DBEdit1: TDBMemo;
    Label1: TLabel;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  LetterId :integer;
    { Public declarations }
  end;

var
  FrLetterHistory: TFrLetterHistory;

implementation

uses  Dmu, businessLayer;

{$R *.dfm}

procedure TFrLetterHistory.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrLetterHistory.Action1Execute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrLetterHistory.FormShow(Sender: TObject);
begin
  inherited;
  with Get_letterHistory_by_LetterID do
  begin
    close;
    Parameters.ParamByName('@letterid').Value:=letterid;
    Open;
  end;
end;

end.
