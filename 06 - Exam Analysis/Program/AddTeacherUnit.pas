unit AddTeacherUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ActnList, Buttons, ExtCtrls, StdCtrls, DB,
  ADODB;

type
  TFAddTeacher = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    edtName: TEdit;
    Label2: TLabel;
    edtCode: TEdit;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    QAddTeacher: TADOQuery;
    QAddTeacherTeacherCode: TStringField;
    QAddTeacherFullName: TWideStringField;
    Label4: TLabel;
    Label5: TLabel;
    edtTitle: TEdit;
    edtFamily: TEdit;
    edtPhone: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddTeacher: TFAddTeacher;

implementation

uses dmu, UMainForm;

{$R *.dfm}

procedure TFAddTeacher.SpeedButton1Click(Sender: TObject);
var
  Name,Family,FullName,Title,Code,Phone:String;
begin
    Name:=Trim(edtName.Text);
    Family:=Trim(edtFamily.Text);
    if (Name<>'') and (Family<>'') then FullName:=Name+' '+Family
    else if Name<>'' then FullName:=Name
    else if Family<>'' then FullName:=Family;
    Title:=Trim(edtTitle.Text);
    Phone:=Trim(edtPhone.Text);
    Code:=Trim(edtCode.Text);

    QAddTeacher.Close;
    QAddTeacher.SQL.Clear;
    QAddTeacher.SQL.Add('INSERT INTO Teacher(TeacherCode,FirstName,LastName,FullName,Title,PhoneNumbers)');
    QAddTeacher.SQL.Add('VALUES('+QuotedStr(Code)+','+QuotedStr(Name)+','+QuotedStr(Family)+','+QuotedStr(FullName)+','+QuotedStr(Title)+','+QuotedStr(Phone)+')');
   // ShowMessage(QAddTeacher.SQL.Text);
    QAddTeacher.ExecSQL;
    ShowMessage('������ ����� ��');
    Close;
end;

procedure TFAddTeacher.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
