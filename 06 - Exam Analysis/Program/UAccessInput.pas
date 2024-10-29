unit UAccessInput;

interface

uses
      forms, Classes, ActnList, DB, ADODB, Buttons, Grids, DBGrids,
  YDbgrid, StdCtrls, DBCtrls, Controls,ExtCtrls , Windows,Graphics,SysUtils,Dialogs,baseUnit,
  ExtActns, dbcgrids, ComCtrls, xpWindow, xpBitBtn;
type
  TFrAccess = class(TMBaseForm)
    sys_ActionGroup: TADOTable;
    Dsys_ActionGroup: TDataSource;
    DSelect_ActionAccess_By_ActionGroupID: TDataSource;
    sys_Action: TADOTable;
    BBOK: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    ProgressBar1: TProgressBar;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    sys_ActionActionID: TIntegerField;
    sys_ActionActionName: TStringField;
    sys_ActionActionCaption: TWideStringField;
    sys_ActionActionGroupID: TSmallintField;
    sys_ActionGroupActionGroupID: TSmallintField;
    sys_ActionGroupActionGroupTitle: TWideStringField;
    Select_ActionAccess_By_ActionGroupID: TADOStoredProc;
    Select_ActionAccess_By_ActionGroupIDActionAccessID: TAutoIncField;
    Select_ActionAccess_By_ActionGroupIDAccessID: TSmallintField;
    Select_ActionAccess_By_ActionGroupIDActionID: TSmallintField;
    Select_ActionAccess_By_ActionGroupIDHasAccess: TBooleanField;
    Select_ActionAccess_By_ActionGroupIDActionTitle: TStringField;
    procedure AccessesAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure YDBGrid1NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAccess: TFrAccess;

implementation

uses dmu, UMainForm, BusinessLayer;


{$R *.dfm}
      type code=^integer;

procedure TFrAccess.AccessesAfterScroll(DataSet: TDataSet);
begin
with Select_ActionAccess_By_ActionGroupID ,Parameters do
 begin
  close;
  ParamByName('@accessID').Value:=dm.sys_AccessAccessID.Value;
  ParamByName('@ActionGroupID').Value:=sys_ActionGroupActionGroupID.Value ;
  open;
 end;
end;

procedure TFrAccess.FormShow(Sender: TObject);
begin
  inherited;
  dm.sys_Access.First;

end;

procedure TFrAccess.Button1Click(Sender: TObject);
var s: string;
 i: byte;
begin
  if dm.Y_inputQuery('”ÿÕ œ” —”Ì ÃœÌœ','”ÿÕ œ” —”Ì ‘„«—Â' ,s) then
    begin

     i:=dm.sys_AccessAccessID.AsInteger;
     Exec_SaveAs_Accesses(i,s);
     dm.sys_Access.Close;
     dm.sys_Access.Open;
    end;
end;

procedure TFrAccess.BBOKClick(Sender: TObject);
begin
 close;
end;

procedure TFrAccess.Button2Click(Sender: TObject);
begin
   if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',True) then

    begin
     Exec_delete_Accesses(dm.sys_AccessAccessID.AsInteger);
     dm.sys_Access.Close;
     dm.sys_Access.Open;
    end;


end;

procedure TFrAccess.DBGrid2Enter(Sender: TObject);
begin
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TFrAccess.FormCreate(Sender: TObject);
begin
dm.sys_Access.Open;
sys_ActionGroup.Open;
dm.sys_Access.AfterScroll:=AccessesAfterScroll;
sys_ActionGroup.AfterScroll:=AccessesAfterScroll;
end;



procedure TFrAccess.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ProgressBar1.Show;
  ProgressBar1.Position:=1;

  MainForm.RefreshAction.Execute;
  ProgressBar1.Position:=2;

  Exec_insert_New_AccessAction;
  ProgressBar1.Position:=6;

  sys_Action.Close;
  sys_Action.Open;
  dm.sys_Access.Next;
  dm.sys_Access.Prior;
  ProgressBar1.Position:=0;
  ProgressBar1.Hide;
     
end;

procedure TFrAccess.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
if Select_ActionAccess_By_ActionGroupIDHasAccess.AsBoolean then
 Color:=$00FFEFDF
else
 Color:=$00AEAEFF;
end;

procedure TFrAccess.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Select_ActionAccess_By_ActionGroupID.Edit;
  Select_ActionAccess_By_ActionGroupIDHasAccess.AsBoolean:=not   Select_ActionAccess_By_ActionGroupIDHasAccess.AsBoolean;
end;

procedure TFrAccess.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
if Select_ActionAccess_By_ActionGroupIDHasAccess.AsBoolean then
 F.Style:=f.Style-[fsBold] else F.Style:=f.Style+[fsBold];

end;

procedure TFrAccess.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
dm.sys_Access.AfterScroll:=nil;
sys_ActionGroup.AfterScroll:=nil;

end;

end.
