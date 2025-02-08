unit PerfrajListU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Grids, DBGrids, Menus, ActnList,
  YDbgrid, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls, UemsVCL,
  SolarCalendarPackage, AdvGlowButton;

type
  TFrPerfrajList = class(TYBaseForm)
    dPerfrajList: TDataSource;
    PerfrajList: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    Label3: TLabel;
    MEDateFrom: TSolarDatePicker;
    Label4: TLabel;
    MEDateTo: TSolarDatePicker;
    Label5: TLabel;
    DBLkCBPayTypeTitle: TDBLookupComboBox;
    MakeRep: TAdvGlowButton;
    Panel2: TPanel;
    BitBtn1: TAdvGlowButton;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    QrPayType: TADOQuery;
    QrPayTypePayTypeID: TWordField;
    QrPayTypePayTypeTitle: TWideStringField;
    DSQrPayType: TDataSource;
    PerfrajListAccountid: TAutoIncField;
    PerfrajListAccountno: TStringField;
    PerfrajListAccountTitle: TWideStringField;
    PerfrajListDate: TWideStringField;
    PerfrajListComment: TStringField;
    PerfrajListbes: TLargeintField;
    PerfrajListbed: TIntegerField;
    PerfrajListParentID: TIntegerField;
    PerfrajListPayTypeTitle: TWideStringField;
    PerfrajListPayTypeID: TWordField;
    PerfrajListDES: TStringField;
    PerfrajListMANDEH: TLargeintField;
    PerfrajListContactID: TIntegerField;
    PerfrajListAmount: TLargeintField;
    PerfrajListLoanID: TAutoIncField;
    PerfrazhBtn: TAdvGlowButton;
    PerfrajListPaymentID: TAutoIncField;
    PerfrajListWasPrinted: TSmallintField;
    PerfrajListdocumentNo: TStringField;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    NOldVersion: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    PerfrajListInterestAmount: TIntegerField;
    pnlMain: TPanel;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerfrazhBtnClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPerfrajList: TFrPerfrajList;

implementation

uses dmu, BusinessLayer, YShamsiDate;

{$R *.dfm}

procedure TFrPerfrajList.MakeRepClick(Sender: TObject);
var
  _id:string;
  _id1:Integer;
begin
  inherited;
  if not Date_CheckTwoDate(MEDateFrom.Text,MEDateTo.Text) then
    Exit;

  if Get_AccountID_ByAccountNo(SearchEdit.Text)<1 then
  begin
    ShowMessage('ÔãÇÑå ÍÓÇÈ ÇÔÊÈÇå ÇÓÊ');
    Exit;
  end;

  PerfrajList.Close;
  PerfrajList.Parameters.ParamByName('@FROMDATE').Value := MEDateFrom.Text; //copy(MEDateFrom.Text,2,5)+copy(MEDateFrom.Text,7,2)+copy(MEDateFrom.Text,9,3);
  PerfrajList.Parameters.ParamByName('@TODATE').Value   := MEDateTo.Text; //copy(MEDateTo.Text,2,5)+copy(MEDateTo.Text,7,2)+copy(MEDateTo.Text,9,3);
  PerfrajList.Parameters.ParamByName('@PAYKIND').Value  := QrPayTypePayTypeID.Text;
  PerfrajList.Parameters.ParamByName('@ACCOUNTID').Value:= Get_AccountID_ByAccountNo(SearchEdit.Text);
  PerfrajList.OPEN;
end;

procedure TFrPerfrajList.FormShow(Sender:TObject);
begin
  inherited;
  MEDateFrom.Text := _Today;
  MEDateTo.Text := _Today;

  PerfrajList.Close;
  QrPayType.Open;
  DBLkCBPayTypeTitle.KeyValue := QrPayTypePayTypeID.AsInteger;
end;

procedure TFrPerfrajList.PerfrazhBtnClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,PerfrazhBtn,RepPopMnu);
{
  IF PerfrajListWasPrinted.AsInteger=1 Then
    ShowMyMessage('íÛÇã','ÇÒ ÇØáÇÚÇÊ ÌÇÑí ÞÈáÇ Ç ÔÏå ÇÓÊ æ Çã˜Çä Ç ãÌÏÏ æÌæÏ äÏÇÑÏ',[mbOK],mtInformation)
  Else
  Begin
      CASE PerfrajListPayTypeID.AsInteger OF
        1://ÏÑíÇÝÊ æ ÑÏÇÎÊ
           dm.LinePrint(PerfrajListContactID.AsInteger,true, PerfrajListDate.AsString,PerfrajListDES.AsString,PerfrajListbes.AsString,PerfrajListbed.AsString,PerfrajListMANDEH.AsString,PerfrajListdocumentNo.AsString,'Nshow');
        2:// ãÇåíÇäå
           dm.LinePrint(PerfrajListContactID.AsInteger,true , PerfrajListDate.AsString,PerfrajListDES.AsString,PerfrajListbes.AsString,PerfrajListbed.AsString,PerfrajListMANDEH.AsString,PerfrajListdocumentNo.AsString,'Nshow');
        3://ÇÞÓÇØ
           dm.LinePrint(PerfrajListLoanID.AsInteger   ,false, PerfrajListDate.AsString,PerfrajListDES.ASString,PerfrajListbes.AsString,PerfrajListbed.AsString,PerfrajListMANDEH.AsString,PerfrajListdocumentNo.AsString,'Nshow');

      END;//CASE
      Qry_SetResult('Update Payment Set WasPrinted = 1 Where PaymentId = '+PerfrajListPaymentID.AsString,Dm.YeganehConnection); //ÓíÓÊãí
  end;

}
end;

procedure TFrPerfrajList.NShowClick(Sender: TObject);
var
  PopupOption:string;
begin
  inherited;

  if Sender = NShow  then
    PopupOption:='NShow';//íÔ äãÇíÔ
  if Sender = NPrint  then
    PopupOption:='NPrint';//Ç
  if Sender = NDesign  then
    PopupOption:='NDesign';//ØÑÇÍí
  if Sender = NOldVersion  then
    PopupOption:='NOldVersion';//æÑŽä ÞÏíãí

  if PerfrajListWasPrinted.AsInteger = 1 then
    ShowMyMessage('íÛÇã','ÇÒ ÇØáÇÚÇÊ ÌÇÑí ÞÈáÇ Ç ÔÏå ÇÓÊ æ Çã˜Çä Ç ãÌÏÏ æÌæÏ äÏÇÑÏ',[mbOK],mtInformation)
  else
  begin
    case PerfrajListPayTypeID.AsInteger of
      1://ÏÑíÇÝÊ æ ÑÏÇÎÊ
        dm.LinePrint(PerfrajListContactID.AsInteger,True , PerfrajListDate.AsString,PerfrajListDES.AsString,PerfrajListbes.AsString,PerfrajListbed.AsString,PerfrajListMANDEH.AsString,PerfrajListdocumentNo.AsString,PerfrajListAccountno.AsString,PerfrajListAccountTitle.AsString,PopupOption,PerfrajListInterestAmount.AsString,'btn_E_ChapePerfraj');//GetReportName('SpeedButton28','PerfrajRep.fr3')
      2:// ãÇåíÇäå
        dm.LinePrint(PerfrajListContactID.AsInteger,True , PerfrajListDate.AsString,PerfrajListDES.AsString,PerfrajListbes.AsString,PerfrajListbed.AsString,PerfrajListMANDEH.AsString,PerfrajListdocumentNo.AsString,PerfrajListAccountno.AsString,PerfrajListAccountTitle.AsString,PopupOption,PerfrajListInterestAmount.AsString,'btn_E_ChapePerfraj');//GetReportName('SpeedButton28','PerfrajRep.fr3')
      3://ÇÞÓÇØ
        dm.LinePrint(PerfrajListLoanID.AsInteger   ,False, PerfrajListDate.AsString,PerfrajListDES.ASString,PerfrajListbes.AsString,PerfrajListbed.AsString,PerfrajListMANDEH.AsString,PerfrajListdocumentNo.AsString,PerfrajListAccountno.AsString,PerfrajListAccountTitle.AsString,PopupOption,PerfrajListInterestAmount.AsString,'btn_E_ChapePerfraj');//GetReportName('SpeedButton28','PerfrajRep.fr3')
    end;//CASE
    Qry_SetResult('Update Payment Set WasPrinted = 1 Where PaymentId = '+PerfrajListPaymentID.AsString,Dm.YeganehConnection); //ÓíÓÊãí
  end;
end;

end.
