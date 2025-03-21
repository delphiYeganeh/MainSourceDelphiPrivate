unit UFactorAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, StdCtrls, Mask,
  DBCtrls, Buttons, Menus, ADODB;

type
  TFFactorAddress = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    SBInsert: TBitBtn;
    btnReturn: TBitBtn;
    btnEdit: TBitBtn;
    Panel2: TPanel;
    SBEmkanat: TBitBtn;
    PanelData: TPanel;
    Label1: TLabel;
    LabelFreeField01: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    dblState: TDBLookupComboBox;
    dblCity: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEFreeField01: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    PopEmkanat: TPopupMenu;
    N1: TMenuItem;
    DBEdit4: TDBEdit;
    Select_FactorAddress: TADOStoredProc;
    Select_FactorAddressid: TIntegerField;
    Select_FactorAddressCustomerID: TIntegerField;
    Select_FactorAddressFactor_ID: TIntegerField;
    Select_FactorAddressAddress: TStringField;
    Select_FactorAddressPhone: TStringField;
    Select_FactorAddressCityId: TIntegerField;
    Select_FactorAddressStateID: TIntegerField;
    Select_FactorAddressPostalCode: TStringField;
    Select_FactorAddressNationalId: TStringField;
    Select_FactorAddressCityTitle: TStringField;
    Select_FactorAddressStateTitle: TStringField;
    Select_FactorAddressCountyTitle: TStringField;
    adoCity: TADOQuery;
    IntegerField1: TIntegerField;
    adoCityCItyId: TIntegerField;
    adoCityCityTitle: TStringField;
    adoCityStateNum: TStringField;
    DSCity: TDataSource;
    DState2: TDataSource;
    ADOState: TADOQuery;
    ADOStateStateID: TIntegerField;
    ADOStateStateTitle: TStringField;
    adoCityCountyTitle: TStringField;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Select_FactorAddressEconomicCode: TStringField;
    procedure SBEmkanatClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnReturnClick(Sender: TObject);
    procedure SBInsertClick(Sender: TObject);
    procedure dblStateExit(Sender: TObject);
    procedure dblCityEnter(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    Factor_ID  : Integer ;
    CustomerId : Integer ;
  end;

var
  FFactorAddress: TFFactorAddress;

implementation

uses city,MainU,YShamsiDate, dmu;

{$R *.dfm}

procedure TFFactorAddress.SBEmkanatClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,SBEmkanat,PopEmkanat);

end;

procedure TFFactorAddress.N1Click(Sender: TObject);
begin
  inherited;
  
   FrCityEdit := TFrCityEdit.create(Application);
   FrCityEdit.ShowModal;

   MainForm.Citys.Close;
   MainForm.Citys.Open;


   ADOState.Close;
   ADOState.Open;

   adoCity.Close;
   adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum , CountyTitle FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
   adoCity.Open;

end;

procedure TFFactorAddress.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TFFactorAddress.FormShow(Sender: TObject);
begin
  inherited;

  ADOState.Open;

  Qry_SetResult('If not Exists(SELECT 1 FROM [dbo].[FactorAddress] WHERE CustomerId = '+IntToStr(CustomerId)+' and [Factor_ID] = '+IntToStr(Factor_ID)+' ) '+
                ' Insert into [dbo].[FactorAddress]  '+
                ' SELECT '+ IntToStr(CustomerId)    +' [CustomerId],'+
                           IntToStr(Factor_ID)    +' [Factor_ID],'+
                           ' [Address] ,[Phone]  ,[CityId]  ,[StateID] ,'+
                           ' [PostalCode] ,[FreeField02], [FreeField01] '   +
                           ' FROM [dbo].[Customer] cc where  CustomerId = '+IntToStr(CustomerId)
                   ,Dm.YeganehConnection) ;

  Select_FactorAddress.close;
  Select_FactorAddress.parameters.ParamByName('@CustomerId').value := CustomerId ;
  Select_FactorAddress.parameters.ParamByName('@Factor_ID').value  := Factor_ID ;
  Select_FactorAddress.Open;


  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum , CountyTitle FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TFFactorAddress.btnReturnClick(Sender: TObject);
begin
  inherited;
  IF MessageDlg('��� �� �� ��� ����� ���� ����� ����Ͽ',mtConfirmation,[mbyes,mbno],0)=mryes then
    Qry_SetResult(' Update FactorAd  '+
                  ' SET       [Address] = cc.[Address]'+
                           ' ,[Phone] = cc.[Phone] '+
                           ' ,[CityId] = cc.[CityId] '  +
                           ' ,[StateID] = cc.[StateID]' +
                           ' ,[PostalCode] = cc.[PostalCode]'+
                           ' ,[NationalId]= cc.[FreeField02] '+
                           ' ,[EconomicCode]= cc.[FreeField01] '+
                           '  FROM [dbo].[FactorAddress]    FactorAd   '+
                           '  LEFT JOIN  [dbo].[Customer] cc ON cc.CustomerID = FactorAd.CustomerID '+
                           '  where  cc.CustomerId = '+IntToStr(CustomerId)  + ' and FactorAd.CustomerId = '+IntToStr(CustomerId)  + ' and FactorAd.Factor_ID =' +IntToStr(Factor_ID)
                   ,Dm.YeganehConnection) ;
                   
  Select_FactorAddress.close;
  Select_FactorAddress.parameters.ParamByName('@CustomerId').value := CustomerId ;
  Select_FactorAddress.parameters.ParamByName('@Factor_ID').value  := Factor_ID ;
  Select_FactorAddress.Open;


  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum , CountyTitle FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TFFactorAddress.SBInsertClick(Sender: TObject);
begin
  inherited;
   With Select_FactorAddress do
   begin
      if not (State in [dsEdit,dsInsert]) then
         EDIT;

      Select_FactorAddressCustomerID.value := CustomerId ;
      Select_FactorAddressFactor_ID.Value  := Factor_ID ;
      Post;

      Close;

      Select_FactorAddress.parameters.ParamByName('@CustomerId').value := CustomerId ;
      Select_FactorAddress.parameters.ParamByName('@Factor_ID').value  := Factor_ID ;
      Open;
   end;

  SBInsert.Enabled  := False;
  btnEdit.Enabled   := True;
  PanelData.Enabled := False;
end;

procedure TFFactorAddress.dblStateExit(Sender: TObject);
begin
  inherited;
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum , CountyTitle FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TFFactorAddress.dblCityEnter(Sender: TObject);
begin
  inherited;
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum , CountyTitle FROM [dbo].[City]  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TFFactorAddress.btnEditClick(Sender: TObject);
begin
  inherited;
  Select_FactorAddress.Edit ;
  SBInsert.Enabled  := True;
  btnEdit.Enabled   := False;
  PanelData.Enabled := True;
end;

end.
