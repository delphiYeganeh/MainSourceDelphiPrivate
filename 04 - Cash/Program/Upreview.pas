unit Upreview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, qrprntr, Menus, ComCtrls;

type
  TFpreview = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    mnPrint: TMenuItem;
    N17: TMenuItem;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    onwork: TLabel;
    Label3: TLabel;
    pageCount: TLabel;
    Label1: TLabel;
    PageNumber: TLabel;
    Label2: TLabel;
    ZoomFactor: TLabel;
    ProgressBar1: TProgressBar;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn10: TBitBtn;
    QRPreview1: TQRPreview;
    ScrollBox3: TScrollBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure QRPreview1ProgressUpdate(Sender: TObject; Progress: Integer);
    procedure QRPreview1PageAvailable(Sender: TObject; PageNum: Integer);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpreview: TFpreview;
  _Left,_Top,_Width,_Heigh:Integer;
implementation
   Uses Tools;
{$R *.DFM}

procedure TFpreview.BitBtn10Click(Sender: TObject);
begin
  Close;
end;

procedure TFpreview.BitBtn3Click(Sender: TObject);
begin
  QrPreview1.PageNumber:=QrPreview1.PageNumber+1;
  PageNumber.Caption:=IntTostr(QrPreview1.PageNumber);
end;

procedure TFpreview.BitBtn4Click(Sender: TObject);
begin
  if QrPreview1.PageNumber >= 1 then
    QrPreview1.PageNumber := QrPreview1.PageNumber - 1;
  PageNumber.Caption := IntTostr(QrPreview1.PageNumber);
end;

procedure TFpreview.BitBtn5Click(Sender: TObject);
begin
  QrPreview1.PageNumber := 1;
  PageNumber.Caption := IntTostr(QrPreview1.PageNumber);
end;

procedure TFpreview.BitBtn6Click(Sender: TObject);
begin
  QrPreview1.PageNumber := strtoint(pagecount.caption);
  PageNumber.Caption := IntTostr(QrPreview1.PageNumber);
end;

procedure TFpreview.BitBtn1Click(Sender: TObject);
begin
  QrPreview1.Zoom := QrPreview1.Zoom + 20;
  ZoomFactor.Caption := IntTostr(QrPreview1.Zoom)+'%';
end;

procedure TFpreview.BitBtn2Click(Sender: TObject);
Begin
  QrPreview1.Zoom := QrPreview1.Zoom - 20;
  ZoomFactor.Caption := IntTostr(QrPreview1.Zoom)+'%';
End;

procedure TFpreview.FormActivate(Sender: TObject);
begin
  inherited;
  _Width := 510;
  _Heigh := 415;
end;

procedure TFpreview.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TFpreview.N4Click(Sender: TObject);
begin
  if QrPreview1.VertScrollBar.position >= 10 then
    QrPreview1.VertScrollBar.Position := QrPreview1.VertScrollBar.Position - 15;
end;

procedure TFpreview.N5Click(Sender: TObject);
begin
  QrPreview1.VertScrollBar.Position := QrPreview1.VertScrollBar.Position + 15;
End;

procedure TFpreview.N13Click(Sender: TObject);
begin
  if QrPreview1.horzScrollBar.position >= 15 then
    QrPreview1.horzScrollBar.Position := QrPreview1.horzScrollBar.Position - 15;
end;

procedure TFpreview.N14Click(Sender: TObject);
begin
  QrPreview1.horzScrollBar.Position := QrPreview1.horzScrollBar.Position + 15;
end;

procedure TFpreview.N15Click(Sender: TObject);
  begin
    n15.checked := not(n15.checked);
    if n15.checked then
    begin
      _Width := QrPreview1.Width;
      _Heigh := QrPreview1.Height;
      QrPreview1.Width := Width;
      QrPreview1.Height := Height;
    end
    else
    begin
      QrPreview1.Width := _Width;
      QrPreview1.Height := _Heigh;
    end;
  end;

procedure TFpreview.BitBtn9Click(Sender: TObject);
begin
  QRPreview1.QRPrinter.FirstPage := 0;
  QRPreview1.QRPrinter.LastPage := QRPreview1.QRPrinter.PageCount;
  ShowMessage('page count:' + IntToStr(QRPreview1.QRPrinter.PageCount));
  ShowMessage('page number ' + IntToStr(QRPreview1.QRPrinter.Pagenumber));
  ShowMessage('FirstPage' + IntToStr(QRPreview1.QRPrinter.FirstPage));
  ShowMessage('LastPage' + IntToStr(QRPreview1.QRPrinter.LastPage));

  QRPreview1.QRPrinter.Print;
end;

procedure TFpreview.BitBtn7Click(Sender: TObject);
begin
  QRPreview1.QRPrinter.PrintSetup;
end;

procedure TFpreview.btnPrintClick(Sender: TObject);
begin
  QRPreview1.QRPrinter.Print;
end;

procedure TFpreview.QRPreview1ProgressUpdate(Sender: TObject;
  Progress: Integer);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
  ProgressBar1.Max := ProgressBar1.Max + 1;
  PageCount.Caption := IntToStr(ProgressBar1.Position);
  onwork.caption := '�� ��� ���';
end;

procedure TFpreview.QRPreview1PageAvailable(Sender: TObject;
  PageNum: Integer);
begin
  if PageNum >2 then
    if not(ProgressBar1.Visible) then
      ProgressBar1.Visible := True;
  onwork.caption := '';
  PageCount.Caption := IntToStr(PageNum);
end;

procedure TFpreview.BitBtn11Click(Sender: TObject);
begin
  Qrpreview1.ZoomToFit;
end;

procedure TFpreview.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  btnPrint.Enabled := True;
  mnPrint.Enabled := True;
  Action := caFree;
end;

end.
