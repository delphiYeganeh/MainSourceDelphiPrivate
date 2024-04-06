unit FrEmployerEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, DB, ADODB, Mask, UemsVCL,baseunit, xpWindow,
  ExtActns, ActnList;

type
  TEmployerEditFrm = class(TmbaseForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TDBEdit;
    Edit2: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit3: TDBShamsiDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmployerEditFrm: TEmployerEditFrm;

implementation

uses UzistDM, Dmu;

{$R *.dfm}

procedure TEmployerEditFrm.BitBtn1Click(Sender: TObject);
var r,c:integer;
begin
 r:=DBLookupComboBox1.KeyValue;
 c:=DBLookupComboBox2.KeyValue;
 if c<=0 then
   begin
    ShowMessage('ÔåÑ  ÑÇ Èå ÏÞÊ æÇÑÏ äãÇííÏ.');
    DBLookupComboBox2.SetFocus;
    exit;
   end;
 if r<=0 then
   begin
    ShowMessage('ÕäÚÊ   ÑÇ Èå ÏÞÊ æÇÑÏ äãÇííÏ.');
    DBLookupComboBox1.SetFocus;
    exit;
   end;
if ZistDm.QryEmployer.State =dsinsert then
   ZistDm.QryEmployerEmployerCode.AsString:=dm.YeganehConnection.execute('select isnull((select max(EmployerCode)+1 from arch_employer '+
                   'where ResearchID='+IntToStr(r)+' and CityID='+IntToStr(c)+'),''1'')').Fields[0].Value;
ZistDm.QryEmployer.Post;
close;
end;

procedure TEmployerEditFrm.BitBtn2Click(Sender: TObject);
begin
ZistDm.QryResearch.Cancel  ;
close;
end;

end.
