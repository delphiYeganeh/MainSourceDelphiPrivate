 unit AddAccountU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, StdCtrls, Mask, DBCtrls, ActnList, Buttons,
  DBActns, ActnMan, XPStyleActnCtrls, Grids, DBGrids, YDbgrid,
  ComCtrls, xpPages, UemsVCL, Menus, DB, ADODB, SolarCalendarPackage;

type
  TFrAddAccount = class(TYBaseForm)
    ActionManager1: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetNext1: TDataSetNext;
    DataSetPrior1: TDataSetPrior;
    Panel1: TPanel;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    BankPanel: TPanel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TSolarDatePicker;
    procedure AExitExecute(Sender: TObject);
    procedure DataSetInsert1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddAccount: TFrAddAccount;

implementation

uses DMU, BusinessLayer,YShamsiDate;

{$R *.dfm}

procedure TFrAddAccount.AExitExecute(Sender: TObject);
begin
  inherited;
  Dm.Select_Cash_Accounts.Close;
  Dm.Select_Cash_Accounts.Open;
  Close;
end;

procedure TFrAddAccount.DataSetInsert1Execute(Sender: TObject);
begin
  inherited;
  Dm.Select_Account.Insert;
  Dm.Select_AccountContactID.AsInteger:=0;
end;

procedure TFrAddAccount.FormCreate(Sender: TObject);
begin
  inherited;
  dm.AccountType.Filtered:=True;
  //dm.AccountType.Filter:='(AccountTypeID<>10) and (AccountTypeID<>11) and (AccountTypeID<>12) and (AccountTypeID<>7) and (AccountTypeID<>1) and (AccountTypeID<>13)';
  dm.AccountType.Filter:='(AccountTypeID<>10) and (AccountTypeID<>11) and (AccountTypeID<>12) and (AccountTypeID<>1) and (AccountTypeID<>13)';
end;

procedure TFrAddAccount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.AccountType.Filter:='';
  dm.AccountType.Filtered:=false;
end;

procedure TFrAddAccount.DBLookupComboBox2Click(Sender: TObject);
begin
  inherited;
  if dm.Select_Account.State=dsinsert then
    Dm.Select_AccountAccountNo.AsString:=Get_NewAccountNo(Dm.Select_AccountAccountTypeID.AsInteger);
end;

procedure TFrAddAccount.DBEdit3Exit(Sender: TObject);
begin
   inherited;
   YBaseForm.TEditExit(Sender);
end;

end.
