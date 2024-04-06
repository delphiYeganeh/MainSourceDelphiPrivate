unit FactorMonyFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables , TypInfo, BaseUnit, ExtActns, ActnList{BPL};

type
  TFMFactorMony = class(TMBaseForm)
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBECashPrice: TDBEdit;
    DBEFactorePrice2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEReducePrice: TDBEdit;
    Label4: TLabel;
    DBERemaining: TDBEdit;
    Label5: TLabel;
    DBERecivePrice_Calc: TDBEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    SBCheck: TSpeedButton;
    DBECheckPrice: TDBEdit;
    DBECreditPrice: TDBEdit;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SBSendPrice: TSpeedButton;
    Label8: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBCheckClick(Sender: TObject);
    procedure DBEFactorePrice2Change(Sender: TObject);
    procedure DBEReducePriceEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEReducePriceExit(Sender: TObject);
    procedure DBERemainingChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SBSendPriceClick(Sender: TObject);
    procedure DBECheckPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBECashPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMFactorMony: TFMFactorMony;

implementation

Uses FactorDM ,DMu , YShamsiDate , ChequeFM;

{$R *.dfm}

procedure TFMFactorMony.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,Nil,Nil,Nil,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;

procedure TFMFactorMony.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMFactorMony.SBCheckClick(Sender: TObject);
Var
   FormScroll : TForm;
   FormClass :TFormClass;
begin
   inherited;
   //»—«Ì çòÂ« Factor_ID ÃÂ  »œ”  ¬Ê—œ‰
   if DMFactor.QrFactor.State = dsInsert then
   begin
      DMFactor.QrFactor.Post;
      DMFactor.QrFactor.Edit;
   end;

   if DMFactor.QrFactor.RecordCount = 0 then
      Exit;

   FMCheque := TFMCheque.Create(Self);
   With FMCheque do
   begin
      Factor_ID := 0;
      if (DMFactor.FactorType = 'F')or(DMFactor.FactorType = 'P')or(DMFactor.FactorType = 'BKH')or(DMFactor.FactorType = 'A')or(DMFactor.FactorType = 'E') then //«’ÿÂ·«ò-«„«‰Ì-»—ê‘  «“ Œ—Ìœ-ÅÌ‘ ›«ò Ê—-›—Ê‘
         ChequeType := 1  //çﬂÂ«Ì œ—Ì«› Ì
      else
         ChequeType := 2; //çﬂÂ«Ì Å—œ«Œ Ì
      ShowModal;
   end;
end;

procedure TFMFactorMony.DBEFactorePrice2Change(Sender: TObject);
begin
   inherited;
   With DMFactor do
   begin
      //if not(QrFactor.State in [dsedit,dsInsert]) then
        // Exit;
     // QrFactor  QrFactorFactorePrice.AsFloat
   end;

end;

procedure TFMFactorMony.DBEReducePriceEnter(Sender: TObject);
begin
   inherited;
   TDBEdit(Sender).SetFocus;
   TDBEdit(Sender).SelectAll;
end;

procedure TFMFactorMony.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   DBERemaining.SetFocus;
   With DMFactor do
      if (QrFactorFactorePrice.AsFloat) < (QrFactorReducePrice.AsFloat + QrFactorCashPrice.AsFloat +
                                           QrFactorCheckPrice.AsFloat  + QrFactorCreditPrice.AsFloat) then
      begin
         ShowMyMessage('ÅÌ€«„','Ã„⁄ „»«·€ «“ „»·€ ò· ›«ò Ê— »Ì‘ — „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ',[mbOK],mtInformation);
         Abort;
      end;
end;

procedure TFMFactorMony.DBEReducePriceExit(Sender: TObject);
begin
   inherited;
   if (Trim(TDBEdit(Sender).Text) = '')And(DMFactor.QrFactor.State in [dsEdit,dsInsert]) then
      DMFactor.QrFactor.FieldByName( TDBEdit(Sender).DataField ).AsFloat := 0;
end;

procedure TFMFactorMony.DBERemainingChange(Sender: TObject);
begin
   inherited;
   if DMFactor.QrFactorRemaining.AsFloat < 0 then
      DBERemaining.Color := $007A77FF
   else
      DBERemaining.Color := $00EFF7F8;
end;

procedure TFMFactorMony.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   Win_RunCalculate;
end;

procedure TFMFactorMony.SBSendPriceClick(Sender: TObject);
begin
   inherited;
   With DMFactor do
   if QrFactor.State in [dsEdit,dsInsert]then
      QrFactorCashPrice.AsFloat := (QrFactorFactorePrice.AsFloat)-(QrFactorReducePrice.AsFloat+QrFactorCheckPrice.AsFloat);
end;

procedure TFMFactorMony.DBECheckPriceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if Key = Vk_Space then
      SBCheck.Click; 
end;

procedure TFMFactorMony.DBECashPriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = Vk_Space then
      SBSendPrice.Click;
end;

Initialization
   RegisterClass(TFMFactorMony);

end.
