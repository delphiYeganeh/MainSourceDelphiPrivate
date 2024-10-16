unit ChequeDM;

interface

uses
  SysUtils, Classes, DB, DBTables,Dialogs,Controls, ADODB;

type
  TDMCheque = class(TDataModule)
    DSBank: TDataSource;
    DSCheque: TDataSource;
    DSStatus: TDataSource;
    DSFilter: TDataSource;
    QrCheque: TADOQuery;
    QrSrchCheque: TADOQuery;
    QrBank: TADOQuery;
    QrStatus: TADOQuery;
    QrFilter: TADOQuery;
    QrChequeCheque_ID: TIntegerField;
    QrChequeAcountNumber: TIntegerField;
    QrChequeExportDate: TStringField;
    QrChequeDueDate: TStringField;
    QrChequeED_Bank_Ref: TIntegerField;
    QrChequeBranchName: TStringField;
    QrChequePrice: TFloatField;
    QrChequeBearer: TStringField;
    QrChequeStatus: TIntegerField;
    QrChequeReceiver: TStringField;
    QrChequeTozihat: TStringField;
    QrChequePriceBeHorof: TStringField;
    QrChequeEndorse: TIntegerField;
    QrChequeAcountName: TStringField;
    QrChequeFactor_Ref: TIntegerField;
    QrChequeType: TIntegerField;
    QrSrchChequeCheque_ID: TIntegerField;
    QrSrchChequeAcountNumber: TIntegerField;
    QrSrchChequeAcountName: TStringField;
    QrSrchChequeExportDate: TStringField;
    QrSrchChequeDueDate: TStringField;
    QrSrchChequeBearer: TStringField;
    QrSrchChequeReceiver: TStringField;
    QrSrchChequeBankName: TStringField;
    QrBankEnterData_ID: TIntegerField;
    QrBankEDCode: TIntegerField;
    QrBankEDName: TStringField;
    QrBankEDDesc: TStringField;
    QrBankData_Ref: TIntegerField;
    QrStatusStatus_ID: TIntegerField;
    QrStatusStatusName: TStringField;
    QrFilterStatus_ID: TIntegerField;
    QrFilterStatusName: TStringField;
    QrChequeUsers_Ref: TIntegerField;
    QrChequeDetails: TADOQuery;
    DSChequeDetails: TDataSource;
    QrChequeDetailsCheque_ID: TAutoIncField;
    QrChequeDetailsTypeName: TStringField;
    QrChequeDetailsUserName: TWideStringField;
    QrChequeDetailsBankName: TWideStringField;
    QrChequeDetailsUsedIn: TWideStringField;
    QrChequeNumber: TWideStringField;
    QrSrchChequeNumber: TWideStringField;
    procedure QrChequeExportDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrChequeExportDateSetText(Sender: TField;
      const Text: String);
    procedure QrChequePriceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QrChequePriceSetText(Sender: TField; const Text: String);
    procedure QrChequeAfterInsert(DataSet: TDataSet);
    procedure QrChequeBeforeDelete(DataSet: TDataSet);
    procedure QrChequeBeforeOpen(DataSet: TDataSet);
    procedure QrChequeBeforePost(DataSet: TDataSet);
    procedure QrChequeCalcFields(DataSet: TDataSet);
    procedure QrChequeAfterScroll(DataSet: TDataSet);
    procedure QrChequeAfterPost(DataSet: TDataSet);
  private

  public
    ChequeType2 , Factor_ID2 , Status_ :Integer;
  end;

var
  DMCheque: TDMCheque;

implementation

Uses DMu , YShamsiDate, ChequeFM;

{$R *.dfm}

procedure TDMCheque.QrChequeExportDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := #254 + Txt_Del254(Sender.AsString);
end;

procedure TDMCheque.QrChequeExportDateSetText(Sender: TField;
  const Text: String);
begin
   Sender.AsString := Txt_Del254(Text);
end;

procedure TDMCheque.QrChequePriceGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   Text := CommaSeperate(Sender.AsString);
end;

procedure TDMCheque.QrChequePriceSetText(Sender: TField; Const Text: String);
begin
   Sender.AsFloat := StrToIntDef(DeleteComma(Text) ,0);
end;

procedure TDMCheque.QrChequeAfterInsert(DataSet: TDataSet);
begin
   QrChequeExportDate.AsString := _Today;
   QrChequeDueDate.AsString := _Today;
   QrChequePrice.AsFloat := 0;
   QrChequeUsers_Ref.AsInteger := _userid;
   //QrChequePersNaFa.AsString := _userName;
   QrChequeStatus.AsInteger := -1; //���� ����� �� ����
   if ChequeType2 = 1 then //��� ���� ����� ������� ��� ���� ���� ���
      QrChequeEndorse.AsInteger :=
          Dm.YeganehConnection.Execute('Select IsNull(Max(Endorse),0)+1 as MaxEndorse from Cheque ').Fields[0].Value;
   QrChequeType.AsInteger := ChequeType2;
   if Factor_ID2 > 0 then
      QrChequeFactor_Ref.AsInteger := Factor_ID2;
end;

procedure TDMCheque.QrChequeBeforeDelete(DataSet: TDataSet);
Var
   FacNu : Integer;
   FacType : String[5];
   FacTypeFa : String;
begin
   //������ �� ��� ������ �� �� �ǘ����� ������� �� ����
   //���� ���� ��� ��� �� ��� ��� �ǘ��� ��� ��� ��� Factor_ID2 > 0 ǐ� �����
   if (QrChequeFactor_Ref.AsInteger > 0)And (Factor_ID2 <= 0) then
   begin
      FacNu := Dm.YeganehConnection.Execute('Select Number From Factor Where Factor_ID = ' + QrChequeFactor_Ref.AsString).Fields[0].Value;
      FacType := Dm.YeganehConnection.Execute('Select Type From Factor Where Factor_ID = ' + QrChequeFactor_Ref.AsString).Fields[0].Value;

      if FacType = 'F' then
         FacTypeFa := '�ǘ��� ����'
      else
         if FacType = 'KH' then
            FacTypeFa := '�ǘ��� ����'
         else
            {if FacType = 'P' then
               FacTypeFa := '��� �ǘ���'
            else}
               if FacType = 'BF' then
                  FacTypeFa := '�ǘ��� �ѐ�� �� ����'
               else
                  if FacType = 'BKH' then
                     FacTypeFa := '�ǘ��� �ѐ�� �� ����'
                  else
                     if FacType = 'A' then
                        FacTypeFa := '�ǘ��� �����'
                     else
                        if FacType = 'E' then
                           FacTypeFa := '�ǘ��� �����ǘ';
      if FacNu > 0 then
      begin
         ShowMyMessage('�����',' ����� ������� ��� �� �� ' + FacTypeFa + ' �� ����� '+ IntToStr(FacNu) + ' ���� ��� �� ���� ����ϡ ' +#13+
                        ' ���� ��� ��� �� ���� �� ���� �ǘ��� ������ ����� ������ ' ,[mbOK],mtInformation);
         Abort;
      end;
   end;

end;

procedure TDMCheque.QrChequeBeforeOpen(DataSet: TDataSet);
begin
   QrCheque.Parameters.ParamByName('Type').Value := ChequeType2;
   QrCheque.Parameters.ParamByName('Factor_ID1').Value := Factor_ID2;
   QrCheque.Parameters.ParamByName('Factor_ID2').Value := Factor_ID2;
   QrCheque.Parameters.ParamByName('Status1').Value := Status_; //��� ����� ����
   QrCheque.Parameters.ParamByName('Status2').Value := Status_; //��� ����� ����
end;

procedure TDMCheque.QrChequeBeforePost(DataSet: TDataSet);
begin
   Qry_IFFieldIsEmpty(QrChequeNumber , '����� ��');
   Qry_IFFieldIsEmpty(QrChequeAcountNumber , '����� ����');
   Qry_IFFieldIsEmpty(QrChequeExportDate , '����� ����');
   Qry_IFFieldIsEmpty(QrChequeED_Bank_Ref , '��� ���');
   //if Not Date_IsFaDate(QrChequeExportDate.AsString,'����� ����') then
      //Abort;
   //if Not Date_IsFaDate(QrChequeDueDate.AsString,'����� ������') then
      //Abort;
end;

procedure TDMCheque.QrChequeCalcFields(DataSet: TDataSet);
begin
   QrChequePriceBeHorof.AsString := AdadBeHorof(QrChequePrice.AsInteger)+ ' ���� ';
end;

procedure TDMCheque.QrChequeAfterScroll(DataSet: TDataSet);
begin
   //Cheque ���� ������� ���� ����
   if QrCheque.RecordCount > 0 then
   begin
      QrChequeDetails.Close;
      QrChequeDetails.Parameters.ParamByName('Cheque_ID').Value := QrChequeCheque_ID.AsInteger;
      QrChequeDetails.Open;
   end
      else
         QrChequeDetails.Close;
end;

procedure TDMCheque.QrChequeAfterPost(DataSet: TDataSet);
begin
   QrChequeAfterScroll(DataSet);
end;

End.
