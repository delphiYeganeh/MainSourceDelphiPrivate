unit ULetterNoSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, xpWindow, ExtActns, ActnList, DB, xpBitBtn,
  Mask, Buttons, ExtCtrls, Menus, DBCtrls, ADODB, AppEvnts;

type
  TFrLetterNoSetting = class(TMBaseForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Indicator2: TComboBox;
    Indicator3: TComboBox;
    Indicator4: TComboBox;
    Indicator5: TComboBox;
    Indicator6: TComboBox;
    Indicator1: TComboBox;
    MaskEdit1: TEdit;
    Label8: TLabel;
    dUserSecs: TDataSource;
    QUpdLetterFormula: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    QReadLetterFormula: TADOQuery;
    QReadLetterFormulaID: TAutoIncField;
    QReadLetterFormulaSecID: TIntegerField;
    QReadLetterFormulaLetterFormulaPart1: TStringField;
    QReadLetterFormulaLetterFormulaPart2: TStringField;
    QReadLetterFormulaLetterFormulaPart3: TStringField;
    QReadLetterFormulaLetterFormulaPart4: TStringField;
    QReadLetterFormulaLetterFormulaPart5: TStringField;
    QReadLetterFormulaLetterFormulaPart6: TStringField;
    QReadLetterFormulaLetterFormulaSeperator: TStringField;
    RadioGroup1: TRadioGroup;
    ado_Count: TADOQuery;
    ado_CountCnt: TIntegerField;
    LetterFormula_inser: TADOStoredProc;
    LetterFormula_inserID: TIntegerField;
    LetterFormula_inserSecID: TIntegerField;
    LetterFormula_inserLetterFormulaPart1: TStringField;
    LetterFormula_inserLetterFormulaPart2: TStringField;
    LetterFormula_inserLetterFormulaPart3: TStringField;
    LetterFormula_inserLetterFormulaPart4: TStringField;
    LetterFormula_inserLetterFormulaPart5: TStringField;
    LetterFormula_inserLetterFormulaPart6: TStringField;
    LetterFormula_inserLetterFormulaSeperator: TStringField;
    LetterFormula_inserUseForWord: TStringField;
    LetterFormula_inserletterTypeID: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dUserSecsDataChange(Sender: TObject; Field: TField);
    procedure RadioGroup1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function CheckSeperator:Boolean;
    procedure SetAllComboBox;
  public
    { Public declarations }
  end;

var
  FrLetterNoSetting: TFrLetterNoSetting;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrLetterNoSetting.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrLetterNoSetting.BitBtn1Click(Sender: TObject);
//var i: byte;
begin
  inherited;
  if CheckSeperator then
  begin
      if VarToStr(DBLookupComboBox1.KeyValue)<>'' then
      begin
//----------------------------begim movahed  �ݘ� �� ���� ��� ����-------------------------
       ado_Count.Close;
       ado_Count.Parameters.ParamByName('SecID').Value:=DBLookupComboBox1.KeyValue;
       ado_Count.Parameters.ParamByName('letterTypeID').Value:=RadioGroup1.ItemIndex;
       ado_Count.Open;

       if ado_CountCnt.Value = 0 then
       begin
         LetterFormula_inser.Close;
         LetterFormula_inser.Parameters.ParamByName('@SecID').Value := VarToStr(DBLookupComboBox1.KeyValue);
         LetterFormula_inser.Parameters.ParamByName('@LetterFormulaPart1').Value := IntToStr(Indicator1.ItemIndex);
         LetterFormula_inser.Parameters.ParamByName('@LetterFormulaPart2').Value := IntToStr(Indicator2.ItemIndex);
         LetterFormula_inser.Parameters.ParamByName('@LetterFormulaPart3').Value := IntToStr(Indicator3.ItemIndex);
         LetterFormula_inser.Parameters.ParamByName('@LetterFormulaPart4').Value := IntToStr(Indicator4.ItemIndex);
         LetterFormula_inser.Parameters.ParamByName('@LetterFormulaPart5').Value := IntToStr(Indicator5.ItemIndex);
         LetterFormula_inser.Parameters.ParamByName('@LetterFormulaPart6').Value := IntToStr(Indicator6.ItemIndex);
         LetterFormula_inser.Parameters.ParamByName('@LetterFormulaSeperator').Value := Trim(MaskEdit1.Text);
         LetterFormula_inser.Parameters.ParamByName('@letterTypeID').Value := RadioGroup1.ItemIndex;
         LetterFormula_inser.ExecProc;

       end;


       if ado_CountCnt.Value > 0 then
       begin
  //----------------------------end movahed  �ݘ� �� ���� ��� ����---------------------------
            QUpdLetterFormula.Close;
            QUpdLetterFormula.SQL.Clear;
            QUpdLetterFormula.SQL.Add('UPDATE LetterFormula');
            QUpdLetterFormula.SQL.Add('SET	LetterFormulaPart1 ='+IntToStr(Indicator1.ItemIndex));
            QUpdLetterFormula.SQL.Add(',LetterFormulaPart2 ='+IntToStr(Indicator2.ItemIndex));
            QUpdLetterFormula.SQL.Add(',LetterFormulaPart3 ='+IntToStr(Indicator3.ItemIndex));
            QUpdLetterFormula.SQL.Add(',LetterFormulaPart4 ='+IntToStr(Indicator4.ItemIndex));
            QUpdLetterFormula.SQL.Add(',LetterFormulaPart5 ='+IntToStr(Indicator5.ItemIndex));
            QUpdLetterFormula.SQL.Add(',LetterFormulaPart6 ='+IntToStr(Indicator6.ItemIndex));
            QUpdLetterFormula.SQL.Add(',LetterFormulaSeperator ='+QuotedStr(Trim(MaskEdit1.Text)));
            QUpdLetterFormula.SQL.Add('WHERE SecID='+VarToStr(DBLookupComboBox1.KeyValue)+'AND letterTypeID =  ' + IntToStr( RadioGroup1.ItemIndex ) +'and UseForWord is null');

           // ShowMessage(QUpdLetterFormula.SQL.Text);

            QUpdLetterFormula.ExecSQL;
            Close;
       end
      end
      else
        ShowMsgString('����� � �������� �� ������ ������');
  end
  else
  begin
     ShowMessage('���� ��ǘ���� ������ ��� ����� ���� ����');
  end;
end;

procedure TFrLetterNoSetting.FormCreate(Sender: TObject);
var i: byte;
begin
   inherited;
   if Dm.UserSecs.Active then
      DBLookupComboBox1.KeyValue:=Dm.UserSecsSecId.AsInteger;

   for i:=1 to 6 do
   with TComboBox(FindComponent('indicator'+IntToStr(i))),Items do
   begin
      Clear;
      add('����');
      add('�� ��������');
      add('���');
      add('����� ��������');
      add('�� ��� �����');
      add('�� ��� ����� �����');
      add('�� ��� ����');
      add(dm.UserMemoDisplay);
      add('��� �� ���� �������');
      add('����� �������� �ј��');
      add('����� ����'); // Amin 1391/12/13
   end;
   { TODO -oparsa : 14030505-bug349 }
   RadioGroup1.ItemIndex := 0 ;
   { TODO -oparsa : 14030505-bug349 }
   SetAllComboBox;
end;

function TFrLetterNoSetting.CheckSeperator: Boolean;
begin
  Result:=True;
  if length(Trim(MaskEdit1.Text))<1 then
      Result:=False;
end;

procedure TFrLetterNoSetting.SetAllComboBox;
begin
   if (Dm.UserSecs.Active) and (VarToStr(DBLookupComboBox1.KeyValue)<>'') then
   begin
       QReadLetterFormula.Close;
       QReadLetterFormula.Parameters.ParamByName('SecID').Value := DBLookupComboBox1.KeyValue;
       QReadLetterFormula.Parameters.ParamByName('letterTypeID').Value:= RadioGroup1.ItemIndex;
       QReadLetterFormula.Open;
       if not QReadLetterFormula.IsEmpty then
       begin
           if QReadLetterFormulaLetterFormulaPart1.AsString<>'' then
               Indicator1.ItemIndex:=QReadLetterFormulaLetterFormulaPart1.AsInteger
           else
               Indicator1.ItemIndex:=0;

           if QReadLetterFormulaLetterFormulaPart2.AsString<>'' then
               Indicator2.ItemIndex:=QReadLetterFormulaLetterFormulaPart2.AsInteger
           else
               Indicator2.ItemIndex:=0;

           if QReadLetterFormulaLetterFormulaPart3.AsString<>'' then
               Indicator3.ItemIndex:=QReadLetterFormulaLetterFormulaPart3.AsInteger
           else
               Indicator3.ItemIndex:=0;

           if QReadLetterFormulaLetterFormulaPart4.AsString<>'' then
               Indicator4.ItemIndex:=QReadLetterFormulaLetterFormulaPart4.AsInteger
           else
               Indicator4.ItemIndex:=0;

           if QReadLetterFormulaLetterFormulaPart5.AsString<>'' then
               Indicator5.ItemIndex:=QReadLetterFormulaLetterFormulaPart5.AsInteger
           else
               Indicator5.ItemIndex:=0;

           if QReadLetterFormulaLetterFormulaPart6.AsString<>'' then
               Indicator6.ItemIndex:=QReadLetterFormulaLetterFormulaPart6.AsInteger
           else
               Indicator6.ItemIndex:=0;

           { TODO -oparsa : 14030610 }
           if (QReadLetterFormulaLetterFormulaSeperator.AsString='') then
           //if (QReadLetterFormulaLetterFormulaSeperator.AsString='') or (QReadLetterFormulaLetterFormulaSeperator.AsString='/') then
           { TODO -oparsa : 14030610 }
              MaskEdit1.Text:='/'
           else
              MaskEdit1.Text:= QReadLetterFormulaLetterFormulaSeperator.AsString;
       end
       else
       begin
         Indicator1.ItemIndex:=0;
         Indicator2.ItemIndex:=0;
         Indicator3.ItemIndex:=0;
         Indicator4.ItemIndex:=0;
         Indicator5.ItemIndex:=0;
         Indicator6.ItemIndex:=0;
         MaskEdit1.Text:= '/';
       end;
   end;
end;

procedure TFrLetterNoSetting.dUserSecsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SetAllComboBox;
end;

procedure TFrLetterNoSetting.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  SetAllComboBox;
end;

procedure TFrLetterNoSetting.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  // if Key in ['/'] then
  //  Key := #0
end;

end.
