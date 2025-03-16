unit ChairNumberReportU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Db, StdCtrls, Mask, DBTables, ExtCtrls, quickrpt, Menus, Buttons,
  Grids, DBGrids, Qrctrls, UfrBase, ADODB, UemsVCL, ComCtrls, xpBitBtn;

type
  Tfqr30 = class(TForm)
    DataSource1: TDataSource;
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    ColumnHeaderBand1: TQRBand;
    QRShape9: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    Rdate: TQRLabel;
    Rpage: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    UnivARM: TQRImage;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRDBText8: TQRDBText;
    Rradif: TQRLabel;
    QRDBText2: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel31: TQRLabel;
    QRGroup2: TQRGroup;
    Radif: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    RNumber: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    ADODataSet1: TADODataSet;
    ADODataSet1TermCode: TStringField;
    ADODataSet1LessonCode: TStringField;
    ADODataSet1LessonGroup: TFloatField;
    ADODataSet1Stno: TStringField;
    ADODataSet1NAME: TStringField;
    ProgressBar1: TProgressBar;
    ADODataSet1Reshteh_Title: TStringField;
    ADODataSet1Unit_Title: TFloatField;
    ADODataSet1LessonNae: TStringField;
    QRShape4: TQRShape;
    Panel1: TPanel;
    BitBtn1: TxpBitBtn;
    PreviewBtn: TxpBitBtn;
    PrintBtn: TxpBitBtn;
    ADODataSet2: TADODataSet;
    Panel4: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Number: TMaskEdit;
    Date: TShamsiDateEdit;
    RadioGroup1: TRadioGroup;
    QRDBText4: TQRDBText;
    ADODataSet1ExamTime: TStringField;
    QRLabel10: TQRLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure N6Click(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PreviewBtnClick(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fqr30: TFqr30;

  i,s:integer;
implementation

uses tools, Upreview;

{$R *.DFM}

procedure TFqr30.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFqr30.N3Click(Sender: TObject);
begin
Close;
end;

procedure TFqr30.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
RRadif.caption:=inttostr(strtoint(RRadif.caption)+1);
rnumber.caption:=inttostr(strtoint(Rnumber.caption)+1);

end;

procedure TFqr30.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Rpage.caption:=inttostr(strtoint(Rpage.caption)+1);

end;

procedure TFqr30.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
        Rdate.caption:=Date.text;
        Rpage.caption:='0';
        radif.caption:='0';
        rradif.caption:='0';
        Rnumber.caption:=TrimRight(number.text);

end;

procedure TFqr30.FormActivate(Sender: TObject);
begin
 ProgressBar1.Position:=0;


end;

procedure TFqr30.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
RRadif.caption:='0';
//Radif.caption:=inttostr(strtoint(Radif.caption)+1);
end;

procedure TFqr30.N6Click(Sender: TObject);
begin
     if QuickRep1.Available then
     begin
  ProgressBar1.Position:=20;
   try
  AdoDataset1.Close;

  ProgressBar1.Position:=50;
  AdoDataset1.Open;
  ProgressBar1.Position:=100;
  QuickRep1.Preview;
  ProgressBar1.Position:=0;

  except
  ProgressBar1.Position:=0;
  showmessage('Œÿ« œ— Å«—„ —Â«Ì Ê—ÊœÌ');
  end;

end;

end;

procedure TFqr30.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 Rpage.caption:=inttostr(strtoint(Rpage.caption)+1);
end;

procedure TFqr30.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//RRadif.caption:='0';


Radif.caption:=inttostr(strtoint(Radif.caption)+1);

end;

procedure Tfqr30.PreviewBtnClick(Sender: TObject);
var TXT : String;
begin
  inherited;
  if QuickRep1.Available then
   begin
    ProgressBar1.Position:=20;
     try
      AdoDataset1.Close;

      if RadioGroup1.ItemIndex = 0 then
            ADODataSet1.CommandText := txt +char(13)+ ' Order by LessonCode,LessonGroup,vw.stno'
      else       if RadioGroup1.ItemIndex = 0 then
            ADODataSet1.CommandText := txt +char(13)+ ' Order by LessonCode,LessonGroup,vw.name'
      else
      AdoDataset1.CommandText := TXT;

      ProgressBar1.Position:=50;
      AdoDataset1.Open;
      ProgressBar1.Position:=100;
      QuickRep1.Preview;
      ProgressBar1.Position:=0;
    except
    ProgressBar1.Position:=0;
    showmessage('Œÿ« œ— Å«—„ —Â«Ì Ê—ÊœÌ');
  end;

end;

end;

procedure Tfqr30.QuickRep1Preview(Sender: TObject);
begin
  inherited;
 Fpreview:=Tfpreview.Create(Fqr30);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:=QuickRep1.QRPrinter;

end;

procedure Tfqr30.PrintBtnClick(Sender: TObject);
begin
  inherited;
     if QuickRep1.Available then
     begin
  ProgressBar1.Position:=20;
   try
  AdoDataset1.Close;

  ProgressBar1.Position:=50;
  AdoDataset1.Open;
  ProgressBar1.Position:=100;
  QuickRep1.Print;
  ProgressBar1.Position:=0;

  except
  ProgressBar1.Position:=0;
  showmessage('Œÿ« œ— Å«—„ —Â«Ì Ê—ÊœÌ');
  end;

end;
end;

procedure Tfqr30.N5Click(Sender: TObject);
begin
  inherited;
     if QuickRep1.Available then
     begin
  ProgressBar1.Position:=20;
   try
  AdoDataset1.Close;

  ProgressBar1.Position:=50;
  AdoDataset1.Open;
  ProgressBar1.Position:=100;
  QuickRep1.Print;
  ProgressBar1.Position:=0;

  except
  ProgressBar1.Position:=0;
  showmessage('Œÿ« œ— Å«—„ —Â«Ì Ê—ÊœÌ');
  end;

end;


end;

end.


