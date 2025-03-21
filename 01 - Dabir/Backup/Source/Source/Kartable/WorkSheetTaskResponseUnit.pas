unit WorkSheetTaskResponseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, Buttons, ExtCtrls,
  MssPanelPro, StdCtrls, ADODB;

type
  TFWorkSheetTaskResponse = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    SpeedButton4: TSpeedButton;
    MssPanelPro2: TMssPanelPro;
    SpeedButton1: TSpeedButton;
    cmbResponse: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    memDescription: TMemo;
    QSave: TADOQuery;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FWorkSheetBaseID: Integer;
    procedure SetWorkSheetBaseID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property WorkSheetBaseID:Integer read FWorkSheetBaseID write SetWorkSheetBaseID;
  end;

var
  FWorkSheetTaskResponse: TFWorkSheetTaskResponse;

implementation

uses Dmu;

{$R *.dfm}

procedure TFWorkSheetTaskResponse.SetWorkSheetBaseID(const Value: Integer);
begin
  FWorkSheetBaseID := Value;
end;

procedure TFWorkSheetTaskResponse.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetTaskResponse.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  try
     QSave.Close;
     QSave.SQL.Clear;
     QSave.SQL.Add('UPDATE WorkSheet_Tasks');
     QSave.SQL.Add('SET UserDescription='''+memDescription.Text+'''');
     if Trim(cmbResponse.Text)<>'' then
     begin
       if cmbResponse.Text='����� ��� ���'then QSave.SQL.Add(',UserResponse=1');
       if cmbResponse.Text='����� �� ���' then QSave.SQL.Add(',UserResponse=2');
       if cmbResponse.Text='���� ����' then QSave.SQL.Add(',UserResponse=3');
     end;
     QSave.SQL.Add('WHERE WorkSheetBaseID='+IntToStr(WorkSheetBaseID));
     QSave.SQL.Add('AND (UserID='+IntToStr(_UserID)+')');
     QSave.ExecSQL;
     ShowMessage('������� ����� ��');
     Close;
  except on e:Exception do
     ShowMessage(e.Message);
  end;
end;

end.
