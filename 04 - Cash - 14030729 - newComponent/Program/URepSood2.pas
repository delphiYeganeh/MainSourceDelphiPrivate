unit URepSood2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, Mask, StdCtrls, Buttons,
  ExtCtrls, Menus, ActnList, DB, ADODB, SolarCalendarPackage, AdvGlowButton;

type
  TFmRepSood2 = class(TYBaseForm)
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    lblNum1: TLabel;
    lblNum2: TLabel;
    lblTxt1: TLabel;
    LblTxt2: TLabel;
    Button5: TAdvGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SearchEdit: TEdit;
    MakeRep: TAdvGlowButton;
    MEDateTo: TSolarDatePicker;
    MEDateFrom: TSolarDatePicker;
    YDBGrid: TYDBGrid;
    spREP_SoodSepordeh: TADOStoredProc;
    spREP_SoodSepordehdocumentno: TStringField;
    spREP_SoodSepordehDATE: TWideStringField;
    spREP_SoodSepordehAccountNo: TStringField;
    spREP_SoodSepordehozvName: TWideStringField;
    spREP_SoodSepordehhesabName: TWideStringField;
    spREP_SoodSepordehAmount: TLargeintField;
    spREP_SoodSepordehDebtorAccountID: TIntegerField;
    spREP_SoodSepordehCreditorAccountID: TIntegerField;
    dsREP_SoodSepordeh: TDataSource;
    spREP_SUMSoodSepordeh: TADOStoredProc;
    spREP_SUMSoodSepordehid: TIntegerField;
    spREP_SUMSoodSepordehsumAll: TLargeintField;
    spREP_SoodSepordehstrAmount: TStringField;
    pnlMain: TPanel;
    procedure Button5Click(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure spREP_SoodSepordehCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRepSood2: TFmRepSood2;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

procedure TFmRepSood2.Button5Click(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TFmRepSood2.MakeRepClick(Sender: TObject);
var
   sd, ed : string;
   amount : int64;
begin
   inherited;
   if not Date_CheckTwoDate(MEDateFrom.Text,MEDateTo.Text) then
      Exit;

   sd := '';
   ed := '';
   spREP_SoodSepordeh.Close;
   spREP_SoodSepordeh.Parameters.ParamByName('@accountNo').Value := SearchEdit.Text;
   sd := MEDateFrom.Text;
   if not IsValidDate(sd) then
      sd := '';
   ed := MEDateTo.Text;
   if not IsValidDate(ed) then
      ed := '';
   spREP_SoodSepordeh.Parameters.ParamByName('@startDate').Value := sd;
   spREP_SoodSepordeh.Parameters.ParamByName('@endDate').Value := ed;
   spREP_SoodSepordeh.Open;

   spREP_SUMSoodSepordeh.Close;
   spREP_SUMSoodSepordeh.Parameters.ParamByName('@accountNo').Value := spREP_SoodSepordeh.Parameters.ParamByName('@accountNo').Value;
   spREP_SUMSoodSepordeh.Parameters.ParamByName('@startDate').Value := spREP_SoodSepordeh.Parameters.ParamByName('@startDate').Value;
   spREP_SUMSoodSepordeh.Parameters.ParamByName('@endDate').Value := spREP_SoodSepordeh.Parameters.ParamByName('@endDate').Value;
   spREP_SUMSoodSepordeh.Open;

   spREP_SUMSoodSepordeh.First;
   lblNum1.Caption := CommaSeperate(spREP_SUMSoodSepordehsumAll.AsString);
   amount := spREP_SUMSoodSepordehsumAll.AsInteger;
   lblTxt1.Caption := Bill(amount) + ' ' + '—Ì«·';

   spREP_SUMSoodSepordeh.Next;
   lblNum2.Caption := CommaSeperate(spREP_SUMSoodSepordehsumAll.AsString);
   amount := spREP_SUMSoodSepordehsumAll.AsInteger;
   lblTxt2.Caption := Bill(amount) + ' ' + '—Ì«·';

end;

procedure TFmRepSood2.spREP_SoodSepordehCalcFields(DataSet: TDataSet);
begin
  inherited;
   spREP_SoodSepordehstrAmount.Value := CommaSeperate(IntToStr(spREP_SoodSepordehAmount.AsInteger));
end;

procedure TFmRepSood2.FormCreate(Sender: TObject);
begin
  inherited;
  //Hamed_Ansari_990622_S
  MEDateFrom.Text := copy(_Today,1,5)+'01/01';
  MEDateTo.Text := _Today;
  //Hamed_Ansari_990622_E
end;

end.
