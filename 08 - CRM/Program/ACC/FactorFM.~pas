unit FactorFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables,BaseUnit, ExtActns, ActnList, frxClass,
  frxDBSet, frxDesgn, ADODB;

type
  TFMFactor = class(TMBaseForm)
    PopEmkanat: TPopupMenu;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    MenuItem1: TMenuItem;
    d1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    PopDBGrid: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    pnlMain: TPanel;
    Panel1: TPanel;
    LblType: TLabel;
    LabelDate: TLabel;
    Label11: TLabel;
    CBFactorType: TComboBox;
    Panel2: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    SBSrchCust: TSpeedButton;
    Label4: TLabel;
    DBTCustPhone: TDBText;
    LblNumber: TLabel;
    lblDate: TLabel;
    Label15: TLabel;
    DBTxtCustAddress: TDBText;
    SBCustomer: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBECustName_LK: TDBEdit;
    DBENumber: TDBEdit;
    DBEFacDate: TDBEdit;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SBReport: TSpeedButton;
    LblLiquidateName: TLabel;
    DBTxtLiquidateName: TDBText;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBTFacPrBeHorof: TDBText;
    Label13: TLabel;
    DBETozihat: TDBEdit;
    DBEFactorePrice: TDBEdit;
    DBEUserName: TDBEdit;
    DBEValueAdded: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBETotalFactorPrice: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEDiscount: TDBEdit;
    Label21: TLabel;
    pnlDetail: TPanel;
    SBAddArticle: TSpeedButton;
    SBDelArticle: TSpeedButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    DBEArtName: TDBEdit;
    EdtBarcode: TEdit;
    DBEArtCount: TDBEdit;
    DBEUnitPrice: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBChIsCash: TDBCheckBox;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    frxDBFactorDetailDataSet: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBFactorHederDataSet: TfrxDBDataset;
    DSHeader: TDataSource;
    DSDetail: TDataSource;
    SBEmkanat: TBitBtn;
    SBSearch: TBitBtn;
    btnDetailAddress: TBitBtn;
    frxDesigner1: TfrxDesigner;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    QDetail: TADOQuery;
    QHeader: TADOQuery;
    QDetailFacDetails_ID: TIntegerField;
    QDetailFactor_Ref: TIntegerField;
    QDetailArticle_Ref: TIntegerField;
    QDetailUnit_Ref: TIntegerField;
    QDetailUnitPrice: TFloatField;
    QDetailArtCount: TIntegerField;
    QDetailTozihat: TStringField;
    QDetailDiscountLine: TFloatField;
    QDetailTotalPriceLine: TFloatField;
    QDetailAddedValueLine: TFloatField;
    QDetailTaxPayerID: TStringField;
    QHeaderFactor_ID: TIntegerField;
    QHeaderCustomer_Ref: TIntegerField;
    QHeaderFacDate: TStringField;
    QHeaderFacTime: TStringField;
    QHeaderRegisterDate: TStringField;
    QHeaderNumber: TIntegerField;
    QHeaderType: TStringField;
    QHeaderFactorePrice: TFloatField;
    QHeaderReducePrice: TFloatField;
    QHeaderCashPrice: TFloatField;
    QHeaderCheckPrice: TFloatField;
    QHeaderUsers_Ref: TIntegerField;
    QHeaderCreditPrice: TFloatField;
    QHeaderTozihat: TStringField;
    QHeaderLiquidate: TBooleanField;
    QHeaderValueAdded: TFloatField;
    QHeaderTotalFactorPrice: TFloatField;
    QHeaderDiscount: TFloatField;
    QHeaderIsCash: TBooleanField;
    QDetailArtName_LK: TStringField;
    QDetailUnitName_LK: TStringField;
    QDetailRowID: TLargeintField;
    QDetailArtTotalPrice_Calc: TIntegerField;
    QDetailLineTotalPrice_Calc: TIntegerField;
    QDetailMainTotalPrice_Calc: TFloatField;
    SBFactorMony: TBitBtn;
    btntofactor: TBitBtn;
    DBERelatedFactor: TDBEdit;
    LblRelatedFactor: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CBFactorTypeClick(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SBSearchClick(Sender: TObject);
    procedure SBSrchCustClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure SBAddArticleClick(Sender: TObject);
    procedure SBDelArticleClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure SBEmkanatClick(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure d1Click(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBECustName_LKKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure EdtBarcodeChange(Sender: TObject);
    procedure DBEUnitPriceExit(Sender: TObject);
    procedure EdtBarcodeEnter(Sender: TObject);
    procedure EdtBarcodeClick(Sender: TObject);
    procedure SBCustomerClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnDetailAddressClick(Sender: TObject);
    procedure frxReport2GetValue(const VarName: String;
      var Value: Variant);
    procedure frxReport2BeforePrint(Sender: TfrxReportComponent);
    procedure QDetailCalcFields(DataSet: TDataSet);
    procedure SBFactorMonyClick(Sender: TObject);
    procedure btntofactorClick(Sender: TObject);
  private
    procedure Set_FacDetails_Data;
    procedure ReportShow;
  public
    FromFollowUp : Boolean ;
    ShowFactor : Boolean ;
    ExternalFactorId : Integer ;
    ExternalCustomerId : Integer ;
    PostFactorID : Integer ;
    { Public declarations }
  end;

var
  FMFactor: TFMFactor;

implementation

Uses FactorDM , DMu , YShamsiDate, ArticleFM, StoreFM,
  FirstArtGroupFM, SecendArtGroupFM, UnitFM, MainU, Telinputunit,
  FactorMonyFM, SearchFM, UFactorAddress;

{$R *.dfm}

procedure TFMFactor.FormCreate(Sender: TObject);
begin
   DMFactor := TDMFactor.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMFactor.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  PostFactorID := DMFactor.PostFactorID ;

   With DMFactor do
   begin
      QrFacDetails.Close;
      QrCustomer.Close;
      QrArticle.Close;
      QrUnit.Close;
      QrSrchFactor.Close;
   end;
   Qry_CloseAllQry(DMFactor);
   FreeAndNil(DMFactor);
end;

procedure TFMFactor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   Form_SetShortCut(Self,DBNavigator1,SBSearch,SBReport,Sender,Key,Shift);

   if (ssctrl in Shift) then
   begin
      if (Key=Word('E')) then
         SBEmkanat.Click; //œò„Â «„ò«‰« 
   end;

   if Key = Vk_F12 then
      SBFactorMony.Click; // ⁄ÌÌ‰ „»·€ œ—Ì«› Ì

   if (Key = VK_Return)And(Shift=[])And (ActiveControl <> DBGrid1) then
      SelectNext(TWinControl(ActiveControl),True,True);

   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;

procedure TFMFactor.FormShow(Sender: TObject);
begin
    SBSearch.Visible  := not FromFollowUp ;
    SBEmkanat.Visible := not FromFollowUp ;
    if FromFollowUp then
      DBNavigator1.VisibleButtons := [nbEdit,nbPost,nbCancel] ;



      
    ShapeBase.Brush.Color := _Color1 ;
    pnlMain.Color := _Color1 ;
    LblNumber.Caption := '‘„«—Â ›«ò Ê— :';
    lblDate.Caption   := ' «—ÌŒ ›«ò Ê— :';
   // ⁄ÌÌ‰ ‰Ê⁄ ›«ò Ê—
   if UpperCase(Hint) = 'F' then //›—Ê‘
   begin
      CBFactorType.ItemIndex := 0;
      DBGrid1.Color := $00FFF0F1;
      LblType.Caption := '›«ò Ê— ›—Ê‘';
      btnDetailAddress.Visible := True;
      DBERelatedFactor .Visible := True;
      LblRelatedFactor .Visible := True;
      LblRelatedFactor.Caption := 'ÅÌ‘ ›«ò Ê— „— »ÿ :';
      Self.Caption := '›—„ À»  ›«ò Ê—' ;
   end
   else
      if UpperCase(Hint) = 'KH' then //Œ—Ìœ
      begin
         CBFactorType.ItemIndex := 1;
         DBGrid1.Color := $00F0F0FF;
         LblType.Caption := '›«ò Ê— Œ—Ìœ';
         Self.Caption := '›—„ À»  ›«ò Ê—' ;
      end
      else
         if UpperCase(Hint) = 'P' then //ÅÌ‘ ›«ò Ê—
         begin
            CBFactorType.ItemIndex := 2;
            DBGrid1.Color := $00F0FFF2;
            LblType.Caption := 'ÅÌ‘ ›«ò Ê—';
            SBFactorMony.Visible := False;
            LblLiquidateName.Visible := False;
            DBTxtLiquidateName.Visible := False;
            btntofactor.Visible := True;
            btnDetailAddress.Visible := True;
            DBERelatedFactor .Visible := True;
            LblRelatedFactor .Visible := True;
            LblRelatedFactor.Caption := '›«ò Ê— ›—Ê‘ „— »ÿ :';
            Self.Caption := '›—„ À»  ÅÌ‘ ›«ò Ê—' ;
            LblNumber.Caption := '‘„«—Â ÅÌ‘ ›«ò Ê— :';
            lblDate.Caption   := ' «—ÌŒ ÅÌ‘ ›«ò Ê— :';
         end
         else
            if UpperCase(Hint) = 'BF' then //»—ê‘  «“ ›—Ê‘
            begin
               CBFactorType.ItemIndex := 3;
               DBGrid1.Color := $00C1E6F7;
               LblType.Caption := '›«ò Ê— »—ê‘  «“ ›—Ê‘';
               Self.Caption := '›—„ À»  ›«ò Ê—' ;
            end
            else
               if UpperCase(Hint) = 'BKH' then //»—ê‘  «“ Œ—Ìœ
               begin
                  CBFactorType.ItemIndex := 4;
                  DBGrid1.Color := $00FFE1EF;
                  LblType.Caption := '›«ò Ê— »—ê‘  «“ Œ—Ìœ';
                  Self.Caption := '›—„ À»  ›«ò Ê—' ;
               end
               else
                  if UpperCase(Hint) = 'A' then //«„«‰Ì
                  begin
                     CBFactorType.ItemIndex := 5;
                     DBGrid1.Color := $00E1FEFF;
                     LblType.Caption := '›«ò Ê— «„«‰Ì';
                     Self.Caption := '›—„ À»  ›«ò Ê—' ;
                  end
                  else
                     if UpperCase(Hint) = 'E' then //«’ÿÂ·«ò
                     begin
                        CBFactorType.ItemIndex := 6;
                        DBGrid1.Color := $00FFFEE1;
                        LblType.Caption := '›«ò Ê— «” Â·«ﬂ';
                        Self.Caption := '›—„ À»  ›«ò Ê—' ;
                     end;
   CBFactorTypeClick(Sender);

   With DMFactor do
   begin
      QrFa_Customer.Open;
      QrFa_Users.Open;

      QrFactor.Open;
      QrFactor.Last;
      //‰«„ „‘ —Ì ÅÌ‘ ›—÷ ›—„ ›«ò Ê—
      //FactorCustID := Setting_GetValue('FactorCustID','0','Integer',0);
   end;
   LabelDate.Caption := _Today;

   if FromFollowUp then
   begin
     if ExternalFactorId >0 then
     begin
       DMFactor.QrFactor.Locate('Factor_ID',ExternalFactorId,[]);
     end
     else
     begin
       DMFactor.FactorCustID := ExternalCustomerId ;
       DBNavigator1.DataSource.DataSet.Insert ;

       {
       DMFactor.QrCustomer.Locate('CustomerID',ExternalCustomerId,[]);
       DMFactor.QrFactorCustomer_Ref.AsInteger := DMFactor.QrCustomerCustomerID.AsInteger;
       DMFactor.QrFactorCustName_LK.AsString   := Trim(DMFactor.QrCustomerCompanyName.AsString);
       }
     end;
   end;

  if  ShowFactor then
  begin
    DBNavigator1.Visible := False ;
    SBSearch.Visible  := False ;
    SBEmkanat.Visible := False ;
    btnDetailAddress.Visible := False ;
    btntofactor.Visible := False ;
  end;
   //Form_Animate(Self,100);
end;

procedure TFMFactor.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFMFactor.CBFactorTypeClick(Sender: TObject);
begin
   With DMFactor do
      Case CBFactorType.ItemIndex of
         0: FactorType := 'F';  //›—Ê‘
         1: FactorType := 'KH'; //Œ—Ìœ
         2: FactorType := 'P';  //ÅÌ‘ ›«ò Ê—
         3: FactorType := 'BF'; //»—ê‘  «“ ›—Ê‘
         4: FactorType := 'BKH';//»—ê‘  «“ Œ—Ìœ
         5: FactorType := 'A';  //«„«‰Ì
         6: FactorType := 'E';  //«’ÿÂ·«ò
      end;
end;

procedure TFMFactor.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin

   if Button = nbInsert then
      DBECustName_LK.SetFocus;
   if Button = nbPost then
      DBETozihat.SetFocus;

end;

procedure TFMFactor.SBSearchClick(Sender: TObject);
begin
   if FmSearch.GetSearchValue(DMFactor.QrSrchFactor ,'Factor_ID', 'Number' , ' ' , 400 , 500 ) <> '0' then
      DMFactor.QrFactor.Locate('Factor_ID',DMFactor.QrSrchFactorFactor_ID.AsInteger,[]);
end;

procedure TFMFactor.SBSrchCustClick(Sender: TObject);
begin
   if not(DMFactor.QrFactor.State in [dsInsert,dsEdit]) then
      Exit;

   With DMFactor do
      if (QrFactorCustomer_Ref.IsNull) or (QrFactorCustomer_Ref.AsInteger = 0) then
         if FmSearch.GetSearchValue(QrCustomer ,'CustomerID', 'CompanyName' , ' ' , 400 , 600 ) <> '0' then
         begin
            QrFactorCustomer_Ref.AsInteger := QrCustomerCustomerID.AsInteger;
            QrFactorCustName_LK.AsString := Trim(QrCustomerCompanyName.AsString);
         end;
end;

procedure TFMFactor.Set_FacDetails_Data;
begin
   With DMFactor do
   begin
      QrFacDetailsArticle_Ref.AsInteger := QrArticleArticle_ID.AsInteger;
      //QrFacDetailsArtName.AsString := QrArticleName.AsString;
      QrFacDetailsUnit_Ref.AsInteger := QrArticleUnit_Ref.AsInteger;
      //QrFacDetailsUnitName.AsString := QrArticleUnitName.AsString;
      //QrFacDetailsUnitCount.AsInteger := QrArticleUnitCount.AsInteger;
      //if QrFacDetailsUnitCount.AsInteger = 0 then
         //QrFacDetailsUnitCount.AsInteger := 1;
      if (FactorType='KH')or(FactorType='BKH')or(FactorType='E') then

         QrFacDetailsUnitPrice.AsFloat := QrArticleEndBuyPrice.AsFloat //¬Œ—Ì‰ ﬁÌ„  Œ—Ìœ
      else
         QrFacDetailsUnitPrice.AsFloat := QrArticleSalePrice.AsFloat;  //ﬁÌ„  ›—Ê‘

      QrFacDetailsTaxPayerID.AsString := QrArticleTaxPayerID.AsString;

      QrFacDetailsArtCount.AsInteger := QrArticleExist.AsInteger;
      if QrFacDetailsArtCount.AsInteger = 0 then
         QrFacDetailsArtCount.AsInteger := 1;
      QrFacDetailsTozihat.AsString := QrArticleTozihat.AsString;
      //QrFacDetailsBarCode_LK.AsString := QrArticleBarcode.AsString;
   end;
end;

procedure TFMFactor.DBGrid1EditButtonClick(Sender: TObject);
begin

   With DMFactor do
   begin
      if not(QrFactor.State in [dsInsert,dsEdit]) then
         Exit;

      if (QrFactor.State = dsInsert)And(QrFacDetails.State <> dsInsert) then
         QrFacDetails.Append;
      if (QrFactor.State = dsEdit)And Not(QrFacDetails.State in [dsEdit,dsInsert]) then
         QrFacDetails.Edit;

      //” Ê‰ ‰«„ ò«·«
      if DBGrid1.SelectedField.FieldName = QrFacDetailsArtName_LK.FieldName then
      begin
         QrArticle.Close;
         if FmSearch.GetSearchValue(QrArticle ,'Article_ID', 'Name' , ' ' , 400 , 600 ) <> '0' then
         begin
            Set_FacDetails_Data;
         end;
      end;


      //” Ê‰ Ê«Õœ ò«·«
      if DBGrid1.SelectedField.FieldName = QrFacDetailsUnitName_LK.FieldName then
         if FmSearch.GetSearchValue(QrUnit ,'Unit_ID', 'Name' , ' ' , 400 , 400 ) <> '0' then
         begin
            QrFacDetailsUnit_Ref.AsInteger := QrUnitUnit_ID.AsInteger;
            //QrFacDetailsUnitName.AsString := QrUnitName.AsString;
         end;
   end;
end;

procedure TFMFactor.SBAddArticleClick(Sender: TObject);
begin
   if not(DMFactor.QrFactor.State in [dsInsert,dsEdit]) then
      Exit;

   DMFactor.QrFacDetails.Append;
   if not DBGrid1.Focused then
      DBGrid1.SetFocus;
   //DBGrid1.SelectedField := DMFactor.QrFacDetailsBarcode_LK; //” Ê‰ »«—òœ
   DBGrid1.SelectedField := DMFactor.QrFacDetailsArtName_LK; //” Ê‰ »«—òœ
end;

procedure TFMFactor.SBDelArticleClick(Sender: TObject);
begin
   if not(DMFactor.QrFactor.State in [dsInsert,dsEdit]) then
      Exit;
   if DMFactor.QrFacDetails.RecordCount = 0 then
      Exit;
   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–› —ﬂÊ—œ Ã«—Ì Â” Ìœø',mbOKCancel,mtWarning) = mrOK then
      DMFactor.QrFacDetails.Delete;

   DBGrid1Exit(Sender);//Ã„⁄ „Õ«”»Â Â«
end;

procedure TFMFactor.DBGrid1Exit(Sender: TObject);
Var
   RecNo : Integer;
   SumPrice : Double;
   SumCount : Integer;
   valueAdded : Integer;
   DiscountLine, AddedValueLine : Double;
begin
   With DMFactor do
   begin
      if Not(QrFactor.State in [dsEdit,dsInsert]) then
         Exit;

      QrFacDetails.DisableControls;
      //ID := QrFacDetailsFacDetails_ID.AsInteger;
      RecNo := QrFacDetails.RecNo;
      SumPrice := 0;
      QrFacDetails.First;
      While not QrFacDetails.Eof do
      begin
         SumPrice := SumPrice + QrFacDetailsArtTotalPrice_Calc.AsFloat;
         SumCount := SumCount + QrFacDetailsArtCount.AsInteger;
         DiscountLine := DiscountLine + QrFacDetailsDiscountLine.AsFloat;
         AddedValueLine := AddedValueLine + QrFacDetailsAddedValueLine_Calc.AsFloat;
         QrFacDetails.Next;
      end;
      QrFactorFactorePrice.AsFloat := SumPrice;
      QrFactorDiscount .AsFloat    := DiscountLine ;
      QrFactorValueAdded .AsFloat  := AddedValueLine;

      valueAdded := DM.YeganehConnection.Execute( ' if Exists(select 1 from dbo.TaxPerYear where [Year]= '+copy(_Today,1,4)+' ) select TOP 1 isnull(TaxPercentage,0) from dbo.TaxPerYear where [Year]= '+copy(_Today,1,4)+' else   select TOP 1 isnull(TaxPercentage,0) from dbo.TaxPerYear order by [Year] desc ').Fields[0].Value;

      QrFactorValueAdded.AsFloat := ((SumPrice - QrFactorDiscount.AsFloat )* valueAdded)/100 ;
      if valueAdded  = 0 then
      valueAdded := 9 ;
      QrFactorTotalFactorPrice.AsFloat := (SumPrice - QrFactorDiscount.AsFloat )+ (((SumPrice- QrFactorDiscount.AsFloat )* valueAdded)/100 );
      //QrFacDetails.Locate('FacDetails_ID',ID,[]);
      //QrFacDetails.RecNo := RecNo;
      QrFacDetails.EnableControls;

   end;

end;

procedure TFMFactor.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = Char(Vk_Return) then
   begin
      //if DBGrid1.SelectedField = DMFactor.QrFacDetailsUnitPrice then
         //DBGrid1.SelectedField := DMFactor.QrFacDetailsTozihat;

      if DBGrid1.SelectedField = DMFactor.QrFacDetailsTozihat then
         DBGrid_SelectNextCol(DBGrid1,True,0,13,[])
      else
         DBGrid_SelectNextCol(DBGrid1,True,DBGrid1.SelectedField.Index+1,13,[]);

      //›ÊòÊ” ‰ò—œ‰ —ÊÌ ” Ê‰ Ã„⁄ Ê —œÌ›
      if (DBGrid1.SelectedField.FieldName = DMFactor.QrFacDetailsArtTotalPrice_Calc.FieldName)
         Or(DBGrid1.SelectedField.FieldName = DMFactor.QrFacDetailsRow.FieldName) then
         DBGrid_SelectNextCol(DBGrid1,True,0,13,[]);
   end
   else
      begin
         //” Ê‰ ‰«„ ò«·« Ê Ê«Õœ ò«·«
         if (DBGrid1.SelectedField.FieldName = DMFactor.QrFacDetailsArtName_LK.FieldName) or
            (DBGrid1.SelectedField.FieldName = DMFactor.QrFacDetailsUnitName_LK.FieldName) then
            DBGrid1EditButtonClick(Sender);
      end;

end;

procedure TFMFactor.N2Click(Sender: TObject);
begin
   //Bpl_LoadFormScroll('TFMArticle',0,'',True); //  ›—„  ⁄—Ì› ò«·«
   FMArticle := TFMArticle.Create(Self);
   FMArticle.ShowModal;
end;

procedure TFMFactor.N1Click(Sender: TObject);
begin
   SBCustomer.Click;
end;

procedure TFMFactor.N3Click(Sender: TObject);
begin
   //Bpl_LoadFormScroll('TFMStore',0,'',True); //  ⁄—Ì› «‰»«—
   FMStore := TFMStore.Create(Self);
   FMStore.ShowModal;
end;

procedure TFMFactor.N4Click(Sender: TObject);
begin
   //Bpl_LoadFormScroll('TFMFirstArtGroup',0,'',True); //  ⁄—Ì› ê—ÊÂ «’·Ì ò«·«
   FMFirstArtGroup := TFMFirstArtGroup.Create(Self);
   FMFirstArtGroup.ShowModal;
end;

procedure TFMFactor.N5Click(Sender: TObject);
begin
   //Bpl_LoadFormScroll('TFMSecendArtGroup',0,'',True); //  ⁄—Ì› ê—ÊÂ ›—⁄Ì ò«·«
   FMSecendArtGroup := TFMSecendArtGroup.Create(Self);
   FMSecendArtGroup.ShowModal;
end;

procedure TFMFactor.N6Click(Sender: TObject);
begin
   //Bpl_LoadFormScroll('TFMUnit',0,'',True); //›—„  ⁄—Ì› Ê«Õœ ò«·«
   FMUnit := TFMUnit.Create(Self);
   FMUnit.ShowModal;
end;

procedure TFMFactor.N7Click(Sender: TObject);
begin
   MainForm.EnterData_CallForm( 30 , ' ⁄—Ì› »«‰ò' , 'ﬂœ' , '‰«„ »«‰ò' , ' Ê÷ÌÕ« ' ,0); //›—„  ⁄—Ì› »«‰ò
end;

procedure TFMFactor.SBEmkanatClick(Sender: TObject);
begin
   Cursor_SetPos(Self,SBEmkanat,PopEmkanat);
end;

procedure TFMFactor.N10Click(Sender: TObject);
begin
   WinExec(Pchar('Calc.exe'),1);
end;

procedure TFMFactor.NShowClick(Sender: TObject);
begin

  ReportShow ;
  { DMRepCalc1 := TDMRepCalc1.Create(Nil);
   With DMRepCalc1 do
      Try
         QrFactor.Close;
         //ÃÂ  ‰„«Ì‘ —òÊ—œ Ã«—Ì
         Dm.Qry_AddWhere(QrFactor,'(Fac.Factor_ID = ' + DMFactor.QrFactorFactor_ID.AsString +' ) ');
         QrFactor.Open;

         if Sender = NShow  then
            Rep_LoadAndShow(frxRepFactor,'Factor1.fr3',rtShow);
         if Sender = NPrint  then
            Rep_LoadAndShow(frxRepFactor,'Factor1.fr3',rtPrint);
         if Sender = NDesign  then
            Rep_LoadAndShow(frxRepFactor,'Factor1.fr3',rtDesign);
      Finally
         QrFacDetails.Close;
         QrFactor.Close;
         FreeAndNil(DMRepCalc1);
      End;      }
end;

procedure TFMFactor.d1Click(Sender: TObject);
begin
   Rep_CorrectDesign('Factor1.fr3'); //Change
end;

procedure TFMFactor.SBReportClick(Sender: TObject);
begin
   if DMFactor.QrFactor.State in [dsInsert,dsEdit] then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ﬁ»· «“ ê“«—‘êÌ—Ì «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;

   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFMFactor.N12Click(Sender: TObject);
begin
   SBAddArticle.Click;
end;

procedure TFMFactor.N13Click(Sender: TObject);
begin
   SBDelArticle.Click;
end;

procedure TFMFactor.DBGrid1Enter(Sender: TObject);
begin
   DBGrid1.SelectedField := DMFactor.QrFacDetailsArtName_LK; //” Ê‰ »«—òœ
end;

procedure TFMFactor.DBECustName_LKKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   if Key = Vk_Space then
      SBCustomer.Click;
end;

procedure TFMFactor.DBGrid1ColExit(Sender: TObject);
Var
   Article_ID : Integer;
begin
   //ÃÂ  «” ›«œÂ «“ »«—òœ ŒÊ«‰
   {With DMFactor do
      if (DBGrid1.SelectedField.FieldName = QrFacDetailsBarcode_LK.FieldName)And(Trim(QrFacDetailsBarcode_LK.asString)<>'') then
      begin
         if not(QrFactor.State in [dsEdit,dsInsert]) then
            Exit;
            
         if (QrFactor.State in [dsEdit,dsInsert])And not(QrFacDetails.State in [dsEdit,dsInsert]) then
            QrFacDetails.Edit;
         Article_ID := Dm.YeganehConnection.Execute('Select Article_ID From Article Where Barcode = '+
                                   QuotedStr(QrFacDetailsBarcode_LK.AsString)).Fields[0].Value;
         if Article_ID > 0 then
         begin
            QrArticle.Close;
            Dm.Qry_DeleteWhere(QrArticle);
            Dm.Qry_AddWhere(QrArticle,' (Article_ID = '+IntToStr(Article_ID)+')');
            QrArticle.Open;
            Set_FacDetails_Data;
            QrFacDetailsArtCount.AsInteger := 1;

            QrArticle.Close;
            Dm.Qry_DeleteWhere(QrArticle);
            DBGrid1.SelectedField := QrFacDetailsArtCount;
         end;
      end;}

end;

procedure TFMFactor.EdtBarcodeChange(Sender: TObject);
Var
   Article_ID : Integer;
begin
   //ÃÂ  «” ›«œÂ «“ »«—òœ ŒÊ«‰
   With DMFactor do
   begin
      if not(QrFactor.State in [dsEdit,dsInsert]) then
      begin
         EdtBarcode.Text := '';
         Exit;
      end;

      if Trim(EdtBarcode.Text) = '' then
         Exit;
         
      Try
         Article_ID := Dm.YeganehConnection.Execute( 'Select Top 1 Article_ID From Article Where Barcode = '+
                                            QuotedStr(Trim(EdtBarcode.Text)) ).Fields[0].Value;
      Except
         //On E:Exception do ShowMessage(E.Message);
      End;

      if Article_ID > 0 then
      begin
         EdtBarcode.Color := clWindow;
         if (QrFactor.State in [dsEdit,dsInsert])And not(QrFacDetails.State = dsInsert) then
            SBAddArticle.Click; //QrFacDetails.Append;

         QrArticle.Close;
         Qry_DeleteWhere(QrArticle);
         Qry_AddWhere(QrArticle,' (Article_ID = '+IntToStr(Article_ID)+')');
         QrArticle.Open;
         Set_FacDetails_Data;

         QrArticle.Close;
         Qry_DeleteWhere(QrArticle);
         //EdtBarcode.Text := '';
         EdtBarcode.SetFocus;
         EdtBarcode.SelectAll;
      end
         else
            EdtBarcode.Color := $00C5C1FF;
   end;
end;

procedure TFMFactor.DBEUnitPriceExit(Sender: TObject);
begin
   EdtBarcode.SetFocus;
end;

procedure TFMFactor.EdtBarcodeEnter(Sender: TObject);
begin
   EdtBarcode.SelectAll;
end;

procedure TFMFactor.EdtBarcodeClick(Sender: TObject);
begin
   EdtBarcode.SelectAll;
end;

procedure TFMFactor.SBCustomerClick(Sender: TObject);
{Var
   FormTag :Integer;}
begin
   {Access_ToForm('FMCust',_PersonelID);
   With DMFactor do
   begin
      FormTag := Bpl_LoadFormScroll('TFMCust',QrFactorCust_Ref.AsInteger);

      if QrFactorCust_Ref.IsNull then
         if QrFactor.State in [dsEdit,dsinsert] then
         begin
            QrCust.close;
            Qry_DeleteWhere(QrCust);
            Qry_AddWhere(QrCust , ' Cust_ID = '+ IntToStr(FormTag));
            QrCust.Open;
            if QrCust.Locate('Cust_ID',FormTag,[]) then
               Set_Cust_Data;
         end;
   end;}

   if DMFactor.QrFactorCustomer_Ref.AsInteger > 0  then
   begin
     PropertiesForm := TPropertiesForm.Create(Self,DMFactor.QrFactorCustomer_Ref.AsInteger);
     PropertiesForm.ShowModal;

     With DMFactor do
        if QrFactorCustomer_Ref.IsNull then
        begin
           QrFactorCustomer_Ref.AsInteger := Dm.Select_Customer_By_CustomerIDCustomerID.AsInteger;
           QrFactorCustName_LK.AsString := Trim(Dm.Select_Customer_By_CustomerIDCompanyName.AsString);
        end;
   end;
end;

procedure TFMFactor.SpeedButton2Click(Sender: TObject);
begin
   with DMFactor do
   begin
      if not(QrFactor.State in [dsEdit,dsInsert]) then
         Exit;
      QrFactorCustomer_Ref.Clear;
      QrFactorCustName_LK.Clear;
      QrFactorCustPhone_LK.Clear;
      QrFactorCustAddress_LK.Clear;
   end;
end;

procedure TFMFactor.btnDetailAddressClick(Sender: TObject);
begin
  inherited;
  if DMFactor.QrFactor.State in [dsInsert,dsEdit] then
  begin
    ShowMyMessage('ÅÌ€«„','·ÿ›« «» œ« ›«ò Ê À»  ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;
  Application.CreateForm(TFFactorAddress, FFactorAddress);
  FFactorAddress.CustomerId := DMFactor.QrFactorCustomer_Ref.AsInteger ;
  FFactorAddress.Factor_ID  := DMFactor.QrFactorFactor_ID.AsInteger ;
  FFactorAddress.ShowModal;
  FreeAndNil(FFactorAddress);
end;

procedure TFMFactor.frxReport2GetValue(const VarName: String;
  var Value: Variant);
begin
  inherited;
  if CompareText(VarName, '1403/02/25') = 0 then
    Value := _Today;
end;

procedure TFMFactor.frxReport2BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
//
end;

procedure TFMFactor.ReportShow;
var
  MainReport : TfrxReport ;
  Memo: TfrxMemoView ;
  CustomerId, Factor_ID, indx : Integer ;
  ReturnQry : TADOQuery ;
  EconomicCode , PostalCode, NationalId : string;
begin

  CustomerId := DMFactor.QrFactorCustomer_Ref.AsInteger ;
  Factor_ID  := DMFactor.QrFactorFactor_ID.AsInteger ;

  QHeader.Close;
  QHeader.SQL.Text := 'select top 1 * from dbo.[Factor] where Factor_ID = '+IntToStr(Factor_ID)  ;
  QHeader.Open;
  QDetail.Close;
  QDetail.SQL.Text := 'select ROW_NUMBER ( ) OVER(ORDER BY FacDetails_ID) AS RowID,  [FacDetails_ID]  '+
                     ' ,[Factor_Ref]  '  +
                     ' ,[Article_Ref]  '  +
                     ' ,[Unit_Ref]      ' +
                     ' ,[UnitPrice]     '  +
                     ' ,[ArtCount]      '  +
                     ' ,[Tozihat]        '  +
                     ' ,ISNULL([DiscountLine],0) DiscountLine   '  +
                     ' ,ISNULL([TotalPriceLine],0) TotalPriceLine  ' +
                     ' ,ISNULL([AddedValueLine],0) AddedValueLine   '+
                     ' ,[TaxPayerID] from [dbo].[FacDetails] where Factor_Ref = '+IntToStr(Factor_ID)+' order by Factor_Ref  ' ;
  QDetail.Open;

  Qry_SetResult('If not Exists(SELECT 1 FROM [dbo].[FactorAddress] WHERE CustomerId = '+IntToStr(CustomerId)+' and [Factor_ID] = '+IntToStr(Factor_ID)+' ) '+
                ' Insert into [dbo].[FactorAddress]  '+
                ' SELECT '+ IntToStr(CustomerId)    +' [CustomerId],'+
                           IntToStr(Factor_ID)    +' [Factor_ID],'+
                           ' [Address] ,[Phone]  ,[CityId]  ,[StateID] ,'+
                           ' [PostalCode] , [FreeField02], [FreeField01] '   +
                           ' FROM [dbo].[Customer] cc where  CustomerId = '+IntToStr(CustomerId)
                   ,Dm.YeganehConnection) ;

  ReturnQry       := TADOQuery.Create(nil);
  with ReturnQry do
  begin
     CommandTimeout := 1200;
     Close;
     Connection := dm.YeganehConnection;
     SQL.Text   := ' select TOP 1 fa.*, s.StateTitle, c.CityTitle,c.CountyTitle, c2.CompanyName   from [dbo].[FactorAddress] fa    '+
                   ' LEFT JOIN dbo.[State] AS S ON s.StateID = fa.StateID   '+
                   ' LEFT JOIN dbo.City AS C ON c.CItyId = fa.CityId   '+
                   ' LEFT JOIN dbo.Customer AS C2 ON c2.CustomerID = fa.CustomerID '+
                   ' WHERE fa.CustomerId = ' + IntToStr( CustomerId ) +' AND fa.Factor_ID =' +IntToStr(Factor_ID) ;
     {
SELECT
distinct
fa.[CustomerID]
      ,fa.[Factor_ID]
      ,fa.[Address]
      ,fa.[Phone]
      ,fa.[CityId]
      ,fa.[StateID]
      ,fa.[PostalCode]
      ,fa.[NationalId]
    --  ,cc.*
      ,cc.CompanyName
      ,c.CityTitle
      ,c.CountyTitle
      ,s.StateTitle
  FROM [Y_Crm].[dbo].[FactorAddress] fa
  LEFT JOIN dbo.customer cc ON fa.CustomerID = cc.CustomerID 
  LEFT JOIN dbo.City AS C ON c.CItyId = fa.CityId
  LEFT JOIN dbo.[State] AS S ON c.StateID = fa.StateID
  }

     Open;
  end;

  MainReport :=  frxReport2 ;

  Memo := TfrxMemoView(MainReport.FindObject('memDate'));
  if Memo <> nil then
    Memo.Memo.Text := QHeader.Fields.fieldbyname('FacDate').AsString ; //_Today;

  Memo := TfrxMemoView(MainReport.FindObject('MemTypeFactor'));
  if Memo <> nil then
    Memo.Memo.Text := LblType.Caption;

  Memo := TfrxMemoView(MainReport.FindObject('MemTypeFactor'));
  if Memo <> nil then
    Memo.Memo.Text := LblType.Caption;

  Memo := TfrxMemoView(MainReport.FindObject('MemBuyerAddress4'));
  if (Memo <> nil) and ( Trim(ReturnQry.Fields.fieldbyname('Address').AsString ) <> '') then
    Memo.Memo.Text := '‰‘«‰Ì : '+  ReturnQry.Fields.fieldbyname('Address').AsString +' ' ;

  Memo := TfrxMemoView(MainReport.FindObject('memBuyerPhone'));
  if (Memo <> nil) and  (Trim(ReturnQry.Fields.fieldbyname('Phone').AsString ) <> '') then
    Memo.Memo.Text := ' ‘„«—Â  ·›‰ / ‰„«»— : ' + ReturnQry.Fields.fieldbyname('Phone').AsString +' ' ;

  Memo := TfrxMemoView(MainReport.FindObject('MemBuyerAddress1'));
  if (Memo <> nil) and  (Trim(ReturnQry.Fields.fieldbyname('StateTitle').AsString ) <> '') then
    Memo.Memo.Text := ' ‰‘«‰Ì ò«„· : '+ '«” «‰ : '+ ReturnQry.Fields.fieldbyname('StateTitle').AsString +' ' ;

  Memo := TfrxMemoView(MainReport.FindObject('MemBuyerAddress2'));
  if (Memo <> nil) and  (Trim(ReturnQry.Fields.fieldbyname('CountyTitle').AsString ) <> '') then
    Memo.Memo.Text := ' ‘Â—” «‰ : '+  ReturnQry.Fields.fieldbyname('CountyTitle').AsString +' ' ;

  Memo := TfrxMemoView(MainReport.FindObject('MemBuyerAddress3'));
  if (Memo <> nil) and  (Trim(ReturnQry.Fields.fieldbyname('CityTitle').AsString ) <> '') then
    Memo.Memo.Text :=' ‘Â— : '+  ReturnQry.Fields.fieldbyname('CityTitle').AsString +' '  ;

  Memo := TfrxMemoView(MainReport.FindObject('memNameBuyer'));
  if (Memo <> nil) and  (Trim(ReturnQry.Fields.fieldbyname('CompanyName').AsString ) <> '') then
    Memo.Memo.Text := ' ‰«„ ‘Œ’ ÕﬁÊﬁÌ : '+ ReturnQry.Fields.fieldbyname('CompanyName').AsString +' ' ;

  Memo := TfrxMemoView(MainReport.FindObject('memDescription'));
  if (Memo <> nil) and  (Trim(QHeader.Fields.fieldbyname('Tozihat').AsString ) <> '') then
    Memo.Memo.Text := ' '+QHeader.Fields.fieldbyname('Tozihat').AsString + ' ' ;


  TfrxPictureView(MainReport.FindObject('PicCash')).Visible    := not QHeader.Fields.FieldByName('IsNoNCash').AsBoolean  ;
  TfrxPictureView(MainReport.FindObject('PicNotCash')).Visible := QHeader.Fields.FieldByName('IsNonCash').AsBoolean ;

  Memo := TfrxMemoView(MainReport.FindObject('memBuyerEconomicalNumber'));
  if Memo <> nil then
  begin
    EconomicCode :=  ReturnQry.Fields.fieldbyname('EconomicCode').AsString;
    if  Length(Trim(EconomicCode)) <= 12  then
    begin
      for indx := 1 to Length(Trim(EconomicCode)) do
      begin
       Memo := TfrxMemoView(MainReport.FindObject('memBuyerEconomicalNumber'+inttostr(indx)));
       if Memo <> nil then
         Memo.Memo.Text := Copy(EconomicCode,indx,1);

      end;
    end;
  end;

  Memo := TfrxMemoView(MainReport.FindObject('memBuyerNationalCode'));
  if Memo <> nil then
  begin
    NationalId :=  ReturnQry.Fields.fieldbyname('NationalId').AsString;
    if  Length(Trim(NationalId)) <= 11  then
    begin
      for indx := 1 to Length(Trim(NationalId)) do
      begin
       Memo := TfrxMemoView(MainReport.FindObject('memBuyerNationalCode'+inttostr(indx)));
       if Memo <> nil then
         Memo.Memo.Text := Copy(NationalId,indx,1);

      end;
    end;
  end;

  Memo := TfrxMemoView(MainReport.FindObject('memBuyerPostalCode'));
  if Memo <> nil then
  begin
    PostalCode :=  ReturnQry.Fields.fieldbyname('PostalCode').AsString;
    if  Length(Trim(PostalCode)) <= 10  then
    begin
      for indx := 1 to Length(Trim(PostalCode)) do
      begin
       Memo := TfrxMemoView(MainReport.FindObject('memBuyerPostalCode'+inttostr(indx)));
       if Memo <> nil then
         Memo.Memo.Text := Copy(PostalCode,indx,1);

      end;
    end;
  end;

  MainReport.ShowReport;

end;

procedure TFMFactor.QDetailCalcFields(DataSet: TDataSet);
var
   valueAdded : Integer;
begin
   //Ã„⁄ =  ⁄œ«œ * ﬁÌ„  ò«·« *  ⁄œ«œ Ê«Õœ ò«·«
   QDetailArtTotalPrice_Calc.AsFloat := (QDetailArtCount.AsInteger) * (QDetailUnitPrice.AsFloat) ; // *(QrFD_UnitUnitCount.AsInteger);

   QDetailMainTotalPrice_Calc.AsFloat := (QDetailTotalPriceLine.AsFloat) + (QDetailAddedValueLine.AsFloat) ;
       (*
   QDetailLineTotalPrice_Calc.AsFloat := QDetailArtTotalPrice_Calc.AsFloat - QDetailDiscountLine.AsFloat;

   valueAdded := DM.YeganehConnection.Execute( ' if Exists(select 1 from dbo.TaxPerYear where [Year]= '+copy(_Today,1,4)+' ) select TOP 1 isnull(TaxPercentage,0) from dbo.TaxPerYear where [Year]= '+copy(_Today,1,4)+' else   select TOP 1 isnull(TaxPercentage,0) from dbo.TaxPerYear order by [Year] desc ').Fields[0].Value;

   QrFacDetailsAddedValueLine_Calc.AsFloat := ((QrFacDetailsLineTotalPrice_Calc.AsFloat - QrFacDetailsDiscountLine.AsFloat )* valueAdded)/100  ;
       *)
end;

procedure TFMFactor.SBFactorMonyClick(Sender: TObject);
begin
  inherited;
   DBEFactorePrice.SetFocus;
   //Bpl_LoadFormScroll('TFMFactorMony',0); // ⁄ÌÌ‰ „»·€ œ—Ì«› Ì Ì« Å—œ«Œ Ì
   FMFactorMony := TFMFactorMony.Create(Self);
   FMFactorMony.ShowModal;
end;

procedure TFMFactor.btntofactorClick(Sender: TObject);
var
  FactorNumber : string ;
begin
  inherited;
  FactorNumber  := IntToStr(DMFactor.QrFactor.Fields.fieldbyname('RelatedNumber').AsInteger );
  if (DMFactor.QrFactor.Fields.fieldbyname('RelatedFactor_ID').AsInteger > 0)  then
  begin
      ShowMyMessage('ÅÌ€«„','ÅÌ‘ ›«ò Ê— Ã«—Ì »Â ›«ò Ê— ›—Ê‘ ‘„«—Â' +' " '+FactorNumber+' " '+ '  »œÌ· ‘œÂ «”  ' ,[mbOK],mtInformation);
      Exit;
  end
  else
  begin
    try
      Qry_SetResult( ' BEGIN TRANSACTION [Tran1] '   +
                      ' Insert into [dbo].[Factor]  '+
                      ' SELECT [Customer_Ref]  '+
                      ' ,[FacDate]              '+
                      ' ,[FacTime]              '+
                      ' ,[RegisterDate]         '+
                      ' , isnull((select max(Number)+1 from [dbo].[Factor] where Type = ''F'' ),1) [Number] ' +
                      ' , ''F'' [Type] '+
                      ' ,[FactorePrice]         '+
                      ' ,[ReducePrice]          '+
                      ' ,[CashPrice]            '+
                      ' ,[CheckPrice]           '+
                      ' ,[Users_Ref]            '+
                      ' ,[CreditPrice]          '+
                      ' ,[Tozihat]              '+
                      ' ,[Liquidate]            '+
                      ' ,[ValueAdded]           '+
                      ' ,[TotalFactorPrice]     '+
                      ' ,[Discount]            '+
                      ' ,[IsNonCash]            '+
                      ' , Factor_ID  [RelatedFactor_ID]  '+
                      ' , '+ IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Number').AsInteger)  + ' RelatedNumber '+
                      ' FROM [dbo].[Factor]  where  Type = ''P'' and Factor_ID = '+ IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Factor_ID').AsInteger)  +
                      '  '  +
                      ' Insert into [dbo].[FacDetails]  '+
                      ' SELECT       '+
                      ' (select Factor_ID from [dbo].[Factor] where  Type = ''F'' and RelatedFactor_ID = '+ IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Factor_ID').AsInteger)+' ) [Factor_Ref]  '+
                      ' ,[Article_Ref]  '+
                      ' ,[Unit_Ref]      '+
                      ' ,[UnitPrice]     '+
                      ' ,[ArtCount]       '+
                      ' ,[Tozihat]         '+
                      ' ,[DiscountLine]     '+
                      ' ,[TotalPriceLine]   '+
                      ' ,[AddedValueLine]  '+
                      ' ,[TaxPayerID]       '+
                      ' FROM [dbo].[FacDetails] where [Factor_Ref] = '+IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Factor_ID').AsInteger ) +
                      '  '  +
                      ' update  [dbo].[Factor] set [RelatedFactor_ID] = (select Factor_ID from [dbo].[Factor] where  Type = ''F'' and RelatedFactor_ID = '+ IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Factor_ID').AsInteger)+' ) '+
                      ' ,[RelatedNumber] = (select Number from [dbo].[Factor] where  Type = ''F'' and RelatedFactor_ID = '+ IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Factor_ID').AsInteger)+' ) '+
                      '  where Factor_ID = '+IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Factor_ID').AsInteger ) +
                      ' COMMIT TRANSACTION [Tran1] '
                       ,Dm.YeganehConnection) ;

    finally

     FactorNumber  := Qry_GetResult(' select Number from [dbo].[Factor] where Type = ''F'' and RelatedFactor_ID = ' + IntToStr(DMFactor.QrFactor.Fields.fieldbyname('Factor_ID').AsInteger),dm.YeganehConnection);
     DMFactor.QrFactor.Refresh;
     ShowMyMessage('ÅÌ€«„','›«ò Ê— ›—Ê‘ ‘„«—Â' +' " '+FactorNumber+' " '+ '  Ê·Ìœ ‘œ ' ,[mbOK],mtInformation);

    end;
  end;
//
end;

Initialization
   RegisterClass(TFMFactor);

end.


