unit SMSAutoTextU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ADODB, StdCtrls, Buttons,
  ExtCtrls, ImgList, Mask, DBCtrls;

type
  TFSMSAutoText = class(TMBaseForm)
    QSMSAutoText: TADOQuery;
    QSMSAutoTextID: TAutoIncField;
    QSMSAutoTextAutoText: TStringField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    BrowseURL1: TBrowseURL;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    acAdd: TAction;
    acDel: TAction;
    acEdit: TAction;
    acCancel: TAction;
    acPost: TAction;
    ImageList1: TImageList;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure acAddUpdate(Sender: TObject);
    procedure acDelExecute(Sender: TObject);
    procedure acDelUpdate(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acEditUpdate(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acCancelUpdate(Sender: TObject);
    procedure acPostExecute(Sender: TObject);
    procedure acPostUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSMSAutoText: TFSMSAutoText;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

procedure TFSMSAutoText.FormCreate(Sender: TObject);
begin
  inherited;
  QSMSAutoText.Close;
  QSMSAutoText.Open;
  SpeedButton1.Caption:='';
  SpeedButton2.Caption:='';
  SpeedButton3.Caption:='';
  SpeedButton4.Caption:='';
  SpeedButton5.Caption:='';
end;

procedure TFSMSAutoText.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFSMSAutoText.acAddExecute(Sender: TObject);
begin
  inherited;
  QSMSAutoText.Insert;

end;

procedure TFSMSAutoText.acAddUpdate(Sender: TObject);
begin
  inherited;
   if (QSMSAutoText.State=dsInsert) or (QSMSAutoText.State=dsEdit) then acAdd.Enabled:=False else acAdd.Enabled:=True; 
end;

procedure TFSMSAutoText.acDelExecute(Sender: TObject);
begin
  inherited;
   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–›  Â” Ìœø',mbOKCancel,mtWarning)= mrOK then
   begin
        QSMSAutoText.Delete;
   end;
end;

procedure TFSMSAutoText.acDelUpdate(Sender: TObject);
begin
  inherited;
  if QSMSAutoText.State=dsBrowse then acDel.Enabled:=True else acDel.Enabled:=False;
end;

procedure TFSMSAutoText.acEditExecute(Sender: TObject);
begin
  inherited;
  QSMSAutoText.Edit;
end;

procedure TFSMSAutoText.acEditUpdate(Sender: TObject);
begin
  inherited;
  if (QSMSAutoText.State=dsBrowse) and (not QSMSAutoText.IsEmpty) then acEdit.Enabled:=True else acEdit.Enabled:=False;
end;

procedure TFSMSAutoText.acCancelExecute(Sender: TObject);
begin
  inherited;
  QSMSAutoText.Cancel;
end;

procedure TFSMSAutoText.acCancelUpdate(Sender: TObject);
begin
  inherited;
  if (QSMSAutoText.State=dsEdit) or (QSMSAutoText.State=dsInsert) then
        acCancel.Enabled:=True
  else acCancel.Enabled:=False;
end;

procedure TFSMSAutoText.acPostExecute(Sender: TObject);
begin
  inherited;
  QSMSAutoText.Post;
end;

procedure TFSMSAutoText.acPostUpdate(Sender: TObject);
begin
  inherited;
   if (QSMSAutoText.State=dsEdit) or (QSMSAutoText.State=dsInsert) then
        acPost.Enabled:=True
  else acPost.Enabled:=False;

end;

end.
