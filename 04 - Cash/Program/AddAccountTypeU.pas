unit AddAccountTypeU;

interface

uses
jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB,  Menus, XPStyleActnCtrls;

type
  TFrAddAccountType = class(TYBaseForm)
    ActionManager1: TActionManager;
    AClose: TAction;
    AInsert: TAction;
    Apost: TAction;
    Adelete: TAction;
    Dlist: TDataSource;
    Panel1: TPanel;
    BBInsert: TBitBtn;
    BitBtn1: TBitBtn;
    BBCancel: TBitBtn;
    Panel2: TPanel;
    AccountTypeTree: TDBTreeView;
    procedure ACloseExecute(Sender: TObject);
    procedure AccountTypeTreeDblClick(Sender: TObject);
    procedure AInsertExecute(Sender: TObject);
    procedure AdeleteExecute(Sender: TObject);
    procedure AccountTypeTreeGetImageIndex(Sender: TObject;
      Node: TTreeNode);
    procedure BBCancelClick(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
  public
  end;

var
  FrAddAccountType: TFrAddAccountType;

implementation

uses dmu, EditAccountTypeU, BusinessLayer , YShamsiDate;

{$R *.dfm}
type IPointer =^integer;
procedure TFrAddAccountType.ACloseExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrAddAccountType.AccountTypeTreeDblClick(Sender: TObject);
begin
  inherited;
  AccountTypeTree.DataSource:=nil;
  Dm.AccountType.Edit;

  FrEditAccountType:=TFrEditAccountType.Create(Application);
  FrEditAccountType.ShowModal;

  AccountTypeTree.DataSource:=dm.DAccountType;
end;

procedure TFrAddAccountType.AInsertExecute(Sender: TObject);
var
  SelectedId: integer;
begin
  inherited;
  SelectedId:=dm.AccountTypeAccountTypeID.AsInteger;
  AccountTypeTree.DataSource:=nil;

  Dm.AccountType.Insert;
  Dm.AccountTypeParentID.AsInteger:=SelectedId;
  dm.AccountTypeAccountTypeID.AsInteger:=Get_NewAccountTypeID;
  dm.AccountTypeCreditCuase.AsString:='������ ��';
  dm.AccountTypeDebitCuase.AsString:='����� �� ����';

  FrEditAccountType:=TFrEditAccountType.Create(Application);
  FrEditAccountType.ShowModal;

  AccountTypeTree.DataSource:=dm.DAccountType;
end;

procedure TFrAddAccountType.AdeleteExecute(Sender: TObject);
var
  Selectedid :integer;
  b: boolean;
begin
  inherited;
  Selectedid:=dm.AccountTypeAccountTypeID.AsInteger;

  if Selectedid<15 then
    ShowMessage('��� ����� �� ��� ���� ��� ����') else
  if AccountTypeTree.Selected.HasChildren then
    ShowMessage('��� ����� �����  ��� ������ ���� �� ���� ��� ��� ���� �� �� ��� ����')   else
  if AccountType_Has_Account(Selectedid) then
    ShowMessage('�� ��� ����� ���� ���� ����� ��� ��� ��� ��� ���� �� �� ��� ����') else
  if messageShowString('��� �� ���'+dm.AccountTypeAccountTypeTitle.AsString+'  ����� �����',true)then
    dm.AccountType.Delete;
end;

procedure TFrAddAccountType.AccountTypeTreeGetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  if dm.AccountTypeAccountTypeID.AsInteger in [1..14] then
    node.ImageIndex:=10
  else
    node.ImageIndex:=8;
end;

procedure TFrAddAccountType.BBCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrAddAccountType.BBInsertClick(Sender: TObject);
begin
  inherited;
  AInsert.Execute;
end;

procedure TFrAddAccountType.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Adelete.Execute;
end;

procedure TFrAddAccountType.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.06.09}
  BidiModeToRight(AccountTypeTree);
  //--
end;

end.
