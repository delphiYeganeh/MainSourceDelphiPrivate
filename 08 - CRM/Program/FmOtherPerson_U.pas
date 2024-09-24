unit FmOtherPerson_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, YDbgrid, DB,
  ADODB, BaseUnit, ExtActns, ActnList, Buttons;

type
  TFmOtherPerson = class(TMBaseForm)
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
    pnlMain: TPanel;
    Panel3: TPanel;
    SBClose: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEFirstName: TDBEdit;
    DBELastName: TDBEdit;
    DBEEmailAddress: TDBEdit;
    DBEHomePhone: TDBEdit;
    DBEWorkPhone: TDBEdit;
    DBEMobilePhone: TDBEdit;
    DBEFaxNumber: TDBEdit;
    DBEJobTitle: TDBEdit;
    DBENotes: TDBEdit;
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    pnlSearch: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    pnlFilter: TPanel;
    SBRefresh: TSpeedButton;
    btnHome: TSpeedButton;
    edtName: TEdit;
    edtLastName: TEdit;
    edtTel: TEdit;
    edtMobile: TEdit;
    procedure Select_Person_By_CustomerIDAfterInsert(DataSet: TDataSet);
    procedure DBEEmailAddressEnter(Sender: TObject);
    procedure DBEEmailAddressExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBCloseClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btnHomeClick(Sender: TObject);
    procedure SBRefreshClick(Sender: TObject);
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
   ShapeBase.Brush.Color := _Color1 ;
   pnlMain.Color := _Color1 ;
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

procedure TFmOtherPerson.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  { TODO -oparsa : 14030203 }
  if (NewWidth < 617)  or (NewHeight < 515) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
end;

procedure TFmOtherPerson.btnHomeClick(Sender: TObject);
begin
  inherited;
  edtName.Text     := '';
  edtLastName.Text := '';
  edtTel.Text      := '';
  edtMobile.Text   := '';
  DSelect_Person_By_CustomerID.DataSet.Filtered := False ;
  DSelect_Person_By_CustomerID.DataSet.Filter := '' ;
  DSelect_Person_By_CustomerID.DataSet.Filtered := True ;
  DBNavigator1.Enabled := true;
end;

procedure TFmOtherPerson.SBRefreshClick(Sender: TObject);
begin
  inherited;

  if not (DSelect_Person_By_CustomerID.DataSet.State in [dsEdit,dsInsert]) then
  begin
    DSelect_Person_By_CustomerID.DataSet.Filtered := False ;
    DSelect_Person_By_CustomerID.DataSet.Filter := '' ;
    
    if Trim(edtName.Text)<>'' then
      DSelect_Person_By_CustomerID.DataSet.Filter := ' FirstName like ''%'+Trim(edtName.Text)+'%''' ;

    if Trim(edtLastName.Text)<>'' then
    begin
      if  DSelect_Person_By_CustomerID.DataSet.Filter  <> '' then
        DSelect_Person_By_CustomerID.DataSet.Filter := DSelect_Person_By_CustomerID.DataSet.Filter +' and LastName like  ''%'+Trim(edtLastName.Text) +'%'''
      else
        DSelect_Person_By_CustomerID.DataSet.Filter := DSelect_Person_By_CustomerID.DataSet.Filter +' LastName like ''%'+Trim(edtLastName.Text)+'%''';
    end;

    if Trim(edtTel.Text)<>'' then
    begin
      if  DSelect_Person_By_CustomerID.DataSet.Filter  <> '' then
        DSelect_Person_By_CustomerID.DataSet.Filter := DSelect_Person_By_CustomerID.DataSet.Filter +' and WorkPhone like ''%'+Trim(edtTel.Text) +'%'''
      else  DSelect_Person_By_CustomerID.DataSet.Filter := ' WorkPhone like ''%'+Trim(edtTel.Text)+'%''' ;
    end;
    if Trim(edtMobile.Text)<>'' then
    begin
      if  DSelect_Person_By_CustomerID.DataSet.Filter  <> '' then
        DSelect_Person_By_CustomerID.DataSet.Filter := DSelect_Person_By_CustomerID.DataSet.Filter +' and MobilePhone like ''%'+Trim(edtMobile.Text) +'%'''
      else   DSelect_Person_By_CustomerID.DataSet.Filter := ' MobilePhone like ''%'+Trim(edtMobile.Text)+'%''' ;
    end;

    if DSelect_Person_By_CustomerID.DataSet.Filter  <> '' then
      DBNavigator1.Enabled := False;

    DSelect_Person_By_CustomerID.DataSet.Filtered := True ;
  end;



end;

end.
