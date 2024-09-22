unit MainU;

interface

uses
  Windows ,Messages, SysUtils,Variants, Classes,Graphics, Controls, Forms,
  Dialogs ,ActnList, XPStyleActnCtrls, ActnMan,Menus,adodb,db, ExtDlgs,
  ExtCtrls,ComCtrls, StdCtrls,Buttons, Grids,DBGrids, YDbgrid,
  YWhereEdit, Mask , DBCtrls ,ActnColorMaps,ToolWin, ActnCtrls,
  BaseUnit, UemsVCL, Spin, YCheckGroupBox, DBTreeView, QuickRpt,
  WinSkinData,SmsCenter1,v2,U_FITCHER_SETTING_FRM,U_ADV_SEARCH_SANAD_FRM,U_REPORT_BE_TAFKIK_ADV_FRM, Math;

type
    TFrMain = class(TYBaseForm)
    ActionManager: TActionManager;
    MainPageControl: TPageControl;
    xpTabSheet4: TTabSheet;
    xpTabSheet5: TTabSheet;
    xpTabSheet6: TTabSheet;
    xpTabSheet7: TTabSheet;
    Panel1     : TPanel;
    Btn_H_EftetaheHesab: TSpeedButton;
    Btn_H_VirayeshEtelaat: TSpeedButton;
    btn_H_VarizHesab: TSpeedButton;
    btn_H_BardashtHesab: TSpeedButton;
    btn_H_BastanHesab: TSpeedButton;
    Panel2     : TPanel;
    AccountGrid: TYDBGrid;
    Panel3     : TPanel;
    Label1     : TLabel;
    Label2     : TLabel;
    Label3     : TLabel;
    Label4     : TLabel;
    Panel5     : TPanel;
    Panel4     : TPanel;
    Panel6     : TPanel;
    Panel7     : TPanel;
    Panel8     : TPanel;
    Label9     : TLabel;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    AFamilyTitle:TYWhereEdit;
    btn_H_DaftarMoin: TSpeedButton;
    btn_H_AghsatVaMahiyaneh: TSpeedButton;
    btn512     : TSpeedButton;
    FamilyLabel: TLabel;
    YWhereEdit4: TYWhereEdit;
    Panel16    : TPanel;
    ForcePaymentGrid: TYDBGrid;
    Panel18    : TPanel;
    btn_AM_TanzimeMahiyaneh: TSpeedButton;
    btn_AM_TrifMahiyaneh: TSpeedButton;
    TShPhone   : TTabSheet;
    Panel19    : TPanel;
    Panel20    : TPanel;
    Label19    : TLabel;
    Label25    : TLabel;
    Label26    : TLabel;
    Panel21    : TPanel;
    BtnSearch2 : TBitBtn;
    BtnNew2    : TBitBtn;
    Label27    : TLabel;
    btn_V_EtayeVam: TSpeedButton;
    btn_V_hazfeVam: TSpeedButton;
    btn_V_AghsatInVam: TSpeedButton;
    btn_V_OlaviyatBandiVam: TSpeedButton;
    btn_V_DarkhasteVam: TSpeedButton;
    btn_V_VirayeshAghsat: TSpeedButton;
    BtnSearch5: TBitBtn;
    BtnNew5: TBitBtn;
    btn_DT_Jadid: TSpeedButton;
    StatusRadioGroup: TRadioGroup;
    btn_AM_PardakhteAghsat: TSpeedButton;
    btn_AM_PardakhteMahiyaneh: TSpeedButton;
    btn_AM_PardakhteJamee: TSpeedButton;
    btn_AM_GazareshTajamoee: TSpeedButton;
    btn_DT_Virayesh: TSpeedButton;
    btn_DT_Hazf: TSpeedButton;
    btn_DT_TasavirMarbooteh: TSpeedButton;
    btn_DT_Joaziyat: TSpeedButton;
    btn_DT_HesabMortabet: TSpeedButton;
    AddObjects: TAction;
    GroupBox2: TPanel;
    xpTabSheet1: TTabSheet;
    btn_MH_TarazAzmayeshi: TSpeedButton;
    GroupBox5: TPanel;
    NoLabel: TLabel;
    Label22: TLabel;
    Accountno: TYWhereEdit;
    FMatureDate: TYWhereEdit;
    SpeedButton51: TButton;
    SearchModePanel: TPageControl;
    xpTabSheet3: TTabSheet;
    xpTabSheet8: TTabSheet;
    CBPaid: TCheckBox;
    CbNotPaid: TCheckBox;
    AccountPanel: TPanel;
    GroupBox4: TPanel;
    CbPart: TCheckBox;
    CbMonthly: TCheckBox;
    FamilyLabel1: TLabel;
    SpeedButton49: TButton;
    FamilyTitle: TYWhereEdit;
    YCheckGroupBox1: TYCheckGroupBox;
    CbDelay: TLabel;
    CBOnlyLatest: TCheckBox;
    DelayDays: TSpinEdit;
    Label10: TLabel;
    UserField1: TLabel;
    UserField2: TLabel;
    ContactGrid: TYDBGrid;
    YWhereEdit10: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit12: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit14: TYWhereEdit;
    YWhereEdit16: TYWhereEdit;
    YWhereEdit15: TYWhereEdit;
    LoanGrid: TYDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label15      : TLabel;
    YWhereEdit17 : TYWhereEdit;
    YWhereEdit18 : TYWhereEdit;
    YWhereEdit19 : TYWhereEdit;
    YWhereEdit20 : TYWhereEdit;
    YWhereEdit21 : TYWhereEdit;
    BtnSearch4   : TBitBtn;
    BtnNew4      : TBitBtn;
    SpeedButton5 : TButton;
    btn_H_DaftarchehOzviyat: TSpeedButton;
    btn_H_VirayeshMahiyaneh: TSpeedButton;
    btn_V_DaftarchehAghsat: TSpeedButton;
    btn_V_VirayeshVam: TSpeedButton;
    CBHasPart    : TCheckBox;
    btn_V_BarresiEmtiyazVam: TSpeedButton;
    GroupBox3    : TGroupBox;
    SpeedButton29: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton43: TSpeedButton;
    xpBitBtn63   : TSpeedButton;
    GroupBox1    : TGroupBox;
    xpBitBtn3    : TSpeedButton;
    xpBitBtn4    : TSpeedButton;
    xpBitBtn5    : TSpeedButton;
    xpBitBtn52   : TSpeedButton;
    xpBitBtn51   : TSpeedButton;
    SpeedButton37: TSpeedButton;
    btn_MH_EnteghalVajh: TSpeedButton;
    btn_MH_DaftarMoin: TSpeedButton;
    Panel9       : TPanel;
    Label16      : TLabel;
    BtnSearch1   : TBitBtn;
    CashAccountDBGrid: TYDBGrid;
    xpBitBtn16   : TSpeedButton;
    xpBitBtn69   : TSpeedButton;
    SpeedButton25: TSpeedButton;
    GroupBox6    : TGroupBox;
    SpeedButton13: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton9 : TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton38: TSpeedButton;
    Sessionbutton: TSpeedButton;
    GridButtons  : TPanel;
    SpeedButton1 : TSpeedButton;
    SpeedButton2 : TSpeedButton;
    SpeedButton3 : TSpeedButton;
    SpeedButton4 : TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton15: TSpeedButton;
    UserTitmer: TTimer;
    btn_H_DarjHoshdar: TSpeedButton;
    btn_MH_Hazf: TSpeedButton;
    btn_H_Tasviyeh: TSpeedButton;
    btn_MH_DaftareRooznameh: TSpeedButton;
    btn_MH_GozareshTarakonesh: TSpeedButton;
    btn_MH_BeylanKari: TSpeedButton;
    RG_AccountType: TDBTreeView;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    btn_MH_SoodOZiyan: TSpeedButton;
    SpeedButton21: TSpeedButton;
    btn_MH_JostejooSanad: TSpeedButton;
    StatusBar: TStatusBar;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    showClosedAccount: TCheckBox;
    SpeedButton7: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton12: TSpeedButton;                                                                       
    speedBtn110: TSpeedButton;
    btn_MH_TarazMoin: TSpeedButton;
    SpeedButton11: TSpeedButton;
    YWhereEdit22: TYWhereEdit;
    Label7: TLabel;
    LblFamily: TLabel;
    btn_V_TarifAnvaeVam: TSpeedButton;
    btn_E_GozareshGiriAzZamenha: TSpeedButton;
    SpeedButton8: TSpeedButton;
    btn_AM_SoodJarimehKarmozd: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    Label11: TLabel;
    YWERowCount: TYWhereEdit;
    SpeedButton19: TSpeedButton;
    Label12: TLabel;
    LoanTitle: TYWhereEdit;
    Label14: TLabel;
    MonthlyTitle: TYWhereEdit;
    Button2: TButton;
    SpeedButton23: TSpeedButton;
    SpeedButton22: TSpeedButton;
    Button1: TButton;
    CHAccountType: TCheckBox;
    btn_MH_Sabt: TSpeedButton;
    btn_MH_IjadeHesab: TSpeedButton;
    SpeedButton24: TSpeedButton;
    Panel10: TPanel;
    BtnNew3: TBitBtn;
    btnSearch3: TBitBtn;
    GroupBox7: TGroupBox;
    SpeedButton26: TSpeedButton;
    SpeedButton35: TSpeedButton;
    btn_E_ChapePerfraj: TSpeedButton;
    Label17: TLabel;
    edtLoanTop: TEdit;
    SpeedButton30: TSpeedButton;
    btn_E_GozareshPardakhtAghsatVaMahiyaneh: TSpeedButton;
    btn_H_BardashtAzMahiyaneh: TSpeedButton;
    btn_V_GozareshVamBeTafkikAza: TSpeedButton;
    btn_V_GozareshMoavagheh: TSpeedButton;
    btn_AM_GhestBandiMojadad: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    YWhereEdit5: TYWhereEdit;
    SpeedButton6: TSpeedButton;
    FamilyTitleVam: TYWhereEdit;
    Button3: TButton;
    SpeedButton10: TSpeedButton;
    AccountChB: TCheckBox;
    LoanChB: TCheckBox;
    ForcePaymentChB: TCheckBox;
    ContactChB: TCheckBox;
    SpeedButton28: TSpeedButton;
    Label18: TLabel;
    Label20: TLabel;
    Panel11: TPanel;
    EdtLoanFirstNo: TEdit;
    EdtLoanLastNo: TEdit;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    YWERowCountD: TYWhereEdit;
    Panel12: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    btnSoodSeporde: TSpeedButton;
    Button4: TSpeedButton;
    Button5: TSpeedButton;
    TimerSendSms: TTimer;
    Action14: TAction;
    procedure FormShow(Sender: TObject);
    function ActiveGrid:TYDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure AAddAccountExecute(Sender: TObject);
    procedure xpBitBtn7Click(Sender: TObject);
    procedure EditContact(_ContactTypeID: byte;ContactID_: integer;ReadOnly:boolean);
    procedure BrowesContact(_ContactTypeID: byte;ContactID_:integer;ReadOnly: boolean);
    procedure FindContact(_SearchAll:boolean;_ContactTypeID: byte;ReadOnly:boolean);
    procedure AAddInvestorExecute(Sender: TObject);
    procedure AAddTankhahExecute(Sender: TObject);
    procedure Btn_H_VirayeshEtelaatClick(Sender: TObject);
    procedure btn_H_VarizHesabClick(Sender: TObject);
    procedure btn_H_BardashtHesabClick(Sender: TObject);
    procedure btn_V_EtayeVamClick(Sender: TObject);
    procedure btn_AM_TrifMahiyanehClick(Sender: TObject);
    procedure btn_AM_TanzimeMahiyanehClick(Sender: TObject);
    procedure xpBitBtn16Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure BtnSearch5Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure btn_MH_EnteghalVajhClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_H_DaftarMoinClick(Sender: TObject);
    procedure btn_H_BastanHesabClick(Sender: TObject);
    procedure Report_AccountAfterScroll(DataSet: TDataSet);
    procedure xpBitBtn6Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure btn_H_DarjHoshdarClick(Sender: TObject);
    procedure btn_H_AghsatVaMahiyanehClick(Sender: TObject);
    procedure xpBitBtn51Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure xpBitBtn52Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure btn_DT_JadidClick(Sender: TObject);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure xpBitBtn4Click(Sender: TObject);
    procedure btn_MH_HazfClick(Sender: TObject);
    procedure AddObjectsExecute(Sender: TObject);
    procedure btn_V_OlaviyatBandiVamClick(Sender: TObject);
    procedure btn_V_DarkhasteVamClick(Sender: TObject);
    procedure SearchModePanelChange(Sender: TObject);
    procedure btnSearch3Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure BtnNew3Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure btn_DT_VirayeshClick(Sender: TObject);
    procedure btn_DT_JoaziyatClick(Sender: TObject);
    procedure btn_DT_TasavirMarbootehClick(Sender: TObject);
    procedure btn_DT_HazfClick(Sender: TObject);
    procedure btn_DT_HesabMortabetClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure RefreshLoan;
    procedure Refresh_CashAccount;
    procedure RefreshAccount;
    procedure RefreshContact;
    procedure Refreshforcepayment;
    procedure BtnSearch2Click(Sender: TObject);
    procedure btn_V_AghsatInVamClick(Sender: TObject);
    procedure BtnSearch4Click(Sender: TObject);
    procedure BtnNew5Click(Sender: TObject);
    procedure BtnNew4Click(Sender: TObject);
    procedure btn_AM_PardakhteAghsatClick(Sender: TObject);
    procedure btn_AM_PardakhteMahiyanehClick(Sender: TObject);
    procedure btn_V_DaftarchehAghsatClick(Sender: TObject);
    procedure btn_H_DaftarchehOzviyatClick(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure xpBitBtn63Click(Sender: TObject);
    procedure btn_AM_PardakhteJameeClick(Sender: TObject);
    procedure btn_AM_GazareshTajamoeeClick(Sender: TObject);
    procedure btn_V_VirayeshAghsatClick(Sender: TObject);
    procedure btn_H_VirayeshMahiyanehClick(Sender: TObject);
    procedure btn_V_hazfeVamClick(Sender: TObject);
    procedure btn_V_VirayeshVamClick(Sender: TObject);
    procedure LoanGridNeedFontCondition(Column:TColumn;State:TGridDrawState;var F:TFont);
    procedure ForcePaymentGridNeedFontCondition(Column:TColumn;State:TGridDrawState;var F:TFont);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure btn_V_BarresiEmtiyazVamClick(Sender: TObject);
    procedure SpeedButton47Click(Sender: TObject);
    procedure btn_MH_IjadeHesabClick(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure xpBitBtn70Click(Sender: TObject);
    procedure BtnSearch1Click(Sender: TObject);
    procedure btn_MH_SabtClick(Sender: TObject);
    procedure btn_MH_DaftarMoinClick(Sender: TObject);
    procedure btn_MH_TarazAzmayeshiClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure MainPageControlChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure xpTabSheet4Show(Sender: TObject);
    procedure UserTitmerTimer(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure BtnNew2Click(Sender: TObject);
    procedure btn_MH_GozareshTarakoneshClick(Sender: TObject);
    procedure speedBtn110Click(Sender: TObject);
    procedure Report_CashAccountAfterScroll(DataSet: TDataSet);
    procedure RG_AccountTypeClick(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure xpBitBtn69Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure btn_H_TasviyehClick(Sender: TObject);
    procedure btn_MH_DaftareRooznamehClick(Sender: TObject);
    procedure btn_MH_BeylanKariClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btn_MH_SoodOZiyanClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure btn_MH_JostejooSanadClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure AccountGridDblClick(Sender: TObject);
    procedure LoanGridDblClick(Sender: TObject);
    procedure ForcePaymentGridDblClick(Sender: TObject);
    procedure shortCutPress(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure YWhereEdit1KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure YWhereEdit17KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure AccountnoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure YWhereEdit10KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure YWhereEdit6KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    Procedure Make_SelectedForcePayment;
    procedure SpeedButton7Click(Sender: TObject);
    procedure btn512Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton52Click(Sender: TObject);
    procedure btn_MH_TarazMoinClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CashAccountDBGridDblClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure btn_V_TarifAnvaeVamClick(Sender: TObject);
    procedure btn_E_GozareshGiriAzZamenhaClick(Sender: TObject);
    procedure SessionbuttonClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    Function  SetTotal_AmountPrice:integer;
    Function  SetTotal_interest:STRING;
    Function SetTotal_Amerce:STRING;

    procedure Btn37Click(Sender: TObject);
    procedure btn_AM_SoodJarimehKarmozdClick(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure YWERowCountKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SpeedButton19Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure btn_E_ChapePerfrajClick(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure btn_E_GozareshPardakhtAghsatVaMahiyanehClick(Sender: TObject);
    procedure btn_H_BardashtAzMahiyanehClick(Sender: TObject);
    procedure btn_V_GozareshMoavaghehClick(Sender: TObject);
    procedure btn_V_GozareshVamBeTafkikAzaClick(Sender: TObject);
    procedure btn_AM_GhestBandiMojadadClick(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ContactChBClick(Sender: TObject);
    procedure ForcePaymentChBClick(Sender: TObject);
    procedure LoanChBClick(Sender: TObject);
    procedure AccountChBClick(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure YWERowCountDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure btnSoodSepordeClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TimerSendSmsTimer(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure YWhereEdit19Enter(Sender: TObject);
    procedure EdtLoanFirstNoEnter(Sender: TObject);
    procedure EdtLoanLastNoEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AccountGridCellClick(Column: TColumn);
    procedure TabSheet2Show(Sender: TObject);

  private
    { Private declarations }
  public
    Sum_ForcePayment_Amount , Sum_ForcePayment_Amerce,Sum_ForcePayment_Interest :Int64;
     PartToleranse : Integer;
    _SelectedForcePaymentID : String;
    procedure AddContact(_ContactTypeID: byte);
    procedure SetTheGrigStatusBar(ChB:TCheckBox;Gr:TYDBGrid);
  end;

var
  FrMain: TFrMain;

implementation



uses dmu,    BusinessLayer,  AddUserU, LoginU,
  AddTemplateU,  AddContactU, AddPaymentU, AddLoanU,
  AddLoanTypeU, AddMonthlyTypeU, MakeMonthlyU, AddFamilyU,
  EditPrAccountNoU, SystemSettingU, AddAccountU, ReportAccountPaymentsU,
  ReportAccountU, AddAccountAlarmU,  DatabaseMaintenanceU, MakeTemplateU,
  PrintSessionU, LoanPriorityU, AddLoanRequestU, YShamsiDate, searchLoanU,
  AddattachmentU, ErrorMsgU, PayPartU, PayMonthlyU, PrintPartU,
  PrintMonthlyU, AmerceU, LoanPointU, SumPaymentU,
  Report_GroupForcePaymentU, EditPartu, EditMonthlyU, AddFinancialNoteU,
  ChangePassU, Report_loanPointU, EditLoanU, AddCashPaymentU,
  SummeryPaymentU, BankU, Report_ActiveUsers, Report_PaymentU,
  Daily_ReportU, Income_SummeryU,UserLoginLogoutReportU,
  PrintPayment_ByDocumentNoU, RestoreU, TransferU, AddAccountTypeU,
  SummeryPayment_allU, DividBenefitU, DongleU, RepLoanGrtFm,
  ReportAccountPaymentsPBKU, AddFinancialNote_NewU,
  FinancialNoteDetail_NewU, Report_PaymentInDetailU,
  PaymentImportFromExcelU, Unit1, Report_LoanPerAccountU, PerfrajListU,
  AvrageU, SumPayment_ReportU, LoanReportU, AddRemainLoanU,
  AccDailyReportU, DividBenefit_NewU, AddReportNameU, ForTest,
  ListofContactsU, AddPresentationDetU, PrintDeletedPayment_ByDocumentNoU,
  DocPrintU, URepSoodSepordeh, URepSood2, UBenefitFromHazineh, uSendSMS,
  uSmsSetting, U_ENTER_ADMIN_PASS_FRM, ConvUtils, AddAccessU;


 var
 FamilyID:integer;
 FamilyIDVam:integer;
 aFamilyID:integer;
 ContactEditMode:Boolean;
 MonthlyTypeID:Integer;
 LoanTypeID:Integer;
{$R *.dfm}

var
   ContactWhere,AccountWhere,CashAccountWhere,LoanWhere : String;

procedure TFrMain.FormShow(Sender: TObject);
var
  i: integer;
begin
  mainPageControl.ActivePageIndex:=5;
  PageControl1.ActivePageIndex :=  5;
  {Ranjbar Ver3}
  DBGrid_LoadColumns(Self.Name,AccountGrid);
  DBGrid_LoadColumns(Self.Name,LoanGrid);
  DBGrid_LoadColumns(Self.Name,ForcePaymentGrid);
  DBGrid_LoadColumns(Self.Name,ContactGrid);
  DBGrid_LoadColumns(Self.Name,CashAccountDBGrid);

  xpBitBtn16.Caption := ' ⁄—Ì› ' + Get_SystemSetting('FamilyTitle');

  BidiModeToRight(RG_AccountType);
  //---
  dm.ContactType.Locate('ContactTypeID',1,[]);
  with dm,AccountGrid,Columns do
    for i:=0 to Count-1 do
    begin
      if UpperCase(Columns[i].FieldName)='USERFIELD1'  then
        Columns[i].Title.Caption:=ContactTypeUserField1Title.AsString;
      if UpperCase(Columns[i].FieldName)='USERFIELD2'  then
        Columns[i].Title.Caption:=ContactTypeUserField2Title.AsString;
      if UpperCase(Columns[i].FieldName)='FAMILYTITLE'  then
        Columns[i].Title.Caption:=Get_SystemSetting('FamilyTitle');
      if UpperCase(Columns[i].FieldName)='PERSONALNO'  then
        Columns[i].Title.Caption:=Get_SystemSetting('PersonalTitle');
    end;

  dm.ContactType.Open;
  dm.ContactType.Locate('ContactTypeTitle','œ› —çÂ  ·›‰',[]);
  UserField1.Caption := dm.ContactTypeUserField1Title.AsString;
  UserField2.Caption := dm.ContactTypeUserField2Title.AsString;
  with dm,ContactGrid,Columns do
  for i:=0 to Count-1 do
  begin
    if UpperCase(Columns[i].FieldName)='USERFIELD1'  then
      Columns[i].Title.Caption:=dm.ContactTypeUserField1Title.AsString;
    if UpperCase(Columns[i].FieldName)='USERFIELD2'  then
      Columns[i].Title.Caption:=dm.ContactTypeUserField2Title.AsString;
  end;
end;

function TFrMain.ActiveGrid:TYDBGrid;
begin
   Case mainPageControl.ActivePageIndex of
      1 :Result:=CashAccountDBGrid;
      2 :Result:=ContactGrid;
      3 :Result:=ForcePaymentGrid;
      4 :Result:=LoanGrid;
      5 :Result:=AccountGrid;
      else
      Result:=nil;
   end
end;

procedure TFrMain.SpeedButton1Click(Sender: TObject);
begin
  ActiveGrid.ExportToWord;
end;

procedure TFrMain.SpeedButton2Click(Sender: TObject);
begin
  ActiveGrid.Print;
end;

procedure TFrMain.SpeedButton3Click(Sender: TObject);
begin
  ActiveGrid.ExportToExcel;
end;

procedure TFrMain.SpeedButton4Click(Sender: TObject);
begin
  ActiveGrid.CustomizePrint;
end;

procedure TFrMain.AAddAccountExecute(Sender: TObject);
begin
  inherited;
  AddContact(1);
  RefreshAccount;
end;

procedure TFrMain.AddContact(_ContactTypeID: byte);
begin
  inherited;
  FrAddContact := TFrAddContact.Create(Application);
  with FrAddContact do
  begin
    ContactTypeID :=_ContactTypeID ;
    ContactID     :=0 ;
    InsBtn.OnClick(InsBtn);
    ShowModal;
  end;
end;

procedure TFrMain.FindContact(_SearchAll:boolean;_ContactTypeID: byte;ReadOnly:boolean);
begin
  inherited;
  FrAddContact := TFrAddContact.Create(Application);
  with FrAddContact do
  begin
    ContactTypeID := _ContactTypeID;
    SearchAll  := _SearchAll;
    SearchMode := true;
    if SearchMode then
      SearchEdit.Text:='';
    ShowModal;
  end;
end;

procedure TFrMain.EditContact(_ContactTypeID: byte;ContactID_:integer;ReadOnly: boolean);
begin
  inherited;
  FrAddContact:=TFrAddContact.Create(Application);
  with FrAddContact do
  begin
    ContactTypeID:=_ContactTypeID;
    FrAddContact.ContactID:= ContactID_;
    EditBtn.OnClick(EditBtn);
    ShowModal;
  end;
  RefreshAccount;
end;

procedure TFrMain.BrowesContact(_ContactTypeID: byte;ContactID_:integer;ReadOnly: boolean);
begin
  inherited;
  FrAddContact:=TFrAddContact.Create(Application);
  with FrAddContact do
  begin
    ContactTypeID:=_ContactTypeID;
    FrAddContact.ContactID:= ContactID_;
    ShowModal;
  end;
  RefreshAccount;
end;

procedure TFrMain.xpBitBtn7Click(Sender: TObject);
begin
  inherited;
  TBitBtn(Sender).action.Execute;
end;

procedure TFrMain.AAddInvestorExecute(Sender: TObject);
begin
  inherited;
  AddContact(5);
end;

procedure TFrMain.AAddTankhahExecute(Sender: TObject);
begin
  inherited;
  AddContact(6);
end;

procedure TFrMain.Btn_H_VirayeshEtelaatClick(Sender: TObject);
begin
  inherited;
  if not ContactEditMode then
    BrowesContact(1,Dm.Report_AccountContactID.AsInteger,False)
  else
    EditContact(1,Dm.Report_AccountContactID.AsInteger,False);
  RefreshAccount;
end;

procedure TFrMain.btn_H_VarizHesabClick(Sender: TObject);
var
  FrAddPayment: TFrAddPayment;
begin
  inherited;

{
FrAddPayment := TFrAddPayment.Create(Self);
try
    FrAddPayment.CashIsDebtor := True;
    try
      FrAddPayment.SearchEdit.Text := dm.Report_AccountAccountNo.AsString;
      FrAddPayment.RefreshPayment;
    except On E:Exception do
      ShowMessage('ERROR FrAddPayment.Create 1:: ' + E.Message);
    end;

  FrAddPayment.ShowModal;
finally
  FrAddPayment.Free;
  dm.blnDataIsReady := False;
  RefreshAccount;
end;
 }

  try
    try
      if not AccountGrid.DataSource.DataSet.Active then
        Exit;
      try
        //if Assigned(FrAddPayment) then
        //FrAddPayment.Close;
        FrAddPayment := TFrAddPayment.Create(nil);
      except On E:Exception do
        ShowMessage('ERROR btn_H_VarizHesab 1:: ' + E.Message);
      end;

      with FrAddPayment do
      begin
        CashIsDebtor := True;
        try
          SearchEdit.Text := dm.Report_AccountAccountNo.AsString;
          RefreshPayment;
        except On E:Exception do
          ShowMessage('ERROR btn_H_VarizHesab 3:: ' + E.Message);
        end;
        ShowModal;
        dm.blnDataIsReady := False;
      end;
      RefreshAccount;

//      ShowMessage('À»  ‘œ');

    except On E:Exception do
      ShowMessage('ERROR btn_H_VarizHesab 2:: ' + E.Message);
    end;

  finally
    //AAAA
    if Assigned(FrAddPayment) then
      FrAddPayment := nil;
  end;
end;

procedure TFrMain.btn_H_BardashtHesabClick(Sender: TObject);
begin
  inherited;
{  if not AccountGrid.DataSource.DataSet.Active then
    Exit;

  try
    FrAddPayment:=TFrAddPayment.Create(Application);
  except
  end;

  with FrAddPayment do
  begin
    CashIsDebtor := False;
    try
      SearchEdit.Text:=dm.Report_AccountAccountNo.AsString;
      RefreshPayment;
    except
    end;
    ShowModal;
    //FrAddPayment:=nil;
  end;
  RefreshAccount;}

  try
    try
      if not AccountGrid.DataSource.DataSet.Active then
        Exit;
      try
        //if Assigned(FrAddPayment) then
        //FrAddPayment.Close;
        FrAddPayment := TFrAddPayment.Create(nil);
      except On E:Exception do
        ShowMessage('ERROR btn_H_VarizHesab -1:: ' + E.Message);
      end;

      with FrAddPayment do
      begin
        CashIsDebtor := False;
        try
          SearchEdit.Text := dm.Report_AccountAccountNo.AsString;
          RefreshPayment;
        except On E:Exception do
          ShowMessage('ERROR btn_H_VarizHesab -3:: ' + E.Message);
        end;
        ShowModal;
        dm.blnDataIsReady := False;
      end;
      RefreshAccount;

//      ShowMessage('À»  ‘œ');

    except On E:Exception do
      ShowMessage('ERROR btn_H_VarizHesab -2:: ' + E.Message);
    end;

  finally
    //AAAA
    if Assigned(FrAddPayment) then
      FrAddPayment := nil;
  end;

end;

procedure TFrMain.btn_V_EtayeVamClick(Sender: TObject);
begin
  inherited;
  FrAddLoan := TFrAddLoan.Create(Application);
  //_AddLoan:=TRUE ;
  FrAddLoan.ShowModal;
end;

procedure TFrMain.btn_AM_TrifMahiyanehClick(Sender: TObject);
begin
  inherited;
  FrAddMonthlyType:=TFrAddMonthlyType.Create(Application);
  FrAddMonthlyType.ShowModal;
end;

procedure TFrMain.btn_AM_TanzimeMahiyanehClick(Sender: TObject);
begin
  inherited;
  FrMakeMonthly:=TFrMakeMonthly.Create(Application);
  FrMakeMonthly.ShowModal;
end;

procedure TFrMain.xpBitBtn16Click(Sender: TObject);
begin
  inherited;
  FrAddFamily:=TFrAddFamily.Create(Application);
  FrAddFamily.ShowModal;
end;

procedure TFrMain.xpBitBtn3Click(Sender: TObject);
begin
  inherited;
  FrSystemSetting := TFrSystemSetting.Create(Application);
  FrSystemSetting.ShowModal;
end;

Procedure TFrMain.BtnSearch5Click(Sender: TObject);
var
  i: byte;
  s: string;
begin
  AccountWhere:='';
  if YWhereEdit2.Resultwhere<>'' then
  begin
    YWhereEdit2.FieldName:='FirstName';
    s:= YWhereEdit2.Resultwhere;
    YWhereEdit2.FieldName:='LastName';
    AccountWhere:='('+YWhereEdit2.Resultwhere+' or '+s+')'
  end;

  for i := 1 to 4 do
    if i <> 2 then
      if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
        if AccountWhere='' then
          AccountWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
        else
          AccountWhere:=AccountWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;

  if aFamilyID > 0 then
  begin
    if AccountWhere <> '' then
      AccountWhere := AccountWhere + ' and ';
    AccountWhere := AccountWhere + ' Account.FamilyID=' + IntToStr(aFamilyID);
  end;

  if StatusRadioGroup.ItemIndex > 0 then
  begin
    if AccountWhere <> '' then
      AccountWhere := AccountWhere + ' and ';
    AccountWhere := AccountWhere + ' dbo.Balance(Account.AccountID,''9'')';
    case StatusRadioGroup.ItemIndex of
      1: AccountWhere := AccountWhere + '>0';
      2: AccountWhere := AccountWhere + '<0';
      3: AccountWhere := AccountWhere + '=0';
    end
  end;

  if not showClosedAccount.Checked then
  begin
    if AccountWhere <> '' then
      AccountWhere := AccountWhere + ' and ';
    AccountWhere := AccountWhere + ' Account.IsActive=1 ';
  end;
  RefreshAccount;
end;

Procedure TFrMain.SpeedButton14Click(Sender: TObject);
var
  S: String;
begin
  inherited;
  if dm.Y_InputQuery(' «—ÌŒ Ã«—Ì',_Today,S) then
    if not IsValidDate(s) then
      ShowMessage('·ÿ›«  «—ÌŒ —« »Â ÿÊ— œ—”  Ê«—œ ‰„«ÌÌœ')
    else
      _Today:=S;

  _Year:=StrToInt(Copy(_Today,1,4));
end;

procedure TFrMain.btn_MH_EnteghalVajhClick(Sender: TObject);
begin
  inherited;
  FrAddCashPayment := TFrAddCashPayment.Create(Application);
  with FrAddCashPayment do
  begin
    _EXCEPTION_SetCashIsDebtor := False;
{   IF  (COPY(dm.Report_CashAccountAccountNO.AsString,1,1)='9')  THEN
        _EXCEPTION_SetCashIsDebtor:=True;
}
    CashIsDebtor := False;
    Caption := TSpeedButton(sender).Caption;
    AccountID := dm.Report_CashAccountAccountID.AsInteger;
    RefreshPayment;
    ShowModal;
  end;
  Refresh_CashAccount;
end;

Procedure TFrMain.FormCreate(Sender: TObject);
var
  i:Integer;
  RowCount, epd: String;
begin
  inherited;

  searchAccount.Enabled := False;
  AExit.Enabled := False;
  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TSpeedButton') then
      if TSpeedButton(Components[i]).Parent.Parent.ClassNameIs('TTabSheet') then
        TSpeedButton(Components[i]).Enabled:=Get_ObjectAccess(_AccessID,TSpeedButton(Components[i]).Name);
  //Sessionbutton.Enabled:=false;
  //Open_Report_Account(1,AccountWhere);

  FamilyID := 0;
  aFamilyID := 0;
  LoanTypeID := 0;
  MonthlyTypeID := 0;
  //btn35.Enabled:=false;// Å—œ«Œ  Ã„⁄Ì

  FamilyLabel.Caption := Get_SystemSetting('FamilyTitle');
  FamilyLabel1.Caption := FamilyLabel.Caption;//Get_SystemSetting('FamilyTitle');

  RowCount := Get_SystemSetting('DefaultRowCount');
  try
    YWERowCount.Text := IntToStr(StrToInt(RowCount));
  except

  end;
  epd := Get_SystemSetting('CanEditPaymentDate');
  if epd = '1' then
     _CanEditPaymentDate := True;
  Dm.Report_CashAccount.AfterScroll := Report_CashAccountAfterScroll;
  dm.Report_Account.AfterScroll := Report_AccountAfterScroll;
  RG_AccountType.Changing := False;

  AccountWhere := AccountWhere + ' Account.IsActive=1 ';
  RefreshAccount;
  RefreshContact;
  RefreshLoan;
  RefreshForcePayment;
  dm.Report_Account.sort := 'AccountNo';

  StatusBar.Panels[0].Text := _SoftVersion;
  StatusBar.Panels[2].Text := ' «—ÌŒ Ã«—Ì ”Ì” „:' + _Today;
  StatusBar.Panels[3].Text := '¬Œ—Ì‰  «—ÌŒ ÊÌ—«Ì‘ ‰—„ «›“«—:' + _SoftVerLastUpdate;

  PageControl1.ActivePageIndex := 5;
  for i:= 0 to MainPageControl.PageCount -1 do
    MainPageControl.Pages[i].TabVisible := false;
{
   SkinName := Get_UserSetting(_Userid,'SkinName');
   if Trim(SkinName)='' then
      SkinName := 'Skin11';
   SkinData1.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Skins\'+SkinName+'.Skn');
   if not SkinData1.Active then
      SkinData1.Active := True;
}
end;

procedure TFrMain.btn_H_DaftarMoinClick(Sender: TObject);
begin
  inherited;
  FrReportAccountPayments := TFrReportAccountPayments.Create(Application);
  with FrReportAccountPayments do
  begin
    try
      SearchEdit.Text := dm.Report_AccountAccountNo.AsString;
      RefreshReportPayment;
    except
    end;
    ShowModal;
  end;
end;

procedure TFrMain.btn_H_BastanHesabClick(Sender: TObject);
begin
  inherited;
  if Dm.Report_AccountIsActive.AsBoolean then
  begin
    if Get_NotPaidLoanPayment(dm.Report_AccountAccountID.AsInteger) <> 0 then
    begin
      ShowMessage('«Ì‰ Õ”«»°«ﬁ”«ÿ Å—œ«Œ  ‰‘œÂ œ«—œ .·ÿ›«  Å—œ«Œ  ‰„«ÌÌœ');
      ABORT;
    end;

    if Get_NotPaidMounthlyPayment(dm.Report_AccountAccountID.AsInteger) <> 0 then
    begin
      ShowMessage('«Ì‰ Õ”«»°„«ÂÌ«‰Â Å—œ«Œ  ‰‘œÂ œ«—œ ·ÿ›« Å—œ«Œ  ‰„«ÌÌœ.');
      ABORT;
    end;

    if not Account_Is_Balance(Dm.Report_AccountAccountID.AsInteger) then
      ShowMessage('«Ì‰ ⁄÷Ê œ— Ê÷⁄Ì   ”ÊÌÂ ‰Ì”  «» œ« Õ”«» ¬‰ —«  ”ÊÌÂ ò‰Ìœ Ê »⁄œ „Ì  Ê«‰Ìœ Õ”«» ¬‰ —« »»‰œÌœ')
    else
    if messageShowString('¬Ì« «“ »” ‰ «Ì‰ Õ”«» „ÿ„∆‰ Â” Ìœø',True) then
    begin
      DeActivate_Account(dm.Report_AccountAccountID.AsInteger);
      RefreshAccount;
    end;
  end
  else
    if messageShowString('¬Ì« «“ »«“ ò—œ‰  «Ì‰ Õ”«» „ÿ„∆‰ Â” Ìœø',True) then
    begin
      Activate_Account(dm.Report_AccountAccountID.AsInteger);
      RefreshAccount;
    end;
end;

Procedure TFrMain.Report_AccountAfterScroll(DataSet: TDataSet);
begin
  if Dm.Report_AccountIsActive.AsBoolean then
    btn_H_BastanHesab.Caption := '»” ‰ Õ”«»'
    //Btn57.Caption:='»” ‰ Õ”«»'
  else
    btn_H_BastanHesab.Caption := '›⁄«· ”«“Ì Õ”«»';
    //Btn57.Caption:='›⁄«· ”«“Ì Õ”«»';

  btn_H_BastanHesab.Caption := btn_H_BastanHesab.Caption+' F7';
  //Btn57.Caption:=Btn57.Caption+' F7';
end;

Procedure TFrMain.xpBitBtn6Click(Sender: TObject);
begin
  Inherited;
  if Account_Is_Balance(Dm.Report_AccountAccountID.AsInteger) then
    ShowMessage('«Ì‰ ⁄÷Ê œ— Ê÷⁄Ì   ”ÊÌÂ ‰Ì”  «» œ« Õ”«» ¬‰ —«  ”ÊÌÂ ò‰Ìœ Ê »⁄œ „Ì  Ê«‰Ìœ Õ”«» ¬‰ —« Õ–› ò‰Ìœ')
  else
  if messageShowString('¬Ì« «“ Õ–› «Ì‰ Õ”«» „ÿ„∆‰ Â” Ìœø »« Õ–› Õ”«» ò·ÌÂ «ÿ·«⁄«  «⁄„ «“ œ—Ì«›  Ê Å—œ«Œ  ° Õﬁ ⁄÷ÊÌ  ° Ê«„ Â« ° Ê Õ–› „Ì ‘Ê‰œ',true) then
  begin
    Delete_Account(dm.Report_AccountAccountID.AsInteger);
    RefreshAccount;
  end;
end;

procedure TFrMain.SpeedButton35Click(Sender: TObject);
begin
  Inherited;
  FrReportAccount:=TFrReportAccount.Create(Application);
  FrReportAccount.ShowModal;
end;

procedure TFrMain.btn_H_DarjHoshdarClick(Sender: TObject);
begin
  inherited;
  FrAddAccountAlarm:=TFrAddAccountAlarm.Create(Application);
  with FrAddAccountAlarm Do
  begin
    try
      SearchEdit.Text:=dm.Report_AccountAccountNo.AsString;
      Refreshalarm;
    except
    end;
    ShowModal;
  end;
end;

procedure TFrMain.btn_H_AghsatVaMahiyanehClick(Sender: TObject);
begin
  inherited;
  mainPageControl.ActivePageIndex := 3;
  PageControl1.ActivePageIndex := 3;
  BtnNew3.onClick(nil);
  SearchModePanel.ActivePageIndex := 1;
  Accountno.Text := Dm.Report_AccountAccountNo.AsString;
  btnSearch3.onClick(nil);
end;

procedure TFrMain.xpBitBtn51Click(Sender: TObject);
begin
  inherited;
  FrAddAccess := TFrAddAccess.Create(Application);
  FrAddAccess.ShowModal;
end;

procedure TFrMain.SpeedButton37Click(Sender: TObject);
begin
  inherited;
  FrAddUser := TFrAddUser.Create(Application);
  FrAddUser.ShowModal
end;

procedure TFrMain.xpBitBtn52Click(Sender: TObject);
begin
  inherited;
  FrDatabaseMaintenance := TFrDatabaseMaintenance.Create(Application);
  FrDatabaseMaintenance.Mode := shrink;
  FrDatabaseMaintenance.ShowModal;
end;

procedure TFrMain.SpeedButton38Click(Sender: TObject);
begin
  Inherited;
  FrAddTemplate:=TFrAddTemplate.Create(Application);
  FrAddTemplate.ShowModal;
end;

procedure TFrMain.SpeedButton36Click(Sender: TObject);
begin
  Inherited;
  FrEditPrAccountNo:=TFrEditPrAccountNo.Create(Application);
  FrEditPrAccountNo.ShowModal
end;

procedure TFrMain.btn_DT_JadidClick(Sender: TObject);
begin
  Inherited;
  AddContact(8);
end;

procedure TFrMain.xpBitBtn5Click(Sender: TObject);
begin
  Inherited;
  FrDatabaseMaintenance:=TFrDatabaseMaintenance.Create(Application);
  FrDatabaseMaintenance.Mode:=Reindex;
  FrDatabaseMaintenance.ShowModal;
end;

procedure TFrMain.xpBitBtn4Click(Sender: TObject);
begin
  Inherited;
  FrDatabaseMaintenance:=TFrDatabaseMaintenance.Create(Application);
  FrDatabaseMaintenance.Mode:=backup;
  FrDatabaseMaintenance.ShowModal;
end;

procedure TFrMain.btn_MH_HazfClick(Sender: TObject);
begin
  Inherited;
  if (Dm.Report_CashAccountAccountID.AsInteger<5) or
     (Dm.Report_CashAccountAccountNo.AsString='2001001') or
     (Dm.Report_CashAccountAccountNo.AsString='2001002') or
     (Dm.Report_CashAccountAccountNo.AsString='2001003') then
  begin
     ShowMessage('«Ì‰ ‘„«—Â Õ”«» ”Ì” „Ì «”  Ê ‰„Ì  Ê«‰ «‰ —« Õ–› ò—œ');
     Exit;
  end;

  if not Account_Is_Balance(Dm.Report_CashAccountAccountID.AsInteger ) then
    ShowMessage('«Ì‰ Õ”«» œ— Ê÷⁄Ì   ”ÊÌÂ ‰Ì”  «» œ« Õ”«» ¬‰ —«  ”ÊÌÂ ò‰Ìœ Ê »⁄œ „Ì  Ê«‰Ìœ Õ”«» ¬‰ —« Õ–› ò‰Ìœ')
  else
  if messageShowString('¬Ì« «“ Õ–› «Ì‰ Õ”«» „ÿ„∆‰ Â” Ìœø »« Õ–› Õ”«» ò·ÌÂ «ÿ·«⁄«  «⁄„ «“ œ—Ì«›  Ê Å—œ«Œ  ° Õﬁ ⁄÷ÊÌ  ° Ê«„ Â« ° Ê Õ–› „Ì ‘Ê‰œ',true) then
  begin
    Delete_Account(dm.Report_CashAccountAccountID.AsInteger);
    Refresh_CashAccount;
  end;
end;

procedure TFrMain.AddObjectsExecute(Sender: TObject);
var
  i: word;
begin
  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TSpeedButton') then
      if TSpeedButton(Components[i]).Parent.Parent.ClassNameIs('TTabSheet')  then
        Insert_Objects(Components[i].Name,TSpeedButton(Components[i]).Caption,TTabSheet(TSpeedButton(Components[i]).Parent.Parent).Caption);
end;

procedure TFrMain.btn_V_OlaviyatBandiVamClick(Sender: TObject);
begin
  inherited;
  FrLoanPriority:=TFrLoanPriority.Create(Application);
  FrLoanPriority.ShowModal;
end;

procedure TFrMain.btn_V_DarkhasteVamClick(Sender: TObject);
begin
  inherited;
  FrAddLoanRequest := TFrAddLoanRequest.Create(Application);
  FrAddLoanRequest.ShowModal;
end;

procedure TFrMain.SearchModePanelChange(Sender: TObject);
begin
  inherited;
  AccountPanel.Visible := SearchModePanel.ActivePageIndex = 1;

  Accountno.Clear;
  FMatureDate.Clear;
  FamilyTitle.Clear;
  LoanTitle.Clear;
  MonthlyTitle.Clear;

  if AccountPanel.Visible then
    NoLabel.Caption:='‘„«—Â Õ”«»'
  else
    NoLabel.Caption:='‘„«—Â Ê«„';
end;

procedure TFrMain.btnSearch3Click(Sender: TObject);
var
  FoceTypeID:byte;
  PayStatus:byte;
  _LoanTop:Integer;
begin
  inherited;
  if not YCheckGroupBox1.YCheckBox.Checked then
  begin
    DelayDays.Value:=0;
    CBOnlyLatest.Checked:=false;
  end;

  if (CbPart.Checked and not CbMonthly.Checked) then
    FoceTypeID:=1
  else
    if (not CbPart.Checked and CbMonthly.Checked) then
      FoceTypeID:=2
    else
      FoceTypeID:=0;

  if (CBPaid.Checked and not CbNotPaid.Checked) then
    PayStatus:=1
  else
    if (not CBPaid.Checked and CbNotPaid.Checked) then
      PayStatus:=0
    else
      PayStatus:=2;

  btn_AM_GazareshTajamoee.Enabled:=Get_ObjectAccess(_AccessID,'SBSumPayment') ;

  if (edtLoanTop.Text='0') or (edtLoanTop.Text='') then
    _LoanTop:=1000
  else
    _LoanTop:=strtoint(edtLoanTop.Text);

  Open_Report_ForcePayment(DelayDays.Value,FamilyID,FoceTypeID,FMatureDate.SinceValue, FMatureDate.ToValue,Accountno.Text,CbOnlyLatest.Checked,
  PayStatus,SearchModePanel.ActivePageIndex=0,Sum_ForcePayment_Amount,Sum_ForcePayment_Amerce,Sum_ForcePayment_interest,LoanTypeID,MonthlyTypeID,_LoanTop);
  ForcePaymentChBClick(self);
end;

procedure TFrMain.SpeedButton49Click(Sender: TObject);
begin
   inherited;
  //Dm.SearchTable(dm.Family,'Familyid','FamilyTitle');
  Dm.SearchTable(dm.Family,'Familyid','FamilyTitle');
  if Dm.SearchResult>0 then
  begin
    FamilyID:=dm.SearchResult;
    FamilyTitle.Text:=dm.FamilyFamilyTitle.AsString;
  end
  else
  begin
    FamilyID:=-1;
    FamilyTitle.Text:='';
  end
end;

procedure TFrMain.BtnNew3Click(Sender: TObject);
begin
   inherited;
   FamilyID:=0;
   LoanTypeID:=0;
   MonthlyTypeID:=0;
   YCheckGroupBox1.YCheckBox.Checked:=FALSE;
   DelayDays.Value:=0;
   CBOnlyLatest.Checked:=false;
   CbPart.Checked:=true;
   CbMonthly.Checked:=true;
   CBPaid.Checked:=False;
   CbNotPaid.Checked:=True;
   Accountno.Text:='';
   FMatureDate.Text:='';
   FamilyTitle.Clear;
   LoanTitle.Clear;
   MonthlyTitle.Clear;
   //---
end;

procedure TFrMain.SpeedButton51Click(Sender: TObject);
begin
  inherited;
  if SearchModePanel.ActivePageIndex=1 then
  begin
   FindContact(False,1,True);
   if _FoundAccountID>0 then
    Accountno.Text:=_FoundAcountNo;
  end
  else
  begin
    FrSearchLoan:=TFrSearchLoan.Create(Application);
    FrSearchLoan.ShowModal;
    if _FoundLoanID>0 then
     Accountno.Text:=_FoundLoanNo;
  end;
end;

procedure TFrMain.RefreshContact;
var
  i: byte;
  s:string;
begin
  ContactWhere:='';

  if YWhereEdit10.Resultwhere<>'' then
  begin
    YWhereEdit10.FieldName:='Firstname';
    s:= YWhereEdit10.Resultwhere;
    YWhereEdit10.FieldName:='Lastname';
    ContactWhere:='('+YWhereEdit10.Resultwhere+' or '+s+')'
  end;

  for i:=11 to 16 do
    if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
      if ContactWhere='' then
        ContactWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
      else
        ContactWhere:=ContactWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;

  Open_Report_Contact(ContactWhere);
  ContactChBClick(self);
  //ContactGrid.UpdateFooter;
end;

procedure TFrMain.btn_DT_VirayeshClick(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  {Ranjbar 88.04.22}
  i:=0;
  if not(dm.Report_Contact.Active)or(dm.Report_Contact.RecordCount = 0) then
  begin
    MessageShowString('ÂÌç —ﬂÊ—œÌ Ì«›  ‰‘œ', False);
    Exit;
  end;

  if dm.Report_ContactContactTypeID.AsInteger=8 then
  begin
    try
      i:= Dm.Report_ContactContactID.AsInteger
    except
    end;

    EditContact(8,Dm.Report_ContactContactID.AsInteger,False);
    ContactGrid.UpdateFooter;
    try
      Dm.Report_Contact.Locate('ContactID',i,[])
    except
    end;
  end
  else
    ShowMessage(' ›ﬁÿ „Ì  Ê«‰Ìœ „Ê«—œ À»  ‘œÂ œ— œ› —çÂ  ·›‰ —« ÊÌ—«Ì‘ ò‰Ìœ');
end;

procedure TFrMain.btn_DT_JoaziyatClick(Sender: TObject);
var
  I :Integer;
begin
  inherited;
  i:=0;
  try
    i:= Dm.Report_ContactContactID.AsInteger
  except
  end;

  EditContact(dm.Report_ContactContactTypeID.AsInteger,Dm.Report_ContactContactID.AsInteger,True);
  ContactGrid.UpdateFooter;

  try
    Dm.Report_Contact.Locate('ContactID',i,[])
  except
  end;
end;

procedure TFrMain.btn_DT_TasavirMarbootehClick(Sender: TObject);
begin
  inherited;
  FrAddAttachment:=TFrAddAttachment.Create(Application);
  FrAddAttachment.DocumnetID:=dm.Report_ContactContactID.AsInteger;
  FrAddAttachment.documentTypeID:=1;
  FrAddAttachment.ShowModal;
end;

procedure TFrMain.btn_DT_HazfClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 88.04.22}
  if not(dm.Report_Contact.Active)or(dm.Report_Contact.RecordCount = 0) then
  begin
    MessageShowString('ÂÌç —ﬂÊ—œÌ Ì«›  ‰‘œ', False);
    Exit;
  end;
  //---

  if dm.Report_ContactContactTypeID.AsInteger=8 then
  begin
    if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mRYes then
    begin
      delete_Contact(Dm.Report_ContactContactID.AsInteger);
      RefreshContact;
    end;
  end
  else
    ShowMessage(' ›ﬁÿ „Ì  Ê«‰Ìœ „Ê«—œ À»  ‘œÂ œ— œ› —çÂ  ·›‰ —« ÊÌ—«Ì‘ ò‰Ìœ');
end;

procedure TFrMain.btn_DT_HesabMortabetClick(Sender: TObject);
begin
  Inherited;
  if dm.Report_ContactContactTypeID.AsInteger<>1 then
  begin
    ShowMessage('«Ì‰ ‘Œ’ œ— ’‰œÊﬁ Õ”«»Ì ‰œ«—œ');
    Exit;
  end;
  MainPageControl.ActivePageIndex:=5;
  PageControl1.ActivePageIndex :=5;
  Open_Report_Account(0,'Account.Contactid='+Dm.Report_ContactContactID.AsString,YWERowCount.Text);
end;

procedure TFrMain.SpeedButton13Click(Sender: TObject);
begin
  Inherited;
   FrErrorMsg:=TFrErrorMsg.Create(Application);
   FrErrorMsg.ShowModal;
end;

procedure TFrMain.RefreshAccount;
var
  I:integer;
begin
  inherited;
  try

  i:=0;
  try
    if (dm.Report_Account.Active) then
      i:= dm.Report_AccountAccountID.AsInteger;
  except On E:Exception do
    ShowMessage('ERROR RefreshAccount A :: ' + E.Message);
  end;
  Open_Report_Account(1,AccountWhere,YWERowCount.Text);
  AccountChBClick(Application);

  try
    if (dm.Report_Account.Active) then
      dm.Report_Account.Locate('AccountID',i,[]);
  except On E:Exception do
    ShowMessage('ERROR RefreshAccount B :: ' + E.Message);
  end;

  except On E:Exception do
    ShowMessage('ERROR RefreshAccount Main :: ' + E.Message);
  end;
end;

procedure TFrMain.Refresh_CashAccount;
var
  SelectedId: integer;
begin
  inherited;

  SelectedId := integer(RG_AccountType.Selected.Data);
  if not CHAccountType.Checked then
    CashAccountWhere:='(Account.AccountTypeID <> 1) '    //»€Ì— «“ «⁄÷« ”—›’·Â« ‰„«Ì‘ œ«œÂ ‘Êœ
  else
    CashAccountWhere := ' 1=1 ';

{   if (SelectedId<>0) THEN
      CashAccountWhere:=CashAccountWhere+' And (dbo.Is_ParentId(Account.AccountTypeID,'+IntToStr(SelectedId)+')=1)';}
  if (SelectedId <> 0) and (SelectedId <> 7) then
    CashAccountWhere := CashAccountWhere + ' AND (DBO.Is_ParentId(Account.AccountTypeID,' + IntToStr(SelectedId) + ')=1)';

  if YWhereEdit5.ResultWhere <> '' then
    CashAccountWhere := CashAccountWhere + ' AND ' + YWhereEdit5.Resultwhere;
  Open_Report_CashAccount(CashAccountWhere,SelectedId);
end;

procedure TFrMain.RefreshLoan;
  var I:Integer;
begin
  Inherited;
  i:=0;
  Try
    if (dm.Report_Loan.Active) then
      i := dm.Report_LoanLoanID.AsInteger
  except

  end;
   //Hamed_Ansari_Hasan_Ahmadvand_990520_S
  if (LoanWhere = '') and (CBHasPart.Checked)  then
    LoanWhere := ' Exists (Select * from ForcePayment where ParentID=Loan.LoanID and paid=0 and ForceTypeID=1 ) ';
  //Hamed_Ansari_Hasan_Ahmadvand_990520_E
  Open_Report_Loan(loanWhere,YWERowCountD.Text);
  LoanChBClick(self);
  //LoanGrid.UpdateFooter;
  try
    if (dm.Report_Loan.Active) then
      dm.Report_Loan.Locate('loanid',i,[])
  except
  end;
end;

procedure TFrMain.BtnSearch2Click(Sender: TObject);
begin
  inherited;
  RefreshContact;
end;

Procedure TFrMain.btn_V_AghsatInVamClick(Sender: TObject);
begin
  Inherited;
  mainPageControl.ActivePageIndex:=3;
  PageControl1.ActivePageIndex :=3;
  btnNew3.onClick(nil);
  SearchModePanel.ActivePageIndex:=0;
  NoLabel.Caption:='‘„«—Â Ê«„';
  Accountno.Text:=Dm.Report_LoanLoanNO.AsString;
  btnSearch3.onClick(nil);
end;

procedure TFrMain.BtnSearch4Click(Sender: TObject);
var
  i: byte;
begin
  LoanWhere:='';
  for i:=17 to 22 do
    if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere<>'' then
      if LoanWhere='' then
        LoanWhere:=TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere
      else
        LoanWhere:=LoanWhere +' and '+TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Resultwhere;

  if CBHasPart.Checked then
    if LoanWhere='' then
      LoanWhere:=' Exists (Select * from ForcePayment where ParentID=Loan.LoanID and paid=0 and ForceTypeID=1 )'
    else
      LoanWhere:=LoanWhere +' and exists (Select * from ForcePayment where ParentID=Loan.LoanID and paid=0 and ForceTypeID=1 )';

  if Trim(FamilyTitleVam.Text)<>'' then //‰«„ Œ«‰Ê«œÂ Ì« ê—ÊÂ
  begin
    if LoanWhere='' then
      LoanWhere := ' Account.FamilyID = ' + IntToStr(FamilyIDVam)
    else
      LoanWhere := LoanWhere +' And Account.FamilyID = ' + IntToStr(FamilyIDVam);
  end;

  //Hamed_Ansari_990514_S
  if (Trim(EdtLoanFirstNo.Text) <> '') and (Trim(EdtLoanLastNo.Text) <> '') then
  begin
    if LoanWhere='' then
      LoanWhere := ' LoanNo Between' + QuotedStr(EdtLoanFirstNo.Text) + ' And ' + QuotedStr(EdtLoanLastNo.Text)
    else
      LoanWhere := LoanWhere +' And LoanNo Between' + QuotedStr(EdtLoanFirstNo.Text) + ' And ' + QuotedStr(EdtLoanLastNo.Text);
  end;
   //Hamed_Ansari_990514_E
   {Ranjbar 88.05.13 Code=19}//
{   IF DBLkCBoxFamily.KeyValue > 0 Then //‰«„ Œ«‰Ê«œÂ Ì« ê—ÊÂ
   Begin
      IF LoanWhere='' Then
         LoanWhere := ' Account.FamilyID = ' + IntToStr(DBLkCBoxFamily.KeyValue)
      Else
         LoanWhere := LoanWhere +' And Account.FamilyID = ' + IntToStr(DBLkCBoxFamily.KeyValue);
   End;
   //---
}
  RefreshLoan;
end;

procedure TFrMain.BtnNew5Click(Sender: TObject);
var
  i:byte;
begin
  Inherited;

  for i:=1 to 4 do
    TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:='';

  AFamilyTitle.Text:='';
  aFamilyID:=0;

  StatusRadioGroup.ItemIndex:=0;
end;

procedure TFrMain.BtnNew4Click(Sender: TObject);
var
  i:byte;
begin
  inherited;
  for i:=17 to 22 do
    TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:='';
  FamilyIDVam:=0;
  FamilyTitleVam.Text:='';
  CBHasPart.Checked:=true;
  //DBLkCBoxFamily.KeyValue := -1;
end;

procedure TFrMain.btn_AM_PardakhteAghsatClick(Sender: TObject);
var
  loanID, accountID : integer;
begin
  inherited;
  if dm.Report_ForcePayment.IsEmpty then
  begin
    ShowMessage('«ÿ·«⁄« Ì „ÊÃÊœ ‰Ì” ');
    EXIT;
  end;

  if dm.Report_ForcePaymentForceTypeID.AsInteger<>1 then
  begin
    ShowMessage('—òÊ—œ «‰ Œ«» ‘œÂ «“ ‰Ê⁄ Ê«„ ‰Ì” ');
    EXIT;
  end;

  if Dm.Report_ForcePaymentPaid.AsBoolean then
  begin
    ShowMessage('«Ì‰ ﬁ”ÿ Å—œ«Œ  ‘œÂ «” .«„ò«‰ Å—œ«Œ  „Ãœœ ÊÃÊœ ‰œ«—œ');
    EXIT;
  end;

  FrPayPart := TFrPayPart.Create(Application);
  try
    FrPayPart.SearchEdit.Text:=dm.Report_ForcePaymentLoanNO.AsString;
    FrPayPart.RefreshPart;
  except
  end;

  FrPayPart.ShowModal;
  if Get_NotPaidLoanPayment(Dm.Report_ForcePaymentAccountID.AsInteger)=0 then
  begin
    if MessageDlg('«ﬁ”«ÿ «Ì‰ Õ”«» »Â « „«„ —”ÌœÂ «”  ° ¬Ì« œ— ‰Ê»  Ê«„ ﬁ—«— êÌ—œø',
                  mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      //Added By Hadi Mohamed 920628 (Bug #208)
      Get_LoanID_ByLoanNo(dm.Report_ForcePaymentLoanNO.AsString,loanID,accountID);
      Ins_AccountToLoanPriority(accountID , loanID);
      //All Commented By Hadi Mohamed 920628
      //FrAddLoan := TFrAddLoan.Create(Application);
      //FrAddLoan.SearchEdit.Text:=Dm.Report_ForcePaymentAccountNo.AsString;
      //FrAddLoan.AccountID      :=Dm.Report_ForcePaymentAccountID.AsInteger;
      //Open_Loan_ByAccountID(Dm.Report_ForcePaymentAccountID.AsInteger);
      //FrAddLoan.Panel2.Enabled :=False;
      //FrAddLoan.ShowModal;
      //FrAddLoan.Panel2.Enabled :=True;
    end;
  end;
  {Ranjbar 88.06.24}//Refresh
  if btnSearch3.Visible and btnSearch3.Enabled then
    btnSearch3.Click;
end;

procedure TFrMain.btn_AM_PardakhteMahiyanehClick(Sender: TObject);
begin
  inherited;

  if dm.Report_ForcePayment.IsEmpty then
  begin
    ShowMessage('«ÿ·«⁄« Ì „ÊÃÊœ ‰Ì” ');
    EXIT;
  end;

  if dm.Report_ForcePaymentForceTypeID.AsInteger<>2 then
  begin
    ShowMessage('—òÊ—œ «‰ Œ«» ‘œÂ «“ ‰Ê⁄ „«ÂÌ«‰Â ‰Ì” ');
    EXIT;
  end;

  if Dm.Report_ForcePaymentPaid.AsBoolean then
  begin
    ShowMessage('«Ì‰ „«ÂÌ«‰Â Å—œ«Œ  ‘œÂ «” .«„ò«‰ Å—œ«Œ  „Ãœœ ÊÃÊœ ‰œ«—œ');
    EXIT;
  end;

  FrPayMonthly:=TFrPayMonthly.Create(Application);
  try
    FrPayMonthly.SearchEdit.Text := dm.Report_ForcePaymentAccountNo.AsString;
    FrPayMonthly.RefreshMonthly;
  except
  end;

  Dm.FinancialNote_Detail.Close;
  Dm.FinancialNote_Master.Close;
  FrPayMonthly.ShowModal;
  {Ranjbar 88.06.24}//Refresh
  if btnSearch3.Visible and btnSearch3.Enabled then
    btnSearch3.Click;
  //---
end;

procedure TFrMain.btn_V_DaftarchehAghsatClick(Sender: TObject);
begin
  inherited;
  PrintParts             := TPrintParts.Create(Application);
  PrintParts.LoanFirstNo := EdtLoanFirstNo.text;
  PrintParts.LoanLastNo  := EdtLoanLastNo.Text ;
  PrintParts.LoanID      := dm.Report_LoanLoanID.AsInteger;
  PrintParts.LoanDate    := dm.Report_LoanLoanDate.AsString;
  PrintParts.ShowModal;
end;

procedure TFrMain.btn_H_DaftarchehOzviyatClick(Sender: TObject);
begin
  inherited;
  FrPrintMonthly := TFrPrintMonthly.Create(Application);
  FrPrintMonthly.AccountID:=dm.Report_AccountAccountID.AsInteger;
  FrPrintMonthly.ShowModal;
end;

procedure TFrMain.SpeedButton43Click(Sender: TObject);
begin
  inherited;
  FrAmerce := TFrAmerce.Create(Application);
  FrAmerce.ShowModal;
end;

procedure TFrMain.xpBitBtn63Click(Sender: TObject);
begin
  inherited;
  FrLoanPoint:=TFrLoanPoint.Create(Application);
  FrLoanPoint.ShowModal;
end;

Procedure TFrMain.Make_SelectedForcePayment;
var
  i: integer;
begin
  _SelectedForcePaymentID := '';
  if ForcePaymentGrid.SelectedRows.Count>0 then
    with dm.Report_ForcePayment do
      for i:=0 to ForcePaymentGrid.SelectedRows.Count-1 do
      begin
        GotoBookmark(pointer(ForcePaymentGrid.SelectedRows.Items[i]));
        _selectedForcePaymentID := _selectedForcePaymentID+','+Dm.Report_ForcePaymentForcePaymentID.AsString;
      end
  else
    _SelectedForcePaymentID := ',' + Dm.Report_ForcePaymentForcePaymentID.AsString;
end;

procedure TFrMain.btn_AM_PardakhteJameeClick(Sender: TObject);
{ var
   date:string;
   comment:widestring;
   FinancialNoteID_:integer;
   DocumnetNo:string;
   SelectionMode: byte;
   LoanID,AccountID : Integer;}
begin
   inherited;
 {  FrSumPayment := TFrSumPayment.Create(Application);
 with FrSumPayment do
   begin
      Amount := Sum_ForcePayment_Amount;
      Eamerce.Text := CommaSeperate( IntToStr( Sum_ForcePayment_Amerce));
      if ShowModal<>mrok then
         exit;

      SelectionMode := GrpSelection.ItemIndex;
 Make_SelectedForcePayment;

      DebtorAccountID := MajorAccount.KeyValue;

      Date := Txt_Del254(MEEDate.Text);
      //---
      comment := EComment.Text;
      FinancialNoteID_ := FinancialNoteid;
   end;

   DocumnetNo := Get_NewDocumnetNo;
   with Dm,Report_ForcePayment do
   begin
      First;
      while not eof do
      begin
         Case SelectionMode of
            0: Group_ForcePayment(Report_ForcePaymentForcePaymentID.AsInteger,DebtorAccountID,date,comment,FinancialNoteID_, _Userid,DocumnetNo);
            1: if pos(','+Report_ForcePaymentForcePaymentID.AsString,_selectedForcePaymentID)<>0 then
               Group_ForcePayment(Report_ForcePaymentForcePaymentID.AsInteger,DebtorAccountID,date,comment,FinancialNoteID_, _Userid,DocumnetNo);
            2: if pos(','+Report_ForcePaymentForcePaymentID.AsString,_selectedForcePaymentID)=0 then
               Group_ForcePayment(Report_ForcePaymentForcePaymentID.AsInteger,DebtorAccountID,date,comment,FinancialNoteID_, _Userid,DocumnetNo);
         end;
         Next;
      end;
   end;

   if Dm.Report_ForcePaymentForceTypeID.AsInteger = 1 then
   begin
      Get_LoanID_ByLoanNo(Trim(Dm.Report_ForcePaymentLoanNO.AsString),LoanID,AccountID);//LoanID , AccountID »œ”  ¬Ê—œ‰
      Ins_AccountToLoanPriority(Dm.Report_ForcePaymentAccountID.AsInteger , LoanID);
   end;
   //---
   ShowMessage('Å—œ«Œ  Â« »« ‘„«—Â ”‰œ  '+ DocumnetNo +' À»  ‘œ‰œ');
   }
   FrSumPayment := TFrSumPayment.Create(Application);
// FrSumPayment.Amount := Sum_ForcePayment_Amount;
   FrSumPayment.Amount := SetTotal_AmountPrice;

 //  FrSumPayment.Eamerce.Text := CommaSeperate( IntToStr( Sum_ForcePayment_Amerce));
   FrSumPayment.Eamerce.Text :=  SetTotal_Amerce;
// FrSumPayment.interest.Text := CommaSeperate( IntToStr( Sum_ForcePayment_Interest));
   FrSumPayment.interest.Text := SetTotal_interest;
   if ForcePaymentGrid.SelectedRows.Count>0 then
      FrSumPayment.GrpSelection.ItemIndex:=1;
   _FrSumPaymentIsShowing:=True;
   FrSumPayment.ShowModal;
   _FrSumPaymentIsShowing:=False;
//---Ranjbar 88.06.24}//Refresh
   if btnSearch3.Visible and btnSearch3.Enabled then
      btnSearch3.Click;
   //---
end;

procedure TFrMain.btn_AM_GazareshTajamoeeClick(Sender: TObject);
 var
  FoceTypeID:byte;
  PayStatus:byte;
begin
  inherited;
  if not YCheckGroupBox1.YCheckBox.Checked then
  begin
    DelayDays.Value:=0;
    CBOnlyLatest.Checked:=false;
  end;

  if (CbPart.Checked and not CbMonthly.Checked) then
    FoceTypeID:=1
  else
  if (not CbPart.Checked and CbMonthly.Checked) then
    FoceTypeID:=2
  else
    FoceTypeID:=0;

  if (CBPaid.Checked and not CbNotPaid.Checked) then
    PayStatus:=1
  else
  if (not CBPaid.Checked and CbNotPaid.Checked) then
    PayStatus:=0
  else
    PayStatus:=2;

  Open_Report_GroupForcePayment(DelayDays.Value,FamilyID,FoceTypeID,FMatureDate.SinceValue, FMatureDate.ToValue,Accountno.Text,CbOnlyLatest.Checked,
  PayStatus,SearchModePanel.ActivePageIndex=0,Sum_ForcePayment_Amount,Sum_ForcePayment_Amerce,Sum_ForcePayment_Interest,LoanTypeID,MonthlyTypeID);

  FrReport_GroupForcePayment:=TFrReport_GroupForcePayment.Create(Application);

  FrReport_GroupForcePayment.ShowModal;
end;

procedure TFrMain.btn_V_VirayeshAghsatClick(Sender: TObject);
begin
  inherited;
  Open_Loan(dm.Report_LoanLoanID.AsInteger);
  FrEditPart := TFrEditPart.Create(Application);
  FrEditPart.ShowModal;
end;

procedure TFrMain.btn_H_VirayeshMahiyanehClick(Sender: TObject);
begin
  inherited;
  Open_Account_Monthlys(dm.Report_AccountAccountID.AsInteger);
  FrEditMonthly:=TFrEditMonthly.Create(Application);
  FrEditMonthly.ShowModal;
end;

procedure TFrMain.btn_V_hazfeVamClick(Sender: TObject);
begin
  inherited;
  if Loan_has_NotPaidParts(Dm.Report_LoanLoanID.AsInteger) then
    if not messageShowString(' «Ì‰ Ê«„ œ«—«Ì «ﬁ”«ÿ Å—œ«Œ  ‰‘œÂ «”  ¬Ì« «“Õ–› «‰ „ÿ„∆‰ Â” Ìœ',true) then
      exit;

  if messageShowString(' »« Õ–› Ê«„ «ÿ·«⁄«  Ê«„° «ﬁ”«ÿ° „œ«—ò «“ »Ì‰ „Ì —Êœ ¬Ì« «“ Õ–› Ê«„ «ÿ„Ì‰«‰ œ«—Ìœ',true) then
  begin
    Delete_loan(Dm.Report_LoanLoanID.AsInteger);
    RefreshLoan;
  end;
end;

procedure TFrMain.btn_V_VirayeshVamClick(Sender: TObject);
begin
  inherited;
  FrEditLoan := TFrEditLoan.Create(Application);
  FrEditLoan.LoanID:=dm.Report_LoanLoanID.AsInteger;
  FrEditLoan.ShowModal;
end;

procedure TFrMain.LoanGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if dm.Report_LoanDelayedParts.AsInteger>0 then
    f.Color:=clRed
  else
    f.color:=clBlack;
end;

procedure TFrMain.ForcePaymentGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if Dm.Report_ForcePaymentPaid.AsBoolean then
    F.style := f.Style + [fsbold];
//  else
//   f.Style:=f.Style-[fsbold]  ;


//if dm.Report_ForcePaymentdelay.AsInteger>0 then
  if (dm.Report_ForcePaymentdelay.AsInteger - PartToleranse > 0) then
    f.Color:=clRed
  else
    f.color:=clBlack;
end;

procedure TFrMain.SpeedButton20Click(Sender: TObject);
begin
  inherited;
{
  FraddFinancialNote:=TFrAddFinancialNote.Create(Application);
  FrAddFinancialNote.ShowModal;  }
  FrAddFinancialNote_New := TFrAddFinancialNote_New.Create(Application);
  FrAddFinancialNote_New.ShowModal;
  _FinancialNoteid:=-1;
end;

procedure TFrMain.SpeedButton25Click(Sender: TObject);
begin
  inherited;
  FrChangePass:=TFrChangePass.Create(Application);
  FrChangePass.ShowModal;
end;

procedure TFrMain.btn_V_BarresiEmtiyazVamClick(Sender: TObject);
begin
  inherited;
  FrReport_loanPoint:=TFrReport_loanPoint.Create(Application);
  FrReport_loanPoint.ShowModal;
end;

procedure TFrMain.SpeedButton47Click(Sender: TObject);
begin
  inherited;
  AddContact(5);
end;

procedure TFrMain.btn_MH_IjadeHesabClick(Sender: TObject);
begin
  inherited;
  FrAddAccount:=TFrAddAccount.Create(Application);
  Open_Account(0);
  {Ranjbar}
  //dm.Select_Account.Insert;
  FrAddAccount.BitBtn1.Click;
  //---
  FrAddAccount.ShowModal;
end;

procedure TFrMain.SpeedButton48Click(Sender: TObject);
begin
  inherited;
  AddContact(6);
end;

procedure TFrMain.xpBitBtn70Click(Sender: TObject);
begin
  inherited;
  AddContact(2);
end;

procedure TFrMain.BtnSearch1Click(Sender: TObject);
begin
  Refresh_CashAccount;
end;

procedure TFrMain.btn_MH_SabtClick(Sender: TObject);
begin
  inherited;
  FrAddCashPayment:=TFrAddCashPayment.Create(Application);
  with FrAddCashPayment do
  begin
    _EXCEPTION_SetCashIsDebtor:=FALSE;
{    IF        (COPY(dm.Report_CashAccountAccountNO.AsString,1,1)='9')  THEN
        _EXCEPTION_SetCashIsDebtor:=True;}
    CashIsDebtor:=True;

    Caption       :=TSpeedButton(sender).Caption;
    AccountID     :=dm.Report_CashAccountAccountID.AsInteger;
    RefreshPayment;
    ShowModal;
  end;
  Refresh_CashAccount;
end;

procedure TFrMain.btn_MH_DaftarMoinClick(Sender: TObject);
begin
  inherited;
  FrReportAccountPayments := TFrReportAccountPayments.Create(Application);
  with FrReportAccountPayments do
  begin
    try
      SearchEdit.Text:=dm.Report_CashAccountAccountNo.AsString;
      RefreshReportPayment;
    except
    end;
    ShowModal;
  end;
end;

procedure TFrMain.btn_MH_TarazAzmayeshiClick(Sender: TObject);
begin
  inherited;
  FrSummeryPayment:=TFrSummeryPayment.Create(Application);
  FrSummeryPayment.ShowModal;
end;

procedure TFrMain.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  FrBank := TFrBank.Create(Application);
  FrBank.ShowModal;
end;

procedure TFrMain.MainPageControlChange(Sender: TObject);
var
  I:integer;
begin
  inherited;

  GridButtons.Visible:=mainPageControl.ActivePageIndex<>0;
  if mainPageControl.ActivePageIndex=4 then//Ê«„
  begin
    {Ranjbar 88.05.13 Code=18}
    if not dm.Family.Active then
      dm.Family.Open;
//      LblFamily.Caption := '‰«„ '+  Get_SystemSetting('FamilyTitle');
    LblFamily.Caption := Get_SystemSetting('FamilyTitle');
    BtnSearch4.Click;
  end;

   {Ranjbar 88.04.22}
  with Dm,ContactType do
  begin
    if MainPageControl.ActivePage = TShPhone then
    begin
      Locate('ContactTypeID',8,[LoCaseInsensitive]);
      if TRIM(ContactTypeUserField1Title.AsString)<>'' then
      begin
        UserField1.Caption := ContactTypeUserField1Title.AsString;
        YWhereEdit15.Visible:=True;
      end
      else
      begin
        UserField1.Visible  :=FALSE;
        YWhereEdit15.Visible:=FALSE;
      end;

      if TRIM(ContactTypeUserField2Title.AsString)<>'' then
      begin
        UserField2.Caption := ContactTypeUserField2Title.AsString;
        YWhereEdit16.Visible:=True;
      end
      else
      begin
        UserField2.Visible :=False;
        YWhereEdit16.Visible:=FALSE;
      end;

      for I:= 0 to ContactGrid.Columns.Count-1 do
      begin
        if ContactGrid.Columns.Items[I].Field = Report_ContactUserField1 then
          ContactGrid.Columns.Items[I].Title.Caption := UserField1.Caption;
        if ContactGrid.Columns.Items[I].Field = Report_ContactUserField2 then
          ContactGrid.Columns.Items[I].Title.Caption := UserField2.Caption;
      end;
    end;
  end;

  if Get_SystemSetting('ChBoRefresh')='-1' then
  begin
    if UpperCase(MainPageControl.ActivePage.Name) = UpperCase('xpTabSheet7') then
      BtnSearch5.Click;
    if UpperCase(MainPageControl.ActivePage.Name) = UpperCase('xpTabSheet6') then
      BtnSearch4.Click;
    //if UpperCase(MainPageControl.ActivePage.Name) = UpperCase('xpTabSheet5') then
      //BtnSearch3.Click;
    if UpperCase(MainPageControl.ActivePage.Name) = UpperCase('TShPhone') then
      BtnSearch2.Click;
    if UpperCase(MainPageControl.ActivePage.Name) = UpperCase('xpTabSheet4') then
      BtnSearch1.Click;
  end;

  with MainPageControl do
  begin
    if (_AccMngtAccess = false) and (ActivePageIndex = 1) then
    begin
      ActivePage.Visible :=false;
      ShowMessage('‘„« œ” —”Ì „‘«ÂœÂ ’›ÕÂ „œÌ—Ì  Õ”«»Â« —« ‰œ«—Ìœ');
      ActivePageIndex := 5;
    end;
  end;
end;

procedure TFrMain.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(dm.LoanType,'LoanTypeid','LoanTypeTitle');
  if Dm.SearchResult>0 then
    YWhereEdit20.Text:=IntToStr(dm.SearchResult);
end;

procedure TFrMain.xpTabSheet4Show(Sender: TObject);
begin
  inherited;
//  Refresh_CashAccount;
end;

procedure TFrMain.UserTitmerTimer(Sender: TObject);
begin
  inherited;
  update_UserLoginLogout(_UserLoginLogoutID,false);
end;

procedure TFrMain.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  FrReport_ActiveUsers:=TFrReport_ActiveUsers.Create(Application);
  FrReport_ActiveUsers.ShowModal;
end;

procedure TFrMain.BtnNew2Click(Sender: TObject);
var
  I: BYTE;
begin
  inherited;
  for i:=10 to 16 do
    if TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Visible then
      TYWhereEdit(FindComponent('YWhereEdit'+IntToStr(i))).Text:='' ;
end;

procedure TFrMain.btn_MH_GozareshTarakoneshClick(Sender: TObject);
begin
  inherited;
  FrReport_Payment := TFrReport_Payment.Create(Application);
  FrReport_Payment.ShowModal;
end;

procedure TFrMain.speedBtn110Click(Sender: TObject);
begin
  inherited;
  FrReportAccountPayments:=TFrReportAccountPayments.Create(Application);
  with FrReportAccountPayments do
  begin
    try
      SearchEdit.Text:=dm.Report_CashAccountAccountNo.AsString;
      Caption:='ÊÌ—«Ì‘  —«ò‰‘';
      RefreshReportPayment;
      EditBtn.Show;
      delbtn.Show;
    except
    end;
    ShowModal;
  end;
end;

procedure TFrMain.Report_CashAccountAfterScroll(DataSet: TDataSet);
begin
  dm.AccountType.Locate('accounttypeid',dm.Report_CashAccountAccountTypeID.AsInteger,[]);
  //Btn11.Caption:=dm.AccountTypeCreditCuase.AsString +' F1';
  btn_MH_Sabt.Caption:=dm.AccountTypeCreditCuase.AsString +' F1';
  //Btn12.Caption:=dm.AccountTypeDebitCuase.AsString +' F2';
  btn_MH_EnteghalVajh.Caption:=dm.AccountTypeDebitCuase.AsString +' F2';
end;

procedure TFrMain.RG_AccountTypeClick(Sender: TObject);
begin
  inherited;
  Refresh_CashAccount;
  n1.Caption:='  —«“ ¬“„«Ì‘Ì “Ì—„Ã„Ê⁄Â "'+RG_AccountType.Selected.Text+'"';
end;

procedure TFrMain.SpeedButton29Click(Sender: TObject);
begin
  inherited;
  AddContact(4);
end;

procedure TFrMain.xpBitBtn69Click(Sender: TObject);
begin
  inherited;
  FindContact(False,3,True);
  //AddContact(3);
end;

procedure TFrMain.SpeedButton34Click(Sender: TObject);
begin
  inherited;
  FindContact(False,7,True);
  //AddContact(7);
end;

procedure TFrMain.btn_H_TasviyehClick(Sender: TObject);
VAR
  balance:LONGLONG;
begin
  inherited;
  FrAddPayment:=TFrAddPayment.Create(Application);
  with FrAddPayment do
  begin
    CashIsDebtor:=False;
    if Get_NotPaidLoanPayment(dm.Report_AccountAccountID.AsInteger)<>0 then
    begin
      ShowMessage('«Ì‰ Õ”«»°«ﬁ”«ÿ Å—œ«Œ  ‰‘œÂ œ«—œ .·ÿ›«  Å—œ«Œ  ‰„«ÌÌœ');
      ABORT;
    end;
    if Get_NotPaidMounthlyPayment(dm.Report_AccountAccountID.AsInteger)<>0 then
    begin
      ShowMessage('«Ì‰ Õ”«»°„«ÂÌ«‰Â Å—œ«Œ  ‰‘œÂ œ«—œ ·ÿ›« Å—œ«Œ  ‰„«ÌÌœ.');
      ABORT;
    end;
    Balance:=Get_Balance_ByPayTypeID(dm.Report_AccountAccountID.AsInteger,0,'9');
    CashIsDebtor:= Balance<0 ;
    try SearchEdit.Text:=dm.Report_AccountAccountNo.AsString;
      RefreshPayment;
      Dm.Select_PaymentAmount.AsLargeInt:=abs( balance);
      BalanceMode:=True;
    except
    end;
    DBAmount.Enabled:=False;
    ShowModal;
    DBAmount.Enabled:=True;
  end;
  RefreshAccount;
end;

procedure TFrMain.btn_MH_DaftareRooznamehClick(Sender: TObject);
begin
  inherited;
  FrDaily_Report:=TFrDaily_Report.Create(Application);
  FrDaily_Report.Caption:='œ› — —Ê“‰«„Â';
  FrDaily_Report.showmodal;
end;

procedure TFrMain.btn_MH_BeylanKariClick(Sender: TObject);
begin
  inherited;
  FrDaily_Report:=TFrDaily_Report.Create(Application);
  FrDaily_Report.UserPanel.Show;
  FrDaily_Report.Caption:='»Ì·«‰ ò«—Ì';
  FrDaily_Report.showmodal;
end;

procedure TFrMain.N1Click(Sender: TObject);
begin
  inherited;
  FrSummeryPayment:=TFrSummeryPayment.Create(Application);
  FrSummeryPayment.AccountTypeID:=integer(RG_AccountType.Selected.Data);
  FrSummeryPayment.ShowModal;
end;

procedure TFrMain.btn_MH_SoodOZiyanClick(Sender: TObject);
begin
  inherited;
  FrIncome_Summery := TFrIncome_Summery.Create(Application);
  FrIncome_Summery.Caption:='Œ·«’Â ”Êœ Ê “Ì«‰';
  FrIncome_Summery.ShowModal;
end;

procedure TFrMain.SpeedButton21Click(Sender: TObject);
begin
  inherited;
  FrUserLoginLogoutReport:=TFrUserLoginLogoutReport.Create(Application);
  FrUserLoginLogoutReport.ShowModal;
end;

procedure TFrMain.btn_MH_JostejooSanadClick(Sender: TObject);
var
  FRM : TADV_SEARCH_SANAD_FRM;
begin
  inherited;
  if GetSystemSetting('ADV_SEARCH_SANAD') = '›⁄«·' then
  begin
    FRM := TADV_SEARCH_SANAD_FRM.Create(Application);
    FRM.ShowModal;
    FRM.Free;
  end
  else
  begin
    fqrPrintPayment_ByDocumentNo := TFQrPrintPayment_ByDocumentNo.Create(Application);
    FQrPrintPayment_ByDocumentNo.ShowModal;
  end;
end;

procedure TFrMain.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  FrRestore:=TFrRestore.Create(Application);
  FrRestore.ShowModal;
end;

procedure TFrMain.AccountGridDblClick(Sender: TObject);
begin
  inherited;

  if Btn_H_VirayeshEtelaat.Enabled then
    Btn_H_VirayeshEtelaat.Click;
//   if btn52.Enabled then
//      btn52.Click;
end;

procedure TFrMain.LoanGridDblClick(Sender: TObject);
begin
  inherited;

  if btn_V_VirayeshAghsat.Enabled then
    btn_V_VirayeshAghsat.Click;
//   if Btn48.Enabled then
//      Btn48.Click;
end;

procedure TFrMain.ForcePaymentGridDblClick(Sender: TObject);
begin
  inherited;
//   if (dm.Report_ForcePaymentForceTypeID.AsInteger=1) and Btn32.Enabled then
//   Btn32.Click;
//   if (dm.Report_ForcePaymentForceTypeID.AsInteger=2) and Btn33.Enabled then
//      Btn33.Click;
  if (dm.Report_ForcePaymentForceTypeID.AsInteger=1) and btn_AM_PardakhteAghsat.Enabled then
    btn_AM_PardakhteAghsat.Click;

  if (dm.Report_ForcePaymentForceTypeID.AsInteger=2) and btn_AM_PardakhteMahiyaneh.Enabled then
    btn_AM_PardakhteMahiyaneh.Click;
end;

procedure TFrMain.shortCutPress(Sender: TObject);
var
  i,j: byte;
  BtnName:string;
begin
  inherited;
  i:=TAction(Sender).Tag;
  j:=mainPageControl.ActivePageIndex;

//   try
//      with TSpeedButton(FindComponent('Btn'+IntToStr(j)+IntToStr(i))) do
//      if Enabled then Click;
// except
//  end;

  Case StrToInt(IntToStr(j)+IntToStr(i)) of
      51:BtnName:='Btn_H_EftetaheHesab';
      52:BtnName:='Btn_H_VirayeshEtelaat';
      53:BtnName:='btn_H_VarizHesab';
      54:BtnName:='btn_H_BardashtHesab';
      55:BtnName:='btn_H_DaftarMoin';
      56:BtnName:='btn_H_VirayeshMahiyaneh';
      57:BtnName:='btn_H_BastanHesab';
      58:BtnName:='btn_H_Tasviyeh';
      59:BtnName:='btn_H_DarjHoshdar';
      510:BtnName:='btn_H_DaftarchehOzviyat';
      511:BtnName:='btn_H_AghsatVaMahiyaneh';
//      512:BtnName:='btn512';
      512:BtnName:='btn_H_BardashtAzMahiyaneh';
      41:BtnName:='btn_V_EtayeVam';
      42:BtnName:='btn_V_hazfeVam';
      43:BtnName:='btn_V_DaftarchehAghsat';
      44:BtnName:='btn_V_DarkhasteVam';
      45:BtnName:='btn_V_OlaviyatBandiVam';
      46:BtnName:='btn_V_VirayeshVam';
      47:BtnName:='btn_V_AghsatInVam';
      48:BtnName:='btn_V_VirayeshAghsat';
      49:BtnName:='btn_V_BarresiEmtiyazVam';
      410:BtnName:='btn_V_TarifAnvaeVam';
      411:BtnName:='btn_V_GozareshVamBeTafkikAza';
      412:BtnName:='btn_V_GozareshMoavagheh';
      31:BtnName:='btn_AM_TanzimeMahiyaneh';
      32:BtnName:='btn_AM_PardakhteAghsat';
      33:BtnName:='btn_AM_PardakhteMahiyaneh';
      34:BtnName:='btn_AM_PardakhteJamee';//'btn_AM_GazareshTajamoee';
      35:BtnName:='btn_AM_GazareshTajamoee';//'btn_AM_TrifMahiyaneh';
      36:BtnName:='btn_AM_TrifMahiyaneh';//'btn_AM_SoodJarimehKarmozd';
      37:BtnName:='btn_AM_SoodJarimehKarmozd';//'btn_AM_TanzimeMahiyaneh';
      38:BtnName:='btn_AM_GhestBandiMojadad';//'btn_AM_GhestBandiMojadad';
      21:BtnName:='btn_DT_Jadid';
      22:BtnName:='btn_DT_Virayesh';
      23:BtnName:='btn_DT_Joaziyat';
      24:BtnName:='btn_DT_Hazf';
      25:BtnName:='btn_DT_TasavirMarbooteh';
      26:BtnName:='btn_DT_HesabMortabet';
      11:BtnName:='btn_MH_Sabt';
      12:BtnName:='btn_MH_EnteghalVajh';
      13:BtnName:='btn_MH_DaftarMoin';
      14:BtnName:='btn_MH_TarazAzmayeshi';
      15:BtnName:='btn_MH_Hazf';
      16:BtnName:='btn_MH_JostejooSanad';
      17:BtnName:='btn_MH_IjadeHesab';
      18:BtnName:='btn_MH_DaftareRooznameh';
      19:BtnName:='btn_MH_BeylanKari';
      110:BtnName:='btn_MH_TarazMoin';
      111:BtnName:='btn_MH_SoodOZiyan';
      112:BtnName:='btn_MH_GozareshTarakonesh';

  end;
  try
    with TSpeedButton(FindComponent(BtnName)) do
      if Enabled then
        Click;
  except
  end;
end;

procedure TFrMain.Action13Execute(Sender: TObject);
var
  j: byte;
begin
  inherited;
  j:=mainPageControl.ActivePageIndex;
  try
    with TBitBtn(FindComponent('BtnNew'+IntToStr(j)))  do
      if Enabled then
        OnClick(nil);
  except
  end;
end;

procedure TFrMain.YWhereEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
    btnSearch5.OnClick(btnSearch5);
  GotoNext(Sender,key,Shift);
end;

procedure TFrMain.YWhereEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
    btnSearch4.OnClick(btnSearch4);
  GotoNext(Sender,  key,Shift);
end;

procedure TFrMain.AccountnoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
    btnSearch3.OnClick(btnSearch3);
  GotoNext(Sender,  key,Shift);
end;

procedure TFrMain.YWhereEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Inherited;
  if key=13 then
    btnSearch2.OnClick(btnSearch2);
  GotoNext(Sender,  key,Shift);
end;

procedure TFrMain.YWhereEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Inherited;
  if key=13 then
    btnSearch1.OnClick(btnSearch1);
  GotoNext(Sender,  key,Shift);
end;

procedure TFrMain.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  FrMakeTemplate:=TFrMakeTemplate.Create(Application);
  with FrMakeTemplate do
  begin
    Yeganeh_Word.Ydataset:=ActiveGrid.DataSource.DataSet;
    ShowModal;
  end;
end;

procedure TFrMain.btn512Click(Sender: TObject);
begin
  inherited;
  ShowMessage('«„ò«‰ Õ–› Õ”«» ÊÃÊœ ‰œ«—œ')   ;
  Abort;
  if not Account_Is_Balance(Dm.Report_AccountAccountID.AsInteger) then
    ShowMessage('«Ì‰ ⁄÷Ê œ— Ê÷⁄Ì   ”ÊÌÂ ‰Ì”  «» œ« Õ”«» ¬‰ —«  ”ÊÌÂ ò‰Ìœ Ê »⁄œ „Ì  Ê«‰Ìœ Õ”«» ¬‰ —« »»‰œÌœ')
  else
  if MessageDlg('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ', mtWarning,[mbYes,mbno],0)=mryes then
    Delete_Account(Dm.Report_AccountAccountID.AsInteger);
end;

procedure TFrMain.SpeedButton50Click(Sender: TObject);
begin
  inherited;
  FrTransfer:=TFrTransfer.Create(Application);
  FrTransfer.ShowModal;
end;

procedure TFrMain.SpeedButton52Click(Sender: TObject);
begin
  inherited;
  FrAddAccountType:=TFrAddAccountType.Create(Application);
  FrAddAccountType.ShowModal;
end;

procedure TFrMain.btn_MH_TarazMoinClick(Sender: TObject);
begin
  inherited;
  FrSummeryPayment_all:=TFrSummeryPayment_all.Create(Application);
  FrSummeryPayment_all.ShowModal;
end;

procedure TFrMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: byte;
begin
  i:=MessageShowString_WithExit( '¬Ì« „«Ì· »Â  ÂÌÂ ‰”ŒÂ Å‘ Ì»«‰ «“ «ÿ·«⁄«  Â” Ìœ');
  if i=2 then
    abort
  else
  if i=0 then
  begin
    FrDatabaseMaintenance:=TFrDatabaseMaintenance.Create(Application);
    FrDatabaseMaintenance.Mode:=backup;
    FrDatabaseMaintenance.ShowModal;
    update_UserLoginLogout(_UserLoginLogoutID,true);
  end
  else
    update_UserLoginLogout(_UserLoginLogoutID,true);

  DBGrid_SaveColumns(Self.Name,AccountGrid);
  DBGrid_SaveColumns(Self.Name,LoanGrid);
  DBGrid_SaveColumns(Self.Name,ForcePaymentGrid);
  DBGrid_SaveColumns(Self.Name,ContactGrid);
  DBGrid_SaveColumns(Self.Name,CashAccountDBGrid);

  //Â‰ê«„ Œ—ÊÃ SendError »œ·Ì· ÊÃÊœ ÅÌ€«„ Œÿ«Ì
  ExitProcess(0);
  //---
end;

procedure TFrMain.CashAccountDBGridDblClick(Sender: TObject);
begin
  inherited;
  FrAddAccount:=TFrAddAccount.Create(Application);
  Open_Account(Dm.Report_CashAccountAccountID.AsInteger);
  FrAddAccount.ShowModal;
end;

procedure TFrMain.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  FrDividBenefit := TFrDividBenefit.Create(Application);
  FrDividBenefit.ShowModal;
end;

procedure TFrMain.btn_V_TarifAnvaeVamClick(Sender: TObject);
begin
  inherited;
  FrAddLoanType := TFrAddLoanType.Create(Application);
  FrAddLoanType.ShowModal;
end;

procedure TFrMain.btn_E_GozareshGiriAzZamenhaClick(Sender: TObject);
begin
  inherited;
  FmRepLoanGrt := TFmRepLoanGrt.Create(nil);
  FmRepLoanGrt.ShowModal;
end;

procedure TFrMain.SessionbuttonClick(Sender: TObject);
begin
  inherited;
  FrPrintSession:=TFrPrintSession.Create(Application);
  FrPrintSession.ShowModal;
end;

procedure TFrMain.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(dm.Family,'Familyid','FamilyTitle');
  if Dm.SearchResult>0 then
  begin
    aFamilyID:=dm.SearchResult;
    AFamilyTitle.Text:=dm.FamilyFamilyTitle.AsString;
  end
  else
  begin
    aFamilyID:=-1;
    AFamilyTitle.Text:='';
  end
end;

Function TFrMain.SetTotal_AmountPrice:integer;
var _Amount:integer;
     i:integer;
begin
  _Amount:=0;
  FrSumPayment.JustSelectedAmount:=0;
  if ForcePaymentGrid.SelectedRows.Count>0 then
    for i:=0 to ForcePaymentGrid.SelectedRows.Count-1 do
    begin
      ForcePaymentGrid.DataSource.DataSet.GotoBookmark(pointer(ForcePaymentGrid.SelectedRows.Items[i]));
      _Amount :=_Amount+ForcePaymentGrid.DataSource.DataSet.FieldByName('Amount').AsInteger;
      FrSumPayment.JustSelectedAmount :=_Amount
    end
  else
    _Amount:= Sum_ForcePayment_Amount;

  SetTotal_AmountPrice:=  _Amount;
end;

Function TFrMain.SetTotal_Amerce:STRING;
var
  _Amount:integer;
  i:integer;
begin
  _Amount:=0;
  if ForcePaymentGrid.SelectedRows.Count>0 then
    for i:=0 to ForcePaymentGrid.SelectedRows.Count-1 do
    begin
      ForcePaymentGrid.DataSource.DataSet.GotoBookmark(pointer(ForcePaymentGrid.SelectedRows.Items[i]));
      _Amount:=_Amount+ForcePaymentGrid.DataSource.DataSet.FieldByName('Amerce').AsInteger;
    end
  else
    _Amount:= Sum_ForcePayment_Amerce;

  SetTotal_Amerce:=CommaSeperate(IntToStr(_Amount));
end;

Function TFrMain.SetTotal_interest:STRING;
var
  _Amount:integer;
  i:integer;
begin
  _Amount:=0;
  if ForcePaymentGrid.SelectedRows.Count > 0 then
    for i := 0 to ForcePaymentGrid.SelectedRows.Count - 1 do
    begin
      ForcePaymentGrid.DataSource.DataSet.GotoBookmark(pointer(ForcePaymentGrid.SelectedRows.Items[i]));
      _Amount := _Amount + ForcePaymentGrid.DataSource.DataSet.FieldByName('InterestAmount').AsInteger;
    end
  else
    _Amount := Sum_ForcePayment_Interest;

  SetTotal_interest := CommaSeperate(IntToStr(_Amount));
end;

procedure TFrMain.Btn37Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ »—ê—œ«‰ Õ”«» „ÿ„∆‰ Â” Ìœø',true) then
  begin
    Dm.DReport_ForcePayment.DataSet.FieldByName('ForcePaymentID').AsString;
{      SELECT     ForcePayment.ForcePaymentID, Payment.documentno
      FROM        ForcePayment LEFT OUTER JOIN
                  Payment ON ForcePayment.PaymentID = Payment.PaymentID
      WHERE     ( ForcePayment.ForcePaymentID = 1136 )
 }


  end;
end;

procedure TFrMain.btn_AM_SoodJarimehKarmozdClick(Sender: TObject);
begin
  inherited;
  FrReportAccountPaymentsPBK := tFrReportAccountPaymentsPBK.Create(Application);
  with FrReportAccountPaymentsPBK do
  begin
    try
      SearchEdit.Text:=dm.Report_CashAccountAccountNo.AsString;
//         RefreshReportPayment;
    except
    end;
    ShowModal;
  end;
end;

procedure TFrMain.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  aFamilyID:=0;
  AFamilyTitle.Text:='';
end;

procedure TFrMain.SpeedButton17Click(Sender: TObject);
begin
  inherited;
  begin
    FamilyID:=0;
    FamilyTitle.Text:='';
  end
end;

procedure TFrMain.SpeedButton18Click(Sender: TObject);
begin
  inherited;
  WinExec('Calc.exe',0);
end;

procedure TFrMain.YWERowCountKeyDown(Sender:TObject;var Key:Word;Shift:TShiftState);
begin
  Inherited;
  if key=13 then
  begin
    try
      STRTOINT(YWERowCount.Text);
      btnSearch5.OnClick(btnSearch5);
      GotoNext(Sender,key,Shift);
    except
      ShowMessage(' ⁄œ«œ —òÊ—œ ÃÂ  ‰„«Ì‘°„ﬁœ«— ⁄œœÌ „Ì Å–Ì—œ');
    end;
  end;
end;

procedure TFrMain.SpeedButton19Click(Sender: TObject);
begin
  inherited;
  FrAddFinancialNote_New := TFrAddFinancialNote_New.Create(Application);
  FrAddFinancialNote_New.ShowModal;
end;

procedure TFrMain.Button2Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(dm.MonthlyType,'MonthlyTypeid','MonthlyTypeTitle');
  if Dm.SearchResult>0 then
  begin
    MonthlyTypeID:=dm.SearchResult;
    MonthlyTitle.Text:=dm.MonthlyTypeMonthlyTypeTitle.AsString;
  end
  else
  begin
    MonthlyTypeID:=-1;
    MonthlyTitle.Text:='';
  end
end;

procedure TFrMain.Button1Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(dm.LoanType,'LoanTypeid','LoanTypeTitle');
  if Dm.SearchResult>0 then
  begin
    LoanTypeID:=dm.SearchResult;
    LoanTitle.Text:=dm.LoanTypeLoanTypeTitle.AsString;
  end
  else
  begin
    LoanTypeID:=-1;
    LoanTitle.Text:='';
  end
end;

procedure TFrMain.SpeedButton23Click(Sender: TObject);
begin
  inherited;
  LoanTypeID:=-1;
  LoanTitle.Text:='';
end;

procedure TFrMain.SpeedButton22Click(Sender: TObject);
begin
  inherited;
  MonthlyTypeID:=-1;
  MonthlyTitle.Text:='';
end;

procedure TFrMain.SpeedButton26Click(Sender: TObject);
begin
  inherited;
  FrReport_PaymentInDetail:= TFrReport_PaymentInDetail.Create(Application);
//   FrReport_PaymentInDetail.MakeRep.Click;
  FrReport_PaymentInDetail.ShowModal;
end;

procedure TFrMain.SpeedButton24Click(Sender: TObject);
begin
  inherited;
  FrPaymentImportFromExcel:=TFrPaymentImportFromExcel.Create(Self);
  FrPaymentImportFromExcel.ShowModal;
{    Form1:=TForm1.Create(Self);
    Form1.ShowModal;     }
end;

procedure TFrMain.SpeedButton27Click(Sender: TObject);
begin
  inherited;
  FrAccDailyReport:=TFrAccDailyReport.Create(NIL);
  FrAccDailyReport.ShowModal;
end;

procedure TFrMain.btn_E_ChapePerfrajClick(Sender: TObject);
begin
  inherited;
  FrPerfrajList:=tFrPerfrajList.Create(Self);
  FrPerfrajList.ShowModal;
end;

procedure TFrMain.SpeedButton30Click(Sender: TObject);
begin
  inherited;
  FrAvrage:=TFrAvrage.Create(SELF);
  FrAvrage.ShowModal;
end;

procedure TFrMain.btn_E_GozareshPardakhtAghsatVaMahiyanehClick(Sender: TObject);
begin
  inherited;
  FrSumPayment_Report := TFrSumPayment_Report.Create(Application);
  FrSumPayment_Report.ShowModal;
end;

procedure TFrMain.btn_H_BardashtAzMahiyanehClick(Sender: TObject);
begin
  inherited;
  try
    FrAddPayment:=TFrAddPayment.Create(Application);
  except
  end;

  With FrAddPayment do
  begin
    CashIsDebtor:=False;
    try
      SearchEdit.Text:=dm.Report_AccountAccountNo.AsString;
      RefreshPayment;
    except
    end;
    UsedForMountly:=True;
    ShowModal;
    UsedForMountly:=False;
    FrAddPayment:=Nil;
  end;
  RefreshAccount;
end;

procedure TFrMain.btn_V_GozareshMoavaghehClick(Sender: TObject);
begin
  inherited;
  FrLoanReport:=TFrLoanReport.Create(NIL);
  FrLoanReport.ShowModal;
end;

procedure TFrMain.btn_V_GozareshVamBeTafkikAzaClick(Sender: TObject);
var
  FRM : TREPORT_BE_TAFKIK_ADV_FRM;
begin
  inherited;
  if GetSystemSetting('ADV_SEARCH_VAM_AZA') = '›⁄«·' then
  begin
    FRM := TREPORT_BE_TAFKIK_ADV_FRM.Create(Application);
    FRM.ShowModal;
    FRM.Free;
  end
  else
  begin
    FrReport_LoanPerAccount:=TFrReport_LoanPerAccount.Create(Self);
    FrReport_LoanPerAccount.ShowModal;
  end;
end;

procedure TFrMain.btn_AM_GhestBandiMojadadClick(Sender: TObject);
begin
  inherited;
  FrAddRemainLoan:=TFrAddRemainLoan.Create(NIL);
  FrAddRemainLoan.ShowModal;
end;

procedure TFrMain.SpeedButton41Click(Sender: TObject);
var
  BenefitAccountID : string;
begin
  inherited;
  BenefitAccountID := Get_SystemSetting('BENEFITACCOUNTID');
  if Trim(BenefitAccountID) = '' then
    BenefitAccountID := '0';

  if BenefitAccountID = '0' then
  begin       //«ê— Õ”«» «‰ Œ«» ‰‘œÂ »«‘œ
    ShowMessage('·ÿ›« œ— ﬁ”„   ‰ŸÌ„«  ‘„«—Â Õ”«» ”Êœ ”Å—œÂ —« „‘Œ’ ‰„«ÌÌœ');
    exit;
  end
  else
  begin
    with TADOQuery.Create(nil)do
    begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT AccountTypeID FROM	Account WHERE AccountID='+BENEFITACCOUNTID;
      Open;
      if Fields[0].Value = 8 then //Å—œ«Œ  ”Êœ «“ Õ”«» Â“Ì‰Â
      begin
        fmBenefitFromHazineh := TfmBenefitFromHazineh.Create(Application);
        fmBenefitFromHazineh.BenefitAccountID := strtoint(BENEFITACCOUNTID);
        fmBenefitFromHazineh.ShowModal;
      end
      else if Fields[0].Value = 9 then  //Å—œ«Œ  ”Êœ «“ Õ”«» œ—¬„œ
      begin
        FrDividBenefit_New:=TFrDividBenefit_New.Create(NIL);
        FrDividBenefit_New.ShowModal;
      end
      else // «ê— Õ”«» ”Êœ Ì« Â“Ì‰Â ‰»«‘œ
        ShowMessage('·ÿ›« œ— ﬁ”„   ‰ŸÌ„«  ‘„«—Â Õ”«» ”Êœ ”Å—œÂ —« „‘Œ’ ‰„«ÌÌœ');
    end;
  end;
end;

procedure TFrMain.SpeedButton42Click(Sender: TObject);
begin
  inherited;
  FrAddReportName:=TFrAddReportName.Create(NIL);
  FrAddReportName.ShowModal;
end;

procedure TFrMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  shortCutPress(Sender);
end;

procedure TFrMain.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FrPrintDeletedPayment_ByDocumentNo := TFrPrintDeletedPayment_ByDocumentNo.Create(Application);
  FrPrintDeletedPayment_ByDocumentNo.ShowModal;
end;

procedure TFrMain.Button3Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(dm.Family,'Familyid','FamilyTitle');
  if Dm.SearchResult>0 then
  begin
    FamilyIDVam:=dm.SearchResult;
    FamilyTitleVam.Text:=dm.FamilyFamilyTitle.AsString;
  end
  else
  begin
    FamilyIDVam:=-1;
    FamilyTitleVam.Text:='';
  end
end;

procedure TFrMain.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  FamilyIDVam:=0;
  FamilyTitleVam.Text:='';
end;

procedure TFrMain.SetTheGrigStatusBar(ChB:TCheckBox;Gr:TYDBGrid);
begin
  inherited;
  if ChB.Checked then
  begin
    if gr.DataSource.DataSet.Active then
      Gr.UpdateFooter
  end
  else
  if not ChB.Checked then
    Gr.HiddenFooter;
end;

procedure TFrMain.ContactChBClick(Sender: TObject);
begin
  inherited;
  SetTheGrigStatusBar(ContactChB,ContactGrid);
end;

procedure TFrMain.ForcePaymentChBClick(Sender: TObject);
begin
  inherited;
//   SetTheGrigStatusBar(ForcePaymentChB,ForcePaymentGrid);
  if ForcePaymentChB.Checked then
    ForcePaymentGrid.UpdateFooter
  else
    ForcePaymentGrid.HiddenFooter;
end;

procedure TFrMain.LoanChBClick(Sender: TObject);
begin
  inherited;
  SetTheGrigStatusBar(LoanChB,LoanGrid);
end;

procedure TFrMain.AccountChBClick(Sender: TObject);
begin
  inherited;
  SetTheGrigStatusBar(AccountChB,AccountGrid);
end;

procedure TFrMain.SpeedButton28Click(Sender: TObject);
begin
  inherited;
  FrDocPrint := TFrDocPrint.Create(Application);
  FrDocPrint.ShowModal;
end;

procedure TFrMain.YWERowCountDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
  begin
    try
      STRTOINT(YWERowCountD.Text);
      btnSearch4.OnClick(btnSearch4);
      GotoNext(Sender,key,Shift);
    except
      ShowMessage(' ⁄œ«œ —òÊ—œ ÃÂ  ‰„«Ì‘°„ﬁœ«— ⁄œœÌ „Ì Å–Ì—œ');
    end;
  end;
end;

procedure TFrMain.PageControl1Change(Sender: TObject);
begin
  inherited;
  MainPageControl.ActivePageIndex := PageControl1.ActivePageIndex;
  //Hamed_Ansari_990519_S
  //if PageControl1.TabIndex=3 then
 ///// if PageControl1.TabIndex = 3 then
   // btnSearch3.Click;
  //Hamed_Ansari_990519_E

end;

procedure TFrMain.btnSoodSepordeClick(Sender: TObject);
begin
  inherited;
  FmRepSood2 := TFmRepSood2.Create(Application);
  FmRepSood2.ShowModal;
end;

procedure TFrMain.Refreshforcepayment;
var
  I:Integer;
begin
  Inherited;
  try
    I:= dm.Report_ForcePaymentForcePaymentID.AsInteger;
    btnSearch3Click(self);
    dm.Report_ForcePayment.Locate('ForcePaymentID',i,[]);
  except
  end;
end;

procedure TFrMain.Button4Click(Sender: TObject);
begin
  inherited;
  frmSendSMS:=TfrmSendSMS.create(self);
  frmSendSMS.ShowModal;
end;

procedure TFrMain.Button5Click(Sender: TObject);
begin
  inherited;
  frmSmsSetting:=TfrmSmsSetting.create(self);
  frmSmsSetting.ShowModal;
end;

procedure TFrMain.TimerSendSmsTimer(Sender: TObject);
var
  qry,qryUpdate : TADOQuery;
  i:integer;
  T:SmsThread;
begin
  inherited;
  if GetSystemSetting('EnableSms') then
  begin
    try
      if dm.YeganehConnection.Connected = false then
        dm.YeganehConnection.Connected:=True;

      qry:=TADOQuery.Create(self);
      qry.Connection:=dm.YeganehConnection;

      qryUpdate:=TADOQuery.Create(self);
      qryUpdate.Connection:=dm.YeganehConnection;

      qry.SQL.Text := 'Select * From OutBox Where  SmsStatus Is null And InProcess=0 And issend=0';
      qry.Open;

      if qry.RecordCount=0 then
        Abort;

      qry.First;
      i:=0;
      SetLength(arrSmsDetails,0); //Add Sanaye 950428 Œ«·Ì ‰‘œ‰ «ÿ·«⁄«  ﬁ»·Ì Ê «—”«· «” «„ «”  ò—«—Ì
      while not (qry.eof) do
      begin
        SetLength(arrSmsDetails,Length(arrSmsDetails)+1);
        arrSmsDetails[i].SmsPhone := qry.Fields.Fieldbyname('SmsNumber').AsString;
        arrSmsDetails[i].SmsText := qry.Fields.Fieldbyname('SmsText').AsString;
        arrSmsDetails[i].Id := qry.Fields.Fieldbyname('OutBoxId').asinteger ;
        qryUpdate.SQL.Text := 'update OutBox set InProcess =1 where  OutBoxId ='+qry.Fields.Fieldbyname('OutBoxId').AsString;
        qryUpdate.ExecSQL;
        inc(i);
        qry.Next;
      end;

      if qry.RecordCount>0 then
      begin
        T := SmsThread.Create(True);
        T.FreeOnTerminate := True;
        T.Resume;
      end;

    except

    end;
    qry.Free;
    qryUpdate.Free;

  end;
end;

procedure TFrMain.Action14Execute(Sender: TObject);
var
  FRM : TFITCHER_SETTING_FRM;
begin
  ENTER_ADMIN_PASS_FRM.ShowModal;
  if ENTER_ADMIN_PASS_FRM.FLAG = TRUE then
  begin
    FRM := TFITCHER_SETTING_FRM.Create(Application);
    FRM.ShowModal;
    FRM.Free;
  end;
end;

procedure TFrMain.YWhereEdit19Enter(Sender: TObject);
begin
  inherited;
  EdtLoanFirstNo.Clear;
  EdtLoanLastNo.Clear;
end;

procedure TFrMain.EdtLoanFirstNoEnter(Sender: TObject);
begin
  inherited;
  YWhereEdit19.Clear;
end;

procedure TFrMain.EdtLoanLastNoEnter(Sender: TObject);
begin
  inherited;
  YWhereEdit19.Clear;
end;

procedure TFrMain.FormActivate(Sender: TObject);
begin
  inherited;
  MainPageControlChange(Sender);
end;

procedure TFrMain.AccountGridCellClick(Column: TColumn);
begin
  inherited;
  if not dm.blnDataIsReady then
    Exit;
end;

procedure TFrMain.TabSheet2Show(Sender: TObject);
begin
  inherited;
  { TODO -oparsa : 14030701 }
  if PageControl1.TabIndex=1 then
    Refresh_CashAccount;
  { TODO -oparsa : 14030701 }
end;

end.



