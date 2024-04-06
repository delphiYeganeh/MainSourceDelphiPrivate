unit PaymentImportFromExcelU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Grids, DBGrids, Menus, ActnList,
  StdCtrls, Buttons, YDbgrid,ComObj, DBCtrls, Mask, UemsVCL, ExtCtrls,
  SolarCalendarPackage;

type
  TFrPaymentImportFromExcel = class(TYBaseForm)
    YDBGrid1: TYDBGrid;
    Q_DeleteT: TADOQuery;
    TbExcel: TADOTable;
    dTbExcel: TDataSource;
    StatusLabel: TLabel;
    MajorAccount: TDBLookupComboBox;
    Q_Tmp: TADOQuery;
    ListBox1: TListBox;
    TbExcelRadif: TIntegerField;
    TbExcelPersonCode: TStringField;
    TbExcelMelliCode: TStringField;
    TbExcelName: TWideStringField;
    TbExcelFamily: TWideStringField;
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    TbExcelAmount: TIntegerField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Button5: TBitBtn;
    Label7: TLabel;
    Label1: TLabel;
    EdtPathExcel: TEdit;
    MEDate: TSolarDatePicker;
    OpenExcelFile: TOpenDialog;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    EdtComment: TEdit;
    GroupBox2: TGroupBox;
    rbInsert: TRadioButton;
    rbDontInsert: TRadioButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      Function import(tab: TADOTable; SFile: string): Boolean;
      FUNCTION CheckExcelFileForError:Boolean;

  end;

var
  FrPaymentImportFromExcel: TFrPaymentImportFromExcel;

implementation

uses BusinessLayer, dmu, YShamsiDate;

{$R *.dfm}

procedure TFrPaymentImportFromExcel.BitBtn2Click(Sender: TObject);
begin
  inherited;
  import(TbExcel,Trim(EdtPathExcel.Text));

end;

procedure TFrPaymentImportFromExcel.BitBtn4Click(Sender: TObject);
begin
  inherited;
if import(TbExcel,'D:\Excel\File_A.xls') then
  ShowMessage('D:\Excel\File_A.xls has been imported!');

end;

Function TFrPaymentImportFromExcel.import(tab: TADOTable; SFile: string): Boolean;
Const    xlCellTypeLastCell = $0000000B;
Var
      XLApp, Sheet: OLEVariant;
      x, y, r,row: Integer;
begin
        tab.CLOSE;
        Q_DeleteT.ExecSQL;
        Result := False;
        XLApp := CreateOleObject('Excel.Application');
        Try
        XLApp.Visible := False;
        XLApp.Workbooks.Open(SFile); //open file
        Sheet := XLApp.Workbooks[ExtractFileName(SFile)].WorkSheets[1];
        Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
        row := XLApp.ActiveCell.Row;
        y := XLApp.ActiveCell.Column;
        x := 2; //number of row in excel start import

        tab.Open;
//        Repeat
        WHILE   x<row+1 DO
        BEGIN
            tab.Append;
            for r := 1 to y do
              tab.Fields[y-r].AsString:= trim(XLApp.Cells.Item[x, r].Value);

            r:=1; // donít remove this value, to keep value columns
            tab.Post;
//            IF ROW<>2 THEN
             Inc(x, 1);
        END;//WHILE     
//          Until XLApp.Cells.Item[x, r].Value='';
//          Until x=row+1;
        Finally

        IF not VarIsEmpty(XLApp) then
        Begin
            XLApp.Quit;
            XLAPP := Unassigned;
            Sheet := Unassigned;
            Result := True;
        End;

        end;
END;

procedure TFrPaymentImportFromExcel.BitBtn1Click(Sender: TObject);
var _Date:String;
    _DocNo:string;
    _Cr:Integer;
begin
  inherited;

   if  not CheckExcelFileForError   then//dosent have error
   begin
       DM.YeganehConnection.BeginTrans;
       TRY
           _DOCNo:=Get_NewDocumnetNo(MEDate.Text);
           TbExcel.First;
           WHILE NOT TbExcel.Eof DO
           BEGIN
            _Date:=Txt_Del254(MEDate.Text);
            IF RadioButton1.Checked THEN
               _CR:=Get_AccountID_ByPersonalNo(TbExcel.FIELDBYNAME('PersonCode').AsString)
            ELSE IF RadioButton2.Checked THEN
               _CR:=Get_AccountID_ByAccountNo(TbExcel.FIELDBYNAME('PersonCode').AsString);

            Insert_Payment( 2  ,
                            _Cr,
                            MajorAccount.KeyValue,
                            0                    ,
                            TbExcel.FIELDBYNAME('Amount').AsInteger,
                            'Ê«—Ì“ „«ÂÌ«‰Â «“ ÿ—Ìﬁ ›«Ì· Excel ',
                            0,
                            _DOCNo,
                            _Date,
                            0,
                            0,
                            0,
                            0);
           TbExcel.Next;
          END;
       DM.YeganehConnection.CommitTrans;
       EXCEPT

          DM.YeganehConnection.RollbackTrans;
          ShowMessage('»Â œ·Ì· »—Ê“ «‘ò«· ⁄„·Ì«  „ Êﬁ› ‘œ.');
       END;
   end
   ELSE
     ShowMessage('·ÿ›« Œÿ«Â«ÌÌ òÂ œ— ·Ì”  ”„  —«”  „‘«ÂœÂ „Ì ‰„«ÌÌœ —« «’·«Õ ‰„«ÌÌœ ');
end;
FUNCTION TFrPaymentImportFromExcel.CheckExcelFileForError:Boolean;
var

    _Erorr:STRING;
begin


  Q_Tmp.Close;
  Q_Tmp.SQL.Text:=' Select Radif from TbExcel where Radif is null or Radif='''' ';
  Q_Tmp.Open;
  CheckExcelFileForError:=False;//dosent have error
  if NOT Q_Tmp.IsEmpty then
    RAISE  Exception.Create('Ìò Ì«  ⁄œ«œÌ «“ —œÌ› ›«Ì· «ò”· „ﬁœ«— œÂÌ ‰‘œÂ «”  ·ÿ›« «’·«Õ ‰„«ÌÌœ Ê ”Å” „Ãœœ« «‰ ﬁ«· œÂÌœ.');

   _Erorr:='';
   ListBox1.Clear;
   TbExcel.First;
   ListBox1.Items.Add(' ·Ì”  Œÿ«Â«Ì ›«Ì· „«ÂÌ«‰Â „Ê—Œ'+_Today);

  WHILE NOT TbExcel.Eof DO
  BEGIN
     IF  (TbExcel.FIELDBYNAME('PersonCode').IsNull) OR
         (TRIM(TbExcel.FIELDBYNAME('PersonCode').AsString)='') THEN
     _Erorr:=_Erorr+' _ '+'‘„«—Â ò«—„‰œÌ';

     IF  (TbExcel.FIELDBYNAME('Amount').IsNull) OR
         (TRIM(TbExcel.FIELDBYNAME('Amount').AsString)='') OR
         (TRIM(TbExcel.FIELDBYNAME('Amount').AsString)='0')           THEN
     _Erorr:=_Erorr+' _ '+' „»·€ ';

     IF RadioButton1.Checked THEN
      if   Get_AccountID_ByPersonalNo(TbExcel.FIELDBYNAME('PersonCode').AsString)=0 then
          _Erorr:=_Erorr+' _ '+RadioButton1.Caption+' ÊÃÊœ ‰œ«—œ ';


     IF RadioButton2.Checked THEN
      if   Get_AccountID_ByAccountNo(TbExcel.FIELDBYNAME('PersonCode').AsString)=0 then
          _Erorr:=_Erorr+' _ '+RadioButton2.Caption+' ÊÃÊœ ‰œ«—œ ';

      IF _Erorr<>'' THEN
      begin
         ListBox1.Items.Add(' —œÌ› ' +TbExcel.FIELDBYNAME('RADIF').AsString+_Erorr);
         CheckExcelFileForError:=True;//has error
      end;
      _Erorr:='';
      TbExcel.Next;
  END;

end;
procedure TFrPaymentImportFromExcel.BitBtn3Click(Sender: TObject);
begin
  inherited;
  CheckExcelFileForError;
end;

procedure TFrPaymentImportFromExcel.FormShow(Sender: TObject);
begin
  inherited;
  TbExcel.Close;
end;

procedure TFrPaymentImportFromExcel.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  import(TbExcel,Trim(EdtPathExcel.Text));

end;

procedure TFrPaymentImportFromExcel.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  CheckExcelFileForError;

end;

procedure TFrPaymentImportFromExcel.SpeedButton2Click(Sender: TObject);
var _Date,SqlText:String;
    _DocNo:string;
    _Cr,paymentId:Integer;
    MemoSms :TMemo;
begin
  inherited;
  if MajorAccount.KeyValue=NULL then
  begin
    ShowMessage('Õ”«» —« „‘Œ’ ‰„«ÌÌœ');
    abort;
  end   ;

  if MEDate.Text ='13  /  /  ' then
  begin
    ShowMessage(' «—ÌŒ —« „‘Œ’ ‰„«ÌÌœ');
    abort;
  end;

  if strtoint(Copy(MEDate.Text,6,2))>12 then
  begin
    ShowMessage(' «—ÌŒ «‘ »«Â «” ');
    abort;
  end;
  if strtoint(Copy(MEDate.Text,9,2))>31 then
  begin
    ShowMessage(' «—ÌŒ «‘ »«Â «” ');
    abort;
  end;

  SqlText:=' SELECT COUNT(FilePath) AS FP   FROM TbExcelLog WHERE  (FilePath = '''+trim(EdtPathExcel.Text)+''')AND (substring(FileDate,6,2)=substring('''+Trim(MEDate.Text)+''',6,2) )';
  if Qry_GetResult(sqlText,Dm.YeganehConnection)>'0' then
  begin
      ShowMessage('›«Ì· Ã«—Ì ﬁ»·« »« «Ì‰ „‘Œ’«  œ—Ã ‘œÂ «” .«„ò«‰ œ—Ã ÊÃÊœ ‰œ«—œ');
      Abort;
  end;

  if not CheckExcelFileForError then//dosent have error
  begin
    DM.YeganehConnection.BeginTrans;
    try
      _DOCNo:=Get_NewDocumnetNo(MEDate.Text);
      TbExcel.First;
      _Date:=Txt_Del254(MEDate.Text);
      Insert_TbExcelLog(EdtPathExcel.Text,_Date,EdtComment.Text,TbExcel.RecordCount);
      while not TbExcel.Eof do
      begin
        if RadioButton1.Checked then
          _CR:=Get_AccountID_ByPersonalNo(TbExcel.FIELDBYNAME('PersonCode').AsString)
        else if RadioButton2.Checked then
          _CR:=Get_AccountID_ByAccountNo(TbExcel.FIELDBYNAME('PersonCode').AsString);

        paymentId:= Insert_Payment( 2  ,
                            _Cr,
                            MajorAccount.KeyValue,
                            0                    ,
                            TbExcel.FIELDBYNAME('Amount').AsInteger,
                            'Ê«—Ì“ „«ÂÌ«‰Â «“ ÿ—Ìﬁ ›«Ì· Excel ',
                            0,
                            _DOCNo,
                            _Date,
                            0,
                            0,
                            0,
                            0);
                       //     must test for sat

           UpdateForcePaymentAfterInsertFromExcel(paymentId,_Cr,TbExcel.FIELDBYNAME('Amount').AsInteger,_Date,rbInsert.Checked);
            // begin send sms
            MemoSms:=TMemo.Create(Application);
            MemoSms.Parent:=Self;
            MemoSms.Visible:=False;
            with  MemoSms.Lines do
            begin
                dm.Select_Account_Details.Close;
                dm.Select_Account_Details.Parameters.ParamByName('@AccountID').Value := _Cr;
                dm.Select_Account_Details.Open;
              text:=text+' '+('”·«„');
              text:=text+' '+('„«ÂÌ«‰Â ‘„«—Â '+_DOCNo+' '+dm.Select_Account_DetailsAccountTitle.AsString);
              text:=text+' '+('»Â „»·€ '+IntToStr( TbExcel.FIELDBYNAME('Amount').AsInteger )+' ' +Get_SystemSetting('EdtMoneyUnit'));
              text:=text+' '+('œ—  «—ÌŒ '+_Date+' œ—Ì«›  ê—œÌœ');
              text:=text+' '+('„ÊÃÊœÌ :'+dm.Select_Account_DetailsExist.AsString);


              text:=text+' '+(_CashNameForSms);
              if _EnableSms then
              begin
                dm.SendSmsToOutBox(dm.Select_Account_DetailsPhone.AsString,memoSms.Text);
              end;
              FreeAndNil(MemoSms);
            end;
            // end send sms
           TbExcel.Next;
          END;
       DM.YeganehConnection.CommitTrans;
       ShowMessage('⁄„·Ì«  »« „Ê›ﬁÌ  »Â « „«„ —”Ìœ »« ‘„«—Â ”‰œ'+_DocNo);
       EXCEPT
          DM.YeganehConnection.RollbackTrans;
          ShowMessage('»Â œ·Ì· »—Ê“ «‘ò«· ⁄„·Ì«  „ Êﬁ› ‘œ.');
       END;
   end
   ELSE
     ShowMessage('·ÿ›« Œÿ«Â«ÌÌ òÂ œ— ·Ì”  ”„  —«”  „‘«ÂœÂ „Ì ‰„«ÌÌœ —« «’·«Õ ‰„«ÌÌœ ');
end;

procedure TFrPaymentImportFromExcel.SpeedButton4Click(Sender: TObject);
begin
  inherited;
   if OpenExcelFile.Execute then
    EdtPathExcel.Text:= OpenExcelFile.FileName;

end;

end.
