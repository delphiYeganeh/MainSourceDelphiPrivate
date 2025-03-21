unit Filtdlg;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBTables, Wwtable, Wwdatsrc, Wwfltdlg, wwidlg, Wwlocate, Wwquery,
  TabNotBk, ComCtrls, wwriched, wwDialog;

type
  TFilterDialogForm = class(TForm)
    wwFilterDialog1: TwwFilterDialog;
    CustomerDS: TwwDataSource;
    CustomerTbl: TwwTable;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    SearchTypeCheckbox: TCheckBox;
    ShowFieldOrderCheckbox: TCheckBox;
    ViewSummaryCheckbox: TCheckBox;
    CheckBox1: TCheckBox;
    Customer2QueryDS: TwwDataSource;
    Customer2Query: TwwQuery;
    wwFilterDialog3: TwwFilterDialog;
    TabbedNotebook1: TTabbedNotebook;
    wwDBGrid1: TwwDBGrid;
    CustInvDS: TwwDataSource;
    CustInvoiceTable: TwwTable;
    GroupBox2: TGroupBox;
    wwDBGrid3: TwwDBGrid;
    GroupBox3: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid4: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwFilterDialog2: TwwFilterDialog;
    Customer1QueryDS: TwwDataSource;
    Customer1Query: TwwQuery;
    Memo3: TMemo;
    Customer1QueryCustomerNo: TIntegerField;
    Customer1QueryBuyer: TStringField;
    Customer1QueryCompanyName: TStringField;
    Customer1QueryFirstName: TStringField;
    Customer1QueryLastName: TStringField;
    Customer1QueryStreet: TStringField;
    Customer1QueryCity: TStringField;
    Customer1QueryState: TStringField;
    Customer1QueryZip: TStringField;
    Customer1QueryFirstContactDate: TDateField;
    Customer1QueryPhoneNumber: TStringField;
    Customer1QueryInformation: TMemoField;
    Customer1QueryRequestedDemo: TStringField;
    Customer1QueryLogical: TBooleanField;
    Customer2QueryCUSTOMERNO: TIntegerField;
    Customer2QueryBuyer: TStringField;
    Customer2QueryCompanyName: TStringField;
    Customer2QueryFirstName: TStringField;
    Customer2QueryLastName: TStringField;
    Customer2QueryStreet: TStringField;
    Customer2QueryCity: TStringField;
    Customer2QueryState: TStringField;
    Customer2QueryZip: TStringField;
    Customer2QueryFirstContactDate: TDateField;
    Customer2QueryPhoneNumber: TStringField;
    Customer2QueryInformation: TMemoField;
    Customer2QueryRequestedDemo: TStringField;
    Customer2QueryLogical: TBooleanField;
    CheckBox2: TCheckBox;
    wwDBGrid5: TwwDBGrid;
    wwDBRichEdit1: TwwDBRichEdit;
    wwDBRichEdit2: TwwDBRichEdit;
    wwDBRichEdit3: TwwDBRichEdit;
    CustomerTblCustomerNo: TIntegerField;
    CustomerTblBuyer: TStringField;
    CustomerTblCompanyName: TStringField;
    CustomerTblFirstName: TStringField;
    CustomerTblLastName: TStringField;
    CustomerTblStreet: TStringField;
    CustomerTblCity: TStringField;
    CustomerTblState: TStringField;
    CustomerTblZip: TStringField;
    CustomerTblFirstContactDate: TDateField;
    CustomerTblPhoneNumber: TStringField;
    CustomerTblInformation: TMemoField;
    CustomerTblRichEdit: TBlobField;
    CustomerTblRequestedDemo: TStringField;
    CustomerTblLogical: TBooleanField;
    CheckBox3: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure SearchTypeCheckboxClick(Sender: TObject);
    procedure ShowFieldOrderCheckboxClick(Sender: TObject);
    procedure ViewSummaryCheckboxClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure wwDBGrid3CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure CheckBox2Click(Sender: TObject);
    procedure wwFilterDialog1SelectField(Sender: TObject;
      FieldName: String; var PictureMask: String; ComboList: TStrings);
    procedure CheckBox3Click(Sender: TObject);
{    procedure Button1Click(Sender: TObject);}
  private
    { Private declarations }
      procedure ChangeOptions(value:boolean;filteroptions:TwwFilterDialogOptions);
  public
    { Public declarations }
  end;

var
  FilterDialogForm: TFilterDialogForm;

implementation

{$R *.DFM}

procedure TFilterDialogForm.ChangeOptions(value:boolean;filteroptions:TwwFilterDialogOptions);
begin
   if value then
   begin
      wwFilterDialog1.Options:= wwFilterDialog1.Options + filteroptions;
      wwFilterDialog2.Options:= wwFilterDialog2.Options + filteroptions;
      wwFilterDialog3.Options:= wwFilterDialog3.Options + filteroptions
   end
   else begin
      wwFilterDialog1.Options:= wwFilterDialog1.Options - filteroptions;
      wwFilterDialog2.Options:= wwFilterDialog2.Options - filteroptions;
      wwFilterDialog3.Options:= wwFilterDialog3.Options - filteroptions
   end
end;

procedure TFilterDialogForm.BitBtn1Click(Sender: TObject);
begin
   case TabbedNotebook1.pageIndex of
   0: wwFilterDialog1.execute;
   1: wwFilterDialog2.execute;
   2: wwFilterDialog3.execute;
   3: wwFilterDialog1.execute;
   { Performance Tip: Executing a multi-table query when selecting all records
     can be quite time-consuming.  Therefore you may wish to
     point your datasource to a TTable when showing all records, and then
     switch to a TQuery when you want to select a subset.
   }
   end;
end;

procedure TFilterDialogForm.SearchTypeCheckboxClick(Sender: TObject);
begin
   ChangeOptions((Sender as TCheckBox).checked,[fdShowValueRangeTab]);
end;

procedure TFilterDialogForm.ShowFieldOrderCheckboxClick(Sender: TObject);
begin
   ChangeOptions((Sender as TCheckBox).checked,[fdShowFieldOrder]);
end;

procedure TFilterDialogForm.ViewSummaryCheckboxClick(Sender: TObject);
begin
   ChangeOptions((Sender as TCheckBox).checked,[fdShowViewSummary]);
end;

procedure TFilterDialogForm.CheckBox1Click(Sender: TObject);
begin
   ChangeOptions((Sender as TCheckBox).checked,[fdShowOKCancel]);
end;

procedure TFilterDialogForm.wwDBGrid3CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (Field.FieldName='Balance Due') and
      (Field.asFloat>0) then AFont.Color:= clRed;
end;

procedure TFilterDialogForm.TabbedNotebook1Change(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
begin
   CheckBox2.Checked := False;
   case NewTab of
     1: if not Customer1query.active then begin
          Screen.cursor:= crHourGlass;
          Customer1Query.active:= True;
          Screen.cursor:= crDefault;
        end;
     2: begin
          Screen.cursor:= crHourGlass;
          Customer2Query.active:= True;
          Screen.cursor:= crDefault;
        end;
     3: begin
          CheckBox2.Checked := True;
        end;
     else
   end;
end;

{
 The following shows how you can apply the filter without even bringing
 up the filter dialog
}
{
procedure TFilterDialogForm.Button1Click(Sender: TObject);
var curFieldInfo: TwwFieldInfo;
begin
   with wwFilterDialog1 do begin
      ClearFilter;

      curFieldInfo:= TwwFieldInfo.create;
      with curFieldInfo do begin
         FieldName:= 'Last Name';
         Displaylabel:= 'Last Name';
         MatchType:= fdMatchStart;
         FilterValue:= 'R';
         CaseSensitive:= False;
      end;
      FieldInfo.add(curFieldInfo);
   end;

   wwFilterDialog1.ApplyFilter;
end;
}
procedure TFilterDialogForm.CheckBox2Click(Sender: TObject);
begin
   ChangeOptions((Sender as TCheckBox).checked,[fdShowNonMatching]);
end;

procedure TFilterDialogForm.wwFilterDialog1SelectField(Sender: TObject;
  FieldName: String; var PictureMask: String; ComboList: TStrings);
begin
   if FieldName = 'Buyer' then begin
      ComboList.Add('Yes');
      ComboList.Add('No');
   end
end;

procedure TFilterDialogForm.CheckBox3Click(Sender: TObject);
begin
   ChangeOptions((Sender as TCheckBox).checked,[fdSizeable]);
end;

end.
