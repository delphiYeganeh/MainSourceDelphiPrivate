unit WorkSheetSessionResponseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, MssPanelPro,
  Buttons, StdCtrls, ADODB;

type
  TFWorkSheetSessionResponse = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    MssPanelPro2: TMssPanelPro;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    memSubjects: TMemo;
    Label2: TLabel;
    cmbResponse: TComboBox;
    Label3: TLabel;
    memDescription: TMemo;
    SpeedButton1: TSpeedButton;
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
  FWorkSheetSessionResponse: TFWorkSheetSessionResponse;

implementation

uses Dmu;

{$R *.dfm}

procedure TFWorkSheetSessionResponse.SetWorkSheetBaseID(
  const Value: Integer);
begin
  FWorkSheetBaseID := Value;
end;

procedure TFWorkSheetSessionResponse.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetSessionResponse.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  try
     QSave.Close;
     QSave.SQL.Clear;
     QSave.SQL.Add('UPDATE WorkSheet_Sessions');
     QSave.SQL.Add('SET UserDescription='''+memDescription.Text+'''');
     if Trim(cmbResponse.Text)<>'' then
     begin
       if cmbResponse.Text='‰„Ì ¬Ì„'then QSave.SQL.Add(',UserResponse=1');
       if cmbResponse.Text='„Ì ¬Ì„' then QSave.SQL.Add(',UserResponse=2');
       if cmbResponse.Text='»œÊ‰ ÃÊ«»' then QSave.SQL.Add(',UserResponse=3');
     end;
     if memSubjects.Text<>'' then QSave.SQL.Add(',AddedSubject='''+memSubjects.Text+'''');
     QSave.SQL.Add('WHERE WorkSheetBaseID='+IntToStr(WorkSheetBaseID));
     QSave.SQL.Add('AND (UserID='+IntToStr(_UserID)+')');
     QSave.ExecSQL;
     ShowMessage('«ÿ·«⁄«  –ŒÌ—Â ‘œ');
     Close;
  except on e:Exception do
     ShowMessage(e.Message);
  end;
end;

end.
