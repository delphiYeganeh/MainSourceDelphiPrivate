unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitKDFax, UnitKDCommon, UnitKDPhone, ComCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Memo1: TMemo;
    KDPhone1: KDPhone;
    KDFax1: KDFax;
    Button1: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    StaticText1: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure KDPhone1CallState(Sender: TObject; CallState: TCallState; Param1,
      Param2, CallHandle: Integer);
    procedure KDFax1FaxState(Sender: TObject; FaxState: TFaxState;
      Param1: Integer; StrParam2: string);
  private
    { Private declarations }
    procedure AddMsg(m : string);
    procedure fSendFax;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  C      : Word;
  S      : WideString;
implementation

{$R *.dfm}
//______________________________________________________________________________
procedure TForm1.AddMsg(m : string);
begin
   Memo1.Lines.Add( TimeToStr(time) +' > '+m)
end;
//______________________________________________________________________________

//______________________________________________________________________________
//ارسال
procedure TForm1.fSendFax;
begin
    C:=KDFax1.FaxSend(GetCurrentDir+'\test.tif',1,-1);
    if C<>0 then
        Memo1.Lines.Add('FAX>Error: '+KDFax1.GetErrorMsg(C))
    else
        Memo1.Lines.Add('آغاز ارسال');
end;

//______________________________________________________________________________
procedure TForm1.Button1Click(Sender: TObject);
begin
  KDPhone1.DialNumber(Edit1.Text,0);
end;
//______________________________________________________________________________
procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  C := KDPhone1.LineActive(ComboBox1.ItemIndex,True);
  if C<>0 then ShowMessage(KDPhone1.GetErrorMsg(C))
  else AddMsg('خط ارتباطی آماده می باشد');
end;
//______________________________________________________________________________
procedure TForm1.FormCreate(Sender: TObject);
begin
    for C := 0 to KDPhone1.NumberOfLines-1 do begin
       KDPhone1.GetLineName(C,S);
       ComboBox1.Items.Add(S)
     end;
        KDPhone1.MediaMode:=mmFax;
        Memo1.Lines.Add('Fax Only');
end;
//______________________________________________________________________________
procedure TForm1.KDFax1FaxState(Sender: TObject; FaxState: TFaxState;
  Param1: Integer; StrParam2: string);
begin
    Case FaxState of
        fsInitializing:
            Memo1.Lines.Add('آماده سازی دستگاه');
        fsConnecting:
            Memo1.Lines.Add('ارتباط برقرار شد');
        fsNegotiating:
            Memo1.Lines.Add('Negotiating');
        fsRemoteFaxID:
            Memo1.Lines.Add('عنوان فکس مقابل: '+StrParam2);
        fsBPSRate:
            StaticText1.Caption:=(StrParam2);
        fsTraining:
            Memo1.Lines.Add('در حال ارسال');
        fsTrainingFailed:
            Memo1.Lines.Add('ارسال با شکست مواجه گردید');
        fsWritePageText:
        begin
           KDFax1.FaxSendWriteText(40,10,'From: '+'www.Faranet.co.ir');
           KDFax1.FaxSendWriteText(750,10,FormatDateTime('"Date: "mm/dd/yyyy" Time: "hh:mm',Now));
           KDFax1.FaxSendWriteText(1600,10,'Page: '+IntToStr(Param1));
        end;
        fsSendPageDone:
            Memo1.Lines.Add('ارسال صفحه '+IntToStr(Param1)+' کامل شد ');
        fsFaxDone:
        begin
            if Param1=0 then
                Memo1.Lines.Add('سند مورد نظر با موفقیت فکس گردید')
            else
                Memo1.Lines.Add('متاسفانه سند مورد نظر با موفقیت ارسال نگردید');
        end;
        fsError:
            Memo1.Lines.Add('Error: '+KDFax1.GetErrorMsg(Param1));
    end;
end;

procedure TForm1.KDPhone1CallState(Sender: TObject; CallState: TCallState;
  Param1, Param2, CallHandle: Integer);
begin
case CallState of

 csRing:
     AddMsg('تلفن در حال زنگ خوردن است' );
//.........
 csConnected  :
   begin
      AddMsg('تماس برقرار شد' );
      AddMsg('در حال دريافت شماره');
      if c>0 then ShowMessage(KDPhone1.GetErrorMsg(c));
   end;
//.........
 csDisconnected :
      AddMsg('ارتباط قطع شد');
//.........
 csDialing :
      AddMsg('در حال تماس گرفتن');
//.........
 csBusy:
   begin
      AddMsg('خط ارتباطي مشغول مي باشد');
      KDPhone1.Hangup;
   end;
//.........
  csError:
    begin
       AddMsg('خطایی در تماس رخ داده است');
       KDPhone1.Hangup;
    end;
//.........
  csOffering:
    begin
       AddMsg('آغاز پاسخ به تماس گيرنده');
       c:= KDPhone1.Answer(0);
       if c>0 then ShowMessage(KDPhone1.GetErrorMsg(c));
    end;
//..........
  csWaitingForFaxCommand:
     fSendFax;
     
 end;//case
end;

end.
