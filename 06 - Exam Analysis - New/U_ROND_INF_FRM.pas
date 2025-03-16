unit U_ROND_INF_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DB, ADODB;

type
  TROND_INF_FRM = class(TForm)
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    QRY: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  EXAMID : String;  
  end;

var
  ROND_INF_FRM: TROND_INF_FRM;

implementation

uses dmu;

{$R *.dfm}

procedure TROND_INF_FRM.FormShow(Sender: TObject);
begin

  TRY

    QRY.ExecSQL;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM ROND_INF WHERE EXAMID = ''' + EXAMID + '''');
    ADOQuery1.Open;

    if ADOQuery1.RecordCount = 1 then
       SpinEdit1.Value := ADOQuery1.FIELDBYNAME('ROND').AsInteger
       ELSE
       SpinEdit1.Value := 0;

  Except
    on e:exception do
    begin
      ShowMessage('Œÿ« œ— ›—«ŒÊ«‰Ì «ÿ·«⁄« ');
      ShowMessage(e.Message);
      Self.Close;
    END;
  END;

end;

procedure TROND_INF_FRM.BitBtn1Click(Sender: TObject);
begin

  if ADOQuery1.RecordCount = 0 then
  BEGIN
    ADOQuery1.Insert;
    ADOQuery1.FIELDBYNAME('ROND').AsInteger   := SpinEdit1.Value;
    ADOQuery1.FIELDBYNAME('EXAMID').AsString  := EXAMID;
    ADOQuery1.Post;
  END
  ELSE
  BEGIN
    ADOQuery1.Edit;
    ADOQuery1.FIELDBYNAME('ROND').AsInteger   := SpinEdit1.Value;
    ADOQuery1.FIELDBYNAME('EXAMID').AsString  := EXAMID;
    ADOQuery1.Post;
  END;

  Close;

end;

procedure TROND_INF_FRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADOQuery1.Close;
end;

end.
