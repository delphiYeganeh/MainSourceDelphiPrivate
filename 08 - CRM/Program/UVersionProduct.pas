unit UVersionProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, Buttons, Grids,
  DBGrids, YDbgrid, StdCtrls, Mask, DBCtrls, ADODB;

type
  TFVersionProduct = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    DBVersionNavigator: TDBNavigator;
    DBECityTitle: TDBEdit;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    YDBGridProduct: TYDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    ProductVersion: TADOQuery;
    Product: TADOQuery;
    DSProduct: TDataSource;
    DSProductVertion: TDataSource;
    ProductProductId: TIntegerField;
    ProductProductTitle: TStringField;
    ProductVersionID: TIntegerField;
    ProductVersionProductID: TIntegerField;
    ProductVersionDescription: TStringField;
    ProductVersionVersion: TStringField;
    ProductVersionDate: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ProductAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ProductVersionBeforePost(DataSet: TDataSet);
    procedure DBVersionNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure DBVersionNavigatorBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVersionProduct: TFVersionProduct;

implementation

uses Dmu,YShamsiDate;

{$R *.dfm}

procedure TFVersionProduct.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFVersionProduct.ProductAfterScroll(DataSet: TDataSet);
begin
  inherited;
   ProductVersion.Close;
   ProductVersion.Parameters.ParamByName('ProductId').Value := ProductProductId.AsInteger;
   ProductVersion.Open;
end;

procedure TFVersionProduct.FormCreate(Sender: TObject);
begin
  inherited;
  Product.Open;
  ProductVersion.Open;
end;

procedure TFVersionProduct.ProductVersionBeforePost(DataSet: TDataSet);
begin
  inherited;
   if ProductVersion.State = dsInsert then
      ProductVersionProductID.AsInteger := ProductProductId.AsInteger;
end;

procedure TFVersionProduct.DBVersionNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin

  inherited;
  //  TNavigateBtn = (nbFirst, nbPrior, nbNext, nbLast,
  //                  nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh);
  YDBGridProduct.Enabled := not ( Button in [ nbInsert ,  nbEdit]);

//
end;

procedure TFVersionProduct.FormShow(Sender: TObject);
begin
  inherited;
  DBVersionNavigator.Enabled := _UserEditVersion ;
end;

procedure TFVersionProduct.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TFVersionProduct.DBVersionNavigatorBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if  ( Button in [ nbDelete]) then
  begin
    if MessageDlg('¬Ì« «“ Õ–› —òÊ—œ „ÿ„⁄‰ „Ì »«‘Ìœø', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
       abort ;
      // Button :=  nbCancel ;
    end;
  end
  else   inherited;
end;

end.
