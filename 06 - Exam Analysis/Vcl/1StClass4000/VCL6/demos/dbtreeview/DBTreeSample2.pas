unit DBTreeSample2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, fcdbtreeview, Db, DBTables, Grids, fcTreeView, DBGrids,
  ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls, fcScrollBar, fcButton,
  fcImgBtn, fcShapeBtn,
  fcOutlookList, fcDemoRichEdit, Wwdatsrc, Wwtable, Menus;

type
  TDMTreeViewForm2= class(TForm)
    fcDBTreeView1: TfcDBTreeView;
    CustomerDS: TDataSource;
    CustomerTbl: TTable;
    CustomerTblCustNo: TFloatField;
    CustomerTblCompany: TStringField;
    CustomerTblAddr1: TStringField;
    CustomerTblAddr2: TStringField;
    CustomerTblCity: TStringField;
    CustomerTblState: TStringField;
    CustomerTblZip: TStringField;
    CustomerTblCountry: TStringField;
    CustomerTblPhone: TStringField;
    CustomerTblFAX: TStringField;
    CustomerTblTaxRate: TFloatField;
    CustomerTblContact: TStringField;
    CustomerTblLastInvoiceDate: TDateTimeField;
    CustomerTblLookupOrders: TIntegerField;
    OrdersDS: TDataSource;
    OrdersTbl: TTable;
    OrdersTblOrderNo: TFloatField;
    OrdersTblCustNo: TFloatField;
    OrdersTblSaleDate: TDateTimeField;
    OrdersTblShipDate: TDateTimeField;
    OrdersTblEmpNo: TIntegerField;
    OrdersTblShipToContact: TStringField;
    OrdersTblShipToAddr1: TStringField;
    OrdersTblShipToAddr2: TStringField;
    OrdersTblShipToCity: TStringField;
    OrdersTblShipToState: TStringField;
    OrdersTblShipToZip: TStringField;
    OrdersTblShipToCountry: TStringField;
    OrdersTblShipToPhone: TStringField;
    OrdersTblShipVIA: TStringField;
    OrdersTblPO: TStringField;
    OrdersTblTerms: TStringField;
    OrdersTblPaymentMethod: TStringField;
    OrdersTblItemsTotal: TCurrencyField;
    OrdersTblTaxRate: TFloatField;
    OrdersTblFreight: TCurrencyField;
    OrdersTblAmountPaid: TCurrencyField;
    ItemsDS: TDataSource;
    ItemsTbl: TTable;
    ItemsTblOrderNo: TFloatField;
    ItemsTblItemNo: TFloatField;
    ItemsTblPartNo: TFloatField;
    ItemsTblQty: TIntegerField;
    ItemsTblDiscount: TFloatField;
    ItemsTblLookupPartDescription: TStringField;
    ItemsTblLookupPartPrice: TFloatField;
    LookupPartTbl: TTable;
    LookupOrderTbl: TTable;
    PageControl1: TPageControl;
    CustomersTabSheet: TTabSheet;
    OrdersTabSheet: TTabSheet;
    ItemsTabSheet: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    EditCustNo: TDBEdit;
    EditCompany: TDBEdit;
    EditAddr: TDBEdit;
    Label3: TLabel;
    EditAddr2: TDBEdit;
    Label4: TLabel;
    EditZip: TDBEdit;
    Label7: TLabel;
    EditState: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    EditCity: TDBEdit;
    Label8: TLabel;
    EditCountry: TDBEdit;
    EditPhone: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    EditFAX: TDBEdit;
    EditLastInvoiceDate: TDBEdit;
    Label13: TLabel;
    EditContact: TDBEdit;
    Label12: TLabel;
    EditTaxRate: TDBEdit;
    Label11: TLabel;
    TreeStateLabel: TLabel;
    ImageList1: TImageList;
    Label14: TLabel;
    EditOrderNo: TDBEdit;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    EditSaleDate: TDBEdit;
    Label16: TLabel;
    EditEmpNo: TDBEdit;
    Label17: TLabel;
    EditShipDate: TDBEdit;
    Label18: TLabel;
    EditShipVIA: TDBEdit;
    Label25: TLabel;
    EditPO: TDBEdit;
    Label28: TLabel;
    EditTerms: TDBEdit;
    Label29: TLabel;
    EditPaymentMethod: TDBEdit;
    Label30: TLabel;
    EditItemsTotal: TDBEdit;
    Label31: TLabel;
    EditAmountPaid: TDBEdit;
    Label32: TLabel;
    EditFreight: TDBEdit;
    Label33: TLabel;
    DBEdit2: TDBEdit;
    Label34: TLabel;
    EditDiscount: TDBEdit;
    Label35: TLabel;
    DBEdit3: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    EditItemNo: TDBEdit;
    EditPartNo: TDBEdit;
    Label38: TLabel;
    EditQty: TDBEdit;
    Label39: TLabel;
    PartsDS: TDataSource;
    PartsTbl: TTable;
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    Label42: TLabel;
    DBEdit4: TDBEdit;
    Label40: TLabel;
    DBEdit5: TDBEdit;
    Label41: TLabel;
    DBEdit7: TDBEdit;
    Label43: TLabel;
    DBEdit8: TDBEdit;
    Label44: TLabel;
    DBEdit9: TDBEdit;
    Label45: TLabel;
    LabelsTbl: TwwTable;
    TreeLabelsDS: TwwDataSource;
    VendorsDS: TwwDataSource;
    VendorsTbl: TwwTable;
    VendorsTabSheet: TTabSheet;
    Label21: TLabel;
    DBEdit10: TDBEdit;
    Label22: TLabel;
    DBEdit11: TDBEdit;
    Label23: TLabel;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    Label26: TLabel;
    DBEdit14: TDBEdit;
    Label27: TLabel;
    DBEdit15: TDBEdit;
    Label46: TLabel;
    DBEdit16: TDBEdit;
    Label47: TLabel;
    DBEdit17: TDBEdit;
    Label48: TLabel;
    DBEdit18: TDBEdit;
    Label49: TLabel;
    DBEdit19: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure fcDBTreeView1Change(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure PageControl1Change(Sender: TObject);
    procedure fcDBTreeView1UserExpand(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure fcDBTreeView1CalcNodeAttributes(
      TreeView: TfcDBCustomTreeView; Node: TfcDBTreeNode);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure ChangeDataSources(TreeView: TfcDBCustomTreeView; RootLabel: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTreeViewForm2: TDMTreeViewForm2;

implementation

{$R *.DFM}

procedure TDMTreeViewForm2.fcDBTreeView1Change(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
var s: string;
    tempNode: TfcDBTreeNode;
begin
   if Node.Level=0 then ChangeDataSources(TreeView, Node.Text);

  { Compute label to indicate tree state }
  s:= '';
  tempNode:= node;
  repeat
     s:= tempNode.Text + #13 + s;
     tempNode:= tempNode.parent;
  until tempNode=nil;
  TreeStateLabel.caption:= s;

  { Select appropriate tab sheet based on active node }
  if Node.dataset=CustomerTbl then PageControl1.activePage:= CustomersTabSheet
  else if node.dataset=OrdersTbl then PageControl1.activePage:= OrdersTabSheet
  else if node.dataset=ItemsTbl then PageControl1.activePage:= ItemsTabSheet
  else if node.dataset=VendorsTbl then PageControl1.activePage:= VendorsTabSheet;

end;

procedure TDMTreeViewForm2.PageControl1Change(Sender: TObject);
begin
   { This code causes the treeview to highlight the
     dataset associated with the ActivePage of the tab control }
   if PageControl1.ActivePage = OrdersTabSheet then
   begin
      LabelsTbl.Locate('TreeRootLabels', 'Customers', []);
      fcDBTreeView1.MakeActiveDataSet(OrdersTbl, False)
   end
   else if PageControl1.ActivePage = ItemsTabSheet then
   begin
      LabelsTbl.Locate('TreeRootLabels', 'Customers', []);
      fcDBTreeView1.MakeActiveDataSet(ItemsTbl, False)
   end
   else if PageControl1.ActivePage = CustomersTabSheet then
   begin
      LabelsTbl.Locate('TreeRootLabels', 'Customers', []);
      fcDBTreeView1.MakeActiveDataSet(CustomerTbl, False)
   end
   else if PageControl1.ActivePage = VendorsTabSheet then
   begin
      LabelsTbl.Locate('TreeRootLabels', 'Vendors', []);
      fcDBTreeView1.MakeActiveDataSet(VendorsTbl, False)
   end;
end;

procedure TDMTreeViewForm2.fcDBTreeView1UserExpand(
  TreeView: TfcDBCustomTreeView; Node: TfcDBTreeNode);
begin
   if Node.Level=0 then ChangeDataSources(TreeView, Node.Text)
end;

{ Change current list of datasources based on the active root node (label) }
procedure TDMTreeViewForm2.ChangeDataSources(TreeView: TfcDBCustomTreeView; RootLabel: string);
begin
   if RootLabel='Customers' then begin
     TreeView.DataSources:= 'TreeLabelsDS;CustomerDS;OrdersDS;ItemsDS';
     TreeView.DisplayFields[1]:= '"CustNo", "Company"';
   end
   else begin
     TreeView.DataSources:= 'TreeLabelsDS;VendorsDS';
     TreeView.DisplayFields[1]:= '"VendorName"';
   end
end;

procedure TDMTreeViewForm2.fcDBTreeView1CalcNodeAttributes(
  TreeView: TfcDBCustomTreeView; Node: TfcDBTreeNode);
begin
   if Node.DataSet = CustomerTbl then begin

      { Use lookupfield to determine if expand icon (+) should be displayed }
      Node.HasChildren:= not node.dataset.fieldbyname('LookupOrders').isNull;

      { Use US bitmap for US customers }
      if Node.DataSet.FieldByname('Country').asString ='US' then
         Node.StateIndex:= 0
      else Node.StateIndex:= 1;
   end

end;

procedure TDMTreeViewForm2.SpeedButton1Click(Sender: TObject);
begin
  Customertbl.free;
end;

end.
