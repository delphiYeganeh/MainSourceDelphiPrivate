unit FinancialNoteDetail_NewU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Mask, DBCtrls, Buttons, Menus,
  ActnList,DB, Grids, DBGrids, ADODB;

type
  TFrFinancialNoteDetail_New = class(TYBaseForm)
    FrFinancialNoteDetail: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    NoteType: TDBEdit;
    DBEdit4: TDBEdit;
    DBEMatureDate: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetFinancialNoteid(Value: integer);
    procedure ShowInPanel(P:TWinControl);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    function GetFinancialNoteid : integer;

  private
    { Private declarations }
    FFinancialNoteid: integer;

  public
    { Public declarations }
    DefaultAmount:int64;
    Property FinancialNoteid: integer read GetFinancialNoteid write SetFinancialNoteid;
  end;

var
  FrFinancialNoteDetail_New: TFrFinancialNoteDetail_New;

implementation

uses BusinessLayer, dmu, AddFinancialNote_NewU, AddLoanU, PayPartU,
  EditPaymentU;

{$R *.dfm}

function TFrFinancialNoteDetail_New.GetFinancialNoteid : integer;
begin
  result := FFinancialNoteid;
end;

procedure TFrFinancialNoteDetail_New.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrAddFinancialNote_New :=TFrAddFinancialNote_New.Create(Application);
  FrAddFinancialNote_New.PageControl1.ActivePageIndex :=0;
  FrAddFinancialNote_New.ShowModal;
  FinancialNoteid :=_FinancialNoteid;

  if FinancialNoteid > 0 then
    if DefaultAmount <> 0 then
      if DefaultAmount <> Dm.Select_FinancialNote_deatilsAmount.AsInteger then;
           //ShowMsgString('„»·€ çò »« „»·€ „Ê—œ «‰ Ÿ«— Â„ŒÊ«‰Ì ‰œ«—œ');

  if FinancialNoteid = -1 then
  begin
    DM.FinancialNote_Detail.Close;
    DM.FinancialNote_Master.Close;
  end;

  if (FrAddLoan <> NIL) and (FrAddLoan.Showing) then
  begin
    Dm.Select_Loan_Parts.Refresh;
  end;

  if (FrPayPart <> NIL) and (FrPayPart.Showing) then
  begin
    if (Dm.Select_LastPart.State in [dsEdit]) then
    begin
      dm.Select_LastPart.Close;
      dm.Select_LastPart.OPEN;
      dm.Select_LastPart.Edit;
    end
    else if Dm.Select_LastPart.State in [dsInsert] then
    begin
      Dm.Select_LastPart.Refresh;
      Dm.Select_LastPart.INSERT;
    end
    else
      Dm.Select_LastPart.Refresh;
  end;
end;

procedure TFrFinancialNoteDetail_New.ShowInPanel(P:TWinControl);
begin
  ManualDock(p,nil,alClient);
  Show;
  Align:=alClient;
end;

procedure TFrFinancialNoteDetail_New.FormCreate(Sender: TObject);
begin
  inherited;
  DefaultAmount:=0;
end;

procedure TFrFinancialNoteDetail_New.SetFinancialNoteid(Value: integer);
begin
  inherited;
  FFinancialNoteid := Value;
  Open_FinancialNote_deatils(FinancialNoteid);
end;

procedure TFrFinancialNoteDetail_New.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try

    _FinancialNoteid := -1;
    //Access Violation
    FrAddFinancialNote_New := NIL;

  except On E:Exception do
    ShowMessage('Error Access Violation FormClose :: ' + E.Message);
  end;
end;

procedure TFrFinancialNoteDetail_New.FormShow(Sender: TObject);
begin
  inherited;
  try
    if (_FinancialNoteid = -1 ) then
    begin
      DM.FinancialNote_Detail.Close;
      DM.FinancialNote_Master.Close;
    end;

    if not FinancialNoteid > 0 then
    begin
      DM.FinancialNote_Detail.Close;
      DM.FinancialNote_Master.Close;
    end;

    if (_FinancialNoteid > 0) then
      if (FrEditPayment <> nil) then
        if (FrEditPayment.Active) then
    begin
      FinancialNoteid := _FinancialNoteid;
      Dm.FinancialNote_Master.Open;
      Dm.FinancialNote_Detail.Open;
      dm.FinancialNote_Detail.Locate('FinancialNote_DetailID',_FinancialNoteid,[loCaseInsensitive]);
      dm.FinancialNote_Master.Locate('FinancialNote_MasterID',_FinancialNote_MasterID,[loCaseInsensitive]);
    end;
  except On E:Exception do
    ShowMessage('Error TFrFinancialNoteDetail_New.FormShow :: ' + E.Message);
  end;
end;

end.
