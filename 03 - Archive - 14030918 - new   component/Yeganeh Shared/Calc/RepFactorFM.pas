unit RepFactorFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, frxClass, frxDBSet, DB;

type
  TFMRepFactor = class(TForm)
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SBReport: TSpeedButton;
    LabHelp: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    MenuItem1: TMenuItem;
    d1: TMenuItem;
    Panel3: TPanel;
    ChBoCuCode: TCheckBox;
    ChBoCuName: TCheckBox;
    ChBoShenasnameh: TCheckBox;
    ChBoCodeMeli: TCheckBox;
    ChBoTel1: TCheckBox;
    MECuCode: TMaskEdit;
    MECuName: TMaskEdit;
    MEShenasnameh: TMaskEdit;
    MECodeMeli: TMaskEdit;
    METel1: TMaskEdit;
    ChBoTel2: TCheckBox;
    METel2: TMaskEdit;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ChBoCreditPrice: TCheckBox;
    ChBoNumber: TCheckBox;
    ChBoFacDate: TCheckBox;
    ChBoFactorPrice: TCheckBox;
    ChBoPersonel: TCheckBox;
    ChBoTozihat: TCheckBox;
    ChBoArticle: TCheckBox;
    ChBoCheckPrice: TCheckBox;
    MEFacDateSt: TMaskEdit;
    MEFacDateEn: TMaskEdit;
    MEFactorPriceSt: TMaskEdit;
    MEFactorPriceEn: TMaskEdit;
    MENumberSt: TMaskEdit;
    MEArticle: TMaskEdit;
    MEPersonel: TMaskEdit;
    METozihat: TMaskEdit;
    MECheckPriceSt: TMaskEdit;
    MECheckPriceEn: TMaskEdit;
    MECreditPriceEn: TMaskEdit;
    MECreditPriceSt: TMaskEdit;
    ChBoRemainPrice: TCheckBox;
    MERemainPriceSt: TMaskEdit;
    MERemainPriceEn: TMaskEdit;
    DBLkCBoFacType: TDBLookupComboBox;
    MENumberEn: TMaskEdit;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure MENumberStExit(Sender: TObject);
    procedure MEFacDateStExit(Sender: TObject);
    procedure MEFactorPriceStExit(Sender: TObject);
    procedure MECheckPriceStExit(Sender: TObject);
    procedure MECreditPriceStExit(Sender: TObject);
    procedure MERemainPriceStExit(Sender: TObject);
    procedure MECuCodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure d1Click(Sender: TObject);
  private

    Procedure SetFilter;
  public
    { Public declarations }
  end;

var
  FMRepFactor: TFMRepFactor;

implementation

Uses Myutil , VertionDM, RepCalc1DM, SearchFM;

{$R *.dfm}

procedure TFMRepFactor.FormCreate(Sender: TObject);
begin
   DMRepCalc1 := TDMRepCalc1.Create(Self);
   
end;

procedure TFMRepFactor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   With DMRepCalc1 do
   begin
      QrSrchFactor.Close;
      QrCust.Close;
      QrFactor.Close;
      QrArticle.Close;
      QrPersonel.Close;
      QrFactor.Close;
   end;
   FreeAndNil(DMRepCalc1);
end;

procedure TFMRepFactor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   Form_SetShortCut(Self,nil,nil,SBReport,Sender,Key,Shift);
   
   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;


procedure TFMRepFactor.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;


procedure TFMRepFactor.SBReportClick(Sender: TObject);
begin
   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;


Procedure TFMRepFactor.SetFilter;
begin
   //Date_IsFaDate(MEPicDateSt.Text
   //Date_IsFaDate(MEPicDateSt.Text

   With DMRepCalc1 do
   begin
      Qry_DeleteWhere(QrFactor);

      if (ChBoCuCode.Checked) And (Trim(MECuCode.Text)<>'') then
      begin
         Qry_AddWhere(QrFactor,'(Cu.Code = '+ MECuCode.Text +') ');
      end;

      if (ChBoCuName.Checked) And (Trim(MECuName.Text)<>'') then
      begin
         Qry_AddWhere(QrFactor,'(Cu.Name Like ''%'+ Trim(MECuName.Text) +'%'') ');
      end;

      if (ChBoShenasnameh.Checked) And (Trim(MEShenasnameh.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Cu.Shenasnameh Like ''%'+ MEShenasnameh.Text +'%'') ');
      end;

      if (ChBoCodeMeli.Checked) And (Trim(MECodeMeli.Text)<>'˛   -      - ')  then
      begin
         Qry_AddWhere(QrFactor,'(Cu.CodeMeli Like ''%'+ QuotedStr(MECodeMeli.Text) +'%'') ');
      end;

      if (ChBoTel1.Checked) And (Trim(METel1.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Cu.Tel1 Like ''%'+ Trim(METel1.Text) +'%'') ');
      end;

      if (ChBoTel2.Checked) And (Trim(METel2.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Cu.Tel2 Like ''%'+ Trim(METel2.Text) +'%'') ');
      end;

      //‘„«—Â ›«ò Ê—
      if (ChBoNumber.Checked) And (Trim(MENumberSt.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Fac.Number Between ' + MENumberSt.Text + ' And ' + MENumberEn.Text +') ');
      end;

      // «—ÌŒ ›«ò Ê—
      if (ChBoFacDate.Checked) And (Trim(MEFacDateSt.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Fac.FacDate Between ' + QuotedStr(MEFacDateSt.Text) +
                      ' ANd ' + QuotedStr(MEFacDateEn.Text)+') ');
      end;

      //‰Ê⁄ ›«ò Ê—
      //if (ChBoFacType.Checked) And (DBLkCBoFacType.KeyValue > 0) then
      //begin
      Qry_AddWhere(QrFactor,'(Fac.Type = '+ QuotedStr(QrFacTypeType.AsString) +') ');
      //end;

      //‰«„ ò«·«
      if (ChBoArticle.Checked) And (Trim(MEArticle.Text)<>'') then
      begin
         Qry_AddWhere(QrFactor,'(Art.Name Like ''%' + Trim(MEArticle.Text) +'%'') ');
      end;

      //‰«„ „ ‰«„ Œ«‰Ê«œêÌ ‰«„ ò«—»— À»  ò‰‰œÂ ›«ò Ê—
      if (ChBoPersonel.Checked) And (Trim(MEPersonel.Text)<>'') then
      begin
         Qry_AddWhere(QrFactor,'(RTrim(Prs.Name) +'' ''+ RTrim(Prs.Family) Like ''%'+ MEPersonel.Text +'%'') ');
      end;

      // Ê÷ÌÕ«  ›«ò Ê—
      if (ChBoTozihat.Checked) And (Trim(METozihat.Text)<>'') then
      begin
         Qry_AddWhere(QrFactor,'(Fac.Tozihat Like ''%' + METozihat.Text +'%'') ');
      end;

      //„»·€ ›«ò Ê—
      if (ChBoFactorPrice.Checked) And (Trim(MEFactorPriceSt.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Fac.FactorePrice Between ' + MEFactorPriceSt.Text + ' And ' +
                      MEFactorPriceEn.Text +') ');
      end;

      //„»·€ çòÂ«
      if (ChBoCheckPrice.Checked) And (Trim(MECheckPriceSt.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Fac.CheckPrice Between ' + MECheckPriceSt.Text + ' And ' +
                      MECheckPriceEn.Text +') ');
      end;

      //„»·€ ‰”ÌÂ
      if (ChBoCreditPrice.Checked) And (Trim(MECreditPriceSt.Text)<>'')  then
      begin
         Qry_AddWhere(QrFactor,'(Fac.CreditPrice Between ' + MECreditPriceSt.Text + ' And ' +
                      MECreditPriceEn.Text +') ');
      end;

      //„»·€ »«ﬁÌ„«‰œÂ
      if (ChBoRemainPrice.Checked) And (Trim(MERemainPriceSt.Text)<>'')  then
      begin

         Qry_AddWhere(QrFactor,'( (Fac.FactorePrice - (Fac.ReducePrice + Fac.CashPrice + Fac.CheckPrice + Fac.CreditPrice)) Between ' +
                      MERemainPriceSt.Text + ' And ' + MERemainPriceEn.Text +') ');
      end;

   end;
end;



procedure TFMRepFactor.NShowClick(Sender: TObject);
Var
   RepFileName :String;
   FrxReport : TFrxReport;
begin
   With DMRepCalc1 do
   begin
      QrFactor.Close;
      SetFilter;
      QrFactor.Open;
      if QrFactor.RecordCount=0 then
      begin
         ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
         Exit;
      end;

      RepFileName := 'Factor1.fr3'; //Change
      FrxReport := frxRepFactor; //Change

      if Sender = NShow  then
         Rep_LoadAndShow(frxRepFactor,RepFileName,rtShow);
      if Sender = NPrint  then
         Rep_LoadAndShow(frxRepFactor,RepFileName,rtPrint);
      if Sender = NDesign  then
         Rep_LoadAndShow(frxRepFactor,RepFileName,rtDesign);
   end;
end;

procedure TFMRepFactor.d1Click(Sender: TObject);
begin
   Rep_CorrectDesign('Factor1.fr3'); //Change

   //›ﬁÿ œ— ›—„Â«Ì ê“«—‘ êÌ—Ì frxRepFactor ÃÂ  »«“Ì«»Ì «ÿ·«⁄«  ò‰ —·
   FreeAndNil(DMRepCalc1);
   DMRepCalc1 := TDMRepCalc1.Create(Self);
end;

procedure TFMRepFactor.SpeedButton4Click(Sender: TObject);
begin
   Try
      if FmSearch.GetSearchValue(DMRepCalc1.QrCust ,'Cust_ID', 'Code' , ' ' , 400 , 500 ) <> '0' then
         MECuCode.Text := DMRepCalc1.QrCustCode.AsString;
   Finally
      DMRepCalc1.QrCust.Close;
   End;
end;



procedure TFMRepFactor.SpeedButton2Click(Sender: TObject);
begin
   Try
      if FmSearch.GetSearchValue(DMRepCalc1.QrSrchFactor ,'Factor_ID', 'Number' , ' ' , 400 , 500 ) <> '0' then
      begin
         MENumberSt.Text := DMRepCalc1.QrSrchFactorNumber.AsString;
         MENumberEn.Text := DMRepCalc1.QrSrchFactorNumber.AsString;
      end;
   Finally
      DMRepCalc1.QrSrchFactor.Close;
   End;
end;

procedure TFMRepFactor.SpeedButton3Click(Sender: TObject);
begin
   Try
      if FmSearch.GetSearchValue(DMRepCalc1.QrArticle ,'Article_ID', 'Name' , ' ' , 400 , 400 ) <> '0' then
         MEArticle.Text := DMRepCalc1.QrArticleName.AsString;
   Finally
      DMRepCalc1.QrArticle.Close;
   End;
end;

procedure TFMRepFactor.SpeedButton5Click(Sender: TObject);
begin
   Try
      if FmSearch.GetSearchValue(DMRepCalc1.QrPersonel ,'Personel_ID', 'Family' , ' ' , 400 , 400 ) <> '0' then
         MEPersonel.Text := Trim(DMRepCalc1.QrPersonelName.AsString) +' '+ Trim(DMRepCalc1.QrPersonelFamily.AsString);

   Finally
      DMRepCalc1.QrPersonel.Close;
   End;
end;

procedure TFMRepFactor.MENumberStExit(Sender: TObject);
begin
   if ChBoNumber.Checked then
      if Trim(MENumberEn.Text) = '' then
         MENumberEn.Text := MENumberSt.Text;
end;

procedure TFMRepFactor.MEFacDateStExit(Sender: TObject);
begin
   if ChBoFacDate.Checked then
      if MEFacDateEn.Text = '˛13  /  /  ' then
         MEFacDateEn.Text := MEFacDateSt.Text;
end;

procedure TFMRepFactor.MEFactorPriceStExit(Sender: TObject);
begin
   if ChBoFactorPrice.Checked then
      if Trim(MEFactorPriceEn.Text) = '' then
         MEFactorPriceEn.Text := MEFactorPriceSt.Text;
end;

procedure TFMRepFactor.MECheckPriceStExit(Sender: TObject);
begin
   if ChBoCheckPrice.Checked then
      if Trim(MECheckPriceEn.Text) = '' then
         MECheckPriceEn.Text := MECheckPriceSt.Text;
end;

procedure TFMRepFactor.MECreditPriceStExit(Sender: TObject);
begin
   if ChBoCreditPrice.Checked then
      if Trim(MECreditPriceEn.Text) = '' then
         MECreditPriceEn.Text := MECreditPriceSt.Text;
end;

procedure TFMRepFactor.MERemainPriceStExit(Sender: TObject);
begin
   if ChBoRemainPrice.Checked then
      if Trim(MERemainPriceEn.Text) = '' then
         MERemainPriceEn.Text := MERemainPriceSt.Text;
end;

procedure TFMRepFactor.MECuCodeKeyPress(Sender: TObject; var Key: Char);
begin
   TypeNumber(Key);
end;

procedure TFMRepFactor.FormShow(Sender: TObject);
begin
   With DMRepCalc1 do
   begin
      QrFactor.Close;
      QrFacType.Open;
      DBLkCBoFacType.KeyValue := QrFacTypeFacType_ID.AsInteger;
   end;
   Form_Animate(Self);
end;



Initialization
   RegisterClass(TFMRepFactor);

end.
