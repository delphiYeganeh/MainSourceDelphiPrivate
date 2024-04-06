unit WorkSheetEnterDateUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, StdCtrls, ExtCtrls,
  MssPanelPro, Buttons;

type
  TFWorkSheetEnterDate = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    SpeedButton10: TSpeedButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton10Click(Sender: TObject);
  private
    FInitialValue: WideString;
    FOutPut: WideString;
    FIsReadOnly: Boolean;
    procedure SetInitialValue(const Value: WideString);
    procedure SetOutPut(const Value: WideString);
    procedure SetIsReadOnly(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property InitialValue:WideString read FInitialValue write SetInitialValue;
    property OutPut:WideString read FOutPut write SetOutPut;
    property IsReadOnly:Boolean read FIsReadOnly write SetIsReadOnly;
  end;

var
  FWorkSheetEnterDate: TFWorkSheetEnterDate;

implementation

uses WorkSheetBaseResultsUnit;

{$R *.dfm}

procedure TFWorkSheetEnterDate.FormActivate(Sender: TObject);
begin
  inherited;
  Memo1.Text:=InitialValue;
  if IsReadOnly then Memo1.Color:=clBtnFace else Memo1.Color:=clWhite; 
end;

procedure TFWorkSheetEnterDate.SetInitialValue(const Value: WideString);
begin
  FInitialValue := Value;
end;

procedure TFWorkSheetEnterDate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_ESCAPE then
  begin
     OutPut:=Memo1.Text;
     Close;
  end;
end;

procedure TFWorkSheetEnterDate.SetOutPut(const Value: WideString);
begin
  FOutPut := Value;
end;

procedure TFWorkSheetEnterDate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  OutPut:=Memo1.Text;
  FWorkSheetBaseResults.ValueFrom_FWorkSheetEnterDate:=OutPut;
end;

procedure TFWorkSheetEnterDate.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetEnterDate.SetIsReadOnly(const Value: Boolean);
begin
  FIsReadOnly := Value;
end;

end.
