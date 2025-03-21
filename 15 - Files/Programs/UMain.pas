unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBase, ExtCtrls, AdvGlowButton, xpPanel, ComCtrls, DBCtrls,
  StdCtrls, DB, ADODB, ComObj, OleServer, ExcelXP, frxClass, frxDBSet, MidasLib,
  frxDesgn,frxExportText,frxExportTXT, Grids, DBGrids, frxExportXLSX,Printers,
  frxExportDOCX, frxExportBIFF, YDbgrid, Menus, Mask, DBClient, Buttons,
  ShellCtrls;


     
type
  TFMain = class(TFBase)
    pnlTools: TxpPanel;
    AdvGlowButton1: TAdvGlowButton;
    btnXLSExportToDB: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Panel2: TPanel;
    GridButtons: TPanel;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    StatusBar: TStatusBar;
    SpeedButton7: TAdvGlowButton;
    DForms: TDataSource;
    SpprintableData: TADOStoredProc;
    mainPageControl: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet4: TTabSheet;
    pnlCashSetting: TxpPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label4: TLabel;
    edtFilePath: TEdit;
    AdvGlowButton5: TAdvGlowButton;
    StringGrid1: TStringGrid;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    ContactGrid: TYDBGrid;
    pnlMainForm: TxpPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    edtFromPrint: TEdit;
    edtToprint: TEdit;
    Panel6: TPanel;
    btnPrintFromTo: TAdvGlowButton;
    Grid_PopupMenu: TPopupMenu;
    PrintMenuItem: TMenuItem;
    cbAccept: TCheckBox;
    btnShowDataBeforeImport: TAdvGlowButton;
    btnTransfer: TAdvGlowButton;
    Label6: TLabel;
    lblProc: TLabel;
    ProgressBar1: TProgressBar;
    SpprintableDataid: TIntegerField;
    SpprintableDataName: TStringField;
    SpprintableDataFilenameInsertId: TIntegerField;
    SpprintableDataInsertDateTime: TDateTimeField;
    SpprintableDataIsPrint: TBooleanField;
    SpprintableDataPrinteDateTime: TDateTimeField;
    SpprintableDataPrintByUserId: TIntegerField;
    SpprintableDataIsHeaderType: TBooleanField;
    SpprintableDataColumF1: TStringField;
    SpprintableDataColumF2: TStringField;
    SpprintableDataColumF3: TStringField;
    SpprintableDataColumF4: TStringField;
    SpprintableDataColumF5: TStringField;
    SpprintableDataColumF6: TStringField;
    SpprintableDataColumF7: TStringField;
    SpprintableDataColumF8: TStringField;
    SpprintableDataColumF9: TStringField;
    SpprintableDataColumF10: TStringField;
    SpprintableDataColumF11: TStringField;
    SpprintableDataColumF12: TStringField;
    SpprintableDataColumF13: TStringField;
    SpprintableDataColumF14: TStringField;
    SpprintableDataColumF15: TStringField;
    SpprintableDataColumF16: TStringField;
    SpprintableDataColumF17: TStringField;
    SpprintableDataColumF18: TStringField;
    SpprintableDataColumF19: TStringField;
    SpprintableDataColumF20: TStringField;
    SpprintableDataColumF21: TStringField;
    SpprintableDataColumF22: TStringField;
    SpprintableDataColumF23: TStringField;
    SpprintableDataColumF24: TStringField;
    SpprintableDataColumF125: TStringField;
    SpprintableDataColumF26: TStringField;
    btnAllfiels: TAdvGlowButton;
    TabSheet1: TTabSheet;
    xpPanel1: TxpPanel;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    dbgUserList: TYDBGrid;
    btnNew: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    BtnAccept: TAdvGlowButton;
    BtnCancel: TAdvGlowButton;
    xpPanel2: TxpPanel;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    btnSaveSetting: TAdvGlowButton;
    btnSettingPrinter: TAdvGlowButton;
    edtPrinterName: TEdit;
    cbViewOtherUser: TCheckBox;
    N1: TMenuItem;
    btnShowWord: TAdvGlowButton;
    N2: TMenuItem;
    btnReportLoad: TAdvGlowButton;
    frxReportA4: TfrxReport;
    pnlInsert: TPanel;
    cbUserLogin: TCheckBox;
    Pass: TDBEdit;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    Label11: TLabel;
    ConfirmPass: TEdit;
    frxReport10: TfrxReport;
    frxReportA3: TfrxReport;
    frxReport12: TfrxReport;
    frxReport_New: TfrxReport;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtWorkSheet: TEdit;
    FromRowNumber: TEdit;
    ToRowNumber: TEdit;
    TabSheet2: TTabSheet;
    btnXLSExportToTemp: TAdvGlowButton;
    xpPanel3: TxpPanel;
    pnlSettingandTransfer: TxpPanel;
    Panel8: TPanel;
    Label26: TLabel;
    lblProcTemp: TLabel;
    edtFilePath2: TEdit;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    ProgressBar2: TProgressBar;
    GroupBox7: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtWorkSheet2: TEdit;
    FromRowNumber2: TEdit;
    ToRowNumber2: TEdit;
    GridTemp: TYDBGrid;
    GroupBox1: TGroupBox;
    lblTitle1: TLabel;
    lblTitle5: TLabel;
    lblTitle9: TLabel;
    lblTitle2: TLabel;
    lblTitle6: TLabel;
    lblTitle10: TLabel;
    lblTitle3: TLabel;
    lblTitle7: TLabel;
    lblTitle11: TLabel;
    lblTitle4: TLabel;
    lblTitle8: TLabel;
    lblTitle12: TLabel;
    lblTitle13: TLabel;
    CBMain: TComboBox;
    Cb1: TComboBox;
    Cb5: TComboBox;
    Cb9: TComboBox;
    Cb2: TComboBox;
    Cb6: TComboBox;
    Cb10: TComboBox;
    Cb3: TComboBox;
    Cb7: TComboBox;
    Cb11: TComboBox;
    Cb4: TComboBox;
    Cb8: TComboBox;
    Cb12: TComboBox;
    Cb13: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    pnlTempPrint: TxpPanel;
    BtnNext: TAdvGlowButton;
    btnBack: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    edtPrinterName2: TEdit;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    Panel5: TPanel;
    GroupBox8: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edtFromPrint2: TEdit;
    edtToprint2: TEdit;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    Bevel1: TBevel;
    lblTitle14: TLabel;
    Cb14: TComboBox;
    Label16: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    AdvGlowButton15: TAdvGlowButton;
    pnlChngeName: TxpPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label17: TLabel;
    btnRenamePic: TAdvGlowButton;
    EditPath: TEdit;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    ShellTreeView1: TShellTreeView;
    rbPicReverce: TRadioGroup;
    lblDesc1: TLabel;
    lblDesc2: TLabel;
    Memo1: TMemo;
    ShellTreeView2: TShellTreeView;
    btnpicExcelCreate: TAdvGlowButton;
    ShellTreeView3: TShellTreeView;
    TabSheet3: TTabSheet;
    xpPanel4: TxpPanel;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    Panel11: TPanel;
    GroupBox9: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    edtFromfolder: TEdit;
    edtToFolder: TEdit;
    Label20: TLabel;
    edtExcelRoot: TEdit;
    AdvGlowButton24: TAdvGlowButton;
    CBFildName: TComboBox;
    Label21: TLabel;
    btnExcelTransfer: TAdvGlowButton;
    Bevel2: TBevel;
    Label22: TLabel;
    edtFolderRoot: TEdit;
    AdvGlowButton22: TAdvGlowButton;
    btnFolderCreate: TAdvGlowButton;
    ShellTreeView4: TShellTreeView;
    YDBGrid1: TYDBGrid;
    Label23: TLabel;
    edtExcelWorkSheet: TEdit;
    Label24: TLabel;
    edtExcelFrom: TEdit;
    Label25: TLabel;
    edtExcelTo: TEdit;
    ProgressBar3: TProgressBar;
    lblProcTempExcel: TLabel;
    Label27: TLabel;
    procedure btnTransferClick(Sender: TObject);
    procedure btnShowWordClick(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure btnShowDataBeforeImportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintFromToClick(Sender: TObject);
    procedure PrintMenuItemClick(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure btnXLSExportToDBClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure cbAcceptClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSettingPrinterClick(Sender: TObject);
    procedure btnSaveSettingClick(Sender: TObject);
    procedure btnAllfielsClick(Sender: TObject);
    procedure frxReport5AfterPrint(Sender: TfrxReportComponent);
    procedure frxReport5AfterPrintReport(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnReportLoadClick(Sender: TObject);
    procedure frxReportA4AfterPrint(Sender: TfrxReportComponent);
    procedure frxReportA4AfterPrintReport(Sender: TObject);
    procedure frxReportA3AfterPrint(Sender: TfrxReportComponent);
    procedure frxReportA3AfterPrintReport(Sender: TObject);
    procedure frxReport_NewAfterPrint(Sender: TfrxReportComponent);
    procedure frxReport_NewAfterPrintReport(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnXLSExportToTempClick(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBackClick(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure btnRenamePicClick(Sender: TObject);
    procedure ShellTreeView1DblClick(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
    procedure btnpicExcelCreateClick(Sender: TObject);
    procedure AdvGlowButton24Click(Sender: TObject);
    procedure AdvGlowButton22Click(Sender: TObject);
    procedure btnExcelTransferClick(Sender: TObject);
    procedure btnFolderCreateClick(Sender: TObject);
    procedure ShellTreeView4DblClick(Sender: TObject);
  private
    TranferAccept : Boolean ;
    newsheet,newpath ,newFrom ,newTo : String ;
    Oldsheet,Oldpath ,OldFrom ,OldTo : String ;
    MainReport : TfrxReport ;
    gridmode : Integer;

    procedure LoadExcelDataToGrid (const FileName: string; Grid: TStringGrid);
    procedure insetDataToTable();
    procedure insetDataToTemp();
    procedure insetDataToTempFolder();    
    procedure RecordRefresh(IsPrint : Integer = 0; Userid : Integer = 0);
    function  PrintData(id : integer) :integer;
    function  loadReportField(id : integer): boolean;
    procedure FillCombo ;
    procedure SetTempSetting;

  public
    { Public declarations }
  end;

var
  FMain: TFMain;

Const
   ColCountTemp = 14;
   MaxTagNumberTemp = 24 ;

implementation

uses UDM, UDMReport;

{$R *.dfm}

procedure TFMain.FormShow(Sender: TObject);
begin
  inherited;
  MainReport := DMReport. frxReport_New ;
  DMReport.Rep_LoadFile (MainReport,'MainReport' );

  mainPageControl.TabHeight := 1;
  mainPageControl.TabWidth  := 1 ;
  TranferAccept := False;
  mainPageControl.ActivePageIndex:= 0 ;
  pnlMainForm.Title := '�������' ;
  gridmode := 0 ;
  ContactGrid.Columns[1].Visible := False;
  edtPrinterName.Text := UDM._UserPrinterName;

  if  _OtherUser then
    cbViewOtherUser.Checked := True ;

  if _DBVersion then
  begin
    StatusBar.panels[1].text := DM.Time_GetTime(Dm.YeganehConnection,False) + '  ' + _Today ;

    newsheet := edtWorkSheet.Text ;
    newpath  := edtFilePath.Text ;
    newFrom  := FromRowNumber.Text ;
    newTo    := ToRowNumber.Text ;
    btnXLSExportToDB.Enabled := True;
    
    StatusBar.panels[2].text :=  ' ��� ����� : ' + DM.UsersUserName.AsString  ;

    RecordRefresh (0,_UserId);

    if  _ManagerUser then
    begin
      mainPageControl.ActivePageIndex:= 3 ;
      pnlTools.Visible := False ;
      StatusBar.panels[2].text :=  '��� ����� : ���� ' ;
      if DM.Users.RecordCount > 0 then
      begin
        btnEdit.Enabled := True ;
      end;
    end;
  end
  else
  begin
    newsheet := edtWorkSheet2.Text ;
    newpath  := edtFilePath2.Text ;
    newFrom  := FromRowNumber2.Text ;
    newTo    := ToRowNumber2.Text ;

   edtPrinterName2.Text := UDM._UserPrinterName;

    //pnlTemp.Visible := True;
    pnlTools.Visible := False ;
    mainPageControl.ActivePageIndex:= 4 ;
    pnlTempPrint.Visible := True;
    pnlTempPrint.Height := 90 ;
    pnlTempPrint.Minimized := True ;

    pnlChngeName.Height := 200 ;
    pnlChngeName.Minimized := True ;

    StatusBar.panels[2].text :=  ' ��� ����� : ' + ' ���� ��� �� ǘ�� ' ;
    StatusBar.panels[1].text :=  _Today ;

    FillCombo;
    DM.CDTemp.CreateDataSet;
    if _PictureMode   then
    begin
      pnlChngeName.Visible := True;
      pnlTempPrint.Visible := False;
      GridTemp.Visible := False;
      pnlChngeName.Minimized := false ;
      pnlSettingandTransfer.Visible  := False;
      Memo1.Align := alClient ;
    //
      btnpicExcelCreate.Visible :=  _ExcelPicMode ;

      rbPicReverce.Visible :=  not _ExcelPicMode ;
      btnRenamePic.Visible :=  not _ExcelPicMode ;
      lblDesc2.Visible :=  not _ExcelPicMode ;
      lblDesc1.Visible :=  not _ExcelPicMode ;
    end;

    if _FolderMode then
     mainPageControl.ActivePageIndex:= 5 ;

  end;
  Memo1.clear ;


end;

procedure TFMain.btnTransferClick(Sender: TObject);
var
  ValuePath, sqlCmd, sqlCmdField : String;
  Cols, Rows, i, j, failure, mYear, intCount: Integer;
  Excel, XLSheet: Variant;
  adoCmd: TADOCommand;
  msgStr : String;
  WorksheetNUM, FirstRow, LastUserRow: Integer;
begin
  inherited;
  insetDataToTable;  
 
end;

procedure TFMain.btnShowWordClick(Sender: TObject);
var
 // MainReport : TfrxReport ;
  Memo: TfrxMemoView ;
begin
  inherited;
  if _DBVersion then
    loadReportField(SpprintableDataid.AsInteger)
  else  loadReportField(DM.CDTempid.AsInteger) ;


  DMReport. Rep_Show(MainReport,rtShow );


 {Generate a report. The report must be generated before exporting}

 //frxDOCXExport1.
 {Set the range of pages to export. By default, all pages of the generated report are exported}
 DMReport.WordExport.PageNumbers := '1';
 {Set whether to open the resulting file after export}
 DMReport.WordExport.OpenAfterExport := False;
 {Set whether to display export progress(show which page is currently being exported)}
 DMReport.WordExport.ShowProgress := False;
 {Set whether to display the export filter settings dialog box}
 DMReport.WordExport.ShowDialog := False;
 {Set the name of the resulting file.}
 {Please note that if you do not set the file name and disable the export filter dialog box,}
 {the file name selection dialog will still be displayed}
 DMReport.WordExport.FileName := {FormatDateTime('hhnnss', Time) } _TempPath +'TempWord.docx';
 {Export the report}
 //frxReport1.Export(frxDOCXExportTemp);
 MainReport.Export(DMReport.WordExport);

end;

procedure TFMain.AdvGlowButton5Click(Sender: TObject);
var
  ValuePath : String;
begin
  inherited;
   DM.OpenDialog.Execute;
  ValuePath := DM.OpenDialog.FileName;
  edtFilePath.Text := ValuePath ;
  StringGrid1.Color :=  clWhite ;
  newpath  := edtFilePath.Text ;
 // LoadExcelDataToGrid(ValuePath,StringGrid1);

end;

procedure TFMain.LoadExcelDataToGrid(const FileName: string; Grid: TStringGrid);
var ExcelApp, Workbook, Worksheet: Variant; Row, Col, LastRow, LastCol: Integer;
   WorksheetNUM, FirstRow, LastUserRow: Integer;
   c, r: Integer;
begin

  for c := 0 to Pred(Grid.ColCount) do
   for r := 0 to Pred(Grid.RowCount) do
    Grid.Cells[c, r] := '';


  if Trim(edtWorkSheet.Text) = '' then
    WorksheetNUM  := 1
  else  WorksheetNUM  := StrToInt(Trim(edtWorkSheet.Text)) ;

  FirstRow:= StrToInt(Trim(FromRowNumber.Text)) ;
  if  FirstRow = 0 then
    FirstRow := 1 ;
    
  LastUserRow:= 0;
  if (Trim(ToRowNumber.Text) <> '') and (Trim(ToRowNumber.Text) <> 'N')  then
    LastUserRow:= StrToInt(Trim(ToRowNumber.Text));



  // Create OLE object for Excel
  ExcelApp := CreateOleObject('Excel.Application');
  try
    // Open the Excel file
    Workbook := ExcelApp.Workbooks.Open(FileName);
    Worksheet := Workbook.Worksheets[WorksheetNUM];
    // Assuming data is in the first sheet
    // Get the range of used cells
    LastRow := Worksheet.UsedRange.Rows.Count;
    LastCol := Worksheet.UsedRange.Columns.Count;

    if  LastUserRow > 0 then
      LastRow := LastUserRow ;

    // Set grid dimensions
    Grid.RowCount := (LastRow - FirstRow) + 2;
    Grid.ColCount := LastCol + 1;

    ProgressBar1.Max := Grid.RowCount ;
    ProgressBar1.Position := 0;

    // Populate the grid with Excel data
    for Row := FirstRow to LastRow do
    begin
      if Row =  FirstRow then
        r := 1
      else  r := r + 1 ;

      for Col := 1 to LastCol do
      begin
//        Grid.Cells[Col - 1, Row - 1] := Worksheet.Cells[Row, Col].Value;
        if Row =  FirstRow then
          Grid.Cells[Col - 1, 0] := Worksheet.Cells[1, Col].Value;
       // if (r > 0)  then
          Grid.Cells[Col - 1, r] := Worksheet.Cells[Row, Col].Value;
      end ;
      ProgressBar1.Position := ProgressBar1.Position + 1;
    end;
    // Close the workbook without saving
    Workbook.Close(False);
  finally
    // Quit Excel application
    ExcelApp.Quit;
  end;
  ProgressBar1.Position := ProgressBar1.Max ;
end;

procedure TFMain.btnShowDataBeforeImportClick(Sender: TObject);
var
  ValuePath : String;
begin
  inherited;
  if mainPageControl.ActivePageIndex = 1 then
  begin
     cbAccept.Checked := False;
    if Trim(edtFilePath.Text) = '' then
    begin
     DM.OpenDialog.Execute;
     ValuePath := DM.OpenDialog.FileName;
     edtFilePath.Text  := ValuePath ;
     StringGrid1.Color :=  clWhite ;
    end
    else
    begin
      ValuePath := edtFilePath.Text ;
    end;

    newsheet := edtWorkSheet.Text ;
    newpath  := edtFilePath.Text ;
    newFrom  := FromRowNumber.Text ;
    newTo    := ToRowNumber.Text ;

   { if ( Oldsheet = newsheet  ) and
      ( Oldpath  = newpath ) and
      ( OldFrom  = newFrom ) and
      ( OldTo    = newTo )     then
        ShowMessage('����� ����� ���� ʘ����  �� ����')
    else
    begin }
      if FileExists(ValuePath) then
      begin
        LoadExcelDataToGrid(ValuePath,StringGrid1);
       // btnTransfer.Enabled := True;

        newsheet := edtWorkSheet.Text ;
        newpath  := edtFilePath.Text ;
        newFrom  := FromRowNumber.Text ;
        newTo    := ToRowNumber.Text ;

        Oldsheet := newsheet ;
        Oldpath  := newpath ;
        OldFrom  := newFrom ;
        OldTo    := newTo ;

       cbAccept.Enabled := True;
       TranferAccept := True;
      end
      else ShowMessage('���� ���� ��� ���� ��� ���� ������ ���� ���� ���� ������');
   // end;
  end
  else  if mainPageControl.ActivePageIndex = 4 then
  begin

    if Trim(edtFilePath2.Text) = '' then
    begin
     DM.OpenDialog.Execute;
     ValuePath := DM.OpenDialog.FileName;
     edtFilePath2.Text  := ValuePath ;

    end
    else
    begin
      ValuePath := edtFilePath2.Text ;
    end;

    newsheet := edtWorkSheet2.Text ;
    newpath  := edtFilePath2.Text ;
    newFrom  := FromRowNumber2.Text ;
    newTo    := ToRowNumber2.Text ;

   { if ( Oldsheet = newsheet  ) and
      ( Oldpath  = newpath ) and
      ( OldFrom  = newFrom ) and
      ( OldTo    = newTo )     then
        ShowMessage('����� ����� ���� ʘ����  �� ����')
    else
    begin }
      if FileExists(ValuePath) then
      begin
         insetDataToTemp;

        newsheet := edtWorkSheet2.Text ;
        newpath  := edtFilePath2.Text ;
        newFrom  := FromRowNumber2.Text ;
        newTo    := ToRowNumber2.Text ;

        Oldsheet := newsheet ;
        Oldpath  := newpath ;
        OldFrom  := newFrom ;
        OldTo    := newTo ;

       TranferAccept := True;

      end
      else ShowMessage('���� ���� ��� ���� ��� ���� ������ ���� ���� ���� ������');
   // end;
  end;
end;



procedure TFMain.btnPrintFromToClick(Sender: TObject);
var from ,torecord ,indx : Integer ;
 countRecord : Integer;
begin
  inherited;
  countRecord := 0 ;
  from     := StrToInt( Trim(edtFromPrint.text)) ;
  torecord := StrToInt(Trim(edtToprint.text)) ;

  if from  >  torecord then
  begin
    ShowMessage('����� ���� � ����� ��� ����� ������');
    edtfromprint.SetFocus;
  end
  else
  begin
    if (from > 0 ) and (torecord >0 ) then
    begin
      for indx := from to torecord   do
      begin
        countRecord :=  countRecord + PrintData(indx);
        Sleep(500);
      end;
      ShowMessage(' ����� ' + inttostr( countRecord) + ' ��� ����� �� ������ �����  �� ' );
      RecordRefresh (gridmode,_UserId);
    end;
  end;


end;

procedure TFMain.PrintMenuItemClick(Sender: TObject);
begin
  inherited;
  if  PrintData(SpprintableDataid.AsInteger) = 1 then
  begin
    ShowMessage(' ����� ' + ' � ' + ' ��� ����� �� ������ �����  �� ' );
    RecordRefresh (gridmode,_UserId);
  end;  

end;

procedure TFMain.AdvGlowButton7Click(Sender: TObject);
begin
  inherited;
  RecordRefresh (0,_UserId);
  pnlMainForm.Title := '�������' ;  
  mainPageControl.ActivePageIndex:= 0 ;
  ContactGrid.Columns[1].Visible := False;
  gridmode := 0;
end;

procedure TFMain.AdvGlowButton8Click(Sender: TObject);
begin
  inherited;
  RecordRefresh (1,_UserId);
  pnlMainForm.Title := '������ ��� ����� ���' ;
  mainPageControl.ActivePageIndex:= 0 ;
  gridmode := 1;
  ContactGrid.Columns[1].Visible := False;
    //
end;

procedure TFMain.btnXLSExportToDBClick(Sender: TObject);
begin
  inherited;
    mainPageControl.ActivePageIndex:= 1 ;
end;

procedure TFMain.AdvGlowButton4Click(Sender: TObject);
begin
  inherited;
    mainPageControl.ActivePageIndex:= 2 ;
end;

procedure TFMain.cbAcceptClick(Sender: TObject);
begin
  inherited;
  if  TranferAccept then
    btnTransfer.Enabled := cbAccept.Checked  ;
  ProgressBar1.Position := 0;  
end;

procedure TFMain.insetDataToTable();
var
  ValuePath, sqlCmd, sqlCmdField : String;
  Cols, Rows, i, j, failure, mYear, intCount: Integer;
  Excel, XLSheet: Variant;
  adoCmd: TADOCommand;
  msgStr : String;
  WorksheetNUM, FirstRow, LastUserRow: Integer;
  HeaderID : Integer;
  HeaderIDStr : string ;
begin
  inherited;

   ValuePath  := newpath ;


  if Trim(newsheet) = '' then
    WorksheetNUM  := 1
  else  WorksheetNUM  := StrToInt(Trim(newsheet)) ;

  FirstRow:= StrToInt(Trim(newFrom)) ;
  if  FirstRow = 0 then
    FirstRow := 1 ;

  LastUserRow:= 0;
  if (Trim(newTo) <> '') and (Trim(newTo) <> 'N')  then
    LastUserRow:= StrToInt(Trim(newTo));


  if Trim(newTo) = 'N' then
    msgStr  := '��� �� ������ ���'+ '"' +Trim(newFrom)  +'"'+ ' �� ��� ' + '"���"' + ' ���� ������� ����� �� ����� � '
  else
    msgStr  := '��� �� ������ ���'+'"' + Trim(newFrom)  +'"' + ' �� ��� ' +'"' + Trim(newTo) +'"' + ' ���� ������� ����� �� ����� � ' ;

  if MessageDlg(msgStr,mtWarning,[mbyes,mbno],0)=mryes then
  begin


    failure:=0;
    try
      Excel:=CreateOleObject('Excel.Application');
    except
      failure:=1;
    end;

    btnTransfer.Enabled := False ;
    cbAccept.Enabled    := False ;
    TranferAccept        := False ;
    
    if failure = 0 then
    begin
      Excel.Visible:=False;
      Excel.WorkBooks.Open(ValuePath);
      XLSheet := Excel.Worksheets[ WorksheetNUM ];
      Cols := XLSheet.UsedRange.Columns.Count;
      Rows := XLSheet.UsedRange.Rows.Count;

      if  LastUserRow > 0 then
       Rows := LastUserRow ;

      ProgressBar1.Max := Rows ;
      ProgressBar1.Position := 0;

      try
        lblProc.Visible := True;
        lblProc.Caption := '�� ��� ������ ���� ǘ��';
        Application.ProcessMessages;

        adoCmd := TADOCommand.Create(nil);
        adoCmd.Connection := Dm.YeganehConnection;

        sqlCmd := ' INSERT INTO [dbo].[FileNameInsert] ([FileName] ,[TabSheet] ,[userid],[servername]) ' +
                  ' VALUES ( '+ QuotedStr(ValuePath) +','+  inttostr(WorksheetNUM) + ','+ IntToStr( _userid)+','+QuotedStr( _ComputerName) +') ' ;


        adoCmd.CommandText := sqlCmd;
        adoCmd.Execute;

        HeaderID := 0 ;
        HeaderIDStr := DM.Qry_GetResult(' Select top 1 id from [dbo].[FileNameInsert]  where userid ='+IntToStr( _userid)+
                                    ' and FileName = '+QuotedStr(ValuePath)+' and TabSheet = '+inttostr(WorksheetNUM)+
                                    ' and servername = '+QuotedStr( _ComputerName)+' order by id desc ',dm.YeganehConnection);
        if HeaderIDStr = '' then
          HeaderIDStr := '0';

        for i := 1 to 1 do
        begin
          if (Trim(Excel.Cells[i, 1].Value) = '' ) then
            Continue;

          sqlCmd := '';
          for j := 1 to Cols do
          begin

            begin
              if Length(sqlCmd) = 0 then
              begin
                sqlCmdField :=  'ColumF1' ;
                sqlCmd := QuotedStr(Excel.Cells[i, j].Value)  ;
              end
              else
              begin
                sqlCmd := sqlCmd + ', ' + QuotedStr(Excel.Cells[i, j].Value);
                sqlCmdField :=  sqlCmdField + ',ColumF'+IntToStr( j ) ;
              end;
            end;
          end;

          sqlCmd := ' INSERT INTO [dbo].[All_Files]( IsHeaderType,FilenameInsertId,' +  sqlCmdField +')'+
           ' values(1,'+HeaderIDStr+',' + sqlCmd + ')';

          adoCmd.CommandText := sqlCmd;
          adoCmd.Execute;
        end;

        intCount := 0;
        for i := FirstRow to Rows do
        begin
          if (Trim(Excel.Cells[i, 1].Value) = '' ) then
            Continue;

          sqlCmd := '';
          for j := 1 to Cols do
          begin

            begin
              if Length(sqlCmd) = 0 then
              begin
                sqlCmdField :=  'ColumF1' ;
                sqlCmd := QuotedStr(Excel.Cells[i, j].Value)  ;
              end
              else
              begin
                sqlCmd := sqlCmd + ', ' + QuotedStr(Excel.Cells[i, j].Value);
                sqlCmdField :=  sqlCmdField + ',ColumF'+IntToStr( j ) ;
              end;
            end;
          end;

          sqlCmd := ' INSERT INTO [dbo].[All_Files]( FilenameInsertId,' +  sqlCmdField +')'+
          ' values('+HeaderIDStr+',' + sqlCmd + ')';

          adoCmd.CommandText := sqlCmd;
          adoCmd.Execute;
          intCount := intCount + 1;
          lblProc.Caption := '�� ��� ������  ' + IntToStr(intCount)  + ' ј���';
          Application.ProcessMessages;
          ProgressBar1.Position := ProgressBar1.Position + 1;
        end;
      finally
        lblProc.Visible := False;
        FreeAndNil(adoCmd);
      end;

      Excel.Workbooks.Close;
      Excel.Quit;
      Excel:=Unassigned;
    end;


    try
      lblProc.Visible := True;
      lblProc.Caption := '�� ��� ������ ���� ...';
      Application.ProcessMessages;

    finally
      lblProc.Visible := False;
      ProgressBar1.Position := ProgressBar1.Max ;
      ShowMessage(' ������  '+ IntToStr(intCount) +' ј��� �� ������ ����� �� ' ) ;
      StringGrid1.Color := $00EBEBD6 ;//  clWhite
    end;
  end;
end;

procedure TFMain.RecordRefresh (IsPrint : Integer = 0; Userid : Integer = 0);
var
   beforeRefreshId : integer ;
begin
  if _OtherUser then
     Userid := 0 ;

  if _DBVersion then
  begin
    if  gridmode = 2 then
      beforeRefreshId := SpprintableDataid.AsInteger ;

    SpprintableData.Close;
    SpprintableData.parameters.ParamByName('@UserID').value        := Userid ;
    SpprintableData.parameters.ParamByName('@IsPrint').value       := IsPrint ;
    SpprintableData.Open;
 // SpprintableData.UpdateFooter;
    if  (SpprintableData.RecordCount > 0) and (gridmode = 2) then
     SpprintableData.Locate('id',beforeRefreshId ,[]);

    StatusBar.panels[3].text :=  ' ����� ј��� : ' + IntToStr(ContactGrid.DataSource.DataSet.recordcount ) ;
  end
  else
  begin
      StatusBar.panels[3].text :=  ' ����� ј��� : ' + IntToStr(GridTemp.DataSource.DataSet.recordcount ) ;
  end;

end;

procedure TFMain.btnNewClick(Sender: TObject);
begin
  inherited;
  DM.Users.Append;
  DBEdit1.SetFocus;
  btnNew.Enabled := False;
  btnEdit.Enabled := False;
  BtnAccept.Enabled := True;
  BtnCancel .Enabled := True;
  pnlInsert.Enabled := True;
end;

procedure TFMain.BtnAcceptClick(Sender: TObject);

var qry : TADOQuery;
begin
  inherited;
   {
  if UserIsSystemUser.AsBoolean then
  begin
     ShowMessage('����� ����� �� ��� ������ ������ � �� ��� ���� ! ');
     exit;
  end;
  }

   BtnAccept.SetFocus ;
   
   qry := TADOQuery.Create(self);
   qry.Connection:= dm.YeganehConnection;
   qry.CommandTimeout := 1200;

   qry.SQL.Text := 'Select id From dbo.Users Where  Username = '''+ DBEdit2.Text + '''  ';
   qry.Open;


   if (qry.RecordCount > 1)  or (trim(DM.UsersUserName.AsString)='YEGANEH') then
   begin
     ShowMessage('��� ������ ʘ���� �� ����');
     exit;
   end;

    
  if  (DM.Users.State in [dsedit,dsinsert] ) then
  begin
    if (DM.UsersTitle.IsNull) or (trim(DM.UsersTitle.AsString)='') then
    begin
       ShowMessage('��� ���� �� ���� ����');
    end;
    if (DM.UsersUserName.IsNull) or (trim(DM.UsersUserName.AsString)='') then
    begin
       ShowMessage('��� ������ �� ���� ����');
    end;

    if DM.UsersPassWord.AsString <> ConfirmPass.Text then
    Begin

      ShowMessage('ʘ��� ���� ���� �� ���� ���� �� ����');
      pass.SetFocus;
    end;

    DM.UsersBeginActiveDate.AsString := _Today;
    DM.UsersEndActiveDate.AsString   := '1404/03/30';

    DM.Users.Post ;

    ShowMessage('������� ��� ��');

    btnNew.Enabled := True;
    btnEdit .Enabled := DM.Users.RecordCount >0  ;
    BtnAccept.Enabled := false;
    BtnCancel .Enabled := false;
    pnlInsert.Enabled := false;
 end;
end;

procedure TFMain.BtnCancelClick(Sender: TObject);
begin
  inherited;
  DM.Users.Cancel;
  btnNew.Enabled := True;
  btnEdit .Enabled := DM.Users.RecordCount >0 ;
  BtnAccept.Enabled := false;
  BtnCancel .Enabled := false;
  pnlInsert.Enabled := false;
end;

procedure TFMain.btnEditClick(Sender: TObject);
begin
  inherited;
  DM.Users.Edit;
  btnNew.Enabled := false;
  btnEdit .Enabled := false ;
  BtnAccept.Enabled := True;
  BtnCancel .Enabled := True;
  pnlInsert.Enabled := True;
end;

procedure TFMain.btnSettingPrinterClick(Sender: TObject);
    {
  function GetDefaultPrinter(Buffer: PChar; var BufferSize: DWord): BOOL; stdcall;
    external 'winspool.drv' name 'GetDefaultPrinterW'; // GetDefaultPrinterA on pre-Unicode Delphi versions

  var
    Buff: string;
    BuffSize, Err: DWord;
  begin
    // Get size of buffer needed.
    GetDefaultPrinter(nil, BuffSize);
    SetLength(Buff, BuffSize);
    // If this call fails, and GetLastError returns
    // ERROR_FILE_NOT_FOUND, there is no default printer assigned.
    if GetDefaultPrinter(PChar(Buff), BuffSize) then
      WriteLn('Default printer: ', Buff)
    else
    begin
      Err := GetLastError();
      if Err = ERROR_FILE_NOT_FOUND then
        WriteLn('No default printer assigned')
      else
        WriteLn('Failed. Error: ', Err);
    end;
    ReadLn;
  end;
  }
begin
  inherited;
   {
  try
   // Printer.PrinterIndex := Dm.GetValue(2100); //�ǁ��
  except
  end;
  }
  //PrinterSetupDialog1.Execute;
  Printer.Printers.IndexOf(_UserPrinterName);

  if DM.PrinterSetupDialog1.Execute() then
  begin

    edtPrinterName.Text := Printer.Printers[Printer.PrinterIndex];
   // ConfigINI.modified := true;

  end;

 // Dm.SetValue(2100,Printer.PrinterIndex); //�ǁ��

   {
  frxReportTestPrinter.PrintOptions.PrnOutFileName := 'name.pdf';
  frxReportTestPrinter.PrintOptions.Copies := 1;
  frxReportTestPrinter.PrintOptions.ShowDialog := false;//True;
  frxReportTestPrinter.PrintOptions.Printer := 'Microsoft Print to PDF';
  frxReportTestPrinter.PrintOptions.
  frxReportTestPrinter.SelectPrinter;
  frxReportTestPrinter.Print;
  }
  //edtPrinterName.Text := frxReportTestPrinter.PrintOptions.Printer ;
end;

procedure TFMain.btnSaveSettingClick(Sender: TObject);
begin
  inherited;


   if  trim(edtPrinterName.text) = '' then
     DM.SetUserSetting('PrinterSelected', 'Microsoft Print to PDF',_UserId )
   else
     DM.SetUserSetting('PrinterSelected', trim(edtPrinterName.text),_UserId ) ;
     
   _UserPrinterName := DM.GetUserSetting('PrinterSelected',_UserId);


   if  cbViewOtherUser.Checked then
     DM.SetUserSetting('OtherUserFileView', 1,_UserId )
   else
     DM.SetUserSetting('OtherUserFileView', 0,_UserId ) ;

   _OtherUser  := DM.GetUserSetting('OtherUserFileView',_UserId);

end;

procedure TFMain.btnAllfielsClick(Sender: TObject);
begin
  inherited;
  RecordRefresh (2,_UserId);
    pnlMainForm.Title := '��� ������ ��' ;  
  mainPageControl.ActivePageIndex:= 0 ;
  ContactGrid.Columns[1].Visible := True;
  gridmode := 2;
end;

function TFMain.PrintData(id: integer): integer ;
begin
  Result := 0 ;
  if loadReportField(id) then
  begin
    try

      MainReport.PrintOptions.Copies := 1;
      MainReport.PrintOptions.ShowDialog := False;
      MainReport.PrintOptions.Printer := _UserPrinterName ;//'Microsoft Print to PDF';
      MainReport.SelectPrinter;

      DMReport.Rep_Show(MainReport,rtPrint );
    finally
      Result := 1 ;
      if _DBVersion then
      begin
        DM.Qry_SetResult('UPDATE [dbo].[All_Files] SET PrintByUserId = '+inttostr(_UserId)+' , IsPrint = 1 , PrinteDateTime = getdate()  where IsPrint = 0 and id = ' +IntToStr(id)  ,dm.YeganehConnection);
      end
      else
      begin
        if ( DM.CDTemp.Locate('id',id,[])) then
          DM.CDTemp.Delete ;
      end;
    end;
  end ;
end;

function TFMain.loadReportField(id :integer): Boolean;
var

  Memo: TfrxMemoView ;
  fontsize : Integer ;
begin
  inherited;
  Result := False ;
  if _DBVersion then
  begin
    if ( SpprintableData.Locate('id',id,[])) then
    begin

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc11')); //B
      if Memo <> nil then
      begin
        Memo.Memo.Text := SpprintableDataColumF2.AsString;// ����� ������ �ј���
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc0')); //C
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF3.AsString ; //������� ��� ������

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc2')); //G
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF7.AsString ; //����� ��� ������

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc4')); //E
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF5.AsString ; //��� ���

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc5')); //I
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF9.AsString ; //��� � ��� �����ϐ�

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc63')); //L
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF12.AsString ; //���

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc64')); //J
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF10.AsString ; //��ǘ ����

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc65')); //K
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF11.AsString ; //��ǘ ����


      Memo := TfrxMemoView(MainReport.FindObject('MemDesc7')); //N
      if Memo <> nil then
      begin
        Memo.Memo.Text := SpprintableDataColumF14.AsString ; //���� ���� ��
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 140 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc8')); //M
      if Memo <> nil then
        Memo.Memo.Text := SpprintableDataColumF13.AsString ; //�� ������

      MainReport.PrepareReport();
      Result := True;
    end;
  end
  else
  begin
    if ( DM.CDTemp.Locate('id',id,[])) then
    begin

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc11')); //B
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF1.AsString;// ����� ������ �ј���
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 100 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;        
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc0')); //C
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF2.AsString ; //������� ��� ������
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 55 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;        
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc2')); //G
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF3.AsString ; //����� ��� ������
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 55 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc4')); //E
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF4.AsString ; //��� ���
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 60 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc5')); //I
      if Memo <> nil then
      Begin
        Memo.Memo.Text := DM.CDTempF5.AsString ; //��� � ��� �����ϐ�
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 50 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc63')); //L
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF9.AsString ; //���
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 20 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc64')); //J
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF10.AsString ; //��ǘ ����
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 30 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc65')); //K
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF11.AsString ; //��ǘ ����
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 20 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc7')); //N
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF12.AsString ; //���� ���� ��  ///////////////////////////////////
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 140 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      Memo := TfrxMemoView(MainReport.FindObject('MemDesc8')); //M
      if Memo <> nil then
      begin
        Memo.Memo.Text := DM.CDTempF8.AsString ; //�� ������
        if Memo.Tag = 0 then
          Memo.Tag := Memo.Font.Size ;
        if Length(Memo.Memo.Text) > 140 then
          Memo.Font.Size := Memo.Tag - 2
        else  Memo.Font.Size := Memo.Tag ;
      end;

      MainReport.PrepareReport();
      Result := True;
    end;
  end;
end;

procedure TFMain.frxReport5AfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
   // ShowMessage('��� �����');
end;

procedure TFMain.frxReport5AfterPrintReport(Sender: TObject);
begin
  inherited;
 // ShowMessage('��� ����� �����');
end;

procedure TFMain.N1Click(Sender: TObject);
begin
  inherited;
  btnShowWordClick(self);
end;

procedure TFMain.N2Click(Sender: TObject);
var
  msgStr : string ;
begin
  inherited;
  if SpprintableDataIsPrint.AsBoolean then
    msgStr :=  '��� �� ����� ����� �� ����� ��� �� ����� ���� ����� �� ����Ͽ'
  else  msgStr :=  '��� �� ����� ����� �� ����� ���� �� ����� ��� ����� �� ����Ͽ'  ;

  if MessageDlg(msgStr,mtWarning,[mbyes,mbno],0)=mryes then
  begin
    if SpprintableDataIsPrint.AsBoolean then
       DM.Qry_SetResult('UPDATE [dbo].[All_Files] SET PrintByUserId = '+inttostr(_UserId)+' , IsPrint = 0 , PrinteDateTime = getdate()  where IsPrint = 1 and id = ' +IntToStr(SpprintableDataid.AsInteger )  ,dm.YeganehConnection)
    else
        DM.Qry_SetResult('UPDATE [dbo].[All_Files] SET PrintByUserId = '+inttostr(_UserId)+' , IsPrint = 1 , PrinteDateTime = getdate()  where IsPrint = 0 and id = ' +IntToStr(SpprintableDataid.AsInteger )  ,dm.YeganehConnection);

    RecordRefresh (gridmode,_UserId);

  end;
end;

procedure TFMain.btnReportLoadClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFMain.frxReportA4AfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
//
end;

procedure TFMain.frxReportA4AfterPrintReport(Sender: TObject);
begin
  inherited;
//
end;

procedure TFMain.frxReportA3AfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
//
end;

procedure TFMain.frxReportA3AfterPrintReport(Sender: TObject);
begin
  inherited;
//
end;

procedure TFMain.frxReport_NewAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
//
end;

procedure TFMain.frxReport_NewAfterPrintReport(Sender: TObject);
begin
  inherited;
//
end;

procedure TFMain.FillCombo;
var
  i: word;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].InheritsFrom(TComboBox) then
    begin
      if (Components[i].tag > 10) and (Components[i].tag <= MaxTagNumberTemp  ) then
      begin
          if Components[i].ClassNameIs('TComboBox') then
          begin
            TComboBox(Components[i]).Items := CBMain.Items ;
            if DM.GetUserSetting(TComboBox(Components[i]).Name ,_UserId) <> '0' then
              TComboBox(Components[i]).ItemIndex := StrToInt(DM.GetUserSetting(TComboBox(Components[i]).Name ,_UserId))
            else
            begin
              if TComboBox(Components[i]).Tag = 24 then
                TComboBox(Components[i]).ItemIndex := 1
              else
              TComboBox(Components[i]).ItemIndex := TComboBox(Components[i]).Tag - 9 ;//StrToInt(TComboBox(Components[i]).Tag) - 10 ;
            end;
          end;
      end;
    end;
  end;
end;

procedure TFMain.insetDataToTemp;
var
  ValuePath, sqlCmd, sqlCmdField : String;
  Cols, Rows, i, j, failure, mYear, intCount: Integer;
  Excel, XLSheet: Variant;
  adoCmd: TADOCommand;
  msgStr : String;
  WorksheetNUM, FirstRow, LastUserRow: Integer;
  HeaderID : Integer;
  HeaderIDStr : string ;
  Component: TComponent;
begin
  inherited;

   ValuePath  := newpath ;

  if Trim(newsheet) = '' then
    WorksheetNUM  := 1
  else  WorksheetNUM  := StrToInt(Trim(newsheet)) ;

  FirstRow:= StrToInt(Trim(newFrom)) ;
  if  FirstRow = 0 then
    FirstRow := 1 ;

  LastUserRow:= 0;
  if (Trim(newTo) <> '') and (Trim(newTo) <> 'N')  then
    LastUserRow:= StrToInt(Trim(newTo));

  if Trim(newTo) = 'N' then
    msgStr  := '��� �� ������ ���'+ '"' +Trim(newFrom)  +'"'+ ' �� ��� ' + '"���"' + ' ���� ������� ����� �� ����� � '
  else
    msgStr  := '��� �� ������ ���'+'"' + Trim(newFrom)  +'"' + ' �� ��� ' +'"' + Trim(newTo) +'"' + ' ���� ������� ����� �� ����� � ' ;

  if MessageDlg(msgStr,mtWarning,[mbyes,mbno],0)=mryes then
  begin


    failure:=0;
    try
      Excel:=CreateOleObject('Excel.Application');
    except
      failure:=1;
    end;

    btnTransfer.Enabled := False ;
    cbAccept.Enabled    := False ;
    TranferAccept        := False ;
    
    if failure = 0 then
    begin
      Excel.Visible:=False;
      Excel.WorkBooks.Open(ValuePath);
      XLSheet := Excel.Worksheets[ WorksheetNUM ];
      Cols := ColCountTemp  ;// XLSheet.UsedRange.Columns.Count;
      Rows := XLSheet.UsedRange.Rows.Count;

      if  LastUserRow > 0 then
       Rows := LastUserRow ;

      ProgressBar2.Max := Rows ;
      ProgressBar2.Position := 0;

      try
        lblProcTemp.Visible := True;
        lblProcTemp.Caption := '�� ��� ������ ���� ǘ��';
        Application.ProcessMessages;


        intCount := 0;
        for i := FirstRow to Rows do
        begin
          if (Trim(Excel.Cells[i, 1].Value) = '' ) then
            Continue;

          // ��� ј��� ����
          DM.CDTemp.Append; // �� ClientDataSet1.Insert;

          for j := 1 to Cols do
          begin

            // ����� ������ ������
            //CDTemp.FieldByName('ID').AsInteger := 1;

            Component := FindComponent('Cb'+inttostr(j));
            if (Component <> nil) and (Component is TComboBox) then
            begin
              if TComboBox(Component).Itemindex > 0 then
                DM.CDTemp.FieldByName('F'+inttostr(j)).AsString := Excel.Cells[i,TComboBox(Component).Itemindex ].Value;
            end;

           end;
          // ����� �������
          DM.CDTemp.Post;

          intCount := intCount + 1;
          lblProcTemp.Caption := '�� ��� ������  ' + IntToStr(intCount)  + ' ј���';
          Application.ProcessMessages;
          ProgressBar2.Position := ProgressBar2.Position + 1;
        end ;
      finally
        lblProcTemp.Visible := False;
        FreeAndNil(adoCmd);
      end;

      Excel.Workbooks.Close;
      Excel.Quit;
      Excel:=Unassigned;
    end;

   // if dm.Secretariats.Active then
   //   dm.Secretariats.Locate('SecId',_DefaultSec,[]);

    try
      lblProcTemp.Visible := True;
      lblProcTemp.Caption := '�� ��� ������ ���� ...';
      Application.ProcessMessages;


    finally
      lblProcTemp.Visible := False;
      ProgressBar2.Position := ProgressBar2.Max ;
      ShowMessage(' ������  '+ IntToStr(intCount) +' ј��� �� ������ ����� �� ' ) ;
      //StringGrid1.Color := $00EBEBD6 ;//  clWhite
      RecordRefresh (gridmode,_UserId);
      pnlTempPrint.Minimized := false ;
      pnlSettingandTransfer .Minimized := true ;
    end;
  end;
end;

procedure TFMain.Button1Click(Sender: TObject);
begin
  inherited;
  DMReport.Rep_Show(MainReport,rtDesign );
end;

procedure TFMain.btnXLSExportToTempClick(Sender: TObject);
begin
  inherited;
 // RecordRefresh (0,_UserId);
 // pnlMainForm.Title := '�������' ;
  mainPageControl.ActivePageIndex:= 4 ;
 // ContactGrid.Columns[1].Visible := False;
 // gridmode := 0;
end;

procedure TFMain.AdvGlowButton9Click(Sender: TObject);

var
  ValuePath : String;
begin
  inherited;
   DM.OpenDialog.Execute;
  ValuePath := DM.OpenDialog.FileName;
  edtFilePath2.Text := ValuePath ;
  newpath  := edtFilePath2.Text ;
 // LoadExcelDataToGrid(ValuePath,StringGrid1);

end;

procedure TFMain.AdvGlowButton11Click(Sender: TObject);
begin
  inherited;
 // 
end;

procedure TFMain.Button2Click(Sender: TObject);
begin
  inherited;
//
end;

procedure TFMain.Button3Click(Sender: TObject);
begin
  inherited;
//
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SetTempSetting ;
end;

procedure TFMain.SetTempSetting;
var
  i: word;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].InheritsFrom(TComboBox) then
    begin
      if (Components[i].tag > 10) and (Components[i].tag <= MaxTagNumberTemp  ) then
      begin
          if Components[i].ClassNameIs('TComboBox') then
          begin
            DM.SetUserSetting(TComboBox(Components[i]).Name, IntToStr(TComboBox(Components[i]).ItemIndex),_UserId ) ;
          end;
      end;
    end;
  end;
   if  trim(edtPrinterName2.text) = '' then
     DM.SetUserSetting('PrinterSelected', 'Microsoft Print to PDF',_UserId )
   else
     DM.SetUserSetting('PrinterSelected', trim(edtPrinterName2.text),_UserId ) ;
     
   _UserPrinterName := DM.GetUserSetting('PrinterSelected',_UserId);
end;

procedure TFMain.btnBackClick(Sender: TObject);
begin
  inherited;

 if mainPageControl.ActivePageIndex = 0 then
 begin
   mainPageControl.ActivePageIndex := 4  ;
   BtnNext.Enabled := True ;
   btnBack.Enabled := True ;
 end
 else if mainPageControl.ActivePageIndex = 4 then
 begin
   mainPageControl.ActivePageIndex := 2 ;
   btnBack.Enabled := False ;
   BtnNext.Enabled := True ;
 end;
//
end;

procedure TFMain.BtnNextClick(Sender: TObject);
begin
  inherited;
  if mainPageControl.ActivePageIndex = 2 then
  begin
    mainPageControl.ActivePageIndex := 4 ;
    btnBack.Enabled := True ;
    BtnNext.Enabled := True ;
  end
  else if mainPageControl.ActivePageIndex = 4 then
  begin
    mainPageControl.ActivePageIndex := 0 ;
    BtnNext.Enabled := False ;
    btnBack.Enabled := True ;
  end;
end;

procedure TFMain.AdvGlowButton14Click(Sender: TObject);
begin
  inherited;
  DMReport.Rep_LoadFile (MainReport,'MainReport' );
  DMReport.Rep_Show(MainReport,rtDesign );
end;

procedure TFMain.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if  PrintData(DM.CDTempid.AsInteger) = 1 then
  begin
    ShowMessage(' ����� ' + ' � ' + ' ��� ����� �� ������ �����  �� ' );
    RecordRefresh (gridmode,_UserId);
  end; 
end;

procedure TFMain.MenuItem2Click(Sender: TObject);
begin
  inherited;
  btnShowWordClick(self);
end;

procedure TFMain.MenuItem3Click(Sender: TObject);

var
  msgStr : string ;
begin
  inherited;
  msgStr :=  '��� �� ��� ��� ј��� ���� �� ����Ͽ'  ;

  if MessageDlg(msgStr,mtWarning,[mbyes,mbno],0)=mryes then
  begin

    DM.CDTemp.Delete;
    RecordRefresh (gridmode,_UserId);
  end;
end;

procedure TFMain.AdvGlowButton10Click(Sender: TObject);
var
  countRecord : Integer;
  from, torecord,indx : Integer;
begin
  inherited;
  countRecord := 0 ;
  from     := StrToInt( Trim(edtFromPrint2.text)) ;
  torecord := StrToInt(Trim(edtToprint2.text)) ;

  if from  >  torecord then
  begin
    ShowMessage('����� ���� � ����� ��� ����� ������');
    edtfromprint2.SetFocus;
  end
  else
  begin
    if (from > 0 ) and (torecord >0 ) then
    begin
      for indx := from to torecord   do
      begin
        if ( DM.CDTemp.Locate('F14',indx,[])) then
        begin
          countRecord :=  countRecord + PrintData(DM.CDTempid.AsInteger);
          Sleep(500);
        end;
      end;
      ShowMessage(' ����� ' + inttostr( countRecord) + ' ��� ����� �� ������ �����  �� ' );
      RecordRefresh (gridmode,_UserId);
    end;
  end;


end;

procedure TFMain.AdvGlowButton6Click(Sender: TObject);
begin
  inherited;
  Printer.Printers.IndexOf(_UserPrinterName);

  if DM.PrinterSetupDialog1.Execute() then
  begin

    edtPrinterName2.Text := Printer.Printers[Printer.PrinterIndex];

   if  trim(edtPrinterName2.text) = '' then
     DM.SetUserSetting('PrinterSelected', 'Microsoft Print to PDF',_UserId )
   else
     DM.SetUserSetting('PrinterSelected', trim(edtPrinterName2.text),_UserId ) ;
     
   _UserPrinterName := DM.GetUserSetting('PrinterSelected',_UserId);

  end;
end;

procedure TFMain.AdvGlowButton15Click(Sender: TObject);
var
  msgStr : string ;
begin
  inherited;
  msgStr :=  '��� �� ��� ����� ������� ����� �� ����Ͽ'  ;

  if MessageDlg(msgStr,mtWarning,[mbyes,mbno],0)=mryes then
  begin
    DM.CDTemp.EmptyDataSet ;
    RecordRefresh (gridmode,_UserId);
  end;
end;

procedure TFMain.AdvGlowButton13Click(Sender: TObject);
begin
  inherited;
  if DMReport.Rep_CorrectDesign('MainReport', MainReport )then
    MainReport := DMReport. frxReport_New_Backup ;
end;

procedure TFMain.btnRenamePicClick(Sender: TObject);
var
  I,j,k : Integer ;
  Path : String;
  tempStr,FoldernameStr :  string ;
begin
  inherited;
 // ShellTreeView1.Visible:=True;
 { try
    // ���� ������� �� ����
   ShellTreeView1.Visible:=True;
   DM. RenameImagesInFolder(EditPath.Text, 'NewImage');
  except
    on E: Exception do
      Writeln('Error: ' + E.Message);
  end; }
  Memo1.clear ;
  ShellTreeView1.Visible:= False ;

  if (Trim(EditPath.Text) = '') then
  begin
    ShowMessage('���� ���� ������ ������');
    Exit;
  end;

  if DirectoryExists(Trim(EditPath.Text)) then
  begin
    ShellTreeView1.Path := Trim(EditPath.Text);
    ShellTreeView1.Selected.Expand(True);
  end
  else
  begin
    ShowMessage('���� ���� ��� ���� ���!');
    exit ;
  end;

  if rbPicReverce.ItemIndex = 0 then
    tempStr := '��� �� ����� ��� ژ��� ����� �� ����Ͽ'
  else if rbPicReverce.ItemIndex = 1 then
    tempStr := '��� �� ����� ��� ژ��� �� ����� ��� ������ ژ� ��� ����� �� ����Ͽ'
  else if rbPicReverce.ItemIndex = 2 then
    tempStr := '��� �� ��� ������ ژ� ��� ����� �� ����Ͽ'
  else if rbPicReverce.ItemIndex = 3 then
    tempStr := '��� �� ��� ����� ژ� �� ����� ����� �� ����Ͽ' ;

  //memo1.Lines.Add ( '����� �� �� ��� ����� ����� �� ��� ' ) ;
  memo1.Lines.Add ( '����� �� ���� ��� ����� ����� �� ��� ' ) ;



  if MessageDlg(tempStr,mtWarning,[mbyes,mbno],0)=mryes then
  begin
    if  ShellTreeView1.Selected.GetLastChild.Index >= 0 then
    begin
      for I:=0 to ShellTreeView1.Selected.GetLastChild.Index do
      begin
        Path := ShellTreeView1.Path+'\'+ShellTreeView1.Selected.Item[I].Text;
        ShellTreeView2.Path := Path ;
        ShellTreeView2.Selected.Expand(True);
        if  ShellTreeView2.Selected.GetLastChild.Index >= 0 then
        begin
          for j:=0 to ShellTreeView2.Selected.GetLastChild.Index do
          begin
            //Path := ShellTreeView2.Path+'\'+ShellTreeView2.Selected.Item[j].Text;
            //DM. RenameImagesInFolder(Path, 'NewImage',Memo1,rbPicReverce.ItemIndex);
            Path := ShellTreeView2.Path+'\'+ShellTreeView2.Selected.Item[J].Text;

            ShellTreeView3.Path := Path ;
            ShellTreeView3.Selected.Expand(True);
            if  ShellTreeView3.Selected.GetLastChild.Index >= 0 then
            begin
              for K:=0 to ShellTreeView3.Selected.GetLastChild.Index do
              begin
                Path := ShellTreeView3.Path+'\'+ShellTreeView3.Selected.Item[K].Text;
                FoldernameStr := ShellTreeView3.Selected.Item[K].Text;
                DM. RenameImagesInFolder(Path, FoldernameStr ,Memo1,rbPicReverce.ItemIndex);
              end;
            end
            else
            begin
              Path := ShellTreeView2.Path+'\'+ShellTreeView2.Selected.Item[J].Text;
              FoldernameStr := ShellTreeView2.Selected.Item[J].Text;
              DM. RenameImagesInFolder(Path, FoldernameStr ,Memo1,rbPicReverce.ItemIndex);
            end;
          end;
        end
        else
        begin
          Path := ShellTreeView1.Path+'\'+ShellTreeView1.Selected.Item[I].Text;
          FoldernameStr := ShellTreeView1.Selected.Item[I].Text;
          DM. RenameImagesInFolder(Path, FoldernameStr,Memo1,rbPicReverce.ItemIndex);
        end;
      end ;
    end
    else
    begin
      Path := ShellTreeView1.Path;
      FoldernameStr := ShellTreeView1.Selected.Item[0].Text;
      DM. RenameImagesInFolder(Path, FoldernameStr ,Memo1,rbPicReverce.ItemIndex);
    end;
    
  end ;
end;

procedure TFMain.ShellTreeView1DblClick(Sender: TObject);
begin
  inherited;
  EditPath.Text := ShellTreeView1.SelectedFolder.PathName;
  ShellTreeView1.Visible:=False;
  try
    // ���� ������� �� ����
   ShellTreeView1.Visible:=True;
 //  DM. RenameImagesInFolder(EditPath.Text, 'NewImage');
  except
    on E: Exception do
      Writeln('Error: ' + E.Message);
  end;

end;

procedure TFMain.AdvGlowButton17Click(Sender: TObject);
begin
  inherited;
  ShellTreeView1.Visible:= not ShellTreeView1.Visible ;
  
end;

procedure TFMain.btnpicExcelCreateClick(Sender: TObject);
var
  I,j,k : Integer ;
  Path : String;
  allCounttif,
  Counttif : Integer ;

  Prefix,FolderPath : string;
begin
  inherited;
  Prefix := 'MA_'  ;

  Memo1.clear ;

  ShellTreeView1.Visible:= False ;

  if (Trim(EditPath.Text) = '') then
  begin
    ShowMessage('���� ���� ������ ������');
    Exit;
  end;

  if DirectoryExists(Trim(EditPath.Text)) then
  begin
    ShellTreeView1.Path := Trim(EditPath.Text);
    ShellTreeView1.Selected.Expand(True);
  end
  else
  begin
    ShowMessage('���� ���� ��� ���� ���!');
    exit ;
  end;
  //memo1.Lines.Add ( '����� �� �� ��� ����� ����� �� ��� ' ) ;
  memo1.Lines.Add ( '����� �� ���� ��� ����� ����� �� ��� ' ) ;

  FolderPath :=  Trim(EditPath.Text+ '_'+'MyExcelFile.xlsx') ;

  if FileExists(FolderPath) then
  begin
     if MessageDlg('���� �� ���� ���� ���� ��� �� ������ ��� ��Ͽ',mtWarning,[mbyes,mbno],0)=mryes then
       deleteFile(FolderPath) ;
  end;
  
  memo1.Lines.Add ( '  MA_    ����� ���� ������� �� ������ ' ) ;
  memo1.Lines.Add ( '  ' ) ;

  if  ShellTreeView1.Selected.GetLastChild.Index >= 0 then
  begin
    for I:=0 to ShellTreeView1.Selected.GetLastChild.Index do
    begin
      Path := ShellTreeView1.Path+'\'+ShellTreeView1.Selected.Item[I].Text;
      ShellTreeView2.Path := Path ;
      ShellTreeView2.Selected.Expand(True);
      if  ShellTreeView2.Selected.GetLastChild.Index >= 0 then
      begin
        for j:=0 to ShellTreeView2.Selected.GetLastChild.Index do
        begin
          {
          Path := ShellTreeView2.Path+'\'+ShellTreeView2.Selected.Item[j].Text;
          memo1.Lines.Add (  '  ����   ' + Path   ) ;
          memo1.Lines.Add (  ' ... �� ��� �����  '   ) ;
          Counttif := DM.CountFilesInFolder( Path, Prefix  );
           memo1.Lines.Add (  '  '+  IntToStr(Counttif) + '  = ����� ���� ���� ���  ') ;
          DM. CreateExcelImagesInFolder(FolderPath, ShellTreeView2.Selected.Item[j].Text,Counttif);
          }
          Path := ShellTreeView2.Path+'\'+ShellTreeView2.Selected.Item[j].Text;
          ShellTreeView3.Path := Path ;
          ShellTreeView3.Selected.Expand(True);
          if  ShellTreeView3.Selected.GetLastChild.Index >= 0 then
          begin
            for k:=0 to ShellTreeView3.Selected.GetLastChild.Index do
            begin
              Path := ShellTreeView3.Path+'\'+ShellTreeView3.Selected.Item[k].Text;
              memo1.Lines.Add (  '  ����   ' + Path   ) ;
              memo1.Lines.Add (  ' ... �� ��� �����  '   ) ;
              Counttif := DM.CountFilesInFolder( Path, Prefix  );
              memo1.Lines.Add (  '  '+  IntToStr(Counttif) + '  = ����� ���� ���� ���  ') ;
              allCounttif := DM.CountFilesInFolder( Path, Prefix ,true );
              memo1.Lines.Add (  '  '+ IntToStr(Counttif) + '  = ����� �� ������� ���� ���  ') ;
              DM. CreateExcelImagesInFolder(FolderPath, ShellTreeView3.Selected.Item[k].Text,Counttif,allCounttif);

            end;
          end
          else
          begin
            Path := ShellTreeView1.Path+'\'+ShellTreeView1.Selected.Item[I].Text;
              memo1.Lines.Add (  '  ����   ' + Path   ) ;
              memo1.Lines.Add (  ' ... �� ��� �����  '   ) ;
            Counttif := DM.CountFilesInFolder( Path, Prefix  );
            memo1.Lines.Add (  '  '+ IntToStr(Counttif) + '  = ����� ���� ���� ���  ') ;
            allCounttif := DM.CountFilesInFolder( Path, Prefix ,true );
            memo1.Lines.Add (  '  '+ IntToStr(Counttif) + '  = ����� �� ������� ���� ���  ') ;
            DM. CreateExcelImagesInFolder(FolderPath, ShellTreeView1.Selected.Item[I].Text,Counttif,allCounttif);

          end;

        end;
      end
      else
      begin
        Path := ShellTreeView1.Path+'\'+ShellTreeView1.Selected.Item[I].Text;
          memo1.Lines.Add (  '  ����   ' + Path   ) ;
          memo1.Lines.Add (  ' ... �� ��� �����  '   ) ;
        Counttif := DM.CountFilesInFolder( Path, Prefix  );
        memo1.Lines.Add (  '  '+ IntToStr(Counttif) + '  = ����� ���� ���� ���  ') ;
        allCounttif := DM.CountFilesInFolder( Path, Prefix ,true );
        memo1.Lines.Add (  '  '+ IntToStr(Counttif) + '  = ����� �� ������� ���� ���  ') ;
        DM. CreateExcelImagesInFolder(FolderPath, ShellTreeView1.Selected.Item[I].Text,Counttif,allCounttif);

      end;
    end ;
  end
  else
  begin
    Path := ShellTreeView1.Path;
   // DM. CreateExcelImagesInFolder(Path, 'NewImage3',rbPicReverce.ItemIndex);
          memo1.Lines.Add (  '  ����   ' + Path   ) ;
          memo1.Lines.Add (  ' ... �� ��� �����  '   ) ;
    Counttif := DM.CountFilesInFolder( Path, Prefix  );
    memo1.Lines.Add (  '  '+  IntToStr(Counttif) + '  = ����� ���� ���� ���  ') ;
    allCounttif := DM.CountFilesInFolder( Path, Prefix ,true );
    memo1.Lines.Add (  '  '+ IntToStr(Counttif) + '  = ����� �� ������� ���� ���  ') ;
    DM. CreateExcelImagesInFolder(FolderPath, ExtractFileName(Path),Counttif,allCounttif);

  end;

  memo1.Lines.Add ( ' ' ) ;
  memo1.Lines.Add ( '--- ���� ǘ�� ---' ) ;
  memo1.Lines.Add ( FolderPath ) ;
  memo1.Lines.Add ( '���� ���� ǘ�� �� ������ �� ���� ���� ����� ��' ) ;

end;

procedure TFMain.AdvGlowButton24Click(Sender: TObject);
begin
  inherited;
  DM.OpenDialog.Execute;
  edtExcelRoot.Text := DM.OpenDialog.FileName;
end;

procedure TFMain.AdvGlowButton22Click(Sender: TObject);
begin
  inherited;
  ShellTreeView4.Visible:= not ShellTreeView4.Visible ;
end;

procedure TFMain.btnExcelTransferClick(Sender: TObject);
begin
  inherited;
  if edtExcelRoot.Text <> '' then
      if FileExists(edtExcelRoot.Text) then
      begin
         insetDataToTempFolder;

      end
      else ShowMessage('���� ���� ��� ���� ��� ���� ������ ���� ���� ���� ������')
  else ShowMessage('���� ǘ�� ������ ������');

end;

procedure TFMain.btnFolderCreateClick(Sender: TObject);
var
  node : TTreeNode ;
  masterPath : String;
  SelectedNode, ParentNode: TTreeNode;
  ParentIndex: Integer;
  foldername : string ;
  countFolder : Integer;
begin
  inherited;
  foldername := '' ;
  countFolder := 0 ;
  if edtFolderRoot.Text = '' then
  begin
    ShowMessage('���� ���� � ��� ����� ���� ���� ������');
    edtFolderRoot.SetFocus;
    Exit;
  end;
  if YDBGrid1.DataSource.DataSet.RecordCount = 0 then
  begin
    ShowMessage('�� ������ ��� ������ ���� �����');
    YDBGrid1.SetFocus;
    Exit;
  end;

  if (edtFromfolder.Text = '') or (edtFromfolder.Text ='0') then
  begin
    ShowMessage('���� �� ����� ���� �� ������ ������');
    edtFromfolder.SetFocus;
    Exit;
  end;

  if (edtToFolder.Text = '') or (edtToFolder.Text ='0') then
  begin
    ShowMessage('���� �� ����� ���� ������ ������');
    edtToFolder.SetFocus;
    Exit;
  end;

  masterPath := trim(edtFolderRoot.Text) ;

  masterPath :=  StringReplace(masterPath, '\\\\', '\', [rfReplaceAll, rfIgnoreCase]);
  masterPath :=  StringReplace(masterPath, '\\\', '\', [rfReplaceAll, rfIgnoreCase]);
  masterPath :=  StringReplace(masterPath, '\\', '\', [rfReplaceAll, rfIgnoreCase]);

  if copy (masterPath ,length(masterPath),1) = '\' then
   masterPath := copy(masterPath ,1, length(masterPath)-1 ) ;

  SelectedNode := ShellTreeView4.Selected; // ��� �����ȝ���
  ParentNode  := SelectedNode.Parent; // ��� ����

  // ���� ������ �� �������� ����� ����
  //if not DirectoryExists(edtFolderRoot.Text) then
  if YDBGrid1.DataSource.DataSet.RecordCount >0 then
  begin
    try
      try
         YDBGrid1.DataSource.DataSet.First;
         while not (YDBGrid1.DataSource.DataSet.Eof) do
         begin
          if  (YDBGrid1.DataSource.DataSet.FieldByName('F14').AsInteger  >= StrToInt(edtFromfolder.Text)) and
              (YDBGrid1.DataSource.DataSet.FieldByName('F14').AsInteger  <= StrToInt(edtToFolder.Text)) then
          begin
            //������� ���� �� ���� ���� ��� �� ����� �흘��
            foldername := StringReplace(trim(YDBGrid1.DataSource.DataSet.FieldByName('F1').AsString) ,'/','.', [rfReplaceAll, rfIgnoreCase]);
            ForceDirectories(masterPath+'\'+foldername);
            inc(countFolder) ;
            //CreateDir(edtFolderRoot.Text);
          end;

          YDBGrid1.DataSource.DataSet.Next;
        end;
      finally
        if ParentNode <> nil then
          ShellTreeView4.Refresh(ParentNode);

       // ShellTreeView4.Repaint;
        ShowMessage('���� �� �� ������ ��� ����' + '  '+   IntToStr(countFolder ));
      end;
    except

       ShowMessage('������ ��� ������� �� ��� ����� �� ���� ������ ������ ����');
    end;
  end ;
  {
  else
  begin
    ShowMessage('���� �� ��� ���� ����.');
  end;
   }
end;

procedure TFMain.ShellTreeView4DblClick(Sender: TObject);
begin
  inherited;
  edtFolderRoot.Text := ShellTreeView4.SelectedFolder.PathName;
  ShellTreeView4.Visible:=False;
  try
    // ���� ������� �� ����
   ShellTreeView4.Visible:=True;
 //  DM. RenameImagesInFolder(EditPath.Text, 'NewImage');
  except
    on E: Exception do
      Writeln('Error: ' + E.Message);
  end;
end;

procedure TFMain.insetDataToTempFolder;
var
  ValuePath, sqlCmd, sqlCmdField : String;
  Cols, Rows, i, j, failure, mYear, intCount: Integer;
  Excel, XLSheet: Variant;
  adoCmd: TADOCommand;
  msgStr : String;
  WorksheetNUM, FirstRow, LastUserRow: Integer;
  HeaderID : Integer;
  HeaderIDStr : string ;
  Component: TComponent;
begin
  inherited;

    newsheet := edtExcelWorkSheet.Text ;
    newpath  := edtExcelRoot.Text ;
    newFrom  := edtExcelFrom.Text ;
    newTo    := edtExcelTo.Text ;

   ValuePath  := newpath ;

  if Trim(newsheet) = '' then
    WorksheetNUM  := 1
  else  WorksheetNUM  := StrToInt(Trim(newsheet)) ;

  FirstRow:= StrToInt(Trim(newFrom)) ;
  if  FirstRow = 0 then
    FirstRow := 1 ;

  LastUserRow:= 0;
  if (Trim(newTo) <> '') and (Trim(newTo) <> 'N')  then
    LastUserRow:= StrToInt(Trim(newTo));

  if Trim(newTo) = 'N' then
    msgStr  := '��� �� ������ ���'+ '"' +Trim(newFrom)  +'"'+ ' �� ��� ' + '"���"' + ' ���� ������� ����� �� ����� � '
  else
    msgStr  := '��� �� ������ ���'+'"' + Trim(newFrom)  +'"' + ' �� ��� ' +'"' + Trim(newTo) +'"' + ' ���� ������� ����� �� ����� � ' ;

  if MessageDlg(msgStr,mtWarning,[mbyes,mbno],0)=mryes then
  begin


    failure:=0;
    try
      Excel:=CreateOleObject('Excel.Application');
    except
      failure:=1;
    end;

    btnExcelTransfer.Enabled := False ;
    //cbAccept.Enabled    := False ;
    //TranferAccept        := False ;
    
    if failure = 0 then
    begin
      Excel.Visible:=False;
      Excel.WorkBooks.Open(ValuePath);
      XLSheet := Excel.Worksheets[ WorksheetNUM ];
      Cols := ColCountTemp  ;// XLSheet.UsedRange.Columns.Count;
      Rows := XLSheet.UsedRange.Rows.Count;

      if  LastUserRow > 0 then
       Rows := LastUserRow ;

      ProgressBar3.Max := Rows ;
      ProgressBar3.Position := 0;

      try
        lblProcTempExcel.Visible := True;
        lblProcTempExcel.Caption := '�� ��� ������ ���� ǘ��';
        Application.ProcessMessages;


        intCount := 0;
        for i := FirstRow to Rows do
        begin
          if (Trim(Excel.Cells[i, 1].Value) = '' ) then
            Continue;

          // ��� ј��� ����
          DM.CDTemp.Append; // �� ClientDataSet1.Insert;

        //  for j := 1 to Cols do
        //  begin

            // ����� ������ ������
            //CDTemp.FieldByName('ID').AsInteger := 1;
            intCount := intCount + 1;
            Component := FindComponent('CBFildName');
            if (Component <> nil) and (Component is TComboBox) then
            begin
              if TComboBox(Component).Itemindex > 0 then
                DM.CDTemp.FieldByName('F1').AsString := Excel.Cells[i,TComboBox(Component).Itemindex ].Value;
              DM.CDTemp.FieldByName('F14').AsInteger :=  intCount  ;
            end;

        //   end;
          // ����� �������
          DM.CDTemp.Post;

          //intCount := intCount + 1;
          lblProcTempExcel.Caption := '�� ��� ������  ' + IntToStr(intCount)  + ' ј���';
          Application.ProcessMessages;
          ProgressBar3.Position := ProgressBar3.Position + 1;
        end ;
      finally
        lblProcTempExcel.Visible := False;
        FreeAndNil(adoCmd);
      end;

      Excel.Workbooks.Close;
      Excel.Quit;
      Excel:=Unassigned;
    end;

   // if dm.Secretariats.Active then
   //   dm.Secretariats.Locate('SecId',_DefaultSec,[]);

    try
      lblProcTempExcel.Visible := True;
      lblProcTempExcel.Caption := '�� ��� ������ ���� ...';
      Application.ProcessMessages;


    finally
      lblProcTemp.Visible := False;
      ProgressBar3.Position := ProgressBar3.Max ;
      ShowMessage(' ������  '+ IntToStr(intCount) +' ј��� �� ������ ����� �� ' ) ;
      //StringGrid1.Color := $00EBEBD6 ;//  clWhite
      RecordRefresh (gridmode,_UserId);
      pnlTempPrint.Minimized := false ;
      pnlSettingandTransfer .Minimized := true ;
    end;
  end;

end;

end.
