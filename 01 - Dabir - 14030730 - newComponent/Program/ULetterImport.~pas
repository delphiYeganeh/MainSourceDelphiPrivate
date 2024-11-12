unit ULetterImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ActnList, ComCtrls, ExtCtrls, StdCtrls,
  OleServer, ExcelXP, ComObj, Grids, ValEdit, Buttons, DB, ADODB, ExtActns,
  DBCtrls, Menus, AppEvnts, AdvGlowButton;

type
  TFmLetterImport = class(TMBaseForm)
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    OpenDialog1: TOpenDialog;
    ExcelApplication1: TExcelApplication;
    Panel1: TPanel;
    Button1: TAdvGlowButton;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    btnPrev: TAdvGlowButton;
    btnNext: TAdvGlowButton;
    Panel3: TPanel;
    Label1: TLabel;
    lblNo: TLabel;
    lblDate: TLabel;
    lblSummery: TLabel;
    lblClassification: TLabel;
    lblPriority: TLabel;
    lblSender: TLabel;
    lblReceiver: TLabel;
    lblForm: TLabel;
    lblSubject: TLabel;
    cmbNo: TComboBox;
    cmbDate: TComboBox;
    cmbSubject: TComboBox;
    cmbSummery: TComboBox;
    cmbClassification: TComboBox;
    cmbPriority: TComboBox;
    cmbSender: TComboBox;
    cmbReceiver: TComboBox;
    Label20: TLabel;
    Button2: TAdvGlowButton;
    spLetterImport: TADOStoredProc;
    Label21: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cmbFormField11: TComboBox;
    cmbFormField12: TComboBox;
    cmbFormField13: TComboBox;
    cmbFormField14: TComboBox;
    cmbFormField15: TComboBox;
    cmbFormField16: TComboBox;
    cmbFormField17: TComboBox;
    cmbFormField18: TComboBox;
    lblFormField18: TLabel;
    lblFormField17: TLabel;
    lblFormField16: TLabel;
    lblFormField15: TLabel;
    lblFormField14: TLabel;
    lblFormField13: TLabel;
    lblFormField12: TLabel;
    lblFormField11: TLabel;
    DForms: TDataSource;
    sp_GetForms: TADOStoredProc;
    sp_GetFormsTableId: TWordField;
    sp_GetFormsDescription: TWideStringField;
    sp_GetFormsFieldsCount: TIntegerField;
    sp_FormFields: TADOStoredProc;
    sp_FormFieldsID: TAutoIncField;
    sp_FormFieldsFieldName: TStringField;
    sp_FormFieldsTableID: TIntegerField;
    sp_FormFieldsDescription: TWideStringField;
    sp_FormFieldsIsWhere: TBooleanField;
    sp_FormFieldsISString: TBooleanField;
    sp_FormFieldsIsLike: TBooleanField;
    sp_FormFieldsEveryLike: TBooleanField;
    sp_FormFieldsVisibleInGrid: TBooleanField;
    sp_FormFieldsisblob: TBooleanField;
    sp_FormFieldsFieldGroupID: TIntegerField;
    sp_FormFieldsFieldTypeID: TWordField;
    sp_FormFieldsReferenceTableID: TWordField;
    sp_FormFieldsisboolean: TBooleanField;
    sp_FormFieldsorder: TIntegerField;
    sp_FormFieldsFieldTypeID_1: TWordField;
    sp_FormFieldsFieldTypeTitle: TWideStringField;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblFieldType17: TLabel;
    lblFieldType16: TLabel;
    lblFieldType18: TLabel;
    lblFieldType15: TLabel;
    lblFieldType14: TLabel;
    lblFieldType13: TLabel;
    lblFieldType12: TLabel;
    lblFieldType11: TLabel;
    spLetterImportCOLUMN1: TIntegerField;
    ProgressBar1: TProgressBar;
    lblFormField19: TLabel;
    cmbFormField19: TComboBox;
    lblFieldType19: TLabel;
    lblFormField20: TLabel;
    cmbFormField20: TComboBox;
    lblFieldType20: TLabel;
    EditsPanel: TScrollBox;
    sp_Import_Other_Fields: TADOStoredProc;
    IntegerField1: TIntegerField;
    lblUserMemo: TLabel;
    cmbUserMemo: TComboBox;
    lblLetterType: TLabel;
    cmbLetterType: TComboBox;
    lcbTables: TDBLookupComboBox;
    Label3: TLabel;
    cmbIndicator: TComboBox;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure loadCombos;
    procedure Button2Click(Sender: TObject);
    function  LoopCondition(rowNum : integer):boolean;
    function  GetCell(i,j : integer) : string;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure sp_GetFormsAfterScroll(DataSet: TDataSet);
    function  FileRowsCount:integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmLetterImport: TFmLetterImport;
  Excel : variant;
  Document, Summery, Subject : string;
implementation

uses dmu, YShamsiDate;

{$R *.dfm}
var
    Combos      : array[1..200] of TComboBox;
    Labels      : array[1..200] of TLabel;
    FieldTypes  : array[1..200] of TLabel;

procedure TFmLetterImport.FormCreate(Sender: TObject);
var
   i : integer;
   f1,f2,f3 : string;
begin
  inherited;
  /////////////Turaj/////////////
   lblUserMemo.Caption:=dm.UserMemoDisplay;
//   if Dm.GetSystemValue(51) then // €ÌÌ— ⁄‰Ê«‰ ”‰œ
//   begin
//      Document := Trim(Dm.GetSystemValue(52));
//      subject  := Trim(Dm.GetSystemValue(53));
//      Summery  := Trim(Dm.GetSystemValue(54));
//   end
//   else
//   begin
//      Document := '”‰œ';
//      subject  := '„Ê÷Ê⁄';
//      Summery  := 'Œ·«’Â';
//   end;
//  // width := 616;
//   f1 := Trim(Dm.GetSystemValue(15));
//   f2 := Trim(Dm.GetSystemValue(45));
//   f3 := Trim(Dm.GetSystemValue(46));
//   if trim(f1)='' then
//      f1 := '›Ì·œ ò«—»—Ì 1';
//   if trim(f2)='' then
//      f1 := '›Ì·œ ò«—»—Ì 2';
//   if trim(f3)='' then
//      f1 := '›Ì·œ ò«—»—Ì 3';
  /////////////Turaj/////////////

   Caption := 'Ê—Êœ «ÿ·«⁄«  '+Document+' Â«'+' «“ ›«Ì· Œ«—ÃÌ';
   Button1.Caption := '«‰ Œ«» ›«Ì· Ê—ÊœÌ «ÿ·«⁄«  '+Document+' Â«';
   Button2.Caption := '«‰ ﬁ«· «ÿ·«⁄«  '+Document+' Â«';
   Label2.Caption := ' ÊÃÂ : «Ê·Ì‰ ”ÿ— ›«Ì· Ê—ÊœÌ »«Ìœ ⁄‰Ê«‰ ” Ê‰ Â« »«‘œ Ê «“ ”ÿ— œÊ„ »Â »⁄œ »«Ìœ «ÿ·«⁄«  '+Document+' Â«'+' ﬁ—«— œ«œÂ ‘Ê‰œ'+#13+'';
   //                  'œ— ’Ê—  Œ«·Ì »Êœ‰ Œ«‰Â Â«Ì ›«Ì· Ê—ÊœÌ° ÃœÊ· —‘ Â° ê—ÊÂ Ê œ«‰‘òœÂ »« ⁄»«—  ‰«„‘Œ’ Å— ŒÊ«Âœ ‘œ'+#13+
   //                  'œ— ’Ê—  Œ«·Ì »Êœ‰ ” Ê‰ Â«Ì „—»Êÿ »Â '+_ApplicentEntityPlural+'° ÃœÊ· '+_ApplicentEntityPlural+' »« —‘ Â Œ«·Ì Å— ŒÊ«Âœ ‘œ';
   Excel := CreateOleObject('Excel.Application');

   for i:= 0 to PageControl1.PageCount -1 do
      PageControl1.Pages[i].TabVisible := false;
   PageControl1.ActivePageIndex := 1;
  /////////////Turaj/////////////

//   lblNo.Caption := '‘„«—Â '+Document;
//   lblDate.Caption := ' «—ÌŒ '+Document;
//   lblSummery.Caption := Summery+' '+Document;
//   lblSubject.Caption := Subject+' '+Document;
//   lblCustomField1.Caption  := f1;
//   lblCustomField2.Caption := f2;
//   lblCustomField3.Caption := f3;
  /////////////Turaj/////////////

end;

procedure TFmLetterImport.Button1Click(Sender: TObject);
var
   j,colCount : integer;
begin
  inherited;
   if OpenDialog1.Execute then
   begin
      StringGrid1.Visible := false;
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      StringGrid1.RowCount := 2;
      StringGrid1.Cells[1,0] := '—œÌ›';
      StringGrid1.Cells[2,0] := '‰«„ ” Ê‰Â«';
      for j:= 200 downto 1 do
         if trim(Excel.ActiveSheet.Cells[1,j].Value) <>'' then
         begin
            colCount := j;
            break;
         end;

      for j:=1 to colCount do
      begin
         StringGrid1.Cells[1,j] := IntToStr(j);
         StringGrid1.Cells[2,j] := trim(Excel.ActiveSheet.Cells[1,j].Value);
         StringGrid1.RowCount := StringGrid1.RowCount+1;
      end;
      StringGrid1.RowCount := StringGrid1.RowCount-1;
      StringGrid1.Visible := true;
      btnNext.Enabled := true;
      loadCombos;
   end;
end;

procedure TFmLetterImport.btnNextClick(Sender: TObject);
begin
  inherited;
   PageControl1.ActivePageIndex := PageControl1.ActivePageIndex -1;
   btnPrev.Enabled := true;
   if PageControl1.ActivePageIndex = 0 then
      btnNext.Enabled := false;
end;

procedure TFmLetterImport.btnPrevClick(Sender: TObject);
begin
  inherited;
   PageControl1.ActivePageIndex := PageControl1.ActivePageIndex +1;
   btnNext.Enabled := true;
   if PageControl1.ActivePageIndex = 1 then
      btnPrev.Enabled := false;
end;

procedure TFmLetterImport.loadCombos;
var
   i,j, page : integer;
begin
   for i:=0 to ComponentCount-1 do
   begin
      if Components[i].ClassNameIs('TComboBox') then
         if TComboBox(Components[i]).Tag = 1 then
         begin
            TComboBox(Components[i]).Items.Clear;
            TComboBox(Components[i]).Items.Add('');
            for j := 1 to StringGrid1.RowCount - 1 do
               TComboBox(Components[i]).Items.Add(StringGrid1.Cells[2,j]);
         end;
   end;
   sp_GetForms.Close;
   sp_GetForms.Open;
end;

procedure TFmLetterImport.Button2Click(Sender: TObject);
var
   i,j, ins,upd,insErr,updErr, page : integer;
   b, canInset, canUpdate, goOn : boolean;
begin
  inherited;
   i := 2;
   b := false;
   ins := 0;
   upd := 0;
   insErr := 0;
   updErr := 0;
   if RadioButton1.Checked then
      canInset := true
   else
      canUpdate := true;
   if CheckBox1.Checked then
      if RadioButton1.Checked then
         canUpdate := true
   else
         canInset := true;
   ProgressBar1.Max := FileRowsCount;
   ProgressBar1.Position := 0;
   while LoopCondition(i) do
   begin
      spLetterImport.Close;
      spLetterImport.Parameters.Refresh;
      spLetterImport.Parameters.ParamByName('@canInsert').Value := canInset;
      spLetterImport.Parameters.ParamByName('@canEdit').Value := canUpdate;
      spLetterImport.Parameters.ParamByName('@year').Value := dm.CurrentMyear;
      spLetterImport.Parameters.ParamByName('@secID').Value := dm.SecID;
      spLetterImport.Parameters.ParamByName('@LetterNo').Value := copy(GetCell(i,cmbNo.ItemIndex),1,50);
      spLetterImport.Parameters.ParamByName('@IndicatorID').Value := copy(GetCell(i,cmbIndicator.ItemIndex),1,50);
      spLetterImport.Parameters.ParamByName('@LetterDate').Value := copy(GetCell(i,cmbDate.ItemIndex),1,10);
      spLetterImport.Parameters.ParamByName('@LetterType').Value := copy(GetCell(i,cmbLetterType.ItemIndex),1,100);

      spLetterImport.Parameters.ParamByName('@userID').Value := _userID;

      spLetterImport.Parameters.ParamByName('@Subject').Value := copy(GetCell(i,cmbSubject.ItemIndex),1,50);
      spLetterImport.Parameters.ParamByName('@Summery').Value := GetCell(i,cmbSummery.ItemIndex);
      spLetterImport.Parameters.ParamByName('@classification').Value := GetCell(i,cmbClassification.ItemIndex);
      spLetterImport.Parameters.ParamByName('@priority').Value := GetCell(i,cmbPriority.ItemIndex);
      spLetterImport.Parameters.ParamByName('@sender').Value := GetCell(i,cmbSender.ItemIndex);
      spLetterImport.Parameters.ParamByName('@receiver').Value := GetCell(i,cmbReceiver.ItemIndex);
      spLetterImport.Parameters.ParamByName('@userMemo').Value := GetCell(i,cmbUserMemo.ItemIndex);
      spLetterImport.Parameters.ParamByName('@FormID').Value := lcbTables.KeyValue;
      try
         spLetterImport.Parameters.ParamByName('@FormField1').Value := GetCell(i,combos[1].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField2').Value := GetCell(i,combos[2].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField3').Value := GetCell(i,combos[3].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField4').Value := GetCell(i,combos[4].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField5').Value := GetCell(i,combos[5].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField6').Value := GetCell(i,combos[6].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField7').Value := GetCell(i,combos[7].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField8').Value := GetCell(i,combos[8].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField9').Value := GetCell(i,combos[9].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField10').Value := GetCell(i,combos[10].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField11').Value := GetCell(i,combos[11].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField12').Value := GetCell(i,combos[12].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField13').Value := GetCell(i,combos[13].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField14').Value := GetCell(i,combos[14].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField15').Value := GetCell(i,combos[15].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField16').Value := GetCell(i,combos[16].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField17').Value := GetCell(i,combos[17].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField18').Value := GetCell(i,combos[18].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField19').Value := GetCell(i,combos[19].ItemIndex);
      except
      end;
      try
         spLetterImport.Parameters.ParamByName('@FormField20').Value := GetCell(i,combos[20].ItemIndex);
      except
      end;
      try
         spLetterImport.Open;
         if spLetterImportCOLUMN1.AsInteger = 1 then
            upd := upd+1
         else if spLetterImportCOLUMN1.AsInteger = 2 then
            ins := ins+1
         else if (spLetterImportCOLUMN1.AsInteger = -1) and (not goOn) then
         begin
            ShowMessage('Œÿ« œ— »—Ê“ —”«‰Ì —œÌ› '+IntToStr(i)+' «“ ›«Ì· „»œ«');
            if not messageShowString('¬Ì« „«Ì· »Â «œ«„Â ⁄„·Ì«  Â” Ìœø',true) then
            begin
               b := true;
               break;
            end
            else
               goOn := true;
         end
         else if (spLetterImportCOLUMN1.AsInteger = -2) and (not goOn) then
         begin
            ShowMessage('Œÿ« œ— «›“Êœ‰ —œÌ› '+IntToStr(i)+' «“ ›«Ì· „»œ«');
            if not messageShowString('¬Ì« „«Ì· »Â «œ«„Â ⁄„·Ì«  Â” Ìœø',true) then
            begin
               b := true;
               break;
            end
            else
               goOn := true;
         end;
      except
         b := true;
         break;
      end;
      if lcbTables.KeyValue<>null then
      if sp_FormFields.RecordCount>20 then
      begin
         page := 0;
         while (page<((sp_FormFields.RecordCount-1) div 20))do
         begin
            page := page +1;

            sp_Import_Other_Fields.Close;
            sp_Import_Other_Fields.Parameters.ParamByName('@year').Value := dm.CurrentMyear;
            sp_Import_Other_Fields.Parameters.ParamByName('@secID').Value := dm.SecID;
            sp_Import_Other_Fields.Parameters.ParamByName('@docNo').Value := copy(GetCell(i,cmbNo.ItemIndex),1,50);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormID').Value := sp_GetFormsTableId.AsInteger;
            sp_Import_Other_Fields.Parameters.ParamByName('@FiledsPage').Value := page;
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField1').Value := GetCell(i,combos[1 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField2').Value := GetCell(i,combos[2 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField3').Value := GetCell(i,combos[3 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField4').Value := GetCell(i,combos[4 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField5').Value := GetCell(i,combos[5 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField6').Value := GetCell(i,combos[6 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField7').Value := GetCell(i,combos[7 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField8').Value := GetCell(i,combos[8 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField9').Value := GetCell(i,combos[9 + page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField10').Value := GetCell(i,combos[10+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField11').Value := GetCell(i,combos[11+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField12').Value := GetCell(i,combos[12+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField13').Value := GetCell(i,combos[13+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField14').Value := GetCell(i,combos[14+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField15').Value := GetCell(i,combos[15+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField16').Value := GetCell(i,combos[16+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField17').Value := GetCell(i,combos[17+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField18').Value := GetCell(i,combos[18+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField19').Value := GetCell(i,combos[19+page*20].ItemIndex);
            sp_Import_Other_Fields.Parameters.ParamByName('@FormField20').Value := GetCell(i,combos[20+page*20].ItemIndex);
            try
               sp_Import_Other_Fields.Open;
            except
            end;
         end;
      end;
      inc(i);
      ProgressBar1.Position := ProgressBar1.Position + 1;
   end;
   if not b then
   begin
      Excel.Workbooks.Close;
      ShowMessage('«‰ ﬁ«· «ÿ·«⁄«  »« „Ê›ﬁÌ  »Â Å«Ì«‰ —”Ìœ '+
      #13#13+' ⁄œ«œ ' +Document+' Â«Ì '+ ' «÷«›Â ‘œÂ '+IntToStr(ins)+' Ê  ⁄œ«œ'+Document+' Â«Ì '+' »—Ê“ —”«‰Ì ‘œÂ '+IntToStr(upd)+' „Ì»«‘œ ');
      close;
   end
   else
   begin
      ShowMessage('«‰ ﬁ«· «ÿ·«⁄«  œ— —œÌ› '+IntToStr(i)+' »« Œÿ« „Ê«ÃÂ ‘œ');
      ShowMessage('·ÿ›« —œÌ› „Ê—œ ‰Ÿ— œ— ›«Ì· „»œ« —« «’·«Õ ò—œÂ Ê „Ãœœ«  ·«‘ ‰„«ÌÌœ');
   end;
end;

function TFmLetterImport.LoopCondition(rowNum: integer): boolean;
var
   j : integer;
   b : boolean;
begin
   b := false;
   for j :=1 to StringGrid1.RowCount-1 do
   begin
      b := b or (trim(Excel.ActiveSheet.Cells[rowNum,j].Value)<>'');
      if b then
         break;
   end;
   result := b;
end;

function TFmLetterImport.GetCell(i, j: integer): string;
begin
   if j < 1 then
      result := ''
   else
      result := trim(Excel.ActiveSheet.Cells[i,j].Value);
end;

procedure TFmLetterImport.RadioButton1Click(Sender: TObject);
begin
  inherited;
   CheckBox1.Caption := 'ÊÌ—«Ì‘ «ÿ·«⁄«  œ— ’Ê—  ÊÃÊœ';
end;

procedure TFmLetterImport.RadioButton2Click(Sender: TObject);
begin
  inherited;
   CheckBox1.Caption := '«›“Êœ‰ «ÿ·«⁄«  œ— ’Ê—  ⁄œ„ ÊÃÊœ';
end;

procedure TFmLetterImport.sp_GetFormsAfterScroll(DataSet: TDataSet);
var
   i,j: integer;
   AComponent: TComponent;
begin
  inherited;
   if lcbTables.KeyValue >=0 then
   begin
      sp_FormFields.Close;
      sp_FormFields.Parameters.ParamByName('@FormID').Value := sp_GetFormsTableId.AsInteger;
      sp_FormFields.Open;
      sp_FormFields.First;
      for i:= 1 to 200 do
      begin
         try
         Labels[i].Destroy;
         Combos[i].Destroy;
         FieldTypes[i].Destroy;
         except
         end;
      end;
      for i:= 1 to sp_FormFields.RecordCount do
      begin

         Labels[i]:=TLabel.Create(self);
         with Labels[i] do
         begin
            Caption := sp_FormFieldsDescription.AsString;
            Parent  := EditsPanel;
            BiDiMode := bdRightToLeft;
            Alignment := taRightJustify;
            Font.Name := 'Tahoma';
            Font.Color := clBlue;

            Top  := ((i-1) div 2)*24 + 12;
            Left := (i mod 2)*280 + 215;
         end;

         Combos[i]:=TComboBox.Create(self);
         with Combos[i] do
         begin
            Caption := sp_FormFieldsDescription.AsString;
            Parent  := EditsPanel;
            Font.Name := 'Tahoma';
            Font.Color := clGreen;
            ItemIndex := -1;
            Top  := ((i-1) div 2)*24 + 10;
            Left := (i mod 2)*280 + 50;
            Width:= 161;
            Height := 21;
            Items.Clear;
            Items.Add('');
            for j := 1 to StringGrid1.RowCount - 1 do
               Items.Add(StringGrid1.Cells[2,j]);
         end;

         FieldTypes[i]:=TLabel.Create(self);
         with FieldTypes[i] do
         begin
            Caption := '* 1 ';
            Parent  := EditsPanel;
            Left := (i mod 2)*280 + 31;
            BiDiMode := bdLeftToRight;
            Alignment := taRightJustify;
            Font.Name := 'Tahoma';
            Font.Color := clRed;
            Top  := ((i-1) div 2)*24 + 12;
            if sp_FormFieldsFieldTypeID_1.AsInteger < 3 then
                  Caption := 'Text'
            else if sp_FormFieldsFieldTypeID_1.AsInteger =3 then
                  Caption := '123'
            else if sp_FormFieldsFieldTypeID_1.AsInteger =4 then
                  Caption := 'Date'
            else if sp_FormFieldsFieldTypeID_1.AsInteger =5 then
                  Caption := 'T/F'
            else if sp_FormFieldsFieldTypeID_1.AsInteger =6 then
                  Caption := 'Comb';
         end;
         sp_FormFields.Next;
      end;
   end;
end;

function TFmLetterImport.FileRowsCount: integer;
var
   i : integer;
begin
   i:= 1001;
   while LoopCondition(i)do
   begin
      i := i+1000;
   end;
   while not LoopCondition(i) do
   begin
      i := i-100;
   end;
   while LoopCondition(i) do
   begin
      i := i+10;
   end;
   while not LoopCondition(i) do
   begin
      i := i-1;
   end;
   Result := i-1;
end;

end.
