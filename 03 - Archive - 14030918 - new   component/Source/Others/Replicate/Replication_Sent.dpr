program Replication_Sent;

uses
  Forms,
  UTransferDm in 'UTransferDm.pas' {Transfer_dm: TDataModule},
  UTransferView in 'UTransferView.pas' {Frmain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '������ ���� �� ��� �������� ��';
  Application.CreateForm(TTransfer_dm, Transfer_dm);
  Application.CreateForm(TFrmain, Frmain);
  Application.Run;
end.
