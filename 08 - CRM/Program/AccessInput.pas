unit AccessInput;

interface

uses
      forms, Classes, ActnList, DB, ADODB, Buttons, Grids, DBGrids,
  YDbgrid, StdCtrls, DBCtrls, Controls,ExtCtrls , Windows,Graphics,SysUtils,Dialogs,baseUnit,
  ExtActns, dbcgrids, ComCtrls,  xpBitBtn, Menus;
type
  TAccessForm = class(TMBaseForm)
    DActionsAccess: TDataSource;
    DActions: TDataSource;
    Actions: TADOTable;
    ActionsAccess: TADOStoredProc;
    ActionsAccessAccessID: TWordField;
    ActionsAccessHasAccess: TBooleanField;
    ActionsAccessActionTitle: TWideStringField;
    ActionList1: TActionList;
    aclose: TAction;
    ActionsAccessActionName: TWideStringField;
    ActionsAccessFormID: TWordField;
    ActionsActionName: TWideStringField;
    ActionsFormID: TWordField;
    ActionsTitle: TWideStringField;
    ActionsAccessTitle: TWideStringField;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    edtTitle: TEdit;
    rdgAccessFilter: TRadioGroup;
    Panel1: TPanel;
    Label1: TLabel;
    DBLkCBAccesses: TDBLookupComboBox;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BBOK: TBitBtn;
    Panel4: TPanel;
    SBChAll: TSpeedButton;
    SBChNone: TSpeedButton;
    SBChRev: TSpeedButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBChAllClick(Sender: TObject);
    procedure SBChNoneClick(Sender: TObject);
    procedure SBChRevClick(Sender: TObject);
    procedure edtTitleChange(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccessForm: TAccessForm;

implementation

uses Dmu, Types, businessLayer, MainU;

{$R *.dfm}
      type code=^integer;

procedure TAccessForm.AccessesAfterScroll(DataSet: TDataSet);
begin
    with ActionsAccess do
     begin
      close;
      Parameters.ParamByName('@accessID').Value:=dm.AccessesID.AsInteger;
      Open;
     end;

end;

procedure TAccessForm.FormShow(Sender: TObject);
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

   Dm.Accesses.AfterScroll := AccessesAfterScroll;
   Dm.Accesses.First;
   DBLkCBAccesses.KeyValue := Dm.AccessesID.AsInteger;
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
Var
   S: String;
   i: byte;
begin
   if dm.Y_inputQuery('”ÿÕ œ” —”Ì ÃœÌœ','”ÿÕ œ” —”Ì ‘„«—Â' ,s) then
   begin
      i := Dm.AccessesID.AsInteger;
      Exec_SaveAs_Accesses(i,s);
      Dm.Accesses.Close;
      Dm.Accesses.Open;
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
   if messageShowString('',True) then
    begin
     Exec_delete_Accesses(dm.AccessesID.AsInteger);
     dm.Accesses.Close;
     dm.Accesses.Open;
    end;


end;

procedure TAccessForm.DBGrid2Enter(Sender: TObject);
begin
ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TAccessForm.FormCreate(Sender: TObject);
begin
ActionsAccess.Open;

end;



procedure TAccessForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ProgressBar1.Show;
  ProgressBar1.Position:=1;

  mainform.RefreshAction.Execute; //ActionList ﬂ‰ —·
  ProgressBar1.Position:=5;

  Exec_insert_newActionsAccess;
  ProgressBar1.Position:=8;

  ActionsAccess.Close;
  Actions.Close;
  Actions.Open;
  ActionsAccess.Open;
  dm.Accesses.Next;
  dm.Accesses.Prior;
  ProgressBar1.Position:=0;
  ProgressBar1.Hide;
     
end;

procedure TAccessForm.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
   inherited;
   if ActionsAccessHasAccess.AsBoolean then
      Color:= clWindow //$00FFEFDF
   else
      Color := $00AEAEFF;

end;

procedure TAccessForm.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ActionsAccess.Edit;
  ActionsAccessHasAccess.AsBoolean := not ActionsAccessHasAccess.AsBoolean;
  ActionsAccess.Post;
end;

procedure TAccessForm.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
   inherited;
   {
   if ActionsAccessHasAccess.AsBoolean then
      F.Style:=f.Style-[fsBold]
   else
      F.Style:=f.Style+[fsBold];}
end;

procedure TAccessForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    dm.Accesses.AfterScroll:=nil;

  MBaseForm.messageShowString('·ÿ›« ÃÂ  «⁄„«·  €ÌÌ—«  ° «“ ‰—„ «›“«— Œ«—Ã Ê œÊ»«—Â Ê«—œ ‘ÊÌœ', False);
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

procedure TAccessForm.edtTitleChange(Sender: TObject);
var StrFilter,Access:String;
begin
  inherited;

     StrFilter := '';
    if edtTitle.Text <> '' then
        StrFilter := 'title like ''%'+trim(edtTitle.Text)+'%''';

    if rdgAccessFilter.ItemIndex <> 0 then
    begin
      if rdgAccessFilter.ItemIndex = 1 then Access := '  HasAccess = true '
                    else Access := '  HasAccess = false ';

        if StrFilter <> '' then
                StrFilter := StrFilter + ' and '+Access
          else StrFilter := Access;
   end;

 with ActionsAccess do
    if StrFilter <> '' then
        begin
            Filtered := False;
            Filter := StrFilter ;
            Filtered := true;
          end
        else
        begin
            Filter := '';
            Filtered := False;
        end;
end;

procedure TAccessForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 451)  or (NewHeight < 536) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

end.
