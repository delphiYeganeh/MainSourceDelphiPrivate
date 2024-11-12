unit ShowSaderehUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, StdCtrls, Buttons,
  ExtCtrls, Grids, DBGrids, MssDBGrid, ADODB, Mask, DBCtrls, UemsVCL;

type
  TFShowSadereh = class(TMBaseForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    QGetSadereh: TADOQuery;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBShamsiDateEdit;
    Label12: TLabel;
    DBEdit24: TDBEdit;
    DBShamsiDateEdit: TDBShamsiDateEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    QGetSaderehIndicatorID: TIntegerField;
    QGetSaderehRegistrationDate: TStringField;
    QGetSaderehRegistrationTime: TStringField;
    QGetSaderehIncommingNO: TWideStringField;
    QGetSaderehIncommingdate: TWideStringField;
    QGetSaderehMemo: TWideStringField;
    QGetSaderehMYear: TWordField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    FLetterID: Integer;
    procedure SetLetterID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LetterID:Integer read FLetterID write SetLetterID;
  end;

var
  FShowSadereh: TFShowSadereh;

implementation

uses Dmu;

{$R *.dfm}

{ TFShowSadereh }

procedure TFShowSadereh.SetLetterID(const Value: Integer);
begin
  FLetterID := Value;
end;

procedure TFShowSadereh.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFShowSadereh.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
     Key:=#0;
     SpeedButton1Click(Application);
  end;
                                                                                                                           
end;

procedure TFShowSadereh.FormShow(Sender: TObject);
begin
  inherited;
  QGetSadereh.Close;
  QGetSadereh.SQL.Clear;
  QGetSadereh.SQL.Add('SELECT IndicatorID,RegistrationDate,RegistrationTime,IncommingNO,Incommingdate,Memo,MYear FROM Letter');
  QGetSadereh.SQL.Add('WHERE (letter_Type=2)');
  QGetSadereh.SQL.Add('AND');
  QGetSadereh.SQL.Add('(RetroactionNo=(SELECT incommingNO FROM Letter WHERE LetterID='+IntToStr(LetterID));
  QGetSadereh.SQL.Add('))');
  QGetSadereh.Open;
end;

end.
