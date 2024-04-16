unit UsersSequenceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, ExtCtrls, Grids,
  DBGrids, YDbgrid, ADODB;

type
  TFUsersSequence = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtName: TEdit;
    DsQUsersSequence: TDataSource;
    YDBGridUsers: TYDBGrid;
    QUsers: TADOQuery;
    QUsersSequence: TADOQuery;
    YDBGrid2: TYDBGrid;
    QUsersid: TAutoIncField;
    QUsersTitle: TWideStringField;
    QUsersSequenceID: TAutoIncField;
    QUsersSequenceUsersID: TIntegerField;
    QUsersSequencesequence: TIntegerField;
    QUsersSequenceActive: TBooleanField;
    QUsersSequencelkUserName: TStringField;
    QTemp: TADOQuery;
    QGetLastSeq: TADOQuery;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    QAllUsers: TADOQuery;
    QAllUsersid: TAutoIncField;
    QAllUsersTitle: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure edtNameChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure YDBGridUsersDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure YDBGrid2DblClick(Sender: TObject);
    procedure QUsersSequencePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    Function IS_User_In_List:Boolean;
    function GetLastSequence:Integer;
  public
    { Public declarations }
  end;

var
  FUsersSequence: TFUsersSequence;

implementation

uses dmu, YShamsiDate, BusinessLayer;

{$R *.dfm}

procedure TFUsersSequence.FormShow(Sender: TObject);
begin
  inherited;
  QAllUsers.Close;
  QAllUsers.Open;
  QUsers.Close;
  QUsers.Open;
  QUsersSequence.Close;
  QUsersSequence.Open;
end;

procedure TFUsersSequence.edtNameChange(Sender: TObject);
var
  S:String;
begin
  inherited;
  S := Trim(edtName.Text);
  if Length(S)>0 then
  begin
      S:=Replace1(s,char(223),char(152));
      QUsers.Close;
      QUsers.SQL.Clear;
      QUsers.SQL.Add('SELECT id,Title FROM Users WHERE Title LIKE ''%'+S+'%''');
      QUsers.Open;
  end
  else
  begin
      QUsers.Close;
      QUsers.SQL.Clear;
      QUsers.SQL.Add('SELECT id,Title FROM Users');
      QUsers.Open;
  end;
end;

procedure TFUsersSequence.Button1Click(Sender: TObject);
begin
  inherited;
  if IS_User_In_List then
  begin
     ShowMessage('«Ì‰ ò«—»— œ— ·Ì”  ÊÃÊœ œ«—œ');
  end
  else
  begin
     QTemp.Close;
     QTemp.SQL.Clear;
     QTemp.SQL.Add('INSERT INTO UsersSequence(UsersID,sequence,Active)');
     QTemp.SQL.Add('VALUES('+QUsersid.AsString+','+IntToStr(GetLastSequence)+','+'''False'''+')');
     QTemp.ExecSQL;
     QUsersSequence.Close;
     QUsersSequence.Open;
  end;
end;

function TFUsersSequence.IS_User_In_List: Boolean;
begin
  Result:=False;
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT ID FROM UsersSequence WHERE UsersID='+IntToStr(QUsersid.AsInteger));
  QTemp.Open;
  if not QTemp.IsEmpty then Result:=True;
end;

function TFUsersSequence.GetLastSequence: Integer;
begin
  Result:=1;
  QGetLastSeq.Close;
  QGetLastSeq.SQL.Clear;
  QGetLastSeq.SQL.Add('SELECT ISNULL(MAX(sequence),0)+1 AS MaxSequence FROM UsersSequence');
  QGetLastSeq.Open;
  if not QGetLastSeq.IsEmpty then Result:=QGetLastSeq.FieldValues['MaxSequence'];
end;

procedure TFUsersSequence.YDBGridUsersDblClick(Sender: TObject);
begin
  inherited;
  Button1Click(Application);
end;

procedure TFUsersSequence.Button2Click(Sender: TObject);
begin
  inherited;
  if QUsersSequence.Active  then
      if not QUsersSequence.IsEmpty then
         if QUsersSequenceActive.AsBoolean=True then
            ShowMessage('ò«—»— ›⁄«· —« ‰„Ì  Ê«‰ Õ–› ò—œ')
         else
            if MessageDlg('¬Ì« »—«Ì Õ–› «ÿ„Ì‰«‰ œ«—Ìœ ø',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('DELETE FROM UsersSequence WHERE ID='+IntToStr(QUsersSequenceID.AsInteger));
                QTemp.ExecSQL;
                QUsersSequence.Close;
                QUsersSequence.Open;
            end;
end;

procedure TFUsersSequence.YDBGrid2DblClick(Sender: TObject);
begin
  inherited;
  Button2Click(Application);
end;

procedure TFUsersSequence.QUsersSequencePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  Action:=daAbort;
  if (DataSet.State=dsEdit) or (DataSet.State=dsInsert) then DataSet.Cancel;
  ShowMessage(E.Message);
end;

end.
