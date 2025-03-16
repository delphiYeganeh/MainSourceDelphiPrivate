unit ExamSessionReport2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, Db, DBTables, quickrpt, Qrctrls, ExtCtrls, Menus,
  UfrBase, ADODB, UemsVCL, YWhereEdit, xpBitBtn, xpCheckBox;

type
  TFqrExam = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape25: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    Rdate: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel24: TQRLabel;
    PageNo: TQRLabel;
    QRShape74: TQRShape;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRDBText8: TQRDBText;
    QRShape60: TQRShape;
    Radif: TQRLabel;
    QRGroup1: TQRGroup;
    PageFooterBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel18: TQRLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    dstbLt52: TDataSource;
    tbLt52: TADODataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    tbLt52LessonName: TStringField;
    FloatField2: TFloatField;
    SUS: TADODataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField3: TFloatField;
    StringField7: TStringField;
    IntegerField1: TIntegerField;
    SUSstno_Title: TStringField;
    LessonDon: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    SUSreshte: TStringField;
    Memo1: TMemo;
    QRDBText2: TQRDBText;
    Panel: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    dateEdit: TShamsiDateEdit;
    isactiveCheck: TCheckBox;
    RadioGroup1: TRadioGroup;
    BtnClose: TxpBitBtn;
    BtnPreview: TxpBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    codewhere: TYWhereEdit;
    Label4: TLabel;
    maghtawhere: TYWhereEdit;
    SUSpicture: TBlobField;
    QRLabel32: TQRLabel;
    SUSMaliStat: TIntegerField;
    SUSTbMaliStatTitle: TStringField;
    QRImage2: TQRImage;
    QRDBText9: TQRDBText;
    SUSMarkStatTitle: TStringField;
    SUSMarkStat: TIntegerField;
    CHB_STAT: TxpCheckBox;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnPreviewClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LessonPrgPrint(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    procedure SetFilter;
  end;

var
  FqrExam: TFqrExam;
  Counter,_code :integer;

implementation
  Uses Tools, Upreview;
{$R *.DFM}

procedure TFqrExam.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 PageNo.Caption:=InttoStr(StrTOint(PageNo.Caption)+1);
end;

procedure TFqrExam.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRDBText9.Enabled := (SUSMarkStat.Value <> 10)and(CHB_STAT.Checked);

 // PrintBand:= sus.IsEmpty;
  { Suscode 2:Hazf or 4:hazf ezterari or 5:hazf e Aiennameiy}
  { We select those field that have suscode.effect=1 so     }
  { Did not need to check suscode <> 2,4,5                  }
  inc(Counter);
  radif.Caption:=inttoStr(Counter);

 { line of bottom }
 if (Counter mod 20 =0) then
     QRSubDetail1.Frame.DrawBottom:=true ;

 if (Counter =Sus.RecordCount) then
 begin
     QRSubDetail1.Frame.DrawBottom:=True ;
 end;

 if (Counter mod 20 <> 0) and (Counter <>Sus.RecordCount)then
     QRSubDetail1.Frame.DrawBottom:=False ;
 QRImage2.Picture := nil;

end;

procedure TFqrExam.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 Counter:=0;
 PageNo.Caption:='1';
end;

procedure  TFqrExam.SetFilter;
var w,FromTXT,WhereTXT,SelectTXT: string;
 var tmp:string;
 begin

//**Kahalian 85/11/16
   SelectTXT := ' SELECT SUS.Stno, SUS.TermCode,SUS.LessonCode,suscode,   MAININFO.NAME AS stno_Title,SUS.LessonGroup,lt66.title as reshte ,0 as MaliStat,'''' as TbMaliStatTitle   ,Std_Info_1.pic as picture  ';
   SelectTXT := SelectTXT +  '   ,lt57.title as MarkStatTitle,MarkStat';
   FromTXT   := ' FROM SUS INNER JOIN    MAININFO ON SUS.Stno = MAININFO.STNO INNER JOIN    SUSCODE ON SUS.SusCode = SUSCODE.Code INNER JOIN  lt66 ON lt66.code = maininfo.reshte LEFT JOIN    Std_Info_1 ON Std_Info_1.Stno = MAININFO.Stno ';
   FromTXT   :=  FromTXT   +' Inner join lt57  on (sus.markstat = lt57.code )';
   WhereTXT  := ' WHERE (SUS.TermCode = :TermCode) AND    (SUS.LessonCode =:LessonCode) AND(SUSCODE.effect = 1 or SUSCODE.LessonShow = 1) AND    (SUS.LessonGroup=:LessonGroup ) AND    (Maininfo.isactive<=:isactive) AND    (Maininfo.isactive>0) ';


     SUS.Close;
     with tblt52 do
      begin
       Close;

         CommandText:='Select TermCode, LessonCode, LessonGroup, ExamDate, ExamTime, UClass, LClass,Sex '+
                    ' From LT52 inner join lt7 on lt7.code=lt52.lessoncode';
          w:='';
         if codeWhere.Resultwhere<>'' then
          if w<>'' then
           w:=w+' and ('+codeWhere.Resultwhere+')'
          else
           w:=' where ('+codeWhere.Resultwhere+')';

         if maghtawhere.Resultwhere<>'' then
          if w<>'' then
            w:=w+' and ('+maghtawhere.Resultwhere+')'
          else
           w:=' where ('+maghtawhere.Resultwhere+')';


       Open;
      end;
//gh 81/7/6 08:16
     if isactiveCheck.Checked then
       SUS.Parameters.ParamValues['isactive']:=1
     else
       SUS.Parameters.ParamValues['isactive']:=2;

       SUS.Open;
end;


procedure TFqrExam.BtnPreviewClick(Sender: TObject);
begin
 if QuickRep1.Available then
 begin
  QRImage2.Picture := nil;
  SetFilter;
  QuickRep1.Preview;
 end; 
end;

procedure TFqrExam.BtnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TFqrExam.FormActivate(Sender: TObject);
begin
 inherited;
  PageNo.Caption:='1';
end;

procedure TFqrExam.LessonPrgPrint(sender: TObject; var Value: String);
begin
 if pos('-',value)<>0 then value:=' *'
end;

procedure TFqrExam.FormCreate(Sender: TObject);
begin
  inherited;
  Memo1.Text:=SUS.CommandText;
//  DateEdit.Text:=trim(dm_1._date);
end;

procedure TFqrExam.QuickRep1Preview(Sender: TObject);
begin
 Fpreview:=Tfpreview.Create(self);
 Fpreview.Show;
 Fpreview.QrPreview1.QrPrinter:=QuickRep1.QRPrinter;
end;

procedure TFqrExam.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
end;

{
 Tblt55.first;
 LessonPrg.caption:='';
 Day:='';Hour:='';
//initial lesson Program label
  While not (Tblt55.EOF) do
   begin
     Day:='('+Tblt55.fieldbyname('day_title').asstring+#32;
     Hour:=Tblt55.fieldbyname('EndTime').asstring+'-'+Tblt55.fieldbyname('StartTime').asstring+')';
     LessonPrg.caption:=LessonPrg.Caption+day+Hour;
     Tblt55.next;
   end;
 if length(LessonPrg.Caption)<6 Then LessonPrg.Caption:='    *';

 }
procedure TFqrExam.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 // printband:=sus.IsEmpty;
 Rdate.Caption:=trim(DateEdit.Text);


end;

end.

