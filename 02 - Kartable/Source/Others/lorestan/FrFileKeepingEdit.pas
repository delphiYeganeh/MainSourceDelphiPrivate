unit FrFileKeepingEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DB, ADODB, Mask, DBCtrls,baseUnit;

type
  TFileKeepingEditFrm = class(TmbaseForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TDBEdit;
    Edit2: TDBEdit;
    Edit3: TDBEdit;
    Edit4: TDBEdit;
    Edit5: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FileKeepingEditFrm: TFileKeepingEditFrm;

implementation

uses UzistDM;

{$R *.dfm}

procedure TFileKeepingEditFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TFileKeepingEditFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TFileKeepingEditFrm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TFileKeepingEditFrm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TFileKeepingEditFrm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TFileKeepingEditFrm.BitBtn1Click(Sender: TObject);
begin
ZistDm.QryFileKeeping.Post;
close  ;
end;

procedure TFileKeepingEditFrm.BitBtn2Click(Sender: TObject);
begin
ZistDm.QryFileKeeping.Cancel;
close  ;
end;

end.
