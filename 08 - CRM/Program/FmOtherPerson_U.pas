unit FmOtherPerson_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, YDbgrid, DB,
  ADODB, BaseUnit, ExtActns, ActnList, Buttons;

type
  TFmOtherPerson = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Select_Person_By_CustomerID: TADOStoredProc;
    Select_Person_By_CustomerIDPersonID: TAutoIncField;
    Select_Person_By_CustomerIDCustomerID: TIntegerField;
    Select_Person_By_CustomerIDFirstName: TWideStringField;
    Select_Person_By_CustomerIDLastName: TWideStringField;
    Select_Person_By_CustomerIDEmailAddress: TWideStringField;
    Select_Person_By_CustomerIDHomePhone: TWideStringField;
    Select_Person_By_CustomerIDWorkPhone: TWideStringField;
    Select_Person_By_CustomerIDMobilePhone: TWideStringField;
    Select_Person_By_CustomerIDFaxNumber: TWideStringField;
    Select_Person_By_CustomerIDNotes: TWideStringField;
    Select_Person_By_CustomerIDJobTitle: TWideStringField;
    DSelect_Person_By_CustomerID: TDataSource;
    YDBGrid1: TYDBGrid;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEFirstName: TDBEdit;
    DBELastName: TDBEdit;
    DBEEmailAddress: TDBEdit;
    DBEHomePhone: TDBEdit;
    DBEWorkPhone: TDBEdit;
    DBEMobilePhone: TDBEdit;
    DBEFaxNumber: TDBEdit;
    DBEJobTitle: TDBEdit;
    DBENotes: TDBEdit;
    DBNavigator1: TDBNavigator;
    SBClose: TSpeedButton;
    procedure Select_Person_By_CustomerIDAfterInsert(DataSet: TDataSet);
    procedure DBEEmailAddressEnter(Sender: TObject);
    procedure DBEEmailAddressExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBCloseClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmOtherPerson: TFmOtherPerson;

implementation

Uses dmu, YShamsiDate;

{$R *.dfm}

procedure TFmOtherPerson.Select_Person_By_CustomerIDAfterInsert(
  DataSet: TDataSet);
begin
   Select_Person_By_CustomerIDCustomerID.Value:=dm.Select_Customer_By_CustomerIDCustomerID.AsInteger;
end;

procedure TFmOtherPerson.DBEEmailAddressEnter(Sender: TObject);
begin
    Keyboard_English;
end;

procedure TFmOtherPerson.DBEEmailAddressExit(Sender: TObject);
begin
   Keyboard_Farsi;
end;

procedure TFmOtherPerson.FormShow(Sender: TObject);
begin
   inherited;
   DBNav_Setup(DBNavigator1);
end;

procedure TFmOtherPerson.SBCloseClick(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFmOtherPerson.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
   inherited;
   if Button = nbInsert then
   begin
      DBEFirstName.SetFocus;
   end;
end;

end.
