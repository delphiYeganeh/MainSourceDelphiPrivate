unit UGetMessage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, Menus, Buttons,
  ADODB, ComCtrls, YDbgrid, baseunit, xpBitBtn,  ExtActns,
  ActnList, ExtCtrls;

type
  TFrGetMessage = class(TmbaseForm)
    dsMessage: TDataSource;
    TbMessage: TADODataSet;
    oNEmESSAGE: TADODataSet;
    DataSource1: TDataSource;
    TbMessageUserMessageID: TLargeintField;
    TbMessageabsmessage: TWideStringField;
    TbMessagestatus: TIntegerField;
    TbMessageFrom_: TIntegerField;
    TbMessageSubject: TWideStringField;
    TbMessageMsgDate: TStringField;
    TbMessageMsgTime: TStringField;
    oNEmESSAGEUserMessageID: TLargeintField;
    oNEmESSAGETo_: TIntegerField;
    oNEmESSAGECode: TIntegerField;
    oNEmESSAGEFrom_: TIntegerField;
    oNEmESSAGEMsgDate: TStringField;
    oNEmESSAGEMsgTime: TStringField;
    oNEmESSAGESubject: TWideStringField;
    oNEmESSAGEMessage: TMemoField;
    oNEmESSAGEStatus: TIntegerField;
    TbMessagefromname: TStringField;
    Panel1: TPanel;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    xpBitBtn3: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    DBMemo1: TDBMemo;
    Button1: TBitBtn;
    DBGrid1: TYDBGrid;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    AllMessages: TMenuItem;
    TbMessageTo_: TIntegerField;
    TbMessageToName: TStringField;
    N3: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure Button1Click(Sender: TObject);
    procedure TbMessageAfterScroll(DataSet: TDataSet);
    procedure DBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure AllMessagesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrGetMessage: TFrGetMessage;
implementation

uses Dmu,BusinessLayer,USendMessage,YShamsiDate;
{$R *.DFM}

procedure TFrGetMessage.N3Click(Sender: TObject);
begin
    TbMessage.Filter:='';
    TbMessage.Filtered:=True;

  if not TbMessage.IsEmpty then
  begin
    // Amin 1391/12/21 TbMessage.Filter:='status=2';
    TbMessage.Filter := 'IsForSender = 1 and From_ = ' + IntToStr(_UserID);
    TbMessage.Filtered:=True;
  end
  else
    ShowMessage('„Ê—œÌ ÊÃÊœ ‰œ«—œ');
end;

procedure TFrGetMessage.BitBtn1Click(Sender: TObject);
 begin
  tbMessage.close;
  tbMessage.Open;
 end;


procedure TFrGetMessage.BitBtn2Click(Sender: TObject);
 begin
   Close;
 end;

procedure TFrGetMessage.N4Click(Sender: TObject);
 begin
  Close;
 end;

procedure TFrGetMessage.N5Click(Sender: TObject);
 begin
  tbMessage.Delete;
 end;

procedure TFrGetMessage.BitBtn3Click(Sender: TObject);
 begin
if messageShowString('¬Ì« «“ «‰Ã«„ «Ì‰ ⁄„· „ÿ„∆‰ Â” Ìœ',true) then
  While Not(tbMessage.Eof) Do
    tbMessage.Delete;
 end;

procedure TFrGetMessage.FormCreate(Sender: TObject);
 begin
  inherited;
  with tbMessage do
   begin
    Close;
    // Amin 1391/12/21 Parameters.ParamValues['ToWhom']:=_userid;
    Open;

    // Amin 1391/12/21 Start
    Filtered := false;
    Filter := 'IsForSender = 0 and To_ = ' + IntToStr(_UserID);
    Filtered := true;
    // Amin 1391/12/21 End
   end;
  tbMessage.Refresh;
 end;

procedure TFrGetMessage.DBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
   inherited;
   if tbMessagestatus.AsInteger=1 then
      F.Style := f.style+[fsBold]
   else
      F.Style := f.style-[fsBold]
end;

procedure TFrGetMessage.Button1Click(Sender: TObject);
begin
   inherited;
   if TbMessage.RecordCount = 0 then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç ÅÌ«„ Ì« Œ»—Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;
   
   DBMemo1.Show;
   TbMessage.Edit;
   TbMessagestatus.AsInteger := 2;
   TbMessage.Post;
end;

procedure TFrGetMessage.TbMessageAfterScroll(DataSet: TDataSet);
begin
  inherited;
 DBMemo1.Visible:=tbMessageStatus.AsInteger<>1;

  WITH oNEmESSAGE DO
   BEGIN
    Close;
    Parameters[0].Value:=tbMessageUserMessageID.AsInteger ;
    Open;
   END;

   end;

procedure TFrGetMessage.DBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if tbMessageStatus.AsInteger=1 then
    Color:=clSkyBlue
  else
    Color:=DBGrid1.Color;  

end;

procedure TFrGetMessage.xpBitBtn1Click(Sender: TObject);
var
  from_: integer;
  subject_:String;
begin
   inherited;
   from_:=tbMessageFrom_.AsInteger;
   subject_:=TbMessageSubject.AsString;

   FrSendMessage:=TFrSendMessage.Create(Application);
   FrSendMessage.MainMessageID := tbMessageUserMessageID.AsInteger; // Amin 1391/12/09
   with FrSendMessage,tbMessage do
   begin
      tbMessageSubject.Value:=subject_;
      DBLkCBTo_.KeyValue:=from_;
      tbMessageTo_.Value:=from_ ;
      // Amin 1391/12/09 Start
      IsReply := true;
      MoreUser.Enabled := false;
      Label7.Enabled := false;
      DBLkCBTo_.Enabled := false;
      SpeedButton1.Enabled := false;
      DBESubject.Enabled := false;
      DBEMsgDate.Enabled := false;
      DBEMsgTime.Enabled := false;
      // Amin 1391/12/09 End
      ShowModal;
   end;
end;

procedure TFrGetMessage.xpBitBtn2Click(Sender: TObject);
begin
   inherited;
   FrSendMessage:=TFrSendMessage.Create(Application);
   FrSendMessage.ShowModal;
end;

procedure TFrGetMessage.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
if messageShowString('¬Ì« «“ «‰Ã«„ «Ì‰ ⁄„· „ÿ„∆‰ Â” Ìœ',true) then
    tbMessage.Delete;

end;

procedure TFrGetMessage.Button2Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);

end;

procedure TFrGetMessage.N1Click(Sender: TObject);
begin
    TbMessage.Filter:='';
    TbMessage.Filtered:=True;

  if not TbMessage.IsEmpty then
  begin
    // Amin 1391/12/21 TbMessage.Filter:='status=1';
    TbMessage.Filter := 'IsForSender = 0 and To_ = ' + IntToStr(_UserID) + ' and Status = 1';
    TbMessage.Filtered:=True;
  end
  else
    ShowMessage('„Ê—œÌ ÊÃÊœ ‰œ«—œ');
end;

procedure TFrGetMessage.N2Click(Sender: TObject);
begin
    TbMessage.Filter:='';
    TbMessage.Filtered:=True;

  if not TbMessage.IsEmpty then
  begin
    // Amin 1391/12/21 TbMessage.Filter:='status=2';
    TbMessage.Filter := 'IsForSender = 0 and To_ = ' + IntToStr(_UserID) + ' and Status = 2';
    TbMessage.Filtered:=True;
  end
  else
    ShowMessage('„Ê—œÌ ÊÃÊœ ‰œ«—œ');
end;

procedure TFrGetMessage.AllMessagesClick(Sender: TObject);
begin
  if TbMessage.Active then
  begin
    // Amin 1391/12/21 TbMessage.Filter:='';
    TbMessage.Filter := 'IsForSender = 0 and To_ = ' + IntToStr(_UserID);
    TbMessage.Filtered:=True;
  end
  else
    ShowMessage('„Ê—œÌ ÊÃÊœ ‰œ«—œ');
end;

end.
