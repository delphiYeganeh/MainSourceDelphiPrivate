unit UContractType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, Grids, DBGrids, YDbgrid, StdCtrls, ExtActns,
  ActnList, DB, Buttons, ADODB;

type
  TfrmContractType = class(TMBaseForm)
    qryContractType: TADOQuery;
    DsContractType: TDataSource;
    qrySub: TADOQuery;
    dsSub: TDataSource;
    pnlMain: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Button1: TButton;
    GroupBox1: TGroupBox;
    dbgContractType: TYDBGrid;
    Panel2: TPanel;
    Button2: TButton;
    dbgSub: TYDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure qrySubBeforePost(DataSet: TDataSet);
    procedure qryContractTypeAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    procedure SetdbgSub(ContractTypeId :integer);
    procedure SetdbgContractType;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContractType: TfrmContractType;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

procedure TfrmContractType.FormCreate(Sender: TObject);
begin
  inherited;
  SetdbgContractType;
  SetdbgSub(qryContractType.FieldByName('ContractTypeID').Value);

end;

procedure TfrmContractType.qrySubBeforePost(DataSet: TDataSet);
begin
  inherited;
   qrySub.FieldByName('ContractTypeID').Value := qryContractType.FieldByName('ContractTypeID').Value;
end;

procedure TfrmContractType.SetdbgSub(ContractTypeId:Integer);
begin
  qrySub.Close;
  qrySub.SQL.Text := 'Select ContractTypeID,ContractSubTypeCode,ContractSubTypeTitle from ContractSubType where ContractTypeID =' +IntToStr(ContractTypeId);
  qrySub.Open;

  dbgSub.Columns[0].FieldName := 'ContractSubTypeCode';
  dbgSub.Columns[1].FieldName := 'ContractSubTypeTitle';

end;

procedure TfrmContractType.qryContractTypeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not qryContractType.FieldByName('ContractTypeID').IsNull then
    SetdbgSub(qryContractType.FieldByName('ContractTypeID').Value) else   SetdbgSub(0) 
end;

procedure TfrmContractType.SetdbgContractType;
begin
   qryContractType.Close;
  qryContractType.SQL.Text := 'Select ContractTypeID,ContractTypeCode,ContractTypetitle from ContractType';
  qryContractType.Open;

  dbgContractType.Columns[0].FieldName := 'ContractTypeCode';
  dbgContractType.Columns[1].FieldName := 'ContractTypetitle';

end;

procedure TfrmContractType.Button1Click(Sender: TObject);
begin
   if ShowMyMessage('�����','��� ���� �� ��� ����� ���� ����Ͽ',mbOKCancel,mtWarning) = mrOK then
      qrySub.Delete;
end;

procedure TfrmContractType.Button2Click(Sender: TObject);
begin
   if ShowMyMessage('�����','��� ���� �� ��� ����� ���� ����Ͽ',mbOKCancel,mtWarning) = mrOK then
      if qrySub.RecordCount<1 then
      begin
         Dm.qtemp.Close;
         dm.qtemp.SQL.Clear;
         dm.qtemp.SQL.Add('SELECT * FROM UserTypeContractType WHERE ContractTypeId='+VarToStr(qryContractType.FieldValues['ContractTypeID']));
         dm.qtemp.Open;

         if not dm.qtemp.IsEmpty then
            ShowMessage('����� �� ��� ����� ��� ����� ������ ����� � �� ���� ��� ���� �� ��� ������')
         else
            qryContractType.Delete
      end
      else
         ShowMsgString('����� ����� ���������� �� ��� ������');

end;

procedure TfrmContractType.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 385)  or (NewHeight < 529) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TfrmContractType.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

end;

end.




