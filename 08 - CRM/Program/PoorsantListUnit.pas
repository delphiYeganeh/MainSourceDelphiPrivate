unit PoorsantListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, Buttons, ExtCtrls, ADODB,
  StdCtrls, Grids, DBGrids, YDbgrid, Mask, DBCtrls;

type
  TFPoorsantList = class(TMBaseForm)
    QPoorsantList: TADOQuery;
    QPoorsantListID: TAutoIncField;
    QPoorsantListMYear: TIntegerField;
    QPoorsantListUserID: TIntegerField;
    QPoorsantListDabir_Single: TFloatField;
    QPoorsantListDabir_Net: TFloatField;
    QPoorsantListBaygani_Single: TFloatField;
    QPoorsantListBaygani_Net: TFloatField;
    QPoorsantListBox_Single: TFloatField;
    QPoorsantListBox_Net: TFloatField;
    QPoorsantListAutomation_Net: TFloatField;
    QPoorsantListAnalysis: TFloatField;
    QPoorsantListlkUserName: TStringField;
    QAllUsers: TADOQuery;
    QAllUsersid: TAutoIncField;
    QAllUsersTitle: TWideStringField;
    QPoorsantListAutomation_Web: TFloatField;
    DataSource1: TDataSource;
    QTemp: TADOQuery;
    pnlMain: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    YDBGrid1: TYDBGrid;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label20: TLabel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox7: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edtName: TEdit;
    YDBGridUsers: TYDBGrid;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edtNameChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure QPoorsantListBeforePost(DataSet: TDataSet);
    procedure YDBGridUsersDblClick(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure YDBGridUsersNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
    Function IS_User_In_List:Boolean;

  public
    { Public declarations }
  end;

var
  FPoorsantList: TFPoorsantList;

implementation

uses dmu, YShamsiDate, BusinessLayer;

{$R *.dfm}

procedure TFPoorsantList.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if ComboBox1.ItemIndex=0 then
  begin
      QPoorsantList.Close;
      QPoorsantList.SQL.Clear;
      QPoorsantList.SQL.Add('SELECT * FROM PoorsantList');
//      ShowMessage(QPoorsantList.SQL.Text);
      QPoorsantList.Open;
  end
  else
  begin
      QPoorsantList.Close;
      QPoorsantList.SQL.Clear;
      QPoorsantList.SQL.Add('SELECT * FROM PoorsantList WHERE MYear='+ComboBox1.Text);
//      ShowMessage(QPoorsantList.SQL.Text);
      QPoorsantList.Open;
  end;
end;

procedure TFPoorsantList.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;  
  QAllUsers.Close;
  QAllUsers.Open;
end;

procedure TFPoorsantList.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.State=dsBrowse then
  begin
      QPoorsantList.Edit;
  end;
end;

procedure TFPoorsantList.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.State<>dsBrowse then
  begin
      QPoorsantList.Cancel;
  end;
end;

procedure TFPoorsantList.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.State<>dsBrowse then
  begin
      QPoorsantList.Post;
  end;
end;

procedure TFPoorsantList.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.State=dsBrowse then
  begin
      QPoorsantList.Last;
  end;
end;

procedure TFPoorsantList.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.State=dsBrowse then
  begin
      QPoorsantList.Next;
  end;

end;

procedure TFPoorsantList.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.State=dsBrowse then
  begin
      QPoorsantList.Prior;
  end;

end;

procedure TFPoorsantList.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.State=dsBrowse then
  begin
      QPoorsantList.First;
  end;

end;

procedure TFPoorsantList.edtNameChange(Sender: TObject);
var
  S:String;
begin
  inherited;
  S := Trim(edtName.Text);
  if Length(S)>0 then
  begin
      S:=Replace1(s,char(223),char(152));
      QAllUsers.Close;
      QAllUsers.SQL.Clear;
      QAllUsers.SQL.Add('SELECT id,Title FROM Users WHERE Title LIKE ''%'+S+'%''');
      QAllUsers.Open;
  end
  else
  begin
      QAllUsers.Close;
      QAllUsers.SQL.Clear;
      QAllUsers.SQL.Add('SELECT id,Title FROM Users');
      QAllUsers.Open;
  end;
end;

procedure TFPoorsantList.Button1Click(Sender: TObject);
begin
  inherited;
   QTemp.Close;
   QTemp.SQL.Clear;
   QTemp.SQL.Add('INSERT INTO PoorsantList(UserID,MYear,Dabir_Single,Dabir_Net,Baygani_Single,Baygani_Net,Box_Single,Box_Net,Automation_Web,Automation_Net,Analysis)');
   QTemp.SQL.Add('VALUES('+QAllUsersid.AsString+',0,0,0,0,0,0,0,0,0,0)');
   QTemp.ExecSQL;

   ComboBox1.ItemIndex:=1;
   QPoorsantList.Close;
   QPoorsantList.SQL.Clear;
   QPoorsantList.SQL.Add('SELECT * FROM PoorsantList WHERE MYear=0');
   QPoorsantList.Open;

end;

procedure TFPoorsantList.Button2Click(Sender: TObject);
begin
  inherited;
  if QPoorsantList.Active  then
      if not QPoorsantList.IsEmpty then
          if MessageDlg('¬Ì« »—«Ì Õ–› «ÿ„Ì‰«‰ œ«—Ìœ ø',mtConfirmation,[mbyes,mbno],0)=mryes then
          begin
              QTemp.Close;
              QTemp.SQL.Clear;
              QTemp.SQL.Add('DELETE FROM PoorsantList WHERE ID='+IntToStr(QPoorsantListID.AsInteger));
              QTemp.ExecSQL;
              QPoorsantList.Close;
              QPoorsantList.Open;
          end;
end;

function TFPoorsantList.IS_User_In_List: Boolean;
begin
  Result:=False;
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT ID FROM PoorsantList WHERE UserID='+IntToStr(QPoorsantListUserID.AsInteger)+' and  MYear='+IntToStr(QPoorsantListMYear.AsInteger));
//  ShowMessage( QTemp.SQL.Text );
  QTemp.Open;
  if not QTemp.IsEmpty then Result:=True;
end;

procedure TFPoorsantList.QPoorsantListBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (QPoorsantListDabir_Single.AsFloat>100) or (QPoorsantListDabir_Net.AsFloat>100) or
     (QPoorsantListBaygani_Single.AsFloat>100) or (QPoorsantListBaygani_Net.AsFloat>100) or
     (QPoorsantListBox_Single.AsFloat>100) or (QPoorsantListBox_Net.AsFloat>100) or
     (QPoorsantListAutomation_Net.AsFloat>100) or (QPoorsantListAutomation_Web.AsFloat>100) or
     (QPoorsantListAnalysis.AsFloat>100)
  then
  begin
     ShowMessage('œ—’œ ÅÊ—”«‰  «‘ »«Â «” ');
     Abort;
     Exit;
  end;
  if QPoorsantListMYear.AsInteger<>0 then
  if (IS_User_In_List) and (QPoorsantList.State=dsInsert) then
  begin
     ShowMessage('«Ì‰ ò«—»— œ— ·Ì”  ÊÃÊœ œ«—œ');
     QPoorsantList.Cancel;
  end;
end;

procedure TFPoorsantList.YDBGridUsersDblClick(Sender: TObject);
begin
  inherited;
  Button1Click(Application);
end;

procedure TFPoorsantList.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Button2Click(Application);
end;

procedure TFPoorsantList.YDBGridUsersNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if (QAllUsers.RecNo mod 2)=0 then
       Color:=$00EAEAEA
  else
       Color:=clWhite;
end;

procedure TFPoorsantList.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if (QPoorsantList.RecNo mod 2)=0 then
       Color:=$00EAEAEA
  else
       Color:=clWhite;
end;

procedure TFPoorsantList.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 976)  or (NewHeight < 582) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

end.
