unit Report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, Menus;

type
  TFrep = class(TMBaseForm)
    YDBGrid2: TYDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    YwhereEdit0: TYWhereEdit;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    YWhereEdit8: TYWhereEdit;
    YWhereEdit9: TYWhereEdit;
    Label4: TLabel;
    YWhereEdit10: TYWhereEdit;
    Label12: TLabel;
    YWhereEdit11: TYWhereEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label13: TLabel;
    YWhereEdit12: TYWhereEdit;
    Label14: TLabel;
    YWhereEdit13: TYWhereEdit;
    Report_Customer: TADOStoredProc;
    SpeedButton5: TSpeedButton;
    ahmadvand: TLabel;
    SBMarketerID: TSpeedButton;
    SBCityID: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    YWhereEdit7: TYWhereEdit;
    Label6: TLabel;
    Report_Customernickname: TWideStringField;
    Report_CustomerCustomerID: TAutoIncField;
    Report_CustomerCustomerNo: TStringField;
    Report_CustomerPersonTitle: TWideStringField;
    Report_CustomerAddress: TWideStringField;
    Report_CustomerPhone: TWideStringField;
    Report_CustomerNotes: TWideStringField;
    Report_CustomerCompanyName: TWideStringField;
    Report_CustomerCityId: TSmallintField;
    Report_CustomerGroupId: TIntegerField;
    Report_CustomerMarketerID: TIntegerField;
    Report_CustomerIsActive: TBooleanField;
    Report_CustomerSenderType: TWordField;
    Report_CustomerPriority: TIntegerField;
    Report_CustomerTreater: TWideStringField;
    Report_CustomerCompaginID: TWordField;
    Report_CustomerPostalCode: TWideStringField;
    Report_CustomerEmailAddress: TWideStringField;
    Report_CustomerWorkPhone1: TWideStringField;
    Report_CustomerWebsite: TStringField;
    Report_CustomerMobilePhone: TWideStringField;
    Report_CustomerFaxNumber: TWideStringField;
    Report_CustomercompetitiveNote: TWideStringField;
    Report_CustomerInsertdate: TStringField;
    Report_CustomerLastUpdate: TStringField;
    Report_CustomerCustomerStatusID: TWordField;
    Report_CustomerCancelReasonID: TWordField;
    Report_CustomerCancelComment: TWideStringField;
    Report_CustomerCancelDate: TStringField;
    Report_CustomerUserTableLinkedID: TIntegerField;
    Report_CustomerGroupTitle: TWideStringField;
    Report_CustomerGroupNo: TStringField;
    Report_CustomerMarketerNo: TStringField;
    Report_CustomerMarketerTitle: TWideStringField;
    Report_CustomerCityTitle: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SBMarketerIDClick(Sender: TObject);
    procedure SBCityIDClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frep: TFrep;

implementation

uses Dmu,YShamsiDate,ExportToWord,GroupExportToWord;

{$R *.dfm}

procedure TFrep.BitBtn1Click(Sender: TObject);
var
   I : Byte;
   S , Where :String;
begin
   for I:=0 to 13 do
   begin
      S := TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
      if s <> '' then
         where := where+' and ('+s+')';
   end;
   if where<>'' then
      where:=copy(where,6,length(where)-5);

   with Report_Customer do
   begin
      Close;
      Parameters.ParamByName('@where').Value:=where;
      Parameters.ParamByName('@Productid').Value:=_ProductID;
      Open;
      Ahmadvand.Caption:='йзого ='+IntToStr(RecordCount);
   end;
end;

procedure TFrep.BitBtn2Click(Sender: TObject);
begin
 YDBGrid2.Print;
end;

procedure TFrep.BitBtn3Click(Sender: TObject);
begin
 YDBGrid2.ExportToWord; 
end;

procedure TFrep.BitBtn8Click(Sender: TObject);
begin
   YDBGrid2.CreateWord;
end;

procedure TFrep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrep.BitBtn7Click(Sender: TObject);
begin
   inherited;
   FrMakeGroupExport:=TFrMakeGroupExport.Create(Application);
   FrMakeGroupExport.Yeganeh_Word.Ydataset:=Report_Customer;
   FrMakeGroupExport.ShowModal;
end;

procedure TFrep.BitBtn6Click(Sender: TObject);
begin
  inherited;
 YDBGrid2.CustomizePrint;

end;

procedure TFrep.SpeedButton5Click(Sender: TObject);
begin
   inherited;
   close;
end;

procedure TFrep.SBMarketerIDClick(Sender: TObject);
var Key:word;shift : TShiftState  ;
begin
   inherited;
   Key:=VK_SPACE;
   shift:=  [ssCtrl,ssRight..ssDouble];
   CtrlSpace(YWhereEdit2,Key,Shift);
//   Keyboard_Simulation(YWhereEdit2,VK_SPACE,True,False,False);
end;

procedure TFrep.SBCityIDClick(Sender: TObject);
var Key:word;shift : TShiftState  ;
begin
   inherited;
   Key:=VK_SPACE;
   shift:=  [ssCtrl,ssRight..ssDouble];
   CtrlSpace(YWhereEdit5,Key,Shift);
  // Keyboard_Simulation(YWhereEdit5,VK_SPACE,True,False,False);
  // (Sender: TObject; var key: Word; Shift: TShiftState);
end;

procedure TFrep.SpeedButton1Click(Sender: TObject);
var Key:word;shift : TShiftState  ;
begin
   inherited;
   Key:=VK_SPACE;
   shift:=  [ssCtrl,ssRight..ssDouble];
   CtrlSpace(YWhereEdit6,Key,Shift);
//   Keyboard_Simulation(YWhereEdit6,VK_SPACE,True,False,False);
end;

procedure TFrep.SpeedButton2Click(Sender: TObject);
var Key:word;shift : TShiftState  ;
begin
   inherited;
   Key:=VK_SPACE;
   shift:=  [ssCtrl,ssRight..ssDouble];
   CtrlSpace(YWhereEdit10,Key,Shift);
//   Keyboard_Simulation(YWhereEdit10,VK_SPACE,True,False,False);
end;

end.



