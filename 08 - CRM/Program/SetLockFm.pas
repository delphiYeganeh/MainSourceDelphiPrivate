unit SetLockFm;
//ﬁ›· »‰›‘ ﬁœÌ„Ì
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, TINYLib_TLB, ExtCtrls, DBCtrls, Grids,
  DBGrids, XPMan, Spin, ComCtrls, DB, ADODB;

type
  TFmSetLock = class(TForm)
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
    Tiny1: TTiny;
    GroupBox3: TGroupBox;
    BtnShowData: TButton;
    Memo: TMemo;
    ChBoShowData: TCheckBox;
    GroupBox2: TGroupBox;
    LblKit: TLabel;
    CoBoKit: TComboBox;
    ChBoKit: TCheckBox;
    Button1: TButton;
    lblNetworkUsers: TLabel;
    edtNetworkUsersCount: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChBoKitClick(Sender: TObject);
    procedure BtnShowDataClick(Sender: TObject);
    procedure QrSerialAfterInsert(DataSet: TDataSet);
    procedure QrSerialNetworkGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBLkCBSoftDataClick(Sender: TObject);
    procedure ChBoNetClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    procedure ShowLockData;
  public
CustomerID:integer;
CompanyName:string;
    { Public declarations }
  end;

var
  FmSetLock: TFmSetLock;

implementation

uses  Math, dmu, YShamsiDate;

{$R *.dfm}


procedure TFmSetLock.FormShow(Sender: TObject);
begin

  pnlMain.Color := _Color1 ;
      DBLkCBSoftData.KeyValue := 10;
      QrSerial.Open;
      QrSerial.First;
end;

procedure TFmSetLock.Button1Click(Sender: TObject);
Var
   RegSerial , USBSerial:String;
   NetWork,Kit :String[1];
   ProductCode , ProductVer :String;
   S:String[5];
   Dat:string;
begin
   dat:=ShamsiIncDate( _Today,2,0,0);
   Try
      Button1.Enabled := False;
      Screen.Cursor := crHourGlass;

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

      Tiny1.Initialize := True;
      If Tiny1.TinyErrCode <> 0 Then //0 = Error None
      begin
         ShowMessage('ﬁ›· ÅÌœ« ‰‘œ');
         exit;
      end;

      Tiny1.UserPassWord := '302'+'C3'+'F10'+'B0'+'CC95'+'D1'+'B75983'+'FD3'+'C'+'0376'+'E';
      Tiny1.ShowTinyInfo := True;
      If Tiny1.ShowTinyInfo = False Then
      begin
         Showmessage('—„“ «‘ »«Â „Ì»«‘œ');
         Exit;
      end;

      if tiny1.SpecialID <> 'YEGANEH123204890' then
      begin
         Showmessage('SpecialID '+'ﬁ›· «‘ »«Â „Ì»«‘œ');
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
         Tiny1.NTUser:= StrToInt(edtNetworkUsersCount.Text);
      Try
         begin
            ProductCode := Trim(dm.ProductCode.AsString);
            ProductVer := Trim(dm.ProductLastVertion.AsString);
            Tiny1.DataPartition := 'CN=Yeganeh' +'  '+
                                   'PC=' + ProductCode+ '  ' +
                                   'VER='+ ProductVer + '  ' +
                                   'NET='+ NetWork    + '  ' +
                                   'SN1='+ ProductCode+ NetWork +'-'+ QrSerialBaseSerial.AsString + '  ' +
                                   'SN2='+ QrSerialSerial2.AsString + '  ' +
                                   'KIT='+ Kit+ ' ' +
                                   'CPN='+ CompanyName+ ' '+
                                   'DAT='+Dat+' '+
                                   'NetUser='+edtNetworkUsersCount.Text+';';
            QrSerial.Edit;
            QrSerialNetwork.AsInteger := StrToIntDef(NetWork,0);
            QrSerialSoftSerial.AsString := ProductCode+NetWork;
            if ChBoKit.Checked then
               QrSerialKit.AsString := CoBoKit.Text;
            QrSerialSerDate.AsString := DateToStr(Date);
            QrSerialSerTime.AsString := TimeToStr(Time);



               begin
                  QrSerialSerialUsed.AsInteger := 1;
                  QrSerial.Post;
                  dm.Update_CustomerNo(CustomerID,ProductCode+ NetWork +'-'+ QrSerialBaseSerial.AsString);
                  QrSerial.close;
                  QrSerial.Open;
               end;
         end;
         Showmessage('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ');
      Except
         Showmessage('«‘ò«· œ— ﬁ—«— œ«œ‰ «ÿ·«⁄«  œ— ﬁ›·');
      End;

      if ChBoShowData.Checked then
         ShowLockData;

   Finally
      Tiny1.ShowTinyInfo := False;
      Tiny1.Initialize := False;
      Button1.Enabled := True;
      Screen.Cursor := crDefault;
   End;
end;



procedure TFmSetLock.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = Vk_Return then
      Button1.Click;
end;

procedure TFmSetLock.ChBoKitClick(Sender: TObject);
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

Function LockInSingle(aTiny:TTiny ; Var aSpecialID ,aCoName,aProductCode,aVertion,aCustSerial,aSerial2,aKit:String; Var aNetWork:Boolean ;var companyName:string; aServerIP:String='' ):Boolean;
Var
   P1,P2:Integer;
   Data:String;
begin
   Try
      aTiny.Initialize := True;
      If aTiny.TinyErrCode <> 0 Then //0 = Error None
      begin
         Showmessage('ﬁ›· ”Œ  «›“«—Ì Ì«›  ‰‘œ');
         Result := False;
         Exit;
      end;

      //PW='1234567890123456'
      if  UpperCase(aServerIP) <> '' then
         begin
          aTiny.ServerIP := aServerIP;
         end;
        aTiny.UserPassWord := '302'+'C3'+'F10'+'B0'+'CC95'+'D1'+'B75983'+'FD3'+'C'+'0376'+'E';

           
      aTiny.ShowTinyInfo := True;
      If aTiny.ShowTinyInfo = False Then
      begin
         Showmessage('—„“ «‘ »«Â „Ì»«‘œ');
         Result := False;
         Exit;
      end;

      if aTiny.SpecialID <> 'YEGANEH123204890' then
      begin
         Showmessage('SpecialID '+'ﬁ›· «‘ »«Â „Ì»«‘œ');
         Exit;
      end;

       aSpecialID := aTiny.SpecialID;
       Data := aTiny.DataPartition ;

       P1 := Pos(UpperCase('CN='),UpperCase(Data))+3;
       P2 := Pos(UpperCase('PC='),UpperCase(Data));
       P2 := P2-P1;
       aCoName := Trim(Copy(Data,P1,P2));

       P1 := Pos(UpperCase('PC='),UpperCase(Data))+3;
       P2 := Pos(UpperCase('VER='),UpperCase(Data));
       P2 := P2-P1;
       aProductCode := Trim(Copy(Data,P1,P2));

       P1 := Pos(UpperCase('VER='),UpperCase(Data))+4;
       P2 := Pos(UpperCase('NET='),UpperCase(Data));
       P2 := P2-P1;
       aVertion := Trim(Copy(Data,P1,P2));

       P1 := Pos(UpperCase('NET='),UpperCase(Data))+4;
       P2 := Pos(UpperCase('SN1='),UpperCase(Data));
       P2 := P2-P1;
       if Trim(Copy(Data,P1,P2)) = '1' then
          aNetWork := True
       else
          aNetWork := False;

       P1 := Pos(UpperCase('SN1='),UpperCase(Data))+4;
       P2 := Pos(UpperCase('SN2='),UpperCase(Data));
       P2 := P2-P1;
       aCustSerial := Trim(Copy(Data,P1,P2));

       P1 := Pos(UpperCase('SN2='),UpperCase(Data))+4;
       P2 := Pos(UpperCase('KIT='),UpperCase(Data));
       P2 := P2-P1;
       aSerial2 := Trim(Copy(Data,P1,P2));

       P1 := Pos(UpperCase('KIT='),UpperCase(Data))+4;
       P2 := Pos(UpperCase('CPN='),UpperCase(Data));
       P2 := P2-P1;
       aKit := Trim(Copy(Data,P1,P2));


       P1 := Pos(UpperCase('CPN='),UpperCase(Data))+4;
       P2 := Pos(UpperCase('DAT='),UpperCase(Data));
       P2 := P2-P1;
       companyName := Trim(Copy(Data,P1,P2));

   Finally
      aTiny.ShowTinyInfo := False;
      aTiny.Initialize := False;
   End;


end;

procedure TFmSetLock.ShowLockData;
Var
   SpecialID ,CoName,ProductCode,Vertion,CustSerial,Serial2,Kit,companyName:String;
   NetWork:Boolean ;
   aServerIP:String;
begin
   LockInSingle(Tiny1, SpecialID ,CoName,ProductCode,Vertion,CustSerial,Serial2,Kit,NetWork,companyName,'');
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
   if NetWork then
      Add('‰Ê⁄ ﬁ›· : ‘»òÂ')
   else
     Add('‰Ê⁄ ﬁ›· :  ò ò«—»—Â');
 end;
end;

procedure TFmSetLock.BtnShowDataClick(Sender: TObject);
begin
   ShowLockData;
end;

procedure TFmSetLock.QrSerialAfterInsert(DataSet: TDataSet);
begin
   QrSerialHaveCust.AsInteger := 0;
   QrSerialSerialUsed.AsInteger := 0;

end;

procedure TFmSetLock.QrSerialNetworkGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Case QrSerialNetwork.AsInteger of
      0: Text := 'ŒÌ—';
      1: Text := '»·Ì';
   end;

end;

procedure TFmSetLock.DBLkCBSoftDataClick(Sender: TObject);
begin
 ChBoNet.Checked:=dm.ProductIsNetwork.AsBoolean;
end;

procedure TFmSetLock.ChBoNetClick(Sender: TObject);
begin
   lblNetworkUsers.Visible := ChBoNet.Checked;
   edtNetworkUsersCount.Visible := ChBoNet.Checked;
end;

procedure TFmSetLock.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
     { TODO -oparsa : 14030203 }
      Resize := False  ;
      { TODO -oparsa : 14030203 }
end;

end.
