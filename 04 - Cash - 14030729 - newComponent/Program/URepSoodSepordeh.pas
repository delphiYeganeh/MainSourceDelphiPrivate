unit URepSoodSepordeh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,
  YDbgrid, DB, ADODB, Menus, BaseUnit;

type
  TFrmRepSoodSepordeh = class(TYBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SearchEdit: TEdit;
    MakeRep: TBitBtn;
    MEDateTo: TMaskEdit;
    MEDateFrom: TMaskEdit;
    Panel2: TPanel;
    Button5: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    lblNum1: TLabel;
    lblNum2: TLabel;
    lblTxt1: TLabel;
    LblTxt2: TLabel;
    dsREP_SoodSepordeh: TDataSource;
    spREP_SoodSepordeh: TADOStoredProc;
    spREP_SoodSepordehdocumentno: TStringField;
    spREP_SoodSepordehDATE: TWideStringField;
    spREP_SoodSepordehAccountNo: TStringField;
    spREP_SoodSepordehozvName: TWideStringField;
    spREP_SoodSepordehhesabName: TWideStringField;
    spREP_SoodSepordehAmount: TLargeintField;
    spREP_SoodSepordehDebtorAccountID: TIntegerField;
    spREP_SoodSepordehCreditorAccountID: TIntegerField;
    YDBGrid: TYDBGrid;
    spREP_SUMSoodSepordeh: TADOStoredProc;
    spREP_SUMSoodSepordehsumAll: TLargeintField;
    spREP_SUMSoodSepordehid: TIntegerField;
    procedure MakeRepClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRepSoodSepordeh: TFrmRepSoodSepordeh;

implementation

uses dmu, YShamsiDate, MainU;

{$R *.dfm}

procedure TFrmRepSoodSepordeh.MakeRepClick(Sender: TObject);
var
   sd, ed : string;
   amount : int64;
begin
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

procedure TFrmRepSoodSepordeh.FormCreate(Sender: TObject);
begin
//   MEDateFrom.Text := #254+Copy(_Today,1,5)+'01/01';
//   MEDateTo.Text := #254+_Today;
end;

procedure TFrmRepSoodSepordeh.Button5Click(Sender: TObject);
begin
   close;
end;

end.
