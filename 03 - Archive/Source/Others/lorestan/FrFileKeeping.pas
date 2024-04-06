unit FrFileKeeping;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DB, DBGrids, ADODB,baseunit, xpWindow,
  ExtActns, ActnList, ExtCtrls;

type
  TFileKeepingFrm = class(TmbaseForm)
    GroupBox1: TGroupBox;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    EditPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Selectbtn: TBitBtn;
    AEnter: TAction;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure QryFileKeepingFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure SelectbtnClick(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LetterID : integer;
  end;

var
  FileKeepingFrm: TFileKeepingFrm;

implementation

uses UzistDM, FrFileKeepingEdit, businessLayer;

{$R *.dfm}

procedure TFileKeepingFrm.FormCreate(Sender: TObject);
begin
ZistDm.QryFileKeeping.Open;
end;

procedure TFileKeepingFrm.BitBtn1Click(Sender: TObject);
begin
ZistDm.QryFileKeeping.Insert;
FileKeepingEditFrm:=TFileKeepingEditFrm.Create(Application)  ;
FileKeepingEditFrm.ShowModal;
end;

procedure TFileKeepingFrm.BitBtn2Click(Sender: TObject);
begin
ZistDm.QryFileKeeping.Edit;
FileKeepingEditFrm:=TFileKeepingEditFrm.Create(Application)  ;
FileKeepingEditFrm.ShowModal ;
end;

procedure TFileKeepingFrm.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
 ZistDm.QryFileKeeping.Delete;
end;

procedure TFileKeepingFrm.BitBtn4Click(Sender: TObject);
begin
close ;
end;

procedure TFileKeepingFrm.ComboBox1Change(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingFrm.Edit1Change(Sender: TObject);
begin
  with ZistDm.QryFileKeeping do
   begin
    close;
    sql.Text:='Select * From arch_FileKeeping where     FileKeepingCode+name like ''%'+Edit1.Text+'%'' Order By Name';
    Open;
   end  ;
end;

procedure TFileKeepingFrm.QryFileKeepingFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  ;
end;

procedure TFileKeepingFrm.SelectbtnClick(Sender: TObject);
begin
  inherited;
 update_filekeeping_letter(LetterID,1,ZistDm.QryFileKeepingFileKeepingID.AsInteger);
 close;

end;

procedure TFileKeepingFrm.AEnterExecute(Sender: TObject);
begin
  inherited;
  if Selectbtn.Visible then
   Selectbtn.Click;
 end;

end.
