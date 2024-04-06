unit UBenefitFromHazineh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ActnList, StdCtrls, Spin, DBCtrls, ExtCtrls,
  Buttons, Grids, DBGrids, YDbgrid, DB, ADODB;

type
  TfmBenefitFromHazineh = class(TYBaseForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtAccountNo: TEdit;
    Label2: TLabel;
    cmbFamily: TDBLookupComboBox;
    Label3: TLabel;
    edtYear: TSpinEdit;
    Label4: TLabel;
    cmbMonth: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    YDBGrid1: TYDBGrid;
    edtPercent: TEdit;
    Label5: TLabel;
    DSGrid: TDataSource;
    Search_Benefits: TADOStoredProc;
    Search_BenefitsAccountID: TAutoIncField;
    Search_BenefitsAccountNo: TStringField;
    Search_BenefitsAccountTitle: TWideStringField;
    Search_BenefitsYEAR: TIntegerField;
    Search_BenefitsDocumentNo: TStringField;
    Search_BenefitsInsertedBenefitPrice: TFloatField;
    Search_BenefitsAnnualAvragePrice: TFloatField;
    Search_BenefitsInsertedDate: TStringField;
    Search_BenefitsBenefitPercent: TFloatField;
    Search_BenefitsMonth: TWordField;
    DSGroups: TDataSource;
    QryGroups: TADOQuery;
    QryGroupsFamilyID: TSmallintField;
    QryGroupsFamilyTitle: TWideStringField;
    Search_BenefitsFarsiMonth: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Delete_Benefits: TADOStoredProc;
    Calc_Benefits: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField3: TStringField;
    FloatField3: TFloatField;
    WordField1: TWordField;
    StringField4: TStringField;
    Insert_Benefits: TADOStoredProc;
    AutoIncField2: TAutoIncField;
    StringField5: TStringField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField7: TStringField;
    FloatField6: TFloatField;
    WordField2: TWordField;
    StringField8: TStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject); overload;
    procedure Button1Click(Sender: TObject);
    procedure Search_BenefitsCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     BenefitAccountID : integer;
  end;

var
  fmBenefitFromHazineh: TfmBenefitFromHazineh;

implementation

uses dmu, BusinessLayer, YShamsiDate;

{$R *.dfm}

procedure TfmBenefitFromHazineh.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Panel1.Height := 57;
end;

procedure TfmBenefitFromHazineh.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Panel1.Height := 145;
end;

procedure TfmBenefitFromHazineh.FormCreate(Sender: TObject);
begin
  inherited;
  edtYear.Value := _Year;
  Panel1.Height := 57;
  QryGroups.Close;
  QryGroups.Open;
end;

procedure TfmBenefitFromHazineh.Button1Click(Sender: TObject);
begin
  inherited;

   //if trim(edtAccountNo.Text)='' then
     //edtAccountNo.Text := '0';
  Search_Benefits.Close;
  DSGrid.DataSet := Search_Benefits;
  Search_Benefits.Parameters.ParamByName('@AccountNo').Value := Trim(edtAccountNo.Text);
  Search_Benefits.Parameters.ParamByName('@FamilyID').Value := cmbFamily.KeyValue;
  Search_Benefits.Parameters.ParamByName('@Year').Value := StrToInt(edtYear.Text);
  Search_Benefits.Parameters.ParamByName('@Month').Value := cmbMonth.ItemIndex;
  if Get_SystemSetting('BenefitCalcType')='1' then
    Search_Benefits.Parameters.ParamByName('@WithLoan').Value := True
  else
    Search_Benefits.Parameters.ParamByName('@WithLoan').Value := False;

  if Get_SystemSetting('ChBoEtayeSoodTasviyeh')='1' then
    Search_Benefits.Parameters.ParamByName('@doForSetteld').Value := true
  else
    Search_Benefits.Parameters.ParamByName('@doForSetteld').Value := False;
  Search_Benefits.Open;
end;

procedure TfmBenefitFromHazineh.Search_BenefitsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if Search_BenefitsMonth.Value = 0 then
    Search_BenefitsFarsiMonth.Value :=  'ò· ”«·'
  else if Search_BenefitsMonth.Value >12 then
    Search_BenefitsFarsiMonth.Value :=  '--';
  //else
      //Search_BenefitsFarsiMonth.Value := ShamsiMonthName(Search_BenefitsMonth.Value);
end;

procedure TfmBenefitFromHazineh.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Button1Click(self);
  if messageShowString('¬Ì« «“ Õ–› ”ÊœÂ«Ì Å—œ«Œ  ‘œÂ «ÿ„Ì‰«‰ œ«—Ìœø',True) then
  begin
    Delete_Benefits.Close;
    Delete_Benefits.Parameters.ParamByName('@AccountNo').Value := Trim(edtAccountNo.Text);
    Delete_Benefits.Parameters.ParamByName('@FamilyID').Value := cmbFamily.KeyValue;
    Delete_Benefits.Parameters.ParamByName('@Year').Value := StrToInt(edtYear.Text);
    Delete_Benefits.Parameters.ParamByName('@Month').Value := cmbMonth.ItemIndex;
    if Get_SystemSetting('BenefitCalcType')='1' then
      Delete_Benefits.Parameters.ParamByName('@WithLoan').Value := True
    else
      Delete_Benefits.Parameters.ParamByName('@WithLoan').Value := False;

    if Get_SystemSetting('ChBoEtayeSoodTasviyeh')='1' then
      Delete_Benefits.Parameters.ParamByName('@doForSetteld').Value := true
    else
      Delete_Benefits.Parameters.ParamByName('@doForSetteld').Value := False;
    Delete_Benefits.ExecProc;
  end;
end;

procedure TfmBenefitFromHazineh.BitBtn3Click(Sender: TObject);
var
  percent : Double;
begin
  inherited;
  try
    Percent := StrToFloat(edtPercent.Text);
  except
    ShowMessage('œ—’œ ’ÕÌÕ ‰„Ì»«‘œ');
    Exit;
  end;
   //if trim(edtAccountNo.Text)='' then
      //edtAccountNo.Text := '0';
  Calc_Benefits.Close;
  DSGrid.DataSet := Calc_Benefits;
  Calc_Benefits.Parameters.ParamByName('@AccountNo').Value := Trim(edtAccountNo.Text);
  Calc_Benefits.Parameters.ParamByName('@FamilyID').Value := cmbFamily.KeyValue;
  Calc_Benefits.Parameters.ParamByName('@Year').Value := StrToInt(edtYear.Text);
  Calc_Benefits.Parameters.ParamByName('@Month').Value := cmbMonth.ItemIndex;
  if Get_SystemSetting('BenefitCalcType')='1' then
    Calc_Benefits.Parameters.ParamByName('@WithLoan').Value := True
  else
    Calc_Benefits.Parameters.ParamByName('@WithLoan').Value := False;

  if Get_SystemSetting('ChBoEtayeSoodTasviyeh')='1' then
    Calc_Benefits.Parameters.ParamByName('@doForSetteld').Value := true
  else
    Calc_Benefits.Parameters.ParamByName('@doForSetteld').Value := False;
  Calc_Benefits.Parameters.ParamByName('@percent').Value := percent;
  Calc_Benefits.Open;
end;

procedure TfmBenefitFromHazineh.BitBtn4Click(Sender: TObject);
begin
  inherited;
  BitBtn3Click(Self);
  ShowMsgString('›ﬁÿ »Â Õ”«» Â«Ì ·Ì”  ‘œÂ ”Êœ  ⁄·ﬁ ŒÊ«Âœ ê—› ');
  if messageShowString('¬Ì« «“ Å—œ«Œ  ”Êœ «ÿ„Ì‰«‰ œ«—Ìœø',True) then
  begin
    Insert_Benefits.Close;
    Insert_Benefits.Parameters.ParamByName('@AccountNo').Value := Trim(edtAccountNo.Text);
    Insert_Benefits.Parameters.ParamByName('@FamilyID').Value := cmbFamily.KeyValue;
    Insert_Benefits.Parameters.ParamByName('@Year').Value := StrToInt(edtYear.Text);
    Insert_Benefits.Parameters.ParamByName('@Month').Value := cmbMonth.ItemIndex;
    if Get_SystemSetting('BenefitCalcType')='1' then
      Insert_Benefits.Parameters.ParamByName('@WithLoan').Value := True
    else
      Insert_Benefits.Parameters.ParamByName('@WithLoan').Value := False;

    if Get_SystemSetting('ChBoEtayeSoodTasviyeh')='1' then
      Insert_Benefits.Parameters.ParamByName('@doForSetteld').Value := True
    else
      Insert_Benefits.Parameters.ParamByName('@doForSetteld').Value := False;
    Insert_Benefits.Parameters.ParamByName('@percent').Value := StrToFloat(edtPercent.Text);
    Insert_Benefits.Parameters.ParamByName('@INSERTUSERID').Value := _Userid;
    try
      Insert_Benefits.ExecProc;
      ShowMsgString('Å—œ«Œ  ”Êœ «‰Ã«„ ‘œ');
      Button1Click(Self);
    except
      ShowMsgString('Œÿ« œ— Å—œ«Œ  ”Êœ');
      Exit;
    end;
  end;
end;

end.
