 unit FinancialNoteDetailU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ActnList, Buttons, UemsVCL, DBCtrls,
  StdCtrls, Mask, Menus, Grids, DBGrids;

type
  TFrFinancialNoteDetail = class(TYBaseForm)
    FrFinancialNoteDetail: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBENoteNo: TDBEdit;
    DBEdit5: TDBEdit;
    NoteType: TDBEdit;
    DBLookupComboBox2: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEMatureDate: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SetFinancialNoteid(Value: integer);
    procedure ShowInPanel(P:TWinControl);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFinancialNoteid: integer;
  public
    { Public declarations }
    DefaultAmount:int64;
   Property FinancialNoteid: integer read FFinancialNoteid write SetFinancialNoteid;
  end;

var
  FrFinancialNoteDetail: TFrFinancialNoteDetail;

implementation

uses BusinessLayer, dmu, AddFinancialNoteU, AddFinancialNote_NewU;

{$R *.dfm}

procedure TFrFinancialNoteDetail.SetFinancialNoteid(Value: integer);
begin
   inherited;
   FFinancialNoteid:=value;
   Open_FinancialNote_deatils(FinancialNoteid);
end;

procedure TFrFinancialNoteDetail.SpeedButton1Click(Sender: TObject);
begin
  Inherited;
   FrAddFinancialNote :=TFrAddFinancialNote .Create(Application);

   FrAddFinancialNote .PageControl1.ActivePageIndex:=0;
   FrAddFinancialNote .ShowModal;
   FinancialNoteid :=_FinancialNoteid;
   IF FinancialNoteid>0 THEN
     IF DefaultAmount<>0 THEN
       IF DefaultAmount<>Dm.Select_FinancialNote_deatilsAmount.AsInteger THEN
           ShowMsgString('„»·€ çò »« „»·€ „Ê—œ «‰ Ÿ«— Â„ŒÊ«‰Ì ‰œ«—œ');

{   FrAddFinancialNote_New :=TFrAddFinancialNote_New .Create(Application);
   FrAddFinancialNote_New .PageControl1.ActivePageIndex:=0;
   FrAddFinancialNote_New .ShowModal;
   FinancialNoteid :=_FinancialNoteid;
   IF FinancialNoteid>0 THEN
     IF DefaultAmount<>0 THEN
       IF DefaultAmount<>Dm.Select_FinancialNote_deatilsAmount.AsInteger THEN
           ShowMsgString('„»·€ çò »« „»·€ „Ê—œ «‰ Ÿ«— Â„ŒÊ«‰Ì ‰œ«—œ');  }

end;
procedure TFrFinancialNoteDetail.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
 end;

procedure TFrFinancialNoteDetail.FormCreate(Sender: TObject);
begin
  inherited;
DefaultAmount:=0;
end;

end.
