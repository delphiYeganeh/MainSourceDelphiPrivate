unit HostFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, wwriched, DB, DBTables, BaseUnit, ExtActns, ActnList,
  YDbgrid, dblookup, ADODB;

type
  TFMHost = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    SBSearch: TSpeedButton;
    LabelDate: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEAddress: TDBEdit;
    DBEEmail: TDBEdit;
    DBEUserName: TDBEdit;
    DBEPassword: TDBEdit;
    DBESubject: TDBEdit;
    DBEUserNaFa: TDBEdit;
    DBEComment: TDBEdit;
    DBLkCBHostGroup: TDBLookupComboBox;
    Label2: TLabel;
    wwDBREImageData: TwwDBRichEdit;
    Label9: TLabel;
    SBHostGroup: TSpeedButton;
    SBSimpleEditor: TSpeedButton;
    SBExportToWord: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    SpeedButton2: TSpeedButton;
    DBGridHost: TYDBGrid;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBHostGroupClick(Sender: TObject);
    procedure DBEAddressEnter(Sender: TObject);
    procedure DBEAddressExit(Sender: TObject);
    procedure SBSimpleEditorClick(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure SBExportToWordClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBGridHostDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMHost: TFMHost;

implementation

Uses Dmu,YShamsiDate, HostDM, SearchFM, MainU;

{$R *.dfm}

procedure TFMHost.FormCreate(Sender: TObject);
begin
   inherited;
   DMHost := TDMHost.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMHost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   With DMHost do
   begin
      Qry_CloseAllQry(DMHost);
   end;
   FreeAndNil(DMHost);
end;

procedure TFMHost.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,DBNavigator1,SBSearch,nil,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[])And not(ActiveControl=wwDBREImageData) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;

procedure TFMHost.FormShow(Sender: TObject);
begin
   inherited;
   With DMHost do
   begin
      QrHostGroup.Open;
      QrHost.Open;
   end;
   LabelDate.Caption := _Today;
   //Form_Animate(Self);
end;

procedure TFMHost.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMHost.SBHostGroupClick(Sender: TObject);
begin
   inherited;
   with DMHost do
   begin
      if not (QrHost.State in [dsEdit,dsInsert]) then
         Exit;
      Try
         if FmSearch.GetSearchValue(QrSrchHostGroup ,'EnterData_ID', 'EDName' , ' ' , 400 , 500 ) <> '0' then
            //QrHostGroup.Locate('EnterData_ID',QrSrchHostGroupEnterData_ID.AsInteger,[]);
            QrHostED_HostGroup_Ref.AsInteger := QrSrchHostGroupEnterData_ID.AsInteger;
      Finally
         QrSrchHostGroup.Close;
      End;
   end;

end;

procedure TFMHost.DBEAddressEnter(Sender: TObject);
begin
   inherited;
   Keyboard_English;
end;

procedure TFMHost.DBEAddressExit(Sender: TObject);
begin
   inherited;
   Keyboard_Farsi;
end;

procedure TFMHost.SBSimpleEditorClick(Sender: TObject);
begin
   inherited;
   if DMHost.QrHost.State in [dsInsert,dsEdit] then
      wwDBREImageData.ReadOnly := False
   else
      wwDBREImageData.ReadOnly := True;

   wwDBREImageData.Execute;
   wwDBREImageData.ReadOnly := False;
end;

procedure TFMHost.SBSearchClick(Sender: TObject);
begin
   inherited;
   With DMHost do
   begin
      Try
         QrSrchHost.Close;
         QrSrchHost.Open;
         if FmSearch.GetSearchValue(QrSrchHost ,'Host_ID', 'Subject' , ' ' , 400 , 730 ) <> '0' then
            QrHost.Locate('Host_ID',QrSrchHostHost_ID.AsInteger,[]);
      Finally
         QrSrchHost.Close;
      End;
   end;
end;

procedure TFMHost.SBExportToWordClick(Sender: TObject);
begin
   inherited;
   if not(DMHost.QrHost.State in [dsEdit,dsInsert]) then
      DBGridHost.ExportToWord;
end;

procedure TFMHost.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   MainForm.EnterData_CallForm(29,'����� ���� ������� ��������','��','��� ���� ������� ��������','�������',0);
   DMHost.QrHostGroup.Close;
   DMHost.QrHostGroup.Open;
end;


procedure TFMHost.DBNavigator1BeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
   inherited;
   DBEUserNaFa.SetFocus;
   DBEAddress.SetFocus;

   if Button = nbPost then
      DMHost.QrImageDataImageDataText.AsString := wwDBREImageData.Text;

   if Button in [nbEdit,nbInsert] then
      wwDBREImageData.ReadOnly := False
   else
      wwDBREImageData.ReadOnly := True;
end;

procedure TFMHost.DBGridHostDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   DBGrid_SetFocusAfterExit(DBGridHost,Rect,DataCol,Column,State,clHighlightText);//Uses Types,Graphics
end;

end.
