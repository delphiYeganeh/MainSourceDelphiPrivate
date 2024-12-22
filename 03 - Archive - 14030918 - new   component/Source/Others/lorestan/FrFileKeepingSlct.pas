unit FrFileKeepingSlct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Grids, DB, DBGrids, Buttons, DBCtrls, ADODB;

type
  TFileKeepingSlctFrm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    QryFileKeeping: TADOQuery;
    DSFileKeeping: TDataSource;
    QryEmployer: TADOQuery;
    DSEmployer: TDataSource;
    DSResearch: TDataSource;
    QryResearch: TADOQuery;
    QryCity: TADOQuery;
    DSCity: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QryFileKeepingFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure QryEmployerFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FileKeepingSlctFrm: TFileKeepingSlctFrm;

implementation

{$R *.dfm}

procedure TFileKeepingSlctFrm.FormCreate(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TFileKeepingSlctFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TFileKeepingSlctFrm.FormShow(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.PageControl1Change(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBGrid2DblClick(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TFileKeepingSlctFrm.BitBtn1Click(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.BitBtn4Click(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBLookupComboBox1Click(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBLookupComboBox2Click(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.ComboBox2Change(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.Edit2Change(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TFileKeepingSlctFrm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBGrid1DblClick(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TFileKeepingSlctFrm.BitBtn2Click(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.BitBtn3Click(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.ComboBox1Change(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.Edit1Change(Sender: TObject);
begin
  ;
end;

procedure TFileKeepingSlctFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TFileKeepingSlctFrm.QryFileKeepingFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  ;
end;

procedure TFileKeepingSlctFrm.QryEmployerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  ;
end;

end.
