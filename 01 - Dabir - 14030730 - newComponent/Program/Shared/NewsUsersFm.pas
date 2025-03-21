unit NewsUsersFm;
{Ranjbar}
interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, StdCtrls, Buttons, UemsVCL, CheckLst,
  YchecklistBox, DBCtrls, Mask, ComCtrls, wwriched, ExtCtrls,ShellApi, DB,
  ADODB, ImgList, AdvGlowButton, xpPanel;

type
  TDblclickAction=(Atch);
  TFmNewsUsers = class(TMBaseForm)
    Panel1: TPanel;
    Label12: TLabel;
    DBN1: TDBNavigator;
    EdtSearch: TEdit;
    Panel4: TPanel;
    Panel3: TxpPanel;
    Label1: TLabel;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    DBCheckBox1: TDBCheckBox;
    BitBtn1: TAdvGlowButton;
    ImageList1: TImageList;
    SaveDialog1: TSaveDialog;
    BitBtn2: TAdvGlowButton;
    DBChBoIsRead: TDBCheckBox;
    BBRefresh: TAdvGlowButton;
    DBETitle: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Button1: TAdvGlowButton;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure YDBGrid1CellClick(Column: TColumn);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBCheckBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YDBGrid1NeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure YDBGrid1NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure BBRefreshClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    DblclickAction : TDblclickAction;
    procedure OpenNewsTable;
    function IsFromWorkSheet:Boolean;
    function GetWorkSheetID:Integer;
  public
    FLocateID:integer;
    Property LocateID : integer read FLocateID Write FLocateID;
  end;

var
  FmNewsUsers: TFmNewsUsers;

implementation

uses NewsUsersDM , dmu , YShamsiDate, StrUtils, WorkSheetViewsUnit;

{$R *.dfm}

procedure TFmNewsUsers.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFmNewsUsers.OpenNewsTable;
Var
   LikeText : String;
begin
   LikeText := Trim(EdtSearch.Text);
   if LikeText = '' then
      LikeText := 'Null';
   With DMNewsUsers do
   begin
      QrNews.Close;
      QrNews.Parameters.ParamByName('Pa_UsersID').Value := _userid;
      QrNews.Parameters.ParamByName('Pa_LikeText1').Value := LikeText;
      QrNews.Parameters.ParamByName('Pa_LikeText2').Value := LikeText;
      QrNews.Open;
      //���� ��� ���� - �ѐ� ���
      if LocateID > 0 then
      begin
         QrNews.Locate('NewsID',LocateID,[]);
         QrNews.Edit;
         QrNewsISRead.AsBoolean:=True;
         QrNews.Post;
         QrNews.Prior;
         QrNews.Next;
      end;
   end;
end;


procedure TFmNewsUsers.FormShow(Sender: TObject);
begin
   OpenNewsTable;
   YDBGrid1.Repaint;
   DBNav_Setup(DBN1);
end;

procedure TFmNewsUsers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   With DMNewsUsers do
   begin
      if QrNewsUsers.State = dsEdit then
         QrNewsUsers.Post;
      QrNews.Close;
      QrNewsUsers.Close;
      SPImageData.Close;
   end;
end;

procedure TFmNewsUsers.YDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  Abort;
end;

procedure TFmNewsUsers.DBCheckBox1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  With DMNewsUsers do
  begin
     if QrNewsUsers.State = dsEdit then
        QrNewsUsers.Post;
  end;

end;

procedure TFmNewsUsers.DBCheckBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  With DMNewsUsers do
     if QrNewsUsers.State = dsEdit then
        QrNewsUsers.Post;
end;

procedure TFmNewsUsers.EdtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = Vk_Return then
      OpenNewsTable;
end;

procedure TFmNewsUsers.YDBGrid1NeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;
  if Column.FieldName='AttachFileName' then
    if Trim(DMNewsUsers.QrNewsAttachFileName.AsString) <> '' then
       ImageIndex:=1
    else
       ImageIndex:=0;

end;

procedure TFmNewsUsers.YDBGrid1DblClick(Sender: TObject);
Var
   FileName,FilePath :String;
begin
  inherited;
  if Trim(DMNewsUsers.QrNewsAttachFileName.AsString) <> '' then
  begin
     FileName := File_GetFileName(DMNewsUsers.SPImageDataFileName.AsString);
     FilePath := _TempPath+FileName;
     DMNewsUsers.SPImageDataData.SaveToFile(FilePath);
     if FileExists(FilePath) then
        ShellExecute(handle,'Open',pchar(FilePath),Nil,Nil,SW_SHOWNORMAL);
  end;
end;

procedure TFmNewsUsers.BitBtn2Click(Sender: TObject);
Var
   FileName,FilePath :String;
begin
  inherited;
  if Trim(DMNewsUsers.QrNewsAttachFileName.AsString) <> '' then
  begin
     FileName := File_GetFileName(DMNewsUsers.SPImageDataFileName.AsString);
     SaveDialog1.FileName := FileName;
     if SaveDialog1.Execute then
     begin
        FilePath := SaveDialog1.FileName;
        DMNewsUsers.SPImageDataData.SaveToFile(FilePath);
        if FileExists(FilePath) then
           ShellExecute(handle,'Open',pchar(FilePath),Nil,Nil,SW_SHOWNORMAL);
     end;
  end
     else
        MBaseForm.messageShowString('�� ��� ��� �� ����� ����� ���� ���', False);
end;

procedure TFmNewsUsers.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if not DMNewsUsers.QrNewsISRead.AsBoolean then
     F.Style := F.Style+[fsBold];
end;

procedure TFmNewsUsers.BBRefreshClick(Sender: TObject);
begin
  inherited;
  OpenNewsTable;
end;

procedure TFmNewsUsers.Button1Click(Sender: TObject);
begin
  inherited;
  if IsFromWorkSheet then
  begin
    FWorkSheetViews:=TFWorkSheetViews.Create(Application);
    FWorkSheetViews.WorkSheetID := GetWorkSheetID;
    FWorkSheetViews.ShowModal;
  end;
end;

function TFmNewsUsers.IsFromWorkSheet: Boolean;
begin
  Result := False;
  {
  if Pos('���� �� ���� �� ��' ,DMNewsUsers.QrNewsMemo.AsString)>0 then Result:=True;
  if Pos('���� �� ������ �� ��' ,DMNewsUsers.QrNewsMemo.AsString)>0 then Result:=True;
  if Pos('���� �� ����� ��� �� ��' ,DMNewsUsers.QrNewsMemo.AsString)>0 then Result:=True;
  }
  if (Pos('���� �� ���� �� ��' ,DMNewsUsers.QrNewsMemo.AsString)>0) or
     (Pos('���� �� ������ �� ��' ,DMNewsUsers.QrNewsMemo.AsString)>0) or
     (Pos('���� �� ����� ��� �� ��' ,DMNewsUsers.QrNewsMemo.AsString)>0) then
    Result:=True;

end;

function TFmNewsUsers.GetWorkSheetID: Integer;
var
  ID : String;
  x1,x2,x3:Integer;
begin
   Result:= 0 ;
   x1:=Length(DMNewsUsers.QrNewsMemo.AsString);
   x2:=Pos(':',DMNewsUsers.QrNewsMemo.AsString);
   if x2 >0 then
   begin
     x3:=x1-x2;
     ID:=Copy(DMNewsUsers.QrNewsMemo.AsString,x2+1,x3);
     Result:=StrToInt(ID);
   end;
end;

end.
