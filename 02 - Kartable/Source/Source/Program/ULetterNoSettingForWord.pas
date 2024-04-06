unit ULetterNoSettingForWord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, xpWindow, ExtActns, ActnList, DB, xpBitBtn,
  Mask, Buttons, ExtCtrls, Menus, DBCtrls, ADODB;

type
  TFrLetterNoSettingForWord = class(TMBaseForm)
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
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dUserSecsDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    function CheckSeperator:Boolean;
    procedure SetAllComboBox; 
  public
    { Public declarations }
  end;

var
  FrLetterNoSettingForWord: TFrLetterNoSettingForWord;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrLetterNoSettingForWord.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrLetterNoSettingForWord.BitBtn1Click(Sender: TObject);
var i: byte;
begin
  inherited;
  if CheckSeperator then
  begin
      if VarToStr(DBLookupComboBox1.KeyValue)<>'' then
      begin
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
          QUpdLetterFormula.SQL.Add('WHERE SecID='+VarToStr(DBLookupComboBox1.KeyValue)+'and UseForWord=1');

          QUpdLetterFormula.SQL.Add('update letter set InnerNoForWord=dbo.InnerNoForWord(letterId)');


         // ShowMessage(QUpdLetterFormula.SQL.Text);

          QUpdLetterFormula.ExecSQL;
          Close;
      end
      else
        ShowMsgString('«» œ« Ìò œ»Ì—Œ«‰Â —« «‰ Œ«» ‰„«ÌÌœ');
  end
  else
  begin
     ShowMessage('›Ì·œ Ãœ«ò‰‰œÂ ﬁ”„ Â« ‰„Ì  Ê«‰œ Œ«·Ì »«‘œ');
  end;
end;

procedure TFrLetterNoSettingForWord.FormCreate(Sender: TObject);
var i: byte;
begin
   inherited;
   if Dm.UserSecs.Active then
      DBLookupComboBox1.KeyValue:=Dm.UserSecsSecId.AsInteger;

   for i:=1 to 6 do
   with TComboBox(FindComponent('indicator'+IntToStr(i))),Items do
   begin
      Clear;
      add('Œ«·Ì');
      add('òœ œ»Ì—Œ«‰Â');
      add('”«·');
      add('‘„«—Â «‰œÌò« Ê—');
      add('òœ ÿ—› „ò« »Â');
      add('òœ ÿ—› „ò« »Â œ«Œ·Ì');
      add('òœ ‰Ê⁄ ‰«„Â');
      add(dm.UserMemoDisplay);
      add('ÅÌ‘ òœ ç«—  ”«“„«‰Ì');
      add('‘„«—Â œ»Ì—Œ«‰Â „—ò“Ì');
      add('„Ê÷Ê⁄ ‰«„Â'); // Amin 1391/12/13
   end;
   SetAllComboBox;
end;

function TFrLetterNoSettingForWord.CheckSeperator: Boolean;
begin
  Result:=True;
  if length(Trim(MaskEdit1.Text))<1 then
      Result:=False;
end;

procedure TFrLetterNoSettingForWord.SetAllComboBox;
begin
   if (Dm.UserSecs.Active) and (VarToStr(DBLookupComboBox1.KeyValue)<>'') then
   begin
       QReadLetterFormula.Close;
       QReadLetterFormula.Parameters.ParamByName('SecID').Value:=DBLookupComboBox1.KeyValue;
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

           if QReadLetterFormulaLetterFormulaSeperator.AsString='' then
              MaskEdit1.Text:='/'
           else
              MaskEdit1.Text:=QReadLetterFormulaLetterFormulaSeperator.AsString;
       end;
   end;
end;

procedure TFrLetterNoSettingForWord.dUserSecsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SetAllComboBox;
end;

end.
