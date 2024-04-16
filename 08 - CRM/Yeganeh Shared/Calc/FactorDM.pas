unit FactorDM;

interface

uses
  SysUtils, Classes, DB, DBTables,Dialogs,Controls, ADODB;

type
  TDMFactor = class(TDataModule)
    DSUnit: TDataSource;
    DSArticle: TDataSource;
    DSFactor: TDataSource;
    DSFacDetails: TDataSource;
    DSCustomer: TDataSource;
    QrFactor: TADOQuery;
    QrFacDetails: TADOQuery;
    QrSrchFactor: TADOQuery;
    QrCustomer: TADOQuery;
    QrArticle: TADOQuery;
    QrUnit: TADOQuery;
    QrFactorFacDate: TStringField;
    QrFactorFacTime: TStringField;
    QrFactorRegisterDate: TStringField;
    QrFactorNumber: TIntegerField;
    QrFactorType: TStringField;
    QrFactorFactorePrice: TFloatField;
    QrFactorReducePrice: TFloatField;
    QrFactorCheckPrice: TFloatField;
    QrFactorTozihat: TStringField;
    QrFactorCashPrice: TFloatField;
    QrFactorFacPrBeHorof: TStringField;
    QrFactorCreditPrice: TFloatField;
    QrFactorRemaining: TFloatField;
    QrFactorRecivePrice_Calc: TFloatField;
    QrFactorLiquidate: TBooleanField;
    QrFacDetailsFactor_Ref: TIntegerField;
    QrFacDetailsArticle_Ref: TIntegerField;
    QrFacDetailsUnit_Ref: TIntegerField;
    QrFacDetailsUnitPrice: TFloatField;
    QrFacDetailsArtTotalPrice_Calc: TFloatField;
    QrFacDetailsRow: TIntegerField;
    QrArticleCode: TIntegerField;
    QrArticleName: TStringField;
    QrArticleServiceName: TStringField;
    QrArticleSalePrice: TFloatField;
    QrArticleExist: TIntegerField;
    QrArticleEndBuyPrice: TFloatField;
    QrArticleTozihat: TStringField;
    QrArticleStore_Ref: TIntegerField;
    QrArticleArtGroup_Ref1: TIntegerField;
    QrArticleArtGroup_Ref2: TIntegerField;
    QrArticleUnit_Ref: TIntegerField;
    QrArticleMaxBuy: TIntegerField;
    QrArticleBuyPrice: TFloatField;
    QrArticleAvgPrice: TFloatField;
    QrArticleCountry: TStringField;
    QrArticleAttribute1: TStringField;
    QrArticleAttribute2: TStringField;
    QrArticleModel: TStringField;
    QrArticleUnitName: TStringField;
    QrArticleUnitCount: TIntegerField;
    QrArticleIsService: TBooleanField;
    QrArticleBarcode: TStringField;
    QrUnitName: TStringField;
    QrUnitUnitCount: TIntegerField;
    QrFactorCustomer_Ref: TIntegerField;
    QrFactorUsers_Ref: TIntegerField;
    QrSrchFactorCustomer_Ref: TIntegerField;
    QrSrchFactorFacDate: TWideStringField;
    QrSrchFactorRegisterDate: TWideStringField;
    QrSrchFactorNumber: TIntegerField;
    QrSrchFactorUsers_Ref: TIntegerField;
    QrSrchFactorType: TWideStringField;
    QrSrchFactorCustName: TWideStringField;
    QrSrchFactorUserName: TWideStringField;
    QrCustomerCompanyName: TWideStringField;
    QrCustomerPersonTitle: TWideStringField;
    QrCustomerPhone: TWideStringField;
    QrCustomerAddress: TWideStringField;
    QrCustomerCustomeriD: TIntegerField;
    QrArticleArticle_ID: TAutoIncField;
    QrArticleOldExist1: TIntegerField;
    QrArticleOldExist2: TIntegerField;
    QrArticleOldEndBuyPrice1: TFloatField;
    QrArticleOldEndBuyPrice2: TFloatField;
    QrUnitUnit_ID: TAutoIncField;
    QrSrchFactorFactor_ID: TAutoIncField;
    QrFacDetailsFacDetails_ID: TAutoIncField;
    QrFactorFactor_ID: TAutoIncField;
    QrFacDetailsArtCount: TIntegerField;
    DSFa_Customer: TDataSource;
    QrFa_Customer: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    QrFactorCustName_LK: TStringField;
    QrFactorCustPhone_LK: TStringField;
    QrFactorCustAddress_LK: TStringField;
    QrFa_Users: TADOQuery;
    DSFa_Users: TDataSource;
    QrFactorUserName_LK: TStringField;
    QrFa_UsersId: TIntegerField;
    QrFa_UsersTitle: TWideStringField;
    DSFD_Article: TDataSource;
    DSFD_Unit: TDataSource;
    QrFD_Article: TADOQuery;
    QrFD_Unit: TADOQuery;
    QrFD_ArticleArticle_ID: TAutoIncField;
    QrFD_ArticleCode: TIntegerField;
    QrFD_ArticleName: TWideStringField;
    QrFD_ArticleSalePrice: TFloatField;
    QrFD_ArticleBuyPrice: TFloatField;
    QrFD_ArticleEndBuyPrice: TFloatField;
    QrFD_ArticleExist: TIntegerField;
    QrFD_ArticleTozihat: TWideStringField;
    QrFD_ArticleBarcode: TWideStringField;
    QrFD_UnitUnit_ID: TAutoIncField;
    QrFD_UnitName: TWideStringField;
    QrFD_UnitUnitCount: TIntegerField;
    QrFacDetailsArtName_LK: TStringField;
    QrFacDetailsUnitName_LK: TStringField;
    QrFacDetailsTozihat: TWideStringField;
    QrFacDetailsBarcode_LK: TStringField;
    procedure QrFactorFacDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrFactorFacDateSetText(Sender: TField; const Text: String);
    procedure QrFactorFactorePriceGetText(Sender: TField; var Text: String;DisplayText: Boolean);
    procedure QrFactorFactorePriceSetText(Sender: TField;const Text: String);
    procedure QrFactorAfterEdit(DataSet: TDataSet);
    procedure QrFactorAfterInsert(DataSet: TDataSet);
    procedure QrFactorAfterPost(DataSet: TDataSet);
    procedure QrFactorAfterScroll(DataSet: TDataSet);
    procedure QrFactorBeforeCancel(DataSet: TDataSet);
    procedure QrFactorBeforeDelete(DataSet: TDataSet);
    procedure QrFactorBeforeOpen(DataSet: TDataSet);
    procedure QrFactorBeforePost(DataSet: TDataSet);
    procedure QrFactorCalcFields(DataSet: TDataSet);
    procedure QrFacDetailsBeforeInsert(DataSet: TDataSet);
    procedure QrFacDetailsCalcFields(DataSet: TDataSet);
    procedure QrSrchFactorBeforeOpen(DataSet: TDataSet);
  private

  public
    FactorType : String[10];
    //‰«„ „‘ —Ì ÅÌ‘ ›—÷ ›—„ ›«ò Ê—
    FactorCustID : Integer;
    procedure Set_Cust_Data;
  end;

var
  DMFactor: TDMFactor;

implementation

Uses DMu , YShamsiDate;

{$R *.dfm}

procedure TDMFactor.QrFactorFacDateGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
   Text := #254 + Sender.AsString;
end;

procedure TDMFactor.QrFactorFacDateSetText(Sender: TField; Const Text: String);
begin
   Sender.AsString := Txt_Del254(Text);
end;

procedure TDMFactor.Set_Cust_Data;
begin                                
   QrFactorCustomer_Ref.AsInteger := QrCustomerCustomerID.AsInteger;
   QrFactorCustName_LK.AsString := Trim(QrCustomerCompanyName.AsString);
   //QrFactorCuTel.AsString := Trim(QrCustTel2.AsString) +' - '+ Trim(QrCustTel1.AsString);
   //QrFactorCuAddress.AsString := Trim(QrCustAddress.AsString);
end;

procedure TDMFactor.QrFactorFactorePriceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := CommaSeperate(Sender.AsString);
end;

procedure TDMFactor.QrFactorFactorePriceSetText(Sender: TField;
  const Text: String);
begin
   Sender.AsFloat := StrToIntDef(DeleteComma(Text) ,0);
end;

procedure TDMFactor.QrFactorAfterEdit(DataSet: TDataSet);
begin
   DSFacDetails.AutoEdit := True;
end;

procedure TDMFactor.QrFactorAfterInsert(DataSet: TDataSet);
begin
   QrFactorFacDate.AsString := _Today;
   QrFactorFacTime.AsString := Time_GetTime(Dm.YeganehConnection,False);
   QrFactorRegisterDate.AsString := _Today;
   QrFactorNumber.AsInteger := Dm.YeganehConnection.Execute('Select IsNull(Max(Number),0)+1 from Factor Where Type = '+QuotedStr(FactorType)).Fields[0].Value;
   QrFactorFactorePrice.AsFloat := 0;
   QrFactorReducePrice.AsFloat := 0;
   QrFactorCheckPrice.AsFloat := 0;
   QrFactorCashPrice.AsFloat := 0;
   QrFactorCreditPrice.AsFloat := 0;
   QrFactorLiquidate.AsBoolean := False; //›«ò Ê—  ”ÊÌÂ ‘œÂ

   QrFactorUsers_Ref.AsInteger := _UserID;

   if FactorCustID > 0 then
   begin
      QrCustomer.close;
      Qry_DeleteWhere(QrCustomer);
      Qry_AddWhere(QrCustomer , ' CustomerID = '+ IntToStr(FactorCustID));
      QrCustomer.Open;
      if QrCustomer.Locate('CustomerID',FactorCustID,[]) then
         Set_Cust_Data;
      QrCustomer.Close;
      Qry_DeleteWhere(QrCustomer);
   end;

   DSFacDetails.AutoEdit := True;
end;

procedure TDMFactor.QrFactorAfterPost(DataSet: TDataSet);
begin

   //–ŒÌ—Â Ã“∆Ì«  ›«ò Ê—
   QrFacDetails.First;
   While not QrFacDetails.Eof do
   begin
      if QrFacDetailsArticle_Ref.IsNull then
         QrFacDetails.Delete;
      QrFacDetails.Edit;

      QrFacDetailsFactor_Ref.AsInteger := QrFactorFactor_ID.AsInteger;

      //„ﬁœ«— ‰„Ì êÌ—œ Old_FacDetails_ID œ·Ì· : Å«—«„ —
      {USFacDetails.ModifySQL.Text :=
      'update FacDetails set FacDetails_ID = :FacDetails_ID,Factor_Ref = :Factor_Ref,'+
      'Article_Ref = :Article_Ref,Unit_Ref = :Unit_Ref,UnitPrice = :UnitPrice,ArtCount = :ArtCount '+
      ' where FacDetails_ID = :FacDetails_ID';}
      QrFacDetails.Post;
      QrFacDetails.Next;
   end;
   QrFacDetails.UpdateBatch(arAll);
   DSFacDetails.AutoEdit := False;
   //----

   QrFactorAfterScroll(QrFactor);
   QrFacDetails.Last;
end;

procedure TDMFactor.QrFactorAfterScroll(DataSet: TDataSet);
begin
   QrFacDetails.Close;
   QrFacDetails.Parameters.ParamByName('Factor_ID1').value := QrFactorFactor_ID.AsInteger;
   QrFacDetails.Parameters.ParamByName('Factor_ID2').value := QrFactorFactor_ID.AsInteger;
   QrFacDetails.Open;

   if QrFactor.State = dsInsert then
      QrFacDetails.Append;
end;

procedure TDMFactor.QrFactorBeforeCancel(DataSet: TDataSet);
begin
   DSFacDetails.AutoEdit := False;
   QrFacDetails.CancelUpdates;
   QrFactorAfterScroll(nil);
end;

procedure TDMFactor.QrFactorBeforeDelete(DataSet: TDataSet);
Var
   ChequeCount : Integer;
begin
   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–› —ﬂÊ—œ Ã«—Ì Â” Ìœø',mbOKCancel,mtWarning) <> mrOK then
      Abort;

   ChequeCount := Dm.YeganehConnection.Execute('Select Count(Cheque_ID) from Cheque Where Factor_Ref = '+QrFactorFactor_ID.AsString).Fields[0].Value;
   if ChequeCount > 0 then
   begin
      ShowMyMessage('ÅÌ€«„','«Ì‰ ›«ò Ê— œ«—«Ì çò „Ì »«‘œ. ·ÿ›« «» œ« çòÂ« —« Õ–› ‰„«ÌÌœ',[mbOK],mtInformation);
      Abort;
   end;

   While QrFacDetails.RecordCount > 0 do
      QrFacDetails.Delete;
      
   DSFacDetails.AutoEdit := False;
end;

procedure TDMFactor.QrFactorBeforeOpen(DataSet: TDataSet);
begin
   QrFactor.Parameters.ParamByName('Type').value := FactorType;
end;

procedure TDMFactor.QrFactorBeforePost(DataSet: TDataSet);
Var
   CustTitle:String[30];
   DuplicateNum : Integer;
begin
   //›—Ê‘ ° »—ê‘  «“ ›—Ê‘ ° «„«‰Ì Ê «’ÿÂ·«ò
   if (FactorType = 'F') or (FactorType = 'BF')or (FactorType = 'A')or (FactorType = 'E')or (FactorType = 'P') then
      CustTitle := '‰«„ Œ—Ìœ«—';
   //Œ—Ìœ Ê »—ê‘  «“ Œ—Ìœ
   if (FactorType = 'KH') or (FactorType = 'BKH') then
      CustTitle := '‰«„ ›—Ê‘‰œÂ';

   Qry_IFFieldIsEmpty(QrFactorCustomer_Ref , CustTitle);
   Qry_IFFieldIsEmpty(QrFactorNumber , '‘„«—Â ›«ò Ê—');

   //Ã·ÊêÌ—Ì «“ ‘„«—Â ›«ò Ê—  ò—«—Ì
   {DuplicateNum := Dm.YeganehConnection.Execute('Select Top 1 Factor_ID From Factor Where Type = ' +
                   QuotedStr(FactorType) + ' And Number = ' + QrFactorNumber.AsString).Fields[0].Value;
   if (DuplicateNum > 0)And(DuplicateNum <> QrFactorFactor_ID.AsInteger) then //ÊÌ—«Ì‘
   begin
      ShowMyMessage('ÅÌ€«„','‘„«—Â ›«ò Ê—  ò—«—Ì „Ì»«‘œ . ·ÿ›« «’·«Õ ‰„«ÌÌœ',[mbOK],mtInformation);
      Abort;
   end;}

//if Not Date_IsFaDate(QrFactorFacDate.AsString,' «—ÌŒ ›«ò Ê—') then
      //Abort;
   if QrFactor.State = dsInsert then
      QrFactorType.AsString := UpperCase(FactorType);

   if QrFactorRemaining.AsFloat = 0 then
   begin
      QrFactorLiquidate.AsBoolean := True; //›«ò Ê—  ”ÊÌÂ ‘œÂ
      //QrFactorLiquidateName.AsString := ' ”ÊÌÂ ‘œÂ';
   end
      else
      begin
         QrFactorLiquidate.AsBoolean := False; //Liquidate :  ”ÊÌÂ ò—œ‰
         //QrFactorLiquidateName.AsString := ' ”ÊÌÂ ‰‘œÂ';
      end;

   //---

end;

procedure TDMFactor.QrFactorCalcFields(DataSet: TDataSet);
begin
   QrFactorFacPrBeHorof.AsString := AdadBeHorof(QrFactorFactorePrice.AsInteger)+ ' —Ì«· ';

   QrFactorRemaining.AsFloat := (QrFactorFactorePrice.AsFloat) -
                                (QrFactorReducePrice.AsFloat + QrFactorCashPrice.AsFloat +
                                 QrFactorCheckPrice.AsFloat  + QrFactorCreditPrice.AsFloat);

   QrFactorRecivePrice_Calc.AsFloat := (QrFactorCashPrice.AsFloat  + QrFactorCheckPrice.AsFloat);
end;

procedure TDMFactor.QrFacDetailsBeforeInsert(DataSet: TDataSet);
begin
   if not(QrFactor.State in [dsEdit,dsInsert]) then
      Abort;
end;

procedure TDMFactor.QrFacDetailsCalcFields(DataSet: TDataSet);
begin
   //Ã„⁄ =  ⁄œ«œ * ﬁÌ„  ò«·« *  ⁄œ«œ Ê«Õœ ò«·«
   QrFacDetailsArtTotalPrice_Calc.AsFloat := (QrFacDetailsArtCount.AsInteger) *
                                             (QrFacDetailsUnitPrice.AsFloat)  *
                                             //(QrFacDetailsUnitCount.AsInteger);
                                             (QrFD_UnitUnitCount.AsInteger);  
end;

procedure TDMFactor.QrSrchFactorBeforeOpen(DataSet: TDataSet);
begin
   QrSrchFactor.Parameters.ParamByName('Type').Value := FactorType;
end;

end.
