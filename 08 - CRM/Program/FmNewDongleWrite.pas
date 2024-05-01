unit FmNewDongleWrite;
//ﬁ›· „‘ﬂÌ ÃœÌœ
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, TINYLib_TLB, ExtCtrls, DBCtrls, Grids,
  DBGrids, XPMan, Spin, ComCtrls, DB, ADODB,sdx, Buttons, ActnList, Menus;

type
  TFM_NewDongleWrite = class(TForm)
    XPManifest1: TXPManifest;
    QrSerial: TADOQuery;
    QrSerialSerial_ID: TAutoIncField;
    QrSerialSoftSerial: TWideStringField;
    QrSerialBaseSerial: TIntegerField;
    QrSerialKit: TWideStringField;
    QrSerialNetwork: TSmallintField;
    QrSerialHaveCust: TSmallintField;
    QrSerialSerialUsed: TSmallintField;
    QrSerialSerDate: TWideStringField;
    QrSerialSerTime: TWideStringField;
    QrSerialSerial2: TWideStringField;
    DSSerial: TDataSource;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    DBTSerial1: TDBText;
    ChBoNet: TCheckBox;
    DBLkCBSoftData: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    BtnShowData: TButton;
    Memo: TMemo;
    ChBoShowData: TCheckBox;
    GroupBox2: TGroupBox;
    LblKit: TLabel;
    CoBoKit: TComboBox;
    ChBoKit: TCheckBox;
    btnRegisterDataInLock: TButton;
    QrSerialCustomerID: TIntegerField;
    QrSerialProductID: TWordField;
    ActionList1: TActionList;
    BtnCancel: TBitBtn;
    chbDeliverdCustomer: TCheckBox;
    QrSerialCustomerDelivery: TIntegerField;
    QrSerialUserID: TIntegerField;
    QrSerialWorkStationName: TStringField;
    QrSerialWinOrDomainUserName: TStringField;
    QSaveLockInfo: TADOQuery;
    QTemp: TADOQuery;
    QrSerialExpireDate: TStringField;
    lblNetworkUsers: TLabel;
    edtNetworkUsersCount: TSpinEdit;
    procedure btnRegisterDataInLockClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChBoKitClick(Sender: TObject);
    procedure BtnShowDataClick(Sender: TObject);
    procedure QrSerialAfterInsert(DataSet: TDataSet);
    procedure QrSerialNetworkGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBLkCBSoftDataClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure ChBoNetClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    gCustomerID:integer;
    gCompanyName:string;
    procedure ShowDongleData;
    procedure SaveLockInfo;
    function LockExist:Boolean;
  public
    constructor create(Aowner :TComponent;CustomerID:integer;CompanyName:string;FormCaption:String);reintroduce;virtual;
    { Public declarations }
  end;

var
  FM_NewDongleWrite: TFM_NewDongleWrite;

implementation

uses  Math, dmu, YShamsiDate;

{$R *.dfm}


procedure TFM_NewDongleWrite.btnRegisterDataInLockClick(Sender: TObject);
Var
   RegSerial , USBSerial:String;
   NetWork,Kit :String[1];
   ProductCode , ProductVer :String;
   S:String[5];
   DataPartition,Dat:string;
   handle,NTUser:integer;
begin
   Dat := ShamsiIncDate( _Today,2,0,0);

   If Trim(DBLkCBSoftData.Text) = '' Then
   begin
      Showmessage('·ÿ›« ‰«„ ‰—„ «›“«— —« «‰ Œ«» ‰„«ÌÌœ');
      Exit;
   end;

   if (Trim(QrSerialBaseSerial.AsString) = '')or(QrSerialSerialUsed.AsInteger = 1) then
   begin
      ShowMessage('‘„«—Â ”—Ì«·Ì »—«Ì ﬁ—«— œ«œ‰ œ— ﬁ›· ÊÃÊœ ‰œ«—œ');
      Exit;
   end;

   if ChBoNet.Checked then
      NetWork := '1'
   else
      NetWork := '0';

   if ChBoKit.Checked then
      Kit := CoBoKit.Text
   else
      Kit := '';

   if ChBoNet.Checked then
      NTUser:=StrToInt(edtNetworkUsersCount.Text);

   ProductCode := Trim(dm.ProductCode.AsString);
   ProductVer := Trim(dm.ProductLastVertion.AsString);
   DataPartition := 'CN=Yeganeh' +'  '+
                    'PC=' + ProductCode+ '  ' +
                    'VER='+ ProductVer + '  ' +
                    'NET='+ NetWork    + '  ' +
                    'SN1='+ ProductCode+ NetWork +'-'+ QrSerialBaseSerial.AsString + '  ' +
                    'SN2='+ QrSerialSerial2.AsString + '  ' +
                    'KIT='+ Kit+ ' ' +
                    'CPN='+ gCompanyName+ ' '+
                    'DAT='+Dat+' '+
                    'NetUser='+edtNetworkUsersCount.Text+';';
   handle:=OpenDongle;
   if handle<0 then
    begin
      ShowMessage('ﬁ›· ÅÌœ« ‰‘œ');
      exit;
    end;
   WriteDongle(handle,0,DataPartition);

   QrSerial.Edit;
   QrSerialNetwork.AsInteger := StrToIntDef(NetWork,0);
   QrSerialSoftSerial.AsString := ProductCode+NetWork;
   if ChBoKit.Checked then
      QrSerialKit.AsString := CoBoKit.Text;

   QrSerialSerDate.AsString := DateToStr(Date);
   QrSerialCustomerID.Value := gCustomerID;
   QrSerialProductID.Value := StrToInt(ProductCode);
   QrSerialExpireDate.AsString:= Dat;

   if chbDeliverdCustomer.Checked then
       QrSerialCustomerDelivery.AsInteger:=1
   else
       QrSerialCustomerDelivery.AsInteger:=0;

   QrSerialWorkStationName.AsString:=_WorkSationName;
   QrSerialUserID.AsString:=IntToStr(_UserID);
   QrSerialWinOrDomainUserName.AsString:=_WinOrDomainUserName;

   QrSerialSerialUsed.AsInteger := 1;
   QrSerial.Post;

   SaveLockInfo;

   dm.Update_CustomerNo(gCustomerID,ProductCode+ NetWork +'-'+ QrSerialBaseSerial.AsString);
   QrSerial.close;
   QrSerial.Open;

   Showmessage('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ');

   if ChBoShowData.Checked then
      ShowDongleData;

   btnRegisterDataInLock.Enabled := False;
   Screen.Cursor := crHourGlass;

   btnRegisterDataInLock.Enabled := True;
   Screen.Cursor := crDefault;
end;



procedure TFM_NewDongleWrite.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = Vk_Return then
      btnRegisterDataInLock.Click;
end;

procedure TFM_NewDongleWrite.ChBoKitClick(Sender: TObject);
begin
   if ChBoKit.Checked then
   begin
      LblKit.Enabled := True;
      CoBoKit.Enabled := True;
   end
      else
      begin
         LblKit.Enabled := False;
         CoBoKit.Enabled := False;
      end;
end;


procedure TFM_NewDongleWrite.ShowDongleData;
Var
   SpecialID ,CoName,ProductCode,Vertion,CustSerial,Serial2,Kit,companyName,ExpireDate:String;
   NetWork:Boolean ;
   aServerIP:String;
begin
  LoadDongleData(CoName,ProductCode,Vertion,CustSerial,Serial2,Kit,NetWork,companyName,ExpireDate);
  ExpireDate:=Copy(Trim(ExpireDate),1,10);
   with  Memo.Lines do
   begin
      Clear;
      Add('SpecialID: '+SpecialID);
      Add('‰«„ ‘—ò : '+CoName);
      Add('òœ »—‰«„Â: '+ProductCode);
      Add('‰ê«—‘: '+Vertion);
      Add('”—Ì«· „‘ —Ì: '+CustSerial);
      Add('”—Ì«· ›—⁄Ì: '+Serial2);
      Add('‰«„ òÌ : '+Kit);
      Add('‰«„ ‘—ò : '+companyName);
      Add(' «—ÌŒ «‰ﬁ÷«:'+ExpireDate);
      if NetWork then
         Add('‰Ê⁄ ﬁ›· : ‘»òÂ')
      else
         Add('‰Ê⁄ ﬁ›· :  ò ò«—»—Â');
   end;
end;

procedure TFM_NewDongleWrite.BtnShowDataClick(Sender: TObject);
begin
   ShowDongleData;
end;

procedure TFM_NewDongleWrite.QrSerialAfterInsert(DataSet: TDataSet);
begin
   QrSerialHaveCust.AsInteger := 0;
   QrSerialSerialUsed.AsInteger := 0;

end;

procedure TFM_NewDongleWrite.QrSerialNetworkGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Case QrSerialNetwork.AsInteger of
      0: Text := 'ŒÌ—';
      1: Text := '»·Ì';
   end;

end;

procedure TFM_NewDongleWrite.DBLkCBSoftDataClick(Sender: TObject);
begin
 ChBoNet.Checked:=dm.ProductIsNetwork.AsBoolean;
end;

constructor TFM_NewDongleWrite.create(Aowner: TComponent;
  CustomerID: integer; CompanyName: string;FormCaption:String);
var ProductCode :String;  
begin
 inherited create(AOwner);

 gCustomerID:= CustomerID;
 gCompanyName:= CompanyName;
 FM_NewDongleWrite.Caption := FormCaption;

  QrSerial.Open;
  QrSerial.First;



  ProductCode := Qry_GetResult('Select Top 1 Code from CustomerProduct CP left join product p on (CP.ProductId = P.ProductId) where CustomerId =  '+IntToStr(gCustomerID),dm.YeganehConnection);

  if ProductCode <> '' then
     DBLkCBSoftData.KeyValue := ProductCode
  else
     DBLkCBSoftData.KeyValue := 10;

end;

procedure TFM_NewDongleWrite.BtnCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFM_NewDongleWrite.SaveLockInfo;
var
  WriteDate,ExpireDate:String;
begin
    WriteDate:=_Today;
    ExpireDate:=ShamsiIncDate(_Today,2,0,0);
    QSaveLockInfo.Close;
    QSaveLockInfo.SQL.Clear;
    QSaveLockInfo.SQL.Add('INSERT INTO Customerlocks(CustomerID,WriteDate,Serial_ID,ExpireDate)');
    QSaveLockInfo.SQL.Add('VALUES('+IntToStr(gCustomerID)+','+QuotedStr(WriteDate)+','+QrSerialSerial_ID.AsString+','+QuotedStr(ExpireDate)+')');
    QSaveLockInfo.ExecSQL;
end;

function TFM_NewDongleWrite.LockExist: Boolean;
begin
  Result:=False;
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('');
  QTemp.SQL.Add('');
  QTemp.Open;
  if not QTemp.IsEmpty then Result:=True;
end;

procedure TFM_NewDongleWrite.ChBoNetClick(Sender: TObject);
begin
   lblNetworkUsers.Visible := ChBoNet.Checked;
   edtNetworkUsersCount.Visible := ChBoNet.Checked;
end;

procedure TFM_NewDongleWrite.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
    { TODO -oparsa : 14030203 }
    Resize := False
   { TODO -oparsa : 14030203 }


end;

procedure TFM_NewDongleWrite.FormShow(Sender: TObject);
begin
  pnlMain.Color := _Color1 ;
end;

end.
