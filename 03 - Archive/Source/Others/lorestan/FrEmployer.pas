unit FrEmployer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DB, DBGrids, ComCtrls, ADODB,baseunit,
  YDbgrid, xpWindow, ExtActns, ActnList, ExtCtrls;

type
  TEmployerFrm = class(TmbaseForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    DBGrid1: TYDBGrid;
    StatusBar1: TStatusBar;
    Selectbtn: TBitBtn;
    BitBtn4: TBitBtn;
    EditPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    AEnter: TAction;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure QryEmployerFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure RefreshEmploy;
    procedure SelectbtnClick(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     LetterID : integer;
  end;

var
  EmployerFrm: TEmployerFrm;

implementation

uses Dmu, UzistDM, FrEmployerEdit, businessLayer;

{$R *.dfm}

procedure TEmployerFrm.FormCreate(Sender: TObject);
begin
ZistDm.QryEmployer.close;
ZistDm.QryEmployer.Open;

end;

procedure TEmployerFrm.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('ÇíÇ ÇÒ ÍÐÝ ãØãÆä åÓÊíÏ¿',mtConfirmation,[mbyes,mbno],0)=mryes then
 ZistDm.QryEmployer.Delete;
  ;
end;

procedure TEmployerFrm.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TEmployerFrm.BitBtn2Click(Sender: TObject);
begin
ZistDm.QryEmployer.Edit;
EmployerEditFrm:=TEmployerEditFrm.Create(Application)  ;
EmployerEditFrm.ShowModal;
  ;
end;

procedure TEmployerFrm.BitBtn1Click(Sender: TObject);
begin
ZistDm.QryEmployer.Insert;
ZistDm.QryEmployerDt.AsString:=dm.today;

EmployerEditFrm:=TEmployerEditFrm.Create(Application)  ;
EmployerEditFrm.ShowModal;
end;

procedure TEmployerFrm.DBLookupComboBox1Click(Sender: TObject);
begin
  RefreshEmploy;
end;

procedure TEmployerFrm.DBLookupComboBox2Click(Sender: TObject);
begin
RefreshEmploy  ;
end;

procedure TEmployerFrm.Edit1Change(Sender: TObject);
begin
RefreshEmploy;
end;

procedure TEmployerFrm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TEmployerFrm.ComboBox1Change(Sender: TObject);
begin
  ;
end;

procedure TEmployerFrm.RadioButton1Click(Sender: TObject);
begin
  ;
end;

procedure TEmployerFrm.RadioButton2Click(Sender: TObject);
begin
  ;
end;

procedure TEmployerFrm.QryEmployerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  ;
end;

procedure TEmployerFrm.RefreshEmploy;
begin
  with zistdm.QryEmployer do
   begin
     close;
      sql.Text:='Select * from arch_Employer '+
      ' where cast(EmployerCode as varchar(50))+EmployerDescrp+ Explan like ''%'+trim(edit1.text)+'%''';
      if DBLookupComboBox1.KeyValue>0 then
      sql.Text:= sql.Text+' and researchID='+IntToStr(DBLookupComboBox1.KeyValue);
      if  DBLookupComboBox2.KeyValue>0 then
      sql.Text:= sql.Text+' and CityID='+IntToStr(DBLookupComboBox2.KeyValue);
    Open;

   end;

end;

procedure TEmployerFrm.SelectbtnClick(Sender: TObject);
begin
  inherited;
 update_filekeeping_letter(LetterID,2,ZistDm.QryEmployerEmployerID.AsInteger);
 close;

end;

procedure TEmployerFrm.AEnterExecute(Sender: TObject);
begin
  inherited;
  if Selectbtn.Visible then
   Selectbtn.Click;

end;

end.
