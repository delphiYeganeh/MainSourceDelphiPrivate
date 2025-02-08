unit AvrageU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, Grids, DBGrids,  Menus, ActnList,
  StdCtrls, Mask, Buttons, YDbgrid, DBCtrls, DB, ADODB, AdvGlowButton;

type
  TFrAvrage = class(TYBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    SearchEdit: TEdit;
    btnSearch: TAdvGlowButton;
    SpeedButton6: TAdvGlowButton;
    MEYear: TEdit;
    YDBGrid1: TYDBGrid;
    YDBGrid2: TYDBGrid;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label4: TLabel;
    BitBtn1: TAdvGlowButton;
    Button5: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
     AccountID :integer;
  public
    { Public declarations }
  end;

var
  FrAvrage: TFrAvrage;

implementation

uses dmu, BusinessLayer, AccountDetailsU;

{$R *.dfm}

procedure TFrAvrage.FormShow(Sender: TObject);
begin
  inherited;
  //  MEYear.Text:='13'+IntToStr(_Year);
    MEYear.Text:= IntToStr(_Year);
end;

procedure TFrAvrage.SpeedButton6Click(Sender: TObject);
begin
  inherited;
   AccountID := Get_AccountID_ByAccountNo(SearchEdit.Text);
   IF AccountID=0 Then
   Begin
      ShowMessage('«Ì‰ ‘„«—Â Õ”«» ÊÃÊœ ‰œ«—œ');
      SearchEdit.SetFocus;
   End  ;
{     else
        FrAccountDetails.AccountID := AccountID;
}
   Open_DailyAverage_All(MEYear.Text,AccountID);
end;

procedure TFrAvrage.FormCreate(Sender: TObject);
begin
  inherited;
{   FrAccountDetails:=TFrAccountDetails.Create(Application);
   FrAccountDetails.ShowInPanel( PAccountDeatil);}
end;

procedure TFrAvrage.btnSearchClick(Sender: TObject);
begin
  inherited;
  Open_DailyAverage_All(MEYear.Text,0);
end;

procedure TFrAvrage.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
   Open_DailyAverage_Detail(MEYear.Text,DM.DailyAverage_AllACCOUNTID.AsInteger);
end;

procedure TFrAvrage.Button5Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure TFrAvrage.BitBtn2Click(Sender: TObject);
begin
  inherited;
    YDBGrid2.ExportToExcel;
end;

procedure TFrAvrage.BitBtn1Click(Sender: TObject);
begin
  inherited;
     YDBGrid1.ExportToExcel;
end;

end.
