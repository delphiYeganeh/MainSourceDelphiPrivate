unit WorkSheetAddInnerLetterUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  Buttons, DBCtrls, StdCtrls, ADODB, MssSearchPro;

type
  TFWorkSheetAddInnerLetter = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    SpeedButton10: TSpeedButton;
    Label1: TLabel;
    QSecretary: TADOQuery;
    QSecretarySecID: TAutoIncField;
    QSecretarySecTitle: TWideStringField;
    SpeedButton1: TSpeedButton;
    MssSearchPro1: TMssSearchPro;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FWorkSheetAddInnerLetter: TFWorkSheetAddInnerLetter;

implementation

uses WorkSheetBaseResultsUnit, Dmu;

{$R *.dfm}

procedure TFWorkSheetAddInnerLetter.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  FWorkSheetBaseResults.InnerLetterSecID:=0;
  Close;
end;

procedure TFWorkSheetAddInnerLetter.FormShow(Sender: TObject);
begin
  inherited;
  QSecretary.Close;
  QSecretary.Open;
end;

procedure TFWorkSheetAddInnerLetter.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  MssSearchPro1.Execute;
end;

procedure TFWorkSheetAddInnerLetter.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FWorkSheetBaseResults.InnerLetterSecID:=QSecretarySecID.AsInteger;
  Close;
end;

end.
