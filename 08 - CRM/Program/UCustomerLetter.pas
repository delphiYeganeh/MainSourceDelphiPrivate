unit UCustomerLetter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB,Registry, Grids, DBGrids,
  YDbgrid, StdCtrls, ExtCtrls, Buttons;

type
  TfrCustomerLetter = class(TMBaseForm)
    dbgFollow: TYDBGrid;
    Panel1: TPanel;
    btnShowContractWord: TBitBtn;
    SpeedButton4: TSpeedButton;
    procedure btnShowContractWordClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(Aowner:TComponent;CustomerID :Integer);reintroduce;virtual;
  end;

var
  frCustomerLetter: TfrCustomerLetter;

implementation

uses dmu;

{$R *.dfm}

{ TMBaseForm1 }

constructor TfrCustomerLetter.Create(Aowner: TComponent; CustomerID: Integer);
var yDabirRegistryKey,DataBaseName : String;
var R:TRegistry;
begin
  inherited create(AOwner);
  yDabirRegistryKey := 'Software\yeganeh\ydabir';

   R := TRegistry.Create;
   with R do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(yDabirRegistryKey, True);

      DataBaseName:=ReadString('DataBaseName');

      if DataBaseName='' then
         DataBaseName:='Ydabir' ;                                      
      WriteString('DataBaseName', DataBaseName);
   end;


  with dm.SpYCRM_Select_Letter_By_CustomerID do
  begin
    Close;
        Parameters.ParamByName('@CustomerID') .Value :=      CustomerID;
        Parameters.ParamByName('@DBName')     .Value :=      DataBaseName;
    Open;
  end;
end;

procedure TfrCustomerLetter.btnShowContractWordClick(Sender: TObject);
begin
  inherited;
dbgFollow.ExportToWord;
end;

procedure TfrCustomerLetter.SpeedButton4Click(Sender: TObject);
begin
  inherited;
   dbgFollow.CustomizePrint ;

end;

end.
