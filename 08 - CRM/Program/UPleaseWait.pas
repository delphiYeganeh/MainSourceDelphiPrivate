unit UPleaseWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, acArcControls, ExtActns, ActnList, DB,dmu;


type
  TFPleaseWait = class(TMBaseForm)
    sArcPreloader1: TsArcPreloader;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure RunScript  ;
  public
    OpenState : String ;
    CustomerId : integer ;
  end;



var
  FPleaseWait: TFPleaseWait;

implementation

{$R *.dfm}

procedure TFPleaseWait.FormShow(Sender: TObject);
begin
  inherited;

  RunScript;
end;

procedure TFPleaseWait.RunScript;
begin
  if OpenState = 'Customer' then
  begin

   dm.Customer.Close;
   dm.Customer.Open;

   dm.Customer.Locate('CustomerId',CustomerId,[]);
  end;
  ModalResult := mrCancel ;
  Close;
end;

procedure TFPleaseWait.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //
end;

end.
