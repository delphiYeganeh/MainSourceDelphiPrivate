unit PrintFm;

interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin, Buttons,Printers,WinSpool, xpWindow, ExtActns,
  ActnList, DB, ieview, imageenview, ievect, dbimageenvect, imageenio,
  imageenproc,hyiedefs, dbimageen , StrUtils, Grids, DBGrids, BaseUnits;

type
  TFmPrint = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SBPrint: TSpeedButton;
    SBCancel: TSpeedButton;
    SBExit: TSpeedButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    LblPgCount: TLabel;
    Label4: TLabel;
    RB2: TRadioButton;
    RB3: TRadioButton;
    SEStartPg: TSpinEdit;
    SEEndtPg: TSpinEdit;
    RB4: TRadioButton;
    EdtRandomPage: TEdit;
    RB1: TRadioButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SpeedButton1: TSpeedButton;
    RGSize: TRadioGroup;
    ChBoProperty: TCheckBox;
    SEPropertyFont: TSpinEdit;
    LabelSizeProperty: TLabel;
    LabelColorProperty: TLabel;
    EdtPropertyColor: TEdit;
    ColorDialog1: TColorDialog;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure SBPrintClick(Sender: TObject);
    procedure SBCancelClick(Sender: TObject);
    procedure SEStartPgChange(Sender: TObject);
    procedure SBExitClick(Sender: TObject);
    procedure EdtRandomPageEnter(Sender: TObject);
    procedure EdtRandomPageExit(Sender: TObject);
    procedure EdtRandomPageKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdtPropertyColorClick(Sender: TObject);
    procedure ChBoPropertyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    DoCancel:Boolean;
    _BaseSQLConnection:TBaseSQLConnection;
  public
    { Public declarations }
  end;

var
  FmPrint: TFmPrint;

implementation

Uses ScanImageDM,YShamsiDate, ScanImageFm, Dmu;

{$R *.dfm}

procedure TFmPrint.FormShow(Sender: TObject);
begin
  SEEndtPg.Value := DMScanImage.QrLetterData.RecordCount;
  LblPgCount.Caption := '����� : ' + IntToStr(DMScanImage.QrLetterData.RecordCount);

  {Ranjbar 89.11.24 ID=94}
  ChBoProperty.Checked := DM.GetValue(2101);
  SEPropertyFont.Value := DM.GetValue(2102);
  EdtPropertyColor.Color := DM.GetValue(2103);
  ChBoPropertyClick(Sender);
  //---
end;

procedure TFmPrint.SBPrintClick(Sender: TObject);
Var
  StartPage , EndPage : Integer;
  I : Integer;
  RandomText:String;
  IESize : TIESize;
  SecTitle : String;
begin
  inherited;

  DoCancel := False;
  if RB2.Checked then
    FmScanImage.ImageEnDBView1.DataSource.DataSet.First;
  {if CoBoPrinters.Items.Count = 0 then
  begin
    MBaseForm.MessageShowString('�� �ǁ��� ���� ���', False);
    Exit;
  end;}

  if RB1.Checked then //�ǁ ���� ����
  begin
    StartPage := DMScanImage.QrLetterData.RecNo;
    EndPage:= DMScanImage.QrLetterData.RecNo;
  end;

  if RB2.Checked then //�ǁ ���� �����
  begin
    StartPage := 1;
    EndPage:= DMScanImage.QrLetterData.RecordCount;
  end;

  if RB3.Checked then //�ǁ �� ����
  begin
    StartPage := SEStartPg.Value;
    EndPage := SEEndtPg.Value;
  end;

  if RB4.Checked then //�ǁ ����� ����� ���
  begin
    DMScanImage.ColorID:=-1;
    StartPage := 1;
    EndPage:= DMScanImage.QrLetterData.RecordCount;
  end;

  try
    SBPrint.Enabled := False;
    Screen.Cursor := crHourGlass;
    RandomText := Trim(EdtRandomPage.Text);
    {Ranjbar 89.05.18 ID=8}
    try
      Printer.PrinterIndex := Dm.GetValue(2100);
    except
      if PrinterSetupDialog1.Execute then
        Dm.SetValue(2100,Printer.PrinterIndex);
    end;//�ǁ��
    //---
    //Printer.Orientation := poLandscape;

    //  ShowMessage(IntToStr(StartPage));
    // ShowMessage(IntToStr(EndPage));

    for I:= StartPage To EndPage do
    begin
      if DoCancel then // ���� ������
        Break;
      Application.ProcessMessages;

      if RB4.Checked then //�ǁ ����� ����� ���
      begin
        if LeftStr(RandomText,1)<>',' then
          RandomText := ','+RandomText;
        if RightStr(RandomText,1)<>',' then
          RandomText := RandomText+',';
        if (Pos(','+IntToStr(I)+',',RandomText) = 0) then //,1,3,5,
          Continue;
      end;

      DMScanImage.QrLetterData.RecNo := I;
      DMScanImage.QrLetterDataAfterScroll(DMScanImage.QrLetterData);

      // ShowMessage(IntToStr( DMScanImage.QrLetterDataLetterDataID.AsInteger ));

      Application.ProcessMessages;

      Printer.BeginDoc;
      Case RGSize.ItemIndex of
        0 : IESize := iesFITTOPAGESTRETCH;
        1 : IESize := iesFITTOPAGE;
        2 : IESize := iesNORMAL;
      end;

      {Ranjbar 89.10.19 ID=91}
      //����� ���� ����� ����� � ����� �� ������

      if ChBoProperty.Checked then
      begin
        SecTitle := ' ���� : ' + Qry_GetResult('Select SecTitle from Secretariats Where SecID = '
                               + '(Select Top 1 SecretariatID from Letter Where LetterID = '
                               + DMScanImage.QrLetterDataLetterID.AsString + ' )',Dm.YeganehConnection);

        FmScanImage.ImageEnVectMain.Bitmap.Canvas.Font.Name := 'Tahoma';
        FmScanImage.ImageEnVectMain.Bitmap.Canvas.Font.size := SEPropertyFont.Value; //��� ��� 8 ������
        FmScanImage.ImageEnVectMain.Bitmap.Canvas.Font.Color := EdtPropertyColor.Color;
        FmScanImage.ImageEnVectMain.Bitmap.Canvas.TextOut(40,FmScanImage.ImageEnVectMain.Bitmap.Height-50,
                   #254 + SecTitle {+ ' _ ��������� : ' + Qry_GetResult('Select IndicatorID from letter Where LetterID = '
                   + DMScanImage.QrLetterDataLetterID.AsString,Dm.YeganehConnection)} +
                   ' _ ����� ��� : ' +  Qry_GetResult('Select IncommingNO from letter Where LetterID = '
                   + DMScanImage.QrLetterDataLetterID.AsString,Dm.YeganehConnection) +
                   ' _ ����� ���: ' +  Qry_GetResult('Select Incommingdate from letter Where LetterID = '
                   + DMScanImage.QrLetterDataLetterID.AsString,Dm.YeganehConnection)
                   + ' _ ����  ' + DMScanImage.QrLetterDataPageNumber.AsString + '  ��  '
                   + DMScanImage.QrLetterDataRecCount_Calc.AsString );

                   //+ ' _ ����  ' + DMScanImage.QrLetterDataRecCount_Calc.AsString + '  ��  '
                  { + ' _ ����  ' + IntToStr(DMScanImage.QrLetterData.RecordCount) + '  ��  '
                   + DMScanImage.QrLetterDataPageNumber.AsString );
                   }
      end;
      //---
      if _BaseSQLConnection.GetKeyvalue('SaveFileType')='2' then
       FmScanImage.ImageEnDBView1.IO.PrintImage(Printer.Canvas ,0,0,0,0,ievpTOP,iehpLEFT, IESize ,0,0,0)
      else
       FmScanImage.ImageEnVectMain.IO.PrintImage(Printer.Canvas ,0,0,0,0,ievpTOP,iehpLEFT, IESize ,0,0,0);
      FmScanImage.ImageEnDBView1.DataSource.DataSet.Next;// Added By Saeedi On 1391/01/23
      Printer.EndDoc;
    end;

  finally
    Screen.Cursor := crDefault;
    SBPrint.Enabled := True;
  end;
end;

procedure TFmPrint.SBCancelClick(Sender: TObject);
begin
  inherited;
  DoCancel := True;
end;

procedure TFmPrint.SEStartPgChange(Sender: TObject);
begin
  inherited;
  SEEndtPg.MinValue := SEStartPg.Value;
end;

procedure TFmPrint.SBExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFmPrint.EdtRandomPageEnter(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TFmPrint.EdtRandomPageExit(Sender: TObject);
begin
  inherited;
  Keyboard_Farsi;
end;

procedure TFmPrint.EdtRandomPageKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if not(Key in [',','0','1','2','3','4','5','6','7','8','9',Char(VK_BACK),Char(VK_Delete)]) then
    Key := #0;
end;

procedure TFmPrint.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  try
    Printer.PrinterIndex := Dm.GetValue(2100); //�ǁ��
  except
  end;
  PrinterSetupDialog1.Execute;
  Dm.SetValue(2100,Printer.PrinterIndex); //�ǁ��
end;

procedure TFmPrint.EdtPropertyColorClick(Sender: TObject);
begin
  inherited;
  if ColorDialog1.Execute then
  begin
    EdtPropertyColor.Color := ColorDialog1.Color;
    ChBoProperty.SetFocus;
  end;
end;

procedure TFmPrint.ChBoPropertyClick(Sender: TObject);
begin
  inherited;
  SEPropertyFont.Enabled := ChBoProperty.Checked;
  EdtPropertyColor.Enabled := ChBoProperty.Checked;
  LabelSizeProperty.Enabled := ChBoProperty.Checked;
  LabelColorProperty.Enabled := ChBoProperty.Checked;
end;

procedure TFmPrint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  {Ranjbar 89.11.24 ID=94}
  DM.SetValue(2101,ChBoProperty.Checked);
  DM.SetValue(2102,SEPropertyFont.Value);
  DM.SetValue(2103,EdtPropertyColor.Color);
  //---
end;

end.
