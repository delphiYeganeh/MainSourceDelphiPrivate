unit UFMessageAlarm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, Grids, DBGrids,
  YDbgrid, StdCtrls, Buttons, xpBitBtn, ImgList, ADODB;

type
  TFMessageAlarm = class(TMBaseForm)
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    dbgCaseType: TYDBGrid;
    Panel2: TPanel;
    btnCancel: TBitBtn;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    CheckBox1: TCheckBox;
    pnlMessage: TPanel;
    pnlEdit: TPanel;
    btnRead: TSpeedButton;
    btnUnread: TSpeedButton;
    btnBack: TSpeedButton;
    mmoDescription: TMemo;
    pnlSubject: TPanel;
    lblDesc: TLabel;
    lblDate: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    edtCustomerSrch: TEdit;
    pnltaslsrch: TPanel;
    btnRefresh: TBitBtn;
    btnTaskSrch: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure dbgCaseTypeNeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure dbgCaseTypeNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure dbgCaseTypeDblClick(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure btnReadClick(Sender: TObject);
    procedure btnUnreadClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnTaskSrchClick(Sender: TObject);
  private
    { Private declarations }
     MessageId : Integer;
     MainFilter : string ;
     procedure changeData ;

  public
    { Public declarations }

  end;

var
  FMessageAlarm: TFMessageAlarm;

implementation

uses dmu,YShamsiDate;

{$R *.dfm}

procedure TFMessageAlarm.FormShow(Sender: TObject);
begin

  ShapeBase.Brush.Color := _Color1 ;
  pnlMain   .Color      := _Color1 ;
  pnlMessage.Color      := _Color2 ;
  pnlSubject.Color      := _Color2 ;
  pnlEdit   .Color      := _Color2 ;
  
  inherited;
  pnlMessage.Visible    := False ;
  MainFilter := 'UserID = '+ IntToStr(_Userid) + ' and IsActive = 1   ' ;

  Dm.tblMessages.Filtered := False ;
  Dm.tblMessages.Filter := MainFilter ;
  Dm.tblMessages.Filtered := True ;

  Dm.tblMessages.Close;
  Dm.tblMessages.Open;
  CheckBox1Click(self);
  Panel2.SetFocus;
end;

procedure TFMessageAlarm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  if (NewWidth < 968)  or (NewHeight < 419) then
    Resize := False
  else Resize := True;
  
  inherited;

end;

procedure TFMessageAlarm.dbgCaseTypeNeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;

  if Column.FieldName = 'icon' then
  begin
  //  ImageIndex := 23;
    if (Dm.tblMessagesIsRead.AsBoolean = True) then
      ImageIndex := 22
    else ImageIndex := 13;
  end;
end;

procedure TFMessageAlarm.dbgCaseTypeNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
   f.Color := clBlack;
   try
     if (Dm.tblMessagesIsRead.AsBoolean = True )  THEN
         f.Color:= clGrayText  ;
   except
   end;
end;

procedure TFMessageAlarm.CheckBox1Click(Sender: TObject);
begin
  inherited;
  Dm.tblMessages.Filtered := False ;
  if CheckBox1.Checked then
    Dm.tblMessages.Filter := MainFilter+ ' and Isread = 0 '
  else  Dm.tblMessages.Filter := MainFilter ;
  Dm.tblMessages.Filtered := True ;

end;

procedure TFMessageAlarm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  pnlMessage.Align := alClient ;
  pnlMessage.Visible := True ;
 // Panel1 .Visible := False ;
  Panel2 .Visible := false ;

end;

procedure TFMessageAlarm.btnBackClick(Sender: TObject);
begin
  inherited;
  Dm.tblMessages.Close;
  Dm.tblMessages.Open;
  Dm.tblMessages.Filtered := False ;
  if CheckBox1.Checked then
    Dm.tblMessages.Filter :=  MainFilter +' and Isread = 0 '
  else  Dm.tblMessages.Filter := MainFilter ;
  Dm.tblMessages.Filtered := True ;

  dm.tblMessages.Locate('Id',MessageId,[]);

  pnlMessage.Visible := false  ;
 // Panel1 .Visible := True ;
  Panel2 .Visible := True ;
end;

procedure TFMessageAlarm.dbgCaseTypeDblClick(Sender: TObject);
begin
  inherited;

  if Dm.tblMessages.RecordCount > 0 then
  begin
    pnlMessage.Align := alClient ;
    pnlMessage.Visible := True ;
  //  Panel1 .Visible := False ;
    Panel2 .Visible := false ;
    mmoDescription.Text := Dm.tblMessagesDescription.AsString;
  end;

end;

procedure TFMessageAlarm.DSFormDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  MessageId           := Dm.tblMessagesID.asInteger ;
  changeData;
end;

procedure TFMessageAlarm.btnReadClick(Sender: TObject);
var
 qryUpdate : TADOQuery;
begin
  inherited;
  try
    qryUpdate:= TADOQuery.Create(self);
    qryUpdate.Connection := dm.YeganehConnection;
    qryUpdate.CommandTimeout := 1200;

    qryUpdate.SQL.Text   := 'update dbo.Messages set IsRead = 1 ,ReadDate = getdate() where  Id ='+ IntToStr(MessageId);
    qryUpdate.ExecSQL;

    btnRead.Enabled     := False;
    btnUnread.Enabled   := True;
    btnBackClick(Self);
  except
    ShowMessage('»Â —Ê“ —”«‰Ì Ê÷⁄Ì  »« Œÿ« „Ê«ÃÂ ‘œ° ·ÿ›« œÊ»«—Â  ·«‘ ò‰Ìœ.');
  end;
end;

procedure TFMessageAlarm.btnUnreadClick(Sender: TObject);
var
 qryUpdate : TADOQuery;
begin
  inherited;
  try
    qryUpdate:= TADOQuery.Create(self);
    qryUpdate.Connection := dm.YeganehConnection;
    qryUpdate.CommandTimeout := 1200;

    qryUpdate.SQL.Text   := ' update dbo.Messages set IsRead = 0 ,ReadDate = getdate() where  Id = '+ IntToStr(MessageId);
    qryUpdate.ExecSQL;

    btnRead.Enabled     := True;
    btnUnread.Enabled   := False;
  except
     ShowMessage('»Â —Ê“ —”«‰Ì Ê÷⁄Ì  »« Œÿ« „Ê«ÃÂ ‘œ° ·ÿ›« œÊ»«—Â  ·«‘ ò‰Ìœ.');
  end;
end;

procedure TFMessageAlarm.changeData;
begin

  mmoDescription.Text := Dm.tblMessagesDescription.AsString;
  lblDate.Caption     := ShamsiString(Dm.tblMessagesCurrentDate.AsDateTime);
  lblDesc.Caption     := Dm.tblMessagesSubject.AsString;
  btnRead.Enabled     := not Dm.tblMessagesIsRead.AsBoolean;
  btnUnread.Enabled   := Dm.tblMessagesIsRead.AsBoolean;
end;

procedure TFMessageAlarm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  edtCustomerSrch.Text := '';
  btnTaskSrchClick (Self);
end;

procedure TFMessageAlarm.btnTaskSrchClick(Sender: TObject);
begin
  inherited;
  Dm.tblMessages.Filtered := False ;
  if CheckBox1.Checked then
    Dm.tblMessages.Filter := MainFilter+ ' and Isread = 0 '
  else  Dm.tblMessages.Filter := MainFilter ;
  if Trim(edtCustomerSrch.Text) <>''  then
     Dm.tblMessages.Filter := MainFilter +  ' and Customerid =  '+ Trim(edtCustomerSrch.Text)  ;

  Dm.tblMessages.Filtered := True ;


end;

end.
