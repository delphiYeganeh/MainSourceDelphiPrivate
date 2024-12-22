unit Report_ContractU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, CheckLst,
  YchecklistBox, Menus, DBCtrls, MssDBGrid, DBGrids;

type
  TFrep2 = class(TMBaseForm)
    Report_Customer: TADOStoredProc;
    pnlMain: TPanel;
    ContractGrid: TYDBGrid;
    Panel1: TPanel;
    Label9: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YchecklistBox1: TYchecklistBox;
    YWhereEdit8: TYWhereEdit;
    GroupBox1: TGroupBox;
    YWhereEdit9: TYWhereEdit;
    YWhereEdit10: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    rdgSake: TRadioGroup;
    chkSake: TCheckBox;
    chkInsuranceAccount: TCheckBox;
    chkGoodJobPercentage: TCheckBox;
    chkTaxPercentage: TCheckBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BtnCancel: TBitBtn;
    btnShowContractWord: TBitBtn;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    YWhereEdit6: TYWhereEdit;
    Label7: TLabel;
    YWhereEdit7: TYWhereEdit;
    SpeedButton2: TSpeedButton;
    Label11: TLabel;
    YWhereEdit12: TYWhereEdit;
    SpeedButton3: TSpeedButton;
    GroupBox3: TGroupBox;
    SpeedButton4: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    SpeedButton5: TSpeedButton;
    fromInsert: TYWhereEdit;
    ToInsert: TYWhereEdit;
    Label14: TLabel;
    FromBegin: TYWhereEdit;
    SpeedButton6: TSpeedButton;
    Label15: TLabel;
    ToBegin: TYWhereEdit;
    SpeedButton7: TSpeedButton;
    Label16: TLabel;
    FromEnd: TYWhereEdit;
    SpeedButton8: TSpeedButton;
    Label17: TLabel;
    ToEnd: TYWhereEdit;
    SpeedButton9: TSpeedButton;
    CbCustomerHasAContract: TCheckBox;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    dblContractSubTypeCNT: TDBLookupComboBox;
    dblContractTypeCNT: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    dblState: TDBLookupComboBox;
    dblCity: TDBLookupComboBox;
    DState2: TDataSource;
    ADOState: TADOQuery;
    ADOStateStateID: TIntegerField;
    ADOStateStateTitle: TStringField;
    adoCity: TADOQuery;
    IntegerField1: TIntegerField;
    adoCityCItyId: TIntegerField;
    adoCityCityTitle: TStringField;
    adoCityStateNum: TStringField;
    DSCity: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkSakeClick(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure dblStateExit(Sender: TObject);
    procedure dblCityEnter(Sender: TObject);
    procedure dblStateKeyPress(Sender: TObject; var Key: Char);
    procedure SetdblContractType;
    procedure dblContractTypeDataChange(Sender: TObject; Field: TField);
    procedure dblContractTypeCNTExit(Sender: TObject);
    procedure dblContractSubTypeCNTEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frep2: TFrep2;

implementation

uses dmu, ExportToWord, Math,BusinessLayer;

{$R *.dfm}

var
  qrydblContractType,qrydblContractSubType  :TADOQuery;

procedure TFrep2.BitBtn1Click(Sender: TObject);
 var i: byte;
  s,where,W :string;
  Enddate : string ;
  Firstdate : string ;
  Lastdate : string ;
 begin
       w:='';

   for i:=1 to 12 do
     begin
      s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
      if s<>'' then
       where:=where+' and ('+s+')';
     end;

 if YchecklistBox1.SelectedCodes<>'' then
   for i:=0 to YchecklistBox1.Count-1 do
     if YchecklistBox1.Checked[i] then
        if YchecklistBox1.codes[i]<>0 then
           w:=w+' or (Contract.ProductID='+IntToStr(YchecklistBox1.codes[i])+')';
//       w:=w+' or (dbo.fn_ProductIDByCustomerID(C.CustomerID) like ''%'+IntToStr( YchecklistBox1.codes[i]) +'%'')';
//       w:=w+' or (dbo.fn_ProductIDByCustomerID(C.CustomerID) = '''+IntToStr( YchecklistBox1.codes[i]) +''')';

  if w<>'' then
     where:=where+' and ('+copy(w,5,length(w)-4)+')';


  if where<>'' then
   where:=copy(where,6,length(where)-5);
   if chkSake.Checked then
   begin
      if where<>'' then where := where +  'and  contract.ContractId in (select ContractId from ContractGuarantee where Sake = '+IntToStr(rdgSake.ItemIndex)+')'
                  else where :=  ' contract.ContractId in (select ContractId from ContractGuarantee where Sake = '+IntToStr(rdgSake.ItemIndex)+')'
   end;

  if   chkGoodJobPercentage.Checked then
      if where <> '' then where := where + ' and ((GoodJobPercentage <> 0 ) or not(GoodJobPercentage is null))'
          else where := ' ((GoodJobPercentage <> 0 ) or not(GoodJobPercentage is null))';

  if   chkInsuranceAccount.Checked then
      if where <> '' then where := where + ' and ((InsuranceAccount <> 0 ) or not(InsuranceAccount is null))'
          else where := ' ((InsuranceAccount <> 0 ) or not(InsuranceAccount is null))';

  if   chkTaxPercentage.Checked then
      if where <> '' then where := where + ' and ((TaxPercentage <> 0 ) or not(TaxPercentage is null))'
          else where := ' ((TaxPercentage <> 0 ) or not(TaxPercentage is null))'  ;


   Firstdate := '1300/01/01';
   Lastdate  := '1500/01/01' ;

  if ((Trim(fromInsert.Text) <>'') or (Trim(toInsert.text)<> '')) then
  begin
    if Trim(fromInsert.Text) ='' then
      fromInsert.Text := Firstdate ;

    if Trim(toInsert.Text) ='' then
      toInsert.Text := Lastdate ;

    if where <> '' then where := where + ' and contract.SignUpDate  between '''+Trim(fromInsert.Text)  +''' and  '''+Trim(toInsert.text)+''''
    else where := ' contract.SignUpDate  between '''+Trim(fromInsert.Text)  +''' and  '''+Trim(toInsert.text)+''''
  end ;

  if ((Trim(FromBegin.Text) <>'') or (Trim(toBegin.text)<> '')) then
  begin
    if Trim(FromBegin.Text) ='' then
      FromBegin.Text := Firstdate ;

    if Trim(toBegin.Text) ='' then
      toBegin.Text := Lastdate ;

    if where <> '' then where := where + ' and contract.Begindate between '''+Trim(FromBegin.Text)  +''' and  '''+Trim(toBegin.text)+''''
    else where := ' contract.Begindate between '''+Trim(FromBegin.Text)  +''' and  '''+Trim(toBegin.text)+''''
  end ;

  if ((Trim(FromEnd.Text) <>'') or (Trim(ToEnd.text)<> '')) then
  begin
    if Trim(FromEnd.Text) ='' then
      FromEnd.Text := Firstdate ;

    if Trim(ToEnd.Text) ='' then
      ToEnd.Text := Lastdate ;

    if where <> '' then where := where + ' and ( ( contract.Enddate  between '''+Trim(FromEnd.Text)  +''' and  '''+Trim(ToEnd.text)+''' )'
    else where := ' ( ( contract.Enddate  between '''+Trim(FromEnd.Text)  +''' and  '''+Trim(ToEnd.text)+''' ) '  ;

    Enddate:=  ToEnd.Text ;
    if Trim(Enddate) = '' then
      Enddate := _Today ;

    if CbCustomerHasAContract.Checked then
    begin
       where := where + ' or ( contract.Enddate  >= '''+Enddate  +''' ) '
    end;

    where := where +  ' ) '

  end  ;

  if dblState.KeyValue <> null then
  begin
    if where <> '' then where := where + ' and C.StateID = '+intToStr(dblState.KeyValue)
    else where := ' C.StateID = '+intToStr(dblState.KeyValue);

    if dblCity.KeyValue <> null then
    begin
      if where <> '' then where := where + ' and C.CityId = '+intToStr(dblCity.KeyValue)
      else where := ' C.CityId = '+intToStr(dblCity.KeyValue)
    end;
  end;

  if dblContractTypeCNT.KeyValue <> null then
  begin
    if where <> '' then where := where + ' and contract.ContractTypeID = '+intToStr(dblContractTypeCNT.KeyValue)
    else where := ' contract.ContractTypeID = '+intToStr(dblContractTypeCNT.KeyValue) ;

    if dblContractSubTypeCNT.KeyValue <> null then
    begin
      if where <> '' then where := where + ' and contract.ContractSubTypeID = '+intToStr(dblContractSubTypeCNT.KeyValue)
      else where := ' contract.ContractSubTypeID = '+intToStr(dblContractSubTypeCNT.KeyValue)
    end;
  end;



  dm.Open_Report_Contract(where);
  ContractGrid.UpdateFooter;
end;

procedure TFrep2.BitBtn2Click(Sender: TObject);
begin
 ContractGrid.Print;
end;

procedure TFrep2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrep2.BitBtn3Click(Sender: TObject);
begin
  inherited;
 ContractGrid.CustomizePrint;

end;

procedure TFrep2.FormCreate(Sender: TObject);
begin
  inherited;
YchecklistBox1.Fill;
end;

procedure TFrep2.chkSakeClick(Sender: TObject);
begin
  inherited;
  rdgSake.Enabled := chkSake.Checked;
end;

procedure TFrep2.btnShowContractWordClick(Sender: TObject);
begin
  inherited;
//  if (_ExportCustomerList = true)  then
      ContractGrid.ExportToWord ;//else ShowMessage('‘„« „ÃÊ“ ê—› ‰ Œ—ÊÃÌ «“ ·Ì”  —« ‰œ«—Ìœ');

end;

procedure TFrep2.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  { TODO -oparsa : 14030203 }
  if (NewWidth < 1082)  or (NewHeight < 614) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

procedure TFrep2.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
  ADOState.Open;
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  WITH(NOLOCK)  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
  SetdblContractType;
  fromInsert.Text := Copy(_Today,1,4) +'/01/01'  ;
end;

procedure TFrep2.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  YWhereEdit6.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  YWhereEdit7.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  YWhereEdit12.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  fromInsert.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  toInsert.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FromBegin.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  ToBegin.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  FromEnd.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  ToEnd.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFrep2.dblStateExit(Sender: TObject);
begin
  inherited;
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]   WITH(NOLOCK) where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TFrep2.dblCityEnter(Sender: TObject);
begin
  inherited;
  adoCity.SQL.Text := ' SELECT  CItyId , CityTitle ,StateId ,StateNum  FROM [dbo].[City]  WITH(NOLOCK)  where StateId = '+ IntToStr( ADOStateStateID.Value )+' ORDER BY CityTitle ';
  adoCity.Open;
end;

procedure TFrep2.dblStateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  replace1(Key,char(223),char(152));
end;

procedure TFrep2.SetdblContractType;
var dsdblContractType :TDataSource;
    dsdblsrchContractType :TDataSource;
    StrCmd:String;
begin
    StrCmd := 'select  ContractTypetitle, ContractTypeID,ContractTypeCode from ContractType ' ;
               // +'where ContractTypeID in (select ContractTypeId from UserTypeContractType where UserTypeID =  '+IntToStr(_UserTypeID)+') or '+IntToStr(_UserTypeID)+' = 0';

    SetQueryDataSet(dsdblContractType,qrydblContractType,StrCmd,Dm.YeganehConnection,true);

     if qrydblContractType.RecordCount >0 then
     begin
      SetDbLookUp(dblContractTypeCNT,dsdblContractType,'ContractTypetitle','ContractTypeID');
      dsdblContractType.OnDataChange := dblContractTypeDataChange;
     end;

end;

procedure TFrep2.dblContractTypeDataChange(Sender: TObject; Field: TField);
var dsdblContractSubType :TDataSource;
    ContractTypeId :Integer;
    StrCmd :String;
begin
  inherited;

    StrCmd := 'Select ContractSubTypeTitle,ContractTypeID,ContractSubTypeCode,ContractSubTypeID from ContractSubType where ContractTypeID ='
                +IntToStr(qrydblContractType.FieldByName('ContractTypeID').Value);

    SetQueryDataSet(dsdblContractSubType,qrydblContractSubType,StrCmd,Dm.YeganehConnection,true);

    if qrydblContractSubType.RecordCount  > 0    then
             SetDbLookUp(dblContractSubTypeCNT,dsdblContractSubType,'ContractSubTypeTitle','ContractSubTypeID');
end;

procedure TFrep2.dblContractTypeCNTExit(Sender: TObject);
begin
  inherited;
  SetdblContractType;
end;

procedure TFrep2.dblContractSubTypeCNTEnter(Sender: TObject);
begin
  inherited;
  SetdblContractType;
end;

procedure TFrep2.Button1Click(Sender: TObject);
begin
  inherited;
  dblContractTypeCNT.KeyValue := null ;
end;

procedure TFrep2.Button4Click(Sender: TObject);
begin
  inherited;
  dblCity.KeyValue := null ;
end;

procedure TFrep2.Button2Click(Sender: TObject);
begin
  inherited;
  dblContractSubTypeCNT.KeyValue := null ;
end;

procedure TFrep2.Button3Click(Sender: TObject);
begin
  inherited;
  dblState.KeyValue := null ;
end;

end.



