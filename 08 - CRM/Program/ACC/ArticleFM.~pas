unit ArticleFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables, BaseUnit, ExtActns, ActnList;

type
  TFMArticle = class(TMBaseForm)
    PopEmkanat: TPopupMenu;
    NExist: TMenuItem;
    NAvgPrice: TMenuItem;
    NFMStore: TMenuItem;
    NFMFirstArtGroup: TMenuItem;
    NFMSecendArtGroup: TMenuItem;
    NUnit: TMenuItem;
    N7: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    pnlMain: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SBStore: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    SBFirstArtGroup: TSpeedButton;
    SBSecendArtGroup: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    SBUnit: TSpeedButton;
    DBLkCBStore_Ref: TDBLookupComboBox;
    DBLCBArtGroup_Ref1: TDBLookupComboBox;
    DBLCBArtGroup_Ref2: TDBLookupComboBox;
    DBECode: TDBEdit;
    DBEName: TDBEdit;
    DBEEndBuyPrice: TDBEdit;
    DBESalePrice: TDBEdit;
    DBEAvgPrice: TDBEdit;
    DBETozihat: TDBEdit;
    DBEExist: TDBEdit;
    DBEMaxBuy: TDBEdit;
    DBLCBoUnit_Ref: TDBLookupComboBox;
    DBEBarcode: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEModel: TDBEdit;
    DBECountry: TDBEdit;
    DBEAttribute1: TDBEdit;
    DBEAttribute2: TDBEdit;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel5: TPanel;
    LabHelp: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    SBSearch: TBitBtn;
    SBEmkanat: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SBFirstArtGroupClick(Sender: TObject);
    procedure SBSecendArtGroupClick(Sender: TObject);
    procedure NExistClick(Sender: TObject);
    procedure NAvgPriceClick(Sender: TObject);
    procedure NFMStoreClick(Sender: TObject);
    procedure NFMFirstArtGroupClick(Sender: TObject);
    procedure NFMSecendArtGroupClick(Sender: TObject);
    procedure NUnitClick(Sender: TObject);
    procedure SBStoreClick(Sender: TObject);
    procedure PopEmkanatPopup(Sender: TObject);
    procedure SBEmkanatClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure SBUnitClick(Sender: TObject);
  private

  public

  end;

var
  FMArticle: TFMArticle;

implementation

Uses ArticleDM , DMu , YShamsiDate, FirstArtGroupFM, SecendArtGroupFM,
  StoreFM, UnitFM, SearchFM;

{$R *.dfm}

procedure TFMArticle.FormCreate(Sender: TObject);
begin
   inherited;
   DMArticle := TDMArticle.Create(Self);
   DBNav_Setup(DBNavigator1);

end;

procedure TFMArticle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   With DMArticle do
   begin

   end;
   Qry_CloseAllQry(DMArticle);
   FreeAndNil(DMArticle);
end;

procedure TFMArticle.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,DBNavigator1,SBSearch,Nil,Sender,Key,Shift);

   if (ssctrl in Shift) then
   begin
      if (Key=Word('E')) then
         SBEmkanat.Click;
   end;

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;

procedure TFMArticle.FormShow(Sender: TObject);
begin
   inherited;
   With DMArticle do
   begin
      QrStore.Open;

      QrFirstArtGroup.Close;
      QrFirstArtGroup.Parameters.ParamByName('Store_ID').Value := QrStoreStore_ID.AsInteger;
      QrFirstArtGroup.Open;
      
      QrSecendArtGroup.Close;
      QrSecendArtGroup.Parameters.ParamByName('Store_ID').Value := QrStoreStore_ID.AsInteger;
      QrSecendArtGroup.Parameters.ParamByName('ArtGroup_ID').Value := QrFirstArtGroupArtGroup_ID.AsInteger;
      QrSecendArtGroup.Open;
      
      QrUnit.Open;
      QrSrchArticle.Open;
      QrArticle.Open;
   end;
   //Form_Animate(Self,100);
end;

procedure TFMArticle.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMArticle.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
   inherited;
   if Button = nbCancel then
   begin
      With DMArticle do
      begin
         QrFirstArtGroup.Close;
         QrFirstArtGroup.Open;
         QrSecendArtGroup.Close;
         QrSecendArtGroup.Open;
      end;
   end;
end;

procedure TFMArticle.DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
   inherited;
   DBECode.SetFocus;
   DBLkCBStore_Ref.SetFocus;
   
   if Button = nbPost then
   begin
      if Trim(DBLkCBStore_Ref.Text) = '' then
      begin
         ShowMyMessage('ÅÌ€«„','·ÿ›« ‰«„ «‰»«— —«  ⁄ÌÌ‰ ‰„«ÌÌœ',[mbOK],mtInformation);
         Abort;
      end;
      if Trim(DBLCBArtGroup_Ref1.Text) = '' then
      begin
         ShowMyMessage('ÅÌ€«„','·ÿ›« ê—ÊÂ «’·Ì —«  ⁄ÌÌ‰ ‰„«ÌÌœ',[mbOK],mtInformation);
         Abort;
      end;
      if Trim(DBLCBArtGroup_Ref2.Text) = '' then
      begin
         ShowMyMessage('ÅÌ€«„','·ÿ›« ê—ÊÂ ›—⁄Ì —«  ⁄ÌÌ‰ ‰„«ÌÌœ',[mbOK],mtInformation);
         Abort;
      end;
   end;
end;

procedure TFMArticle.SBFirstArtGroupClick(Sender: TObject);
begin
   inherited;
   //Access_ToForm('FMFirstArtGroup',_PersonelID);
   FMFirstArtGroup := TFMFirstArtGroup.Create(Self);  //  ⁄—Ì› ê—ÊÂ «’·Ì ò«·«
   FMFirstArtGroup.ShowModal;
   DMArticle.QrFirstArtGroup.Close;
   DMArticle.QrFirstArtGroup.Open;
end;

procedure TFMArticle.SBSecendArtGroupClick(Sender: TObject);
begin
   inherited;
   //Access_ToForm('FMSecendArtGroup',_PersonelID);
   FMSecendArtGroup := TFMSecendArtGroup.Create(Self);  //  ⁄—Ì› ê—ÊÂ ›—⁄Ì ò«·«
   FMSecendArtGroup.ShowModal;
   DMArticle.QrSecendArtGroup.Close;
   DMArticle.QrSecendArtGroup.Open;
end;

procedure TFMArticle.NExistClick(Sender: TObject);
begin
   inherited;
   With DMArticle do
   begin
      if not(QrArticle.State in [dsEdit,dsInsert]) then
         Exit;
      if ShowMyMessage('«’·«Õ „ÊÃÊœÌ ò«·«','ò«—»— ê—«„Ì »—«Ì œ«‘ ‰ „ÊÃÊœÌ »«Ìœ ›«ò Ê— Œ—Ìœ ’«œ— ‰„«ÌÌœ œ— ’Ê— ÌòÂ  „«Ì· »Â «’·«Õ «Ì‰ ›Ì·œ œ«—Ìœ »— —ÊÌ œò„Â  «ÌÌœ ò·Ìò ‰„«ÌÌœ',mbOKCancel,mtInformation)= mrOK then
         QrArticleExist.AsInteger := StrToIntDef(Input_Value('«’·«Õ „ÊÃÊœÌ ò«·«','«’·«Õ „ÊÃÊœÌ ò«·«',QrArticleExist.AsString) , QrArticleExist.AsInteger);
   end;
end;

procedure TFMArticle.NAvgPriceClick(Sender: TObject);
begin
   inherited;
   With DMArticle do
   begin
      if not(QrArticle.State in [dsEdit,dsInsert]) then
         Exit;
      if ShowMyMessage('«’·«Õ „Ì«‰êÌ‰ ﬁÌ„  Œ—Ìœ', 'ò«—»— ê—«„Ì ›Ì·œ „Ì«‰êÌ‰ ﬁÌ„  Œ—Ìœ  Ê”ÿ ›«ò Ê— Œ—Ìœ  ⁄ÌÌ‰ „Ì ‘Êœ . œ— ’Ê— ÌòÂ  „«Ì· »Â «’·«Õ «Ì‰ ›Ì·œ œ«—Ìœ »— —ÊÌ œò„Â  «ÌÌœ ò·Ìò ‰„«ÌÌœ',mbOKCancel,mtInformation)= mrOK then
         QrArticleAvgPrice.AsFloat := StrToFloatDef(Input_Value('«’·«Õ „Ì«‰êÌ‰ ﬁÌ„  Œ—Ìœ','«’·«Õ „Ì«‰êÌ‰ ﬁÌ„  Œ—Ìœ',QrArticleAvgPrice.AsString) , QrArticleAvgPrice.AsFloat);
   end;
end;

procedure TFMArticle.NFMStoreClick(Sender: TObject);
begin
   inherited;
   SBStore.Click;
end;

procedure TFMArticle.NFMFirstArtGroupClick(Sender: TObject);
begin
   inherited;
   SBFirstArtGroup.Click;
end;

procedure TFMArticle.NFMSecendArtGroupClick(Sender: TObject);
begin
   inherited;
   SBSecendArtGroup.Click;
end;

procedure TFMArticle.NUnitClick(Sender: TObject);
begin
   inherited;
   SBUnit.Click;
end;

procedure TFMArticle.SBStoreClick(Sender: TObject);
begin
   inherited;
   //Access_ToForm('FMStore',_PersonelID);
   FMStore := TFMStore.Create(Self);  //  ⁄—Ì› «‰»«—
   FMStore.ShowModal;

   DMArticle.QrStore.Close;
   DMArticle.QrStore.Open;
end;

procedure TFMArticle.PopEmkanatPopup(Sender: TObject);
begin
   inherited;
   if DMArticle.QrArticle.State in [dsEdit,dsInsert] then
   begin
      NExist.Enabled := True;
      NAvgPrice.Enabled := True;
   end
      else
      begin
         NExist.Enabled := False;
         NAvgPrice.Enabled := False;
      end;
end;

procedure TFMArticle.SBEmkanatClick(Sender: TObject);
begin
   inherited;
   Cursor_SetPos(Self,SBEmkanat,PopEmkanat);
end;

procedure TFMArticle.N1Click(Sender: TObject);
begin
   inherited;
   Win_RunCalculate;
end;

procedure TFMArticle.SBSearchClick(Sender: TObject);
begin
   inherited;
   if FmSearch.GetSearchValue(DMArticle.QrSrchArticle ,'Article_ID', 'Name' , ' ' , 400 , 400 ) <> '0' then
      DMArticle.QrArticle.Locate('Article_ID',DMArticle.QrSrchArticleArticle_ID.AsInteger,[]);
end;

procedure TFMArticle.SBUnitClick(Sender: TObject);
begin
   inherited;
   //Access_ToForm('FMUnit',_PersonelID);
   FMUnit := TFMUnit.Create(Self);  //›—„  ⁄—Ì› Ê«Õœ ò«·«
   FMUnit.ShowModal;
   DMArticle.QrUnit.Close;
   DMArticle.QrUnit.Open;
end;

Initialization
   RegisterClass(TFMArticle);

end.
