unit AccessInput;

interface

uses
      forms, Classes, ActnList, DB, ADODB, Buttons, Grids, DBGrids,
  YDbgrid, StdCtrls, DBCtrls, Controls,ExtCtrls , Windows,Graphics,SysUtils,Dialogs,baseUnit,
  ExtActns, dbcgrids, ComCtrls, xpWindow, xpBitBtn, MssDBGrid,
  AdvGlowButton;
type
  TAccessForm = class(TMBaseForm)
    Accesses: TADOTable;
    DAccesses: TDataSource;
    DApplicationForms: TDataSource;
    DActionsAccess: TDataSource;
    AccessesID: TWordField;
    AccessesTitle: TWideStringField;
    DActions: TDataSource;
    Actions: TADOTable;
    StringField1: TWideStringField;
    ActionsFormTag: TWordField;
    ActionList1: TActionList;
    aclose: TAction;
    Panel1: TPanel;
    ActionsActionName: TWideStringField;
    Panel3: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    SBChRev: TAdvGlowButton;
    SBChNone: TAdvGlowButton;
    SBChAll: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button1: TAdvGlowButton;
    DBLkCBAccesses: TDBLookupComboBox;
    Label1: TLabel;
    Panel4: TPanel;
    BitBtn1: TAdvGlowButton;
    BBOK: TAdvGlowButton;
    Panel5: TPanel;
    Panel6: TPanel;
    MssDBGrid1: TMssDBGrid;
    MssDBGrid3: TMssDBGrid;
    ApplicationForms: TADOQuery;
    ActionsAccess: TADOQuery;
    ApplicationFormsID: TWordField;
    ApplicationFormsTitle: TWideStringField;
    ActionsAccessAccessID: TWordField;
    ActionsAccessActionName: TWideStringField;
    ActionsAccessFormTag: TWordField;
    ActionsAccessHasAccess: TBooleanField;
    ActionsAccessActionTitle_LK: TStringField;
    YDBGrid1: TYDBGrid;
    DBGrid2: TYDBGrid;
    pnlMain: TPanel;
    procedure AccessesAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure Button1Click(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure acloseExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SBChAllClick(Sender: TObject);
    procedure SBChNoneClick(Sender: TObject);
    procedure SBChRevClick(Sender: TObject);
    procedure MssDBGrid2Enter(Sender: TObject);
    procedure MssDBGrid2Exit(Sender: TObject);
    procedure MssDBGrid3Enter(Sender: TObject);
    procedure MssDBGrid3Exit(Sender: TObject);
    procedure DApplicationFormsDataChange(Sender: TObject; Field: TField);
    procedure DBLkCBAccessesCloseUp(Sender: TObject);
    procedure DBLkCBAccessesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MssDBGrid1DblClick(Sender: TObject);
    procedure YDBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
  private
    { Private declarations }
    procedure OpenDataSet;
  public
    { Public declarations }
  end;

var
  AccessForm: TAccessForm;

implementation

uses Dmu, Types, businessLayer, UMain, UAddDocument, ScanImageFm,YShamsiDate,
  Variants, UaddLetterData;

{$R *.dfm}

Type code=^integer;

procedure TAccessForm.AccessesAfterScroll(DataSet: TDataSet);
begin
 if DataSet.state<>dsinsert then
    ActionsAccess.Filter:= '(accessid='+AccessesID.AsString+') and (FormTag='+ApplicationFormsID.AsString+')';
end;

procedure TAccessForm.FormShow(Sender: TObject);
begin
   inherited;
   Accesses.AfterScroll:=AccessesAfterScroll;
   ApplicationForms.AfterScroll:=AccessesAfterScroll;
   Accesses.First;
   {Ranjbar 89.06.06 ID=3}
   DBLkCBAccesses.KeyValue := AccessesID.AsInteger;
   //---

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
  if Dm.Y_inputQuery('”ÿÕ œ” —”Ì ÃœÌœ','”ÿÕ œ” —”Ì ‘„«—Â' ,s) then
    begin
       i := AccessesID.AsInteger;
       Exec_SaveAs_Accesses(i,s);
       Accesses.Close;
       Accesses.Open;
       ActionsAccess.Close;
       ActionsAccess.Open;
    end;
end;

procedure TAccessForm.BBOKClick(Sender: TObject);
begin
   if (ActionsAccess.State=dsEdit) or (ActionsAccess.State=dsInsert) then
        ActionsAccess.Post;
   Close;
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

procedure TAccessForm.FormCreate(Sender: TObject);
begin
   OpenDataSet;
end;

procedure TAccessForm.BitBtn1Click(Sender: TObject);
begin
   inherited;
   if (ActionsAccess.State=dsEdit) or (ActionsAccess.State=dsInsert) then
        ActionsAccess.Post;

   ProgressBar1.Show;
   ProgressBar1.Position:=1;

   MainForm.RefreshAction.Execute;//MBaseForm «⁄„«· œ” —”Ì Ê«ﬁ⁄ œ—
   ProgressBar1.Position:=2;

   FrAddDocument:=TFrAddDocument.Create(Application);;
   FrAddDocument.RefreshAction.Execute;
   FrAddDocument.Free;
   ProgressBar1.Position:=3;

   ProgressBar1.Position:=4;
   Try
      FmScanImage := TFmScanImage.Create(Nil);
      FmScanImage.RefreshAction.Execute;
   Finally
      FreeAndNil(FmScanImage);
   End;
   //---

   Try
     FraddLetterData := tFraddLetterData.Create(Nil);
     FraddLetterData.RefreshAction.Execute;
   Finally
     FreeAndNil(FraddLetterData);
   End;

   ProgressBar1.Position:=5;

   {Ranjbar 89.06.06 ID=0}
   Exec_insert_newActionsAccess;//Sp
   //---
   Dm.Actions.Close;
   Dm.Actions.Open;

   {Ranjbar 89.06.06 ID=0}
   Actions.Close;
   Actions.Open;
   //---
   
   ProgressBar1.Position:=6;

   ActionsAccess.Close;
   ActionsAccess.Open;

   ProgressBar1.Position:=0;
   ProgressBar1.Hide;

end;

procedure TAccessForm.SBChAllClick(Sender: TObject);
begin
   inherited;
   if ActionsAccess.IsEmpty then
      Exit;

   ActionsAccess.First;
   While not ActionsAccess.Eof do
   begin
      ActionsAccess.Edit;
      if Sender = SBChAll then
         ActionsAccessHasAccess.AsBoolean := True;
      if Sender = SBChNone then
         ActionsAccessHasAccess.AsBoolean := False;
      if Sender = SBChRev then
         ActionsAccessHasAccess.AsBoolean := Not ActionsAccessHasAccess.AsBoolean;;
      ActionsAccess.Post;
      ActionsAccess.Next;
  end;
  if ActionsAccess.State = dsEdit then
     ActionsAccess.Post;
end;

procedure TAccessForm.SBChNoneClick(Sender: TObject);
begin
   inherited;
   SBChAllClick(Sender);
end;

procedure TAccessForm.SBChRevClick(Sender: TObject);
begin
   inherited;
   SBChAllClick(Sender);
end;

procedure TAccessForm.MssDBGrid2Enter(Sender: TObject);
begin
  inherited;
  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TAccessForm.MssDBGrid2Exit(Sender: TObject);
begin
  inherited;
  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TAccessForm.MssDBGrid3Enter(Sender: TObject);
begin
  inherited;
//  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TAccessForm.MssDBGrid3Exit(Sender: TObject);
begin
  inherited;
//  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TAccessForm.DApplicationFormsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not ApplicationForms.IsEmpty then
  begin
    ActionsAccess.Close;
    ActionsAccess.SQL.Clear;
    ActionsAccess.SQL.Add('SELECT * FROM ActionsAccess WHERE FormTag='+IntToStr(ApplicationFormsID.AsInteger));
    ActionsAccess.SQL.Add('and AccessID='+IntToStr(AccessesID.AsInteger));
    ActionsAccess.Open;
  end;
end;

procedure TAccessForm.OpenDataSet;
begin
   Accesses.Close;
   Accesses.Open;
   ApplicationForms.Close;
   ApplicationForms.Open;
   ActionsAccess.Open;
   ActionsAccess.Open;
end;

procedure TAccessForm.DBLkCBAccessesCloseUp(Sender: TObject);
var
  ApplicationFormID:Integer;
begin
  inherited;
   if not ApplicationForms.IsEmpty then ApplicationFormID:=ApplicationFormsID.AsInteger;
   ApplicationForms.Close;
   ApplicationForms.Open;
   ApplicationForms.Locate('ID',ApplicationFormID,[]);
   ActionsAccess.Open;
   ActionsAccess.Open;
end;

procedure TAccessForm.DBLkCBAccessesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DOWN) or (Key=VK_UP) then
      DBLkCBAccessesCloseUp(Application);

end;

procedure TAccessForm.MssDBGrid1DblClick(Sender: TObject);
begin
  inherited;

  ActionsAccess.Edit ;
  ActionsAccess.FieldByName('HasAccess').AsBoolean :=  not ActionsAccess.FieldByName('HasAccess').AsBoolean ;
  ActionsAccess.Post ;

end;

procedure TAccessForm.YDBGrid1CellClick(Column: TColumn);
begin
  inherited;

  ActionsAccess.Edit ;
  ActionsAccess.FieldByName('HasAccess').AsBoolean :=  not ActionsAccess.FieldByName('HasAccess').AsBoolean ;
  ActionsAccess.Post ;

end;

procedure TAccessForm.DBGrid2CellClick(Column: TColumn);
begin
  inherited;

  ShowScrollBar(YDBGrid1.Handle, SB_VERT, True);

end;

end.
