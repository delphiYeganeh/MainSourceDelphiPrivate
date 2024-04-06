unit uUserTablefields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  xpWindow, ExtActns, ActnList, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFrTableFields = class(TMBaseForm)
    Get_UserFields_By_TableID: TADOStoredProc;
    Get_UserFields_By_TableIDID: TAutoIncField;
    Get_UserFields_By_TableIDDescription: TStringField;
    Get_UserFields_By_TableIDFieldTypeID: TWordField;
    Get_UserFields_By_TableIDReferenceTableID: TIntegerField;
    Get_UserFields_By_TableIDorder: TIntegerField;
    Get_UserFields_By_TableIDFieldTypeTitle: TStringField;
    Get_UserFields_By_TableIDReferenceTanleTitle: TStringField;
    Get_UserFields_By_TableIDTableID: TIntegerField;
    Get_UserFields_By_TableIDFieldName: TStringField;
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    SBExit: TSpeedButton;
    DBN1: TDBNavigator;
    Panel5: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    ReferLabel: TLabel;
    DBEDescription: TDBEdit;
    DBEdit5: TDBEdit;
    DBLKBoFieldTypeTitle: TDBLookupComboBox;
    DBLKBoReferenceTanleTitle: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure SBExitClick(Sender: TObject);
    procedure Get_UserFields_By_TableIDAfterInsert(DataSet: TDataSet);
    procedure Get_UserFields_By_TableIDBeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLKBoFieldTypeTitleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEDescriptionChange(Sender: TObject);
  private
    procedure Set_Refrence_Visible;
  public
    { Public declarations }
    TableID: integer;
  end;

var
  FrTableFields: TFrTableFields;

implementation

uses Dmu , YShamsiDate;

{$R *.dfm}

procedure TFrTableFields.FormShow(Sender: TObject);
begin
  inherited;
  with Get_UserFields_By_TableID do
  begin
    Close;
    Parameters.ParamByName('@TableID').Value := TableID;
    Open;
    Last;
  end;
  DBNav_Setup(DBN1);
end;

procedure TFrTableFields.SBExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrTableFields.Get_UserFields_By_TableIDAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Get_UserFields_By_TableIDTableID.AsInteger  := TableID;
  Get_UserFields_By_TableIDFieldName.AsString := 'Field';
end;

procedure TFrTableFields.Get_UserFields_By_TableIDBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if MessageDlg('¬Ì« „«Ì· »Â Õ–› ›Ì·œ Ã«—Ì Â” Ìœø', mtInformation,[mbCancel,mbOk], 0) = mrCancel then
    Abort;
end;

procedure TFrTableFields.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Get_UserFields_By_TableID.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('·ÿ›« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ');
    Abort;
  end;
end;

procedure TFrTableFields.DBN1Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  if Button in [nbInsert,nbEdit] then
  begin
    DBEDescription.SetFocus;
    if Get_UserFields_By_TableIDorder.IsNull then
      Get_UserFields_By_TableIDorder.Value := dm.YeganehConnection.execute('select isnull(max([order]),0)+1 from fields where fields.tableid='+IntToStr(TableID)).fields[0].value;
  end;
end;

procedure TFrTableFields.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Return then
    SelectNext(TWinControl(ActiveControl),True,True);
  if Key = Vk_Escape then
    SBExit.Click;
end;

procedure TFrTableFields.Set_Refrence_Visible;
begin
  ReferLabel.Visible := DBLKBoFieldTypeTitle.KeyValue=6; //6 : ›Ì·œ ‰Ê⁄ ·Ì” Ì
  DBLKBoReferenceTanleTitle.Visible := DBLKBoFieldTypeTitle.KeyValue=6;
end;

procedure TFrTableFields.DBLKBoFieldTypeTitleClick(Sender: TObject);
begin
  inherited;
  Set_Refrence_Visible;
end;

procedure TFrTableFields.FormCreate(Sender: TObject);
begin
  inherited;
  Set_Refrence_Visible;
end;

procedure TFrTableFields.DBEDescriptionChange(Sender: TObject);
begin
  inherited;
  Set_Refrence_Visible;
end;

end.
