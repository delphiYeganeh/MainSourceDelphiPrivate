 unit AddFinancialNoteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UemsVCL, DBCtrls, StdCtrls, Mask, ComCtrls, Buttons, Grids,
  DBGrids, DBActns, ActnList, ActnMan, DB, ADODB, ExtCtrls,
  XPStyleActnCtrls;

type
  TFrAddFinancialNote = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ActionManager: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Button1: TButton;
    Action1: TAction;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    amount: TLabel;
    Button2: TButton;
    xpBitBtn1: TBitBtn;
    Panel1: TPanel;
    xpBitBtn2: TBitBtn;
    Button3: TButton;
    Panel2: TPanel;
    Label10: TLabel;
    SearchEdit: TEdit;
    FinancialType: TDBLookupComboBox;
    CbFinancialType: TCheckBox;
    Panel3: TPanel;
    Button4: TButton;
    BitBtn1: TBitBtn;
    DBEMatureDate: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure DataSetInsert1Execute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddFinancialNote: TFrAddFinancialNote;

implementation

uses DMU, YShamsiDate,   AddattachmentU, BusinessLayer,
  PrintFinancialNoteU;

{$R *.dfm}

procedure TFrAddFinancialNote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,DBGrid1);
end;

procedure TFrAddFinancialNote.BitBtn1Click(Sender: TObject);
begin
   _FinancialNoteid:=-1;
 if PageControl1.ActivePageIndex=1 then
  if dm.Select_FinancialNote.Active then
  _FinancialNoteid:=dm.Select_FinancialNoteFinancialNoteID.AsInteger;

 if PageControl1.ActivePageIndex=0 then
  if dm.Select_FinancialNote_Like.Active then
   _FinancialNoteid:=dm.Select_FinancialNote_LikeFinancialNoteID.AsInteger;

 close;
end;


procedure TFrAddFinancialNote.DBEdit4Change(Sender: TObject);
begin
//  try amount.Caption:=Bill(StrToInt64(  DeleteComma(TDBEdit(sender).Text)  ))+' —Ì«·'; except end;
  try amount.Caption:=Bill(StrToInt64(  DeleteComma(TDBEdit(sender).Text)  ))+' '+Get_SystemSetting('EdtMoneyUnit')+' '; except end;
end;

procedure TFrAddFinancialNote.Button2Click(Sender: TObject);
begin
FrPrintFinancialNote:=TFrPrintFinancialNote.Create(Application);
FrPrintFinancialNote.ShowModal;
end;

procedure TFrAddFinancialNote.xpBitBtn1Click(Sender: TObject);
begin
FrAddAttachment:=TFrAddAttachment.Create(Application);
FrAddAttachment.DocumnetID:=dm.Select_FinancialNoteFinancialNoteID.AsInteger;
FrAddAttachment.documentTypeID:=3;
FrAddAttachment.ShowModal;
Open_LoanAttachment(dm.Select_LoanLoanID.AsInteger);

end;

procedure TFrAddFinancialNote.xpBitBtn2Click(Sender: TObject);
begin
Open_FinancialNote(dm.Select_FinancialNote_LikeFinancialNoteID.AsInteger);
PageControl1.ActivePageIndex:=1;
end;

procedure TFrAddFinancialNote.SearchEditChange(Sender: TObject);
begin
 if not CbFinancialType.Checked then
  Open_FinancialNote_Like(0,SearchEdit.Text)
else
  Open_FinancialNote_Like(FinancialType.KeyValue,SearchEdit.Text)
end;

procedure TFrAddFinancialNote.DataSetInsert1Execute(Sender: TObject);
begin
  if not Dm.Select_FinancialNote.Active then Open_FinancialNote(0);
  dm.Select_FinancialNote.Insert;
end;

procedure TFrAddFinancialNote.Button3Click(Sender: TObject);
begin
   PageControl1.ActivePageIndex:=1;
   DataSetInsert1.Execute;
end;

procedure TFrAddFinancialNote.TabSheet1Show(Sender: TObject);
begin
SearchEdit.SetFocus;
end;

procedure TFrAddFinancialNote.Button4Click(Sender: TObject);
begin
_FinancialNoteid:=-1;
close;
end;

procedure TFrAddFinancialNote.FormCreate(Sender: TObject);
begin
Open_FinancialNote(0);

end;

procedure TFrAddFinancialNote.FormShow(Sender: TObject);
begin
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,DBGrid1);
end;

end.
