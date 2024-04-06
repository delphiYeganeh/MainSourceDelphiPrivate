unit USendMessage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Db, DBTables, Buttons, Menus,  ADODB,
  ExtCtrls, ComCtrls, baseunit, xpBitBtn, CheckLst, YchecklistBox,
   ExtActns, ActnList;

type
  TFrSendMessage = class(TMBaseForm)
    tbMessage: TADODataSet;
    dsMessage: TDataSource;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    DBEMsgDate: TDBEdit;
    DBEMsgTime: TDBEdit;
    DBESubject: TDBEdit;
    Panel2: TGroupBox;
    DBMemo1: TDBMemo;
    tbMessageTo_: TIntegerField;
    tbMessageCode: TIntegerField;
    tbMessageFrom_: TIntegerField;
    tbMessageMsgDate: TStringField;
    tbMessageMsgTime: TStringField;
    tbMessageSubject: TWideStringField;
    tbMessageStatus: TIntegerField;
    dsspgetusernames: TDataSource;
    Panel3: TPanel;
    Label6: TLabel;
    OneOrg: TRadioButton;
    UserPanel: TPanel;
    SpeedButton1: TSpeedButton;
    DBLkCBTo_: TDBLookupComboBox;
    MoreUser: TRadioButton;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    UserList: TYchecklistBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    Label7: TLabel;
    statusbar: TPanel;
    tbMessageUserMessageID: TLargeintField;
    tbMessageMessage: TMemoField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure messagesAfterInsert(DataSet: TDataSet);
    procedure messagesAfterPost(DataSet: TDataSet);
    procedure messagesBeforePost(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MoreUserClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsReply : boolean; // Amin 1391/12/09
    MainMessageID : integer; // Amin 1391/12/09
  end;

var
  FrSendMessage: TFrSendMessage;
implementation

uses Dmu, DateUtils, businessLayer, USearchTitle;
{$R *.DFM}

procedure TFrSendMessage.BitBtn1Click(Sender: TObject);
var
   subj:string;
   mess:string;
   i: integer;
   sp : TADOStoredProc; // Amin 1391/12/09
begin
  subj:=tbMessageSubject.AsString;
  mess:=tbMessageMessage.AsString;

  // Amin 1391/12/09 Start
  sp:= TADOStoredProc.Create(nil);
  sp.Connection := Dm.YeganehConnection;
  if IsReply then
  begin
      sp.ProcedureName := 'SendMessageReply';
      with sp.Parameters.AddParameter do
      begin
            DataType := ftString;
            Direction := pdInput;
            Size:= 20000;
            Name:='@Message';
      end;
      with sp.Parameters.AddParameter do
      begin
            DataType := ftinteger;
            Direction := pdInput;
            Name:='@MainMessageID';
      end;
  end
  else
  begin
      sp.ProcedureName := 'SendMessage';
      with sp.Parameters.AddParameter do
      begin
            DataType := ftinteger;
            Direction := pdInput;
            Name:='@SenderID';
      end;
      with sp.Parameters.AddParameter do
      begin
            DataType := ftinteger;
            Direction := pdInput;
            Name:='@ReceiverID';
      end;
      with sp.Parameters.AddParameter do
      begin
            DataType := ftString;
            Size:= 4000;
            Direction := pdInput;
            Name:='@Subject';
      end;
      with sp.Parameters.AddParameter do
      begin
            DataType := ftString;
            Size:= 20000;
            Direction := pdInput;
            Name:='@Message';
      end;
  end;
  // Amin 1391/12/09 End

 with dm,Users do
  if MoreUser.Checked then
  begin
     if not messageShowString('¬Ì« «“ «—”«· «Ì‰ ÅÌ€«„ »—«Ì  „«„ ﬂ«—»—«‰ „ÿ„∆‰ Â” Ìœø',true) then exit;
     tbMessage.Cancel;

    with UserList do
    if SelectedCodes<>'' then
     for i:=0 to Count-1 do
      if Checked[i] then
      begin
       // Amin 1391/12/09 Start
       {tbMessage.Insert;
       tbMessageSubject.AsString:=subj;
       tbMessageMessage.AsString:=mess;
       tbMessageTo_.AsInteger:=Codes[i];
       tbMessageStatus.AsInteger:=1;
       tbMessage.Post;}
       sp.Parameters.ParamByName('@SenderID').Value := _UserID;
       sp.Parameters.ParamByName('@ReceiverID').Value := Codes[i];
       sp.Parameters.ParamByName('@Subject').Value := subj;
       sp.Parameters.ParamByName('@Message').Value := mess;
       sp.ExecProc;
       // Amin 1391/12/09 End
       Next;
     end;
     messageShowString('ÅÌ«„ Â« »« „Ê›ﬁÌ  «—”«· ‘œ‰œ',false) ;
   end
  else
  begin
   // Amin 1391/12/09 Start
      //tbMessageStatus.AsInteger:=1;
      //tbMessage.Post;
      
       if(IsReply) then
       begin
         sp.Parameters.ParamByName('@Message').Value := mess;
         sp.Parameters.ParamByName('@MainMessageID').Value := MainMessageID;
       end
       else
       begin
          sp.Parameters.ParamByName('@SenderID').Value := _UserID;
          sp.Parameters.ParamByName('@ReceiverID').Value := tbMessageTo_.Value;
          sp.Parameters.ParamByName('@Subject').Value := subj;
          sp.Parameters.ParamByName('@Message').Value := mess;
       end;
       sp.ExecProc;

       messageShowString('ÅÌ«„ »« „Ê›ﬁÌ  «—”«· ‘œ',false) ;
   // Amin 1391/12/09 End
  end;
 end;

procedure TFrSendMessage.BitBtn3Click(Sender: TObject);
 begin
   Close;
 end;

procedure TFrSendMessage.BitBtn2Click(Sender: TObject);
begin
   tbMessage.Insert;
end;

procedure TFrSendMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tbMessage.Cancel;
  inherited;
end;

procedure TFrSendMessage.messagesAfterInsert(DataSet: TDataSet);
 begin
  tbMessage['MsgDate']:=_Today;
  tbMessage['MsgTime']:=Exec_get_NowTime;
 end;

procedure TFrSendMessage.messagesAfterPost(DataSet: TDataSet);
 begin
  if not MoreUser.Checked then
   messageShowString('ÅÌ€«„ «—”«· ê—œÌœ',false) ;
 end;

procedure TFrSendMessage.messagesBeforePost(DataSet: TDataSet);
 begin
  tbMessage['MsgDate']:=_Today;
  tbMessage['MsgTime']:=Exec_get_NowTime;
  tbMessage.FieldValues['From_']:=_userid;
 end;

procedure TFrSendMessage.N2Click(Sender: TObject);
 begin
  Close;
 end;

procedure TFrSendMessage.N4Click(Sender: TObject);
 begin
  tbMessage.Prior;
 end;

procedure TFrSendMessage.N5Click(Sender: TObject);
 begin
   tbMessage.Next;
 end;

procedure TFrSendMessage.FormCreate(Sender: TObject);
 begin
  inherited;
   StatusBar.Caption:='ò«—»— : '+_UserName;

   IsReply := false; // Amin 1391/12/09
  with tbMessage do
   begin
    Close;
    Parameters.ParamValues['FromWhom']:=_userid;
    Open;
    Insert;
   end;
 end;

procedure TFrSendMessage.SpeedButton1Click(Sender: TObject);
begin
  SearchAdoDataSet:=TSearchAdoDataSet.Create(self);
  with SearchAdoDataSet do
   begin
    SearchDataSet:=false;
    TableName:=' select id,Title from users';
    CodeField:='id';
    TitleField:='title';
    SearchF.Connection:=dm.YeganehConnection;
    ShowModal;
   end;
   if dm.SearchResult>-1 then
     tbMessageTo_.AsString:=IntToStr( dm.SearchResult);
end;

procedure TFrSendMessage.FormShow(Sender: TObject);
begin
 UserPanel.Hide;
 UserList.Fill;

end;

procedure TFrSendMessage.MoreUserClick(Sender: TObject);
var  i: byte;
begin
  inherited;
UserPanel.Visible:=MoreUser.Checked;
 for i:=0 to UserList.Count-1 do
    UserList.Checked[i]:=false

end;

procedure TFrSendMessage.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin
 for i:=0 to UserList.Count-1 do
    UserList.Checked[i]:=True
end;

procedure TFrSendMessage.SpeedButton3Click(Sender: TObject);
 var i: integer;
begin
 for i:=0 to UserList.Count-1 do
    UserList.Checked[i]:=false

end;

end.

