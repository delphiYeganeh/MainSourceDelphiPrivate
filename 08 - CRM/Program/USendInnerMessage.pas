unit USendInnerMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, StdCtrls, CheckLst,
  YchecklistBox, Buttons, ADODB;

type
  TFSendInnerMessage = class(TMBaseForm)
    pnlMain: TPanel;
    pnlBottom: TPanel;
    btnCancel: TBitBtn;
    pnlTop: TPanel;
    PnlMiddle: TPanel;
    Label1: TLabel;
    YchecklistBox1: TYchecklistBox;
    mmoDescription: TMemo;
    SendMessage: TSpeedButton;
    UsersMessage: TADOQuery;
    UsersMessageid: TIntegerField;
    UsersMessageTitle: TStringField;
    edtTitle: TEdit;
    Label2: TLabel;
    procedure SendMessageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSendInnerMessage: TFSendInnerMessage;

implementation

uses dmu,YShamsiDate;

{$R *.dfm}

procedure TFSendInnerMessage.SendMessageClick(Sender: TObject);
 var index: byte;
  SqlText :string;
  countM : Integer;
begin
  inherited;

  if (Trim(edtTitle.text) = '') or  (Trim(mmoDescription.Text)='') then
  begin
    ShowMessage('«„ò«‰ Œ«·Ì »Êœ‰ ⁄‰Ê«‰ Ì« „ ‰ „”ÌÃ ÊÃÊœ ‰œ«—œ');
  end
  else
  begin
    if ShowMyMessage('ÅÌ€«„','¬Ì« «“ «—”«· „”ÌÃ „ÿ„⁄‰ „Ì »«‘Ìœø',mbOKCancel,mtWarning) = mrOK then
    begin
      countM := 0 ;
      with TADOQuery.Create(nil) do
      begin
         Connection := Dm.YeganehConnection;
         CommandTimeout := 1200;
          if YchecklistBox1.SelectedCodes<>'' then
            for index :=0 to YchecklistBox1.Count-1 do
            begin
             if YchecklistBox1.Checked[index] then
               if YchecklistBox1.codes[index]<>0 then
               begin
                 countM := countM + 1;
                 SQL.Text :=  ' Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,CustomerId,Subject,Description,UserID)'+
                              ' select '+IntTostr(_UserId)+',getdate(),2,0,'+''''+edtTitle.text+''''+','+''''+mmoDescription.Text+''''+', '+IntToStr(YchecklistBox1.codes[index]) ;

                 ExecSQL;
               end;
            end;


      end;

      ShowMessage('  ⁄œ«œ '+ IntToStr(countM) + ' „”ÌÃ «—”«· ‘œ ');

    end;
  end;
  Close;
end;

procedure TFSendInnerMessage.FormCreate(Sender: TObject);
begin
  inherited;
  UsersMessage.Close;
  UsersMessage.Open;
  YchecklistBox1.Fill;
end;

procedure TFSendInnerMessage.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  if (NewWidth < 671)  or (NewHeight < 538) then
    Resize := False
  else Resize := True;
end;

procedure TFSendInnerMessage.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

end.
