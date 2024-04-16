unit FactorFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables,BaseUnit, ExtActns, ActnList;

type
  TFMFactor = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBETozihat: TDBEdit;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SBReport: TSpeedButton;
    DBNavigator1: TDBNavigator;
    SBSearch: TSpeedButton;
    SBEmkanat: TSpeedButton;
    PopEmkanat: TPopupMenu;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    MenuItem1: TMenuItem;
    d1: TMenuItem;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    CBFactorType: TComboBox;
    LblType: TLabel;
    Label3: TLabel;
    DBECustName_LK: TDBEdit;
    SBSrchCust: TSpeedButton;
    Label4: TLabel;
    DBTCustPhone: TDBText;
    DBENumber: TDBEdit;
    Label6: TLabel;
    DBEFacDate: TDBEdit;
    Label7: TLabel;
    DBEFactorePrice: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SBFactorMony: TSpeedButton;
    LabelDate: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBTFacPrBeHorof: TDBText;
    Label13: TLabel;
    SBAddArticle: TSpeedButton;
    SBDelArticle: TSpeedButton;
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
    DBEUserName: TDBEdit;
    LblLiquidateName: TLabel;
    Label15: TLabel;
    DBTxtCustAddress: TDBText;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    DBEArtName: TDBEdit;
    EdtBarcode: TEdit;
    DBEArtCount: TDBEdit;
    DBEUnitPrice: TDBEdit;
    DBTxtLiquidateName: TDBText;
    SBCustomer: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBFactorMonyClick(Sender: TObject);
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
    procedure SpeedButton3Click(Sender: TObject);
  private
    procedure Set_FacDetails_Data;
  public
    { Public declarations }
  end;

var
  FMFactor: TFMFactor;

implementation

Uses FactorDM , SearchFM, DMu , YShamsiDate, ArticleFM, StoreFM,
  FirstArtGroupFM, SecendArtGroupFM, UnitFM, MainU, Telinputunit,
  FactorMonyFM;

{$R *.dfm}

procedure TFMFactor.FormCreate(Sender: TObject);
begin
   DMFactor := TDMFactor.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMFactor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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

   // ⁄ÌÌ‰ ‰Ê⁄ ›«ò Ê—
   if UpperCase(Hint) = 'F' then //›—Ê‘
   begin
      CBFactorType.ItemIndex := 0;
      DBGrid1.Color := $00FFF0F1;
      LblType.Caption := '›«ò Ê— ›—Ê‘';
   end
   else
      if UpperCase(Hint) = 'KH' then //Œ—Ìœ
      begin
         CBFactorType.ItemIndex := 1;
         DBGrid1.Color := $00F0F0FF;
         LblType.Caption := '›«ò Ê— Œ—Ìœ';
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
         end
         else
            if UpperCase(Hint) = 'BF' then //»—ê‘  «“ ›—Ê‘
            begin
               CBFactorType.ItemIndex := 3;
               DBGrid1.Color := $00C1E6F7;
               LblType.Caption := '›«ò Ê— »—ê‘  «“ ›—Ê‘';
            end
            else
               if UpperCase(Hint) = 'BKH' then //»—ê‘  «“ Œ—Ìœ
               begin
                  CBFactorType.ItemIndex := 4;
                  DBGrid1.Color := $00FFE1EF;
                  LblType.Caption := '›«ò Ê— »—ê‘  «“ Œ—Ìœ';
               end
               else
                  if UpperCase(Hint) = 'A' then //«„«‰Ì
                  begin
                     CBFactorType.ItemIndex := 5;
                     DBGrid1.Color := $00E1FEFF;
                     LblType.Caption := '›«ò Ê— «„«‰Ì';
                  end
                  else
                     if UpperCase(Hint) = 'E' then //«’ÿÂ·«ò
                     begin
                        CBFactorType.ItemIndex := 6;
                        DBGrid1.Color := $00FFFEE1;
                        LblType.Caption := '›«ò Ê— «” Â·«ﬂ';
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
   //Form_Animate(Self,100);
end;

procedure TFMFactor.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFMFactor.SBFactorMonyClick(Sender: TObject);
begin
   DBEFactorePrice.SetFocus;
   //Bpl_LoadFormScroll('TFMFactorMony',0); // ⁄ÌÌ‰ „»·€ œ—Ì«› Ì Ì« Å—œ«Œ Ì
   FMFactorMony := TFMFactorMony.Create(Self);
   FMFactorMony.ShowModal;
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
      if (QrFactorCustomer_Ref.IsNull)or(QrFactorCustomer_Ref.AsInteger=0) then
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
         QrFacDetails.Next;
      end;
      QrFactorFactorePrice.AsFloat := SumPrice;
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
   {DMRepCalc1 := TDMRepCalc1.Create(Nil);
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
      End;}
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

   PropertiesForm := TPropertiesForm.Create(Self,DMFactor.QrFactorCustomer_Ref.AsInteger);
   PropertiesForm.ShowModal;

   With DMFactor do
      if QrFactorCustomer_Ref.IsNull then
      begin
         QrFactorCustomer_Ref.AsInteger := Dm.Select_Customer_By_CustomerIDCustomerID.AsInteger;
         QrFactorCustName_LK.AsString := Trim(Dm.Select_Customer_By_CustomerIDCompanyName.AsString);
      end;   
   
end;

procedure TFMFactor.SpeedButton3Click(Sender: TObject);
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

Initialization
   RegisterClass(TFMFactor);

end.


