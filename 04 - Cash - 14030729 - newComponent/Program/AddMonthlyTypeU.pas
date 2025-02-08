 unit AddMonthlyTypeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, StdCtrls, Mask, DBCtrls, ActnList, Buttons,
  DBActns, ActnMan, XPStyleActnCtrls, Menus, Grids, DBGrids,
  YDbgrid, DB, ADODB, AdvGlowButton;

type
  TFrAddMonthlyType = class(TYBaseForm)
    ActionManager1: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetNext1: TDataSetNext;
    DataSetPrior1: TDataSetPrior;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    BitBtn7: TAdvGlowButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    BitBtn9: TAdvGlowButton;
    BitBtn10: TAdvGlowButton;
    BitBtn11: TAdvGlowButton;
    Action_DETAIL: TActionManager;
    DataSetInsert_Detail: TDataSetInsert;
    DataSetDelete_Detail: TDataSetDelete;
    DataSetEdit_Detail: TDataSetEdit;
    DataSetPost_Detail: TDataSetPost;
    DataSetCancel_Detail: TDataSetCancel;
    DataSetNext_Detail: TDataSetNext;
    DataSetPrior_Detail: TDataSetPrior;
    DBGrid1: TDBGrid;
    pnlMain: TPanel;
    Panel4: TPanel;
    BitBtn8: TAdvGlowButton;
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddMonthlyType: TFrAddMonthlyType;

implementation

uses DMU, BusinessLayer, StrUtils;

{$R *.dfm}

procedure TFrAddMonthlyType.DataSetDelete1Execute(Sender: TObject);
begin
  inherited;
  IF    (CanDeleteMonthlyType(Dm.MonthlyTypeMonthlyTypeID.AsInteger)) then
  BEGIN
      IF  (MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mryes) then
       dm.MonthlyType.Delete;
  END
  ELSE
        ShowMessage('«Ì‰ ‰Ê⁄ „«ÂÌ«‰Â «” ›«œÂ ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.')


end;

procedure TFrAddMonthlyType.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dm.MonthlyType.Insert;
  DBEdit2.SetFocus;
end;

procedure TFrAddMonthlyType.FormCreate(Sender: TObject);
begin
  inherited;
  with dm.MonthlyType do if not Active then Open;
  with dm.MonthlyType_Detail do if not Active then Open;

end;

procedure TFrAddMonthlyType.BitBtn5Click(Sender: TObject);
begin
  inherited;
  IF    (CanDeleteMonthlyType(Dm.MonthlyTypeMonthlyTypeID.AsInteger))  then
       dm.MonthlyType.Edit
  ELSE
        ShowMessage('«Ì‰ ‰Ê⁄ „«ÂÌ«‰Â «” ›«œÂ ‘œÂ «”  «„ò«‰ ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ.')

end;


procedure TFrAddMonthlyType.BitBtn9Click(Sender: TObject);
begin
  inherited;
   try

     if Dm.MonthlyType_DetailMonthlyTypeYear.IsNull  or  (length(Dm.MonthlyType_DetailMonthlyTypeYear.AsString)<>4) then
     begin
        ShowMessage('·ÿ›« ”«· —« „‘Œ’ ‰„«ÌÌœ.')      ;
        DBGrid1.SetFocus ;
     end
     else
     if Dm.MonthlyType_DetailAmount.IsNull  or  (Dm.MonthlyType_DetailAmount.AsInteger = 0 ) then
     begin
        ShowMessage('·ÿ›« „»·€ „‘Œ’ ‰„«ÌÌœ');
        DBGrid1.SetFocus ;
     end
     else
       Dm.MonthlyType_Detail.Post;

  except On E:Exception do
   if (pos('Violation of PRIMARY KEY',e.Message)<>0 ) and (pos('Cannot insert duplicate key in',e.Message)<>0)
        and (pos('The duplicate key value is',e.Message)<>0 )  then
       ShowMessage('”«· Ê«—œ ‘œÂ  ò—«—Ì „Ì »«‘œ »—«Ì Â— ⁄‰Ê«‰ Â— ”«· —« Ìò»«— „Ì  Ê«‰  ⁄—Ì› ò—œ');
   end;

end;

procedure TFrAddMonthlyType.BitBtn10Click(Sender: TObject);
begin
  inherited;
  IF    (CanDeleteMonthlyType(Dm.MonthlyTypeMonthlyTypeID.AsInteger)) then
  BEGIN
      IF  (MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mryes) then
       dm.MonthlyType_Detail.Delete;
  END
  ELSE
        ShowMessage('«Ì‰ ‰Ê⁄ „«ÂÌ«‰Â «” ›«œÂ ‘œÂ «”  «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.')
end;

end.
