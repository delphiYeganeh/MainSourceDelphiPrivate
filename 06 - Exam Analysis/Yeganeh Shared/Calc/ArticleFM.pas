unit ArticleFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables, BaseUnit, ExtActns, ActnList;

type
  TFMArticle = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    LabHelp: TLabel;
    SBSearch: TSpeedButton;
    SBEmkanat: TSpeedButton;
    PopEmkanat: TPopupMenu;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBLkCBStore_Ref: TDBLookupComboBox;
    SBStore: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DBLCBArtGroup_Ref1: TDBLookupComboBox;
    DBLCBArtGroup_Ref2: TDBLookupComboBox;
    SBFirstArtGroup: TSpeedButton;
    SBSecendArtGroup: TSpeedButton;
    DBECode: TDBEdit;
    DBEName: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEEndBuyPrice: TDBEdit;
    Label6: TLabel;
    DBESalePrice: TDBEdit;
    Label7: TLabel;
    DBEAvgPrice: TDBEdit;
    Label8: TLabel;
    DBEModel: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBECountry: TDBEdit;
    DBEAttribute1: TDBEdit;
    Label12: TLabel;
    DBEAttribute2: TDBEdit;
    Label13: TLabel;
    DBETozihat: TDBEdit;
    Label14: TLabel;
    DBEExist: TDBEdit;
    Label17: TLabel;
    DBEMaxBuy: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBLCBoUnit_Ref: TDBLookupComboBox;
    NExist: TMenuItem;
    NAvgPrice: TMenuItem;
    NFMStore: TMenuItem;
    NFMFirstArtGroup: TMenuItem;
    NFMSecendArtGroup: TMenuItem;
    NUnit: TMenuItem;
    N7: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    DBEBarcode: TDBEdit;
    Label9: TLabel;
    SBUnit: TSpeedButton;
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
         ShowMyMessage('�����','���� ��� ����� �� ����� ������',[mbOK],mtInformation);
         Abort;
      end;
      if Trim(DBLCBArtGroup_Ref1.Text) = '' then
      begin
         ShowMyMessage('�����','���� ���� ���� �� ����� ������',[mbOK],mtInformation);
         Abort;
      end;
      if Trim(DBLCBArtGroup_Ref2.Text) = '' then
      begin
         ShowMyMessage('�����','���� ���� ���� �� ����� ������',[mbOK],mtInformation);
         Abort;
      end;
   end;
end;

procedure TFMArticle.SBFirstArtGroupClick(Sender: TObject);
begin
   inherited;
   //Access_ToForm('FMFirstArtGroup',_PersonelID);
   FMFirstArtGroup := TFMFirstArtGroup.Create(Self);  // ����� ���� ���� ����
   FMFirstArtGroup.ShowModal;
   DMArticle.QrFirstArtGroup.Close;
   DMArticle.QrFirstArtGroup.Open;
end;

procedure TFMArticle.SBSecendArtGroupClick(Sender: TObject);
begin
   inherited;
   //Access_ToForm('FMSecendArtGroup',_PersonelID);
   FMSecendArtGroup := TFMSecendArtGroup.Create(Self);  // ����� ���� ���� ����
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
      if ShowMyMessage('����� ������ ����','����� ����� ���� ����� ������ ���� �ǘ��� ���� ���� ������ �� ������ ����� �� ����� ��� ���� ����� �� ��� Ϙ�� ����� ��� ������',mbOKCancel,mtInformation)= mrOK then
         QrArticleExist.AsInteger := StrToIntDef(Input_Value('����� ������ ����','����� ������ ����',QrArticleExist.AsString) , QrArticleExist.AsInteger);
   end;
end;

procedure TFMArticle.NAvgPriceClick(Sender: TObject);
begin
   inherited;
   With DMArticle do
   begin
      if not(QrArticle.State in [dsEdit,dsInsert]) then
         Exit;
      if ShowMyMessage('����� ������ ���� ����', '����� ����� ���� ������ ���� ���� ���� �ǘ��� ���� ����� �� ��� . �� ������ ����� �� ����� ��� ���� ����� �� ��� Ϙ�� ����� ��� ������',mbOKCancel,mtInformation)= mrOK then
         QrArticleAvgPrice.AsFloat := StrToFloatDef(Input_Value('����� ������ ���� ����','����� ������ ���� ����',QrArticleAvgPrice.AsString) , QrArticleAvgPrice.AsFloat);
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
   FMStore := TFMStore.Create(Self);  // ����� �����
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
   FMUnit := TFMUnit.Create(Self);  //��� ����� ���� ����
   FMUnit.ShowModal;
   DMArticle.QrUnit.Close;
   DMArticle.QrUnit.Open;
end;

Initialization
   RegisterClass(TFMArticle);

end.
