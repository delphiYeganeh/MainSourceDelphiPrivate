unit AccessInput;

interface

uses
      forms, Classes, ActnList, DB, ADODB, Buttons, Grids, DBGrids,
  YDbgrid, StdCtrls, DBCtrls, Controls,ExtCtrls , Windows,Graphics,SysUtils,Dialogs,baseUnit,
  ExtActns, dbcgrids, ComCtrls, xpWindow, xpBitBtn;
type
  TAccessForm = class(TMBaseForm)
    Accesses: TADOTable;
    ApplicationForms: TADOTable;
    DAccesses: TDataSource;
    DApplicationForms: TDataSource;
    DActionsAccess: TDataSource;
    AccessesID: TWordField;
    AccessesTitle: TWideStringField;
    ApplicationFormsID: TWordField;
    ApplicationFormsTitle: TWideStringField;
    DActions: TDataSource;
    Actions: TADOTable;
    WordField1: TWordField;
    StringField1: TWideStringField;
    ActionsFormTag: TWordField;
    ActionsAccess: TADOTable;
    ActionsAccessAccessID: TWordField;
    ActionsAccessActionID: TIntegerField;
    ActionsAccessHasAccess: TBooleanField;
    ActionsAccessFormTag: TWordField;
    ActionsAccessActionTitle: TWideStringField;
    BBOK: TxpBitBtn;
    ActionList1: TActionList;
    aclose: TAction;
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
    procedure AccessesAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure Button1Click(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure acloseExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure YDBGrid1NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccessForm: TAccessForm;

implementation

uses Dmu, Types, businessLayer, UMain, EnteredLetterInputF,
  ExitedLetterInputF, ReCommiteU;

{$R *.dfm}
      type code=^integer;

procedure TAccessForm.AccessesAfterScroll(DataSet: TDataSet);
begin
 if DataSet.state<>dsinsert then  ActionsAccess.Filter:= '(accessid='+AccessesID.AsString+') and (FormTag='+ApplicationFormsID.AsString+')';
end;

procedure TAccessForm.FormShow(Sender: TObject);
begin
  Accesses.AfterScroll:=AccessesAfterScroll;
  ApplicationForms.AfterScroll:=AccessesAfterScroll;
 Accesses.First;

end;

procedure TAccessForm.DBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
if ActionsAccessHasAccess.AsBoolean then
 Color:=$0080FFFF
else
 Color:=clMaroon;
end;

procedure TAccessForm.Button1Click(Sender: TObject);
var s: string;
 i: byte;
begin
  if dm.Y_inputQuery('”ÿÕ œ” —”Ì ÃœÌœ','”ÿÕ œ” —”Ì ‘„«—Â' ,s) then
    begin

     i:=AccessesID.AsInteger;
     Exec_SaveAs_Accesses(i,s);
     Accesses.Close;
     Accesses.Open;
     ActionsAccess.Close;
     ActionsAccess.Open;
    end;
end;

procedure TAccessForm.BBOKClick(Sender: TObject);
begin
 close;
end;

procedure TAccessForm.acloseExecute(Sender: TObject);
begin
close;
end;

procedure TAccessForm.Button2Click(Sender: TObject);
begin
   if messageShow(39,True) then
    begin
     Exec_delete_Accesses(AccessesID.AsInteger);
     Accesses.Close;
     Accesses.Open;
    end;


end;

procedure TAccessForm.DBGrid2Enter(Sender: TObject);
begin
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TAccessForm.FormCreate(Sender: TObject);
begin
ApplicationForms.Open;
ActionsAccess.Open;
Accesses.Open;
end;



procedure TAccessForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ProgressBar1.Show;
  ProgressBar1.Position:=1;

  mainform.RefreshAction.Execute;
  ProgressBar1.Position:=2;

  ReceivedLetterInputForm:=TReceivedLetterInputForm.Create(Application);;
  ReceivedLetterInputForm.RefreshAction.Execute;
  ReceivedLetterInputForm.Free;
  ProgressBar1.Position:=3;

  SentLetterInputForm:=TSentLetterInputForm.Create(Application);;
  SentLetterInputForm.RefreshAction.Execute;
  SentLetterInputForm.Free;
  ProgressBar1.Position:=4;

  ReCommite:=TReCommite.Create(Application);;
  ReCommite.RefreshAction.Execute;
  ReCommite.Free;
  ProgressBar1.Position:=5;
  
  Exec_insert_newActionsAccess;
  ProgressBar1.Position:=6;

  ActionsAccess.Close;
  Actions.Close;
  Actions.Open;
  ActionsAccess.Open;
  Accesses.Next;
  Accesses.Prior;   
  ProgressBar1.Position:=0;
  ProgressBar1.Hide;
     
end;

procedure TAccessForm.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
if ActionsAccessHasAccess.AsBoolean then
 color:= $00FFEFDF else color:=$00AEAEFF;
end;

procedure TAccessForm.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ActionsAccess.Edit;
  ActionsAccessHasAccess.AsBoolean:=not   ActionsAccessHasAccess.AsBoolean;
end;

procedure TAccessForm.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
if ActionsAccessHasAccess.AsBoolean then
 F.Style:=f.Style-[fsBold] else F.Style:=f.Style+[fsBold];

end;

end.
