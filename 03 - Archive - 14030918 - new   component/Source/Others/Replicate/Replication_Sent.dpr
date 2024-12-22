program Replication_Sent;

uses
  Forms,
  UTransferDm in 'UTransferDm.pas' {Transfer_dm: TDataModule},
  UTransferView in 'UTransferView.pas' {Frmain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '«‰ ﬁ«· ‰«„Â Â« »Ì‰ œ»Ì—Œ«‰Â Â«';
  Application.CreateForm(TTransfer_dm, Transfer_dm);
  Application.CreateForm(TFrmain, Frmain);
  Application.Run;
end.
