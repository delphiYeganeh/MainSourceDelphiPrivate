unit UDocumentImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ActnList, ComCtrls, ExtCtrls, StdCtrls,
  OleServer, ExcelXP, ComObj, Grids, ValEdit, Buttons, DB, ADODB, ExtActns,
  DBCtrls;

type
  TFmDocumentImport = class(TMBaseForm)
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    OpenDialog1: TOpenDialog;
    ExcelApplication1: TExcelApplication;
    Panel1: TPanel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    btnPrev: TBitBtn;
    btnNext: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    lblNo: TLabel;
    lblDate: TLabel;
    lblSummery: TLabel;
    lblClassification: TLabel;
    lblCustomField1: TLabel;
    lblCustomField2: TLabel;
    lblCustomField3: TLabel;
    lblForm: TLabel;
    lblSubject: TLabel;
    cmbNo: TComboBox;
    cmbDate: TComboBox;
    cmbSubject: TComboBox;
    cmbSummery: TComboBox;
    cmbClassification: TComboBox;
    cmbCustomField1: TComboBox;
    cmbCustomField2: TComboBox;
    cmbCustomField3: TComboBox;
    Label20: TLabel;
    Button2: TButton;
    sp_Import_Document: TADOStoredProc;
    Label21: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
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
    sp_Import_DocumentCOLUMN1: TIntegerField;
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
    SpeedButton1: TSpeedButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button3: TButton;
    Label2: TLabel;
    ImportExcel: TADOStoredProc;
    Label7: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lblProc: TLabel;
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
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmDocumentImport: TFmDocumentImport;
  Excel : variant;
  Document, Summery, Subject : string;
implementation

uses dmu, YShamsiDate;

{$R *.dfm}
var
    Combos      : array[1..200] of TComboBox;
    Labels      : array[1..200] of TEdit;
    FieldTypes  : array[1..200] of TLabel;

procedure TFmDocumentImport.FormCreate(Sender: TObject);
var
   i : integer;
   f1,f2,f3 : string;
begin
  inherited;
  if Dm.GetSystemValue(51) then // €ÌÌ— ⁄‰Ê«‰ ”‰œ
  begin
    Document := Trim(Dm.GetSystemValue(52));
    subject  := Trim(Dm.GetSystemValue(53));
    Summery  := Trim(Dm.GetSystemValue(54));
  end
  else
  begin
    Document := '”‰œ';
    subject  := '„Ê÷Ê⁄';
    Summery  := 'Œ·«’Â';
  end;
  // width := 616;
  f1 := Trim(Dm.GetSystemValue(15));
  f2 := Trim(Dm.GetSystemValue(45));
  f3 := Trim(Dm.GetSystemValue(46));
  if trim(f1)='' then
    f1 := '›Ì·œ ò«—»—Ì 1';
  if trim(f2)='' then
    f1 := '›Ì·œ ò«—»—Ì 2';
  if trim(f3)='' then
    f1 := '›Ì·œ ò«—»—Ì 3';


  Caption := 'Ê—Êœ «ÿ·«⁄«  '+Document+' Â«'+' «“ ›«Ì· Œ«—ÃÌ';
  Button1.Caption := '«‰ Œ«» ›«Ì· Ê—ÊœÌ «ÿ·«⁄«  '+Document+' Â«';
  Button2.Caption := '«‰ ﬁ«· «ÿ·«⁄«  '+Document+' Â«';
  //Label2.Caption := ' ÊÃÂ : «Ê·Ì‰ ”ÿ— ›«Ì· Ê—ÊœÌ »«Ìœ ⁄‰Ê«‰ ” Ê‰ Â« »«‘œ Ê «“ ”ÿ— œÊ„ »Â »⁄œ »«Ìœ «ÿ·«⁄«  '+Document+' Â«'+' ﬁ—«— œ«œÂ ‘Ê‰œ'+#13+''+
  //'œ— ’Ê—  Œ«·Ì »Êœ‰ Œ«‰Â Â«Ì ›«Ì· Ê—ÊœÌ° ÃœÊ· —‘ Â° ê—ÊÂ Ê œ«‰‘òœÂ »« ⁄»«—  ‰«„‘Œ’ Å— ŒÊ«Âœ ‘œ'+#13;//+
  // 'œ— ’Ê—  Œ«·Ì »Êœ‰ ” Ê‰ Â«Ì „—»Êÿ »Â '+_ApplicentEntityPlural+'° ÃœÊ· '+_ApplicentEntityPlural+' »« —‘ Â Œ«·Ì Å— ŒÊ«Âœ ‘œ';
  Excel := CreateOleObject('Excel.Application');

  for i:= 0 to PageControl1.PageCount -1 do
    PageControl1.Pages[i].TabVisible := false;
  PageControl1.ActivePageIndex := 1;

  lblNo.Caption := '‘„«—Â '+Document;
  lblDate.Caption := ' «—ÌŒ '+Document;
  lblSummery.Caption := Summery+' '+Document;
  lblSubject.Caption := Subject+' '+Document;
  lblCustomField1.Caption  := f1;
  lblCustomField2.Caption := f2;
  lblCustomField3.Caption := f3;
end;

procedure TFmDocumentImport.Button1Click(Sender: TObject);
var
  j,colCount : integer;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    StringGrid1.Visible := False;
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    StringGrid1.RowCount := 2;
    StringGrid1.Cells[1,0] := '—œÌ›';
    StringGrid1.Cells[2,0] := '‰«„ ” Ê‰Â«';
    for j := 200 downto 1 do
      if Trim(Excel.ActiveSheet.Cells[1,j].Value) <> '' then
      begin
        colCount := j;
        Break;
      end;

    for j := 1 to colCount do
    begin
      StringGrid1.Cells[1,j] := IntToStr(j);
      StringGrid1.Cells[2,j] := Trim(Excel.ActiveSheet.Cells[1,j].Value);
      StringGrid1.RowCount := StringGrid1.RowCount+1;
    end;
    StringGrid1.RowCount := StringGrid1.RowCount-1;
    StringGrid1.Visible := True;
    btnNext.Enabled := True;
    loadCombos;
  end;
end;

procedure TFmDocumentImport.btnNextClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := PageControl1.ActivePageIndex -1;
  btnPrev.Enabled := True;
  if PageControl1.ActivePageIndex = 0 then
    btnNext.Enabled := False;
end;

procedure TFmDocumentImport.btnPrevClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := PageControl1.ActivePageIndex +1;
  btnNext.Enabled := True;
  if PageControl1.ActivePageIndex = 1 then
    btnPrev.Enabled := False;
end;

procedure TFmDocumentImport.loadCombos;
var
  i, j, page : Integer;
begin
  for i := 0 to ComponentCount - 1 do
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

procedure TFmDocumentImport.Button2Click(Sender: TObject);
var
  i,j, ins,upd,insErr,updErr, page,k ,x: integer;
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
    //Edit By Sanaye 941003
    //«÷«›Â ò—œ‰ ò«—»— À»  ò‰‰œÂ
    sp_Import_Document.Close;

    try
      sp_Import_Document.Parameters.ParamByName('@canInsert').Value := canInset;
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@canEdit').Value := canUpdate;
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@year').Value := dm.CurrentMyear;
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@secID').Value := dm.SecID;
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@docNo').Value := copy(GetCell(i,cmbNo.ItemIndex),1,50);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@docDate').Value := copy(GetCell(i,cmbDate.ItemIndex),1,10);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@docSubject').Value := copy(GetCell(i,cmbSubject.ItemIndex),1,100);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@docSummery').Value := GetCell(i,cmbSummery.ItemIndex);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@classification').Value := copy(GetCell(i,cmbClassification.ItemIndex),1,50);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@customField1').Value := GetCell(i,cmbCustomField1.ItemIndex);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@customField2').Value := GetCell(i,cmbCustomField2.ItemIndex);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@customField3').Value := GetCell(i,cmbCustomField3.ItemIndex);
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@FormID').Value := sp_GetFormsTableId.AsInteger;
    except
    end;

    try
      sp_Import_Document.Parameters.ParamByName('@UserID').Value := _UserId;
    except
    end;

    if sp_FormFields.Active then
      for x :=1  to sp_FormFields.RecordCount do
      begin
        sp_Import_Document.Parameters.ParamByName('@FormField'+vartostr(x)).Value := GetCell(i,combos[x].ItemIndex);
      end;
    //End Sanaye...

    //try
    sp_Import_Document.Open;
    if sp_Import_DocumentCOLUMN1.AsInteger = 1 then
      upd := upd + 1
    else if sp_Import_DocumentCOLUMN1.AsInteger = 2 then
      ins := ins + 1
    else if (sp_Import_DocumentCOLUMN1.AsInteger = -1) and (not goOn) then
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
    else if (sp_Import_DocumentCOLUMN1.AsInteger = -2) and (not goOn) then
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
    (*
    except
       b := true;
       break;
    end;
    *)
    if sp_FormFields.Active then
      if sp_FormFields.RecordCount > 20 then
      begin
        page := 0;
        while (page<((sp_FormFields.RecordCount - 1) div 20))do
        begin
          page := page + 1;

          sp_Import_Other_Fields.Close;
          sp_Import_Other_Fields.Parameters.ParamByName('@year').Value := dm.CurrentMyear;
          sp_Import_Other_Fields.Parameters.ParamByName('@secID').Value := dm.SecID;
          sp_Import_Other_Fields.Parameters.ParamByName('@docNo').Value := copy(GetCell(i,cmbNo.ItemIndex),1,50);
          sp_Import_Other_Fields.Parameters.ParamByName('@FormID').Value := sp_GetFormsTableId.AsInteger;
          sp_Import_Other_Fields.Parameters.ParamByName('@FiledsPage').Value := page;

          for k := 1 to 20 do
          begin
            try
              sp_Import_Other_Fields.Parameters.ParamByName('@FormField'+vartostr(k)).Value := GetCell(i,combos[k + page*20].ItemIndex);
            except
            end;

          end;

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

function TFmDocumentImport.LoopCondition(rowNum: integer): boolean;
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

function TFmDocumentImport.GetCell(i, j: integer): string;
begin
  if j < 1 then
    result := ''
  else
    result := trim(Excel.ActiveSheet.Cells[i,j].Value);
end;

procedure TFmDocumentImport.RadioButton1Click(Sender: TObject);
begin
  inherited;
  CheckBox1.Caption := 'ÊÌ—«Ì‘ «ÿ·«⁄«  œ— ’Ê—  ÊÃÊœ';
end;

procedure TFmDocumentImport.RadioButton2Click(Sender: TObject);
begin
  inherited;
  CheckBox1.Caption := '«›“Êœ‰ «ÿ·«⁄«  œ— ’Ê—  ⁄œ„ ÊÃÊœ';
end;

procedure TFmDocumentImport.sp_GetFormsAfterScroll(DataSet: TDataSet);
var
  i,j: integer;
  AComponent: TComponent;
begin
  inherited;
  if DBLookupComboBox1.KeyValue >=0 then
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
      Labels[i]:=TEdit.Create(self);
      with Labels[i] do
      begin
        Text := sp_FormFieldsDescription.AsString;
        Parent  := EditsPanel;
        BiDiMode := bdRightToLeft;
        Font.Name := 'Tahoma';
        ParentColor:=True;
        BorderStyle:=bsNone;
        TabStop:=False;
        BiDiMode:=bdLeftToRight;
        Width :=70;
        Top  := ((i-1) div 2)*24 + 12;
        Left := (i mod 2)*280 + 215;
      end;

      Combos[i]:=TComboBox.Create(self);
      with Combos[i] do
      begin
        //Caption := sp_FormFieldsDescription.AsString;
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

function TFmDocumentImport.FileRowsCount: integer;
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

procedure TFmDocumentImport.RadioButton4Click(Sender: TObject);
begin
  inherited;

  Button1.Enabled := True;
  RadioButton1.Enabled := True;
  RadioButton2.Enabled := True;
  CheckBox1.Enabled := True;
  StringGrid1.Enabled := True;
  Label2.Enabled := True;
  Button3.Enabled := False;

  Label3.Enabled := False;
  Label4.Enabled := False;
  Label12.Enabled := False;
  Label13.Enabled := False;
  Label14.Enabled := False;
  Label7.Enabled := False;
end;

procedure TFmDocumentImport.RadioButton3Click(Sender: TObject);
begin
  inherited;
  Button1.Enabled := False;
  RadioButton1.Enabled := False;
  RadioButton2.Enabled := False;
  CheckBox1.Enabled := False;
  StringGrid1.Enabled := False;
  Label2.Enabled := False;
  btnPrev.Enabled := False;
  btnNext.Enabled:= False;
  StringGrid1.Enabled:= False;
  StringGrid1.Visible := False;

  Button3.Enabled := True;

  Label3.Enabled := True;
  Label4.Enabled := True;
  Label12.Enabled := True;
  Label13.Enabled := True;
  Label14.Enabled := True;
  Label7.Enabled := True;
end;

procedure TFmDocumentImport.Button3Click(Sender: TObject);
var
  ValuePath, sqlCmd : String;
  Cols, Rows, i, j, failure, mYear, intCount: Integer;
  Excel, XLSheet: Variant;
  adoCmd: TADOCommand;
begin
  inherited;
  OpenDialog1.Execute;
  ValuePath := OpenDialog1.FileName;

  failure:=0;
  try
    Excel:=CreateOleObject('Excel.Application');
  except
    failure:=1;
  end;

  if failure = 0 then
  begin
    Excel.Visible:=False;
    Excel.WorkBooks.Open(ValuePath);
    XLSheet := Excel.Worksheets[1];
    Cols := XLSheet.UsedRange.Columns.Count;
    Rows := XLSheet.UsedRange.Rows.Count;

    try
      lblProc.Visible := True;
      lblProc.Caption := 'œ— Õ«· Å—œ«“‘ ›«Ì· «ò”·';
      Application.ProcessMessages;

      adoCmd := TADOCommand.Create(nil);
      adoCmd.Connection := Dm.YeganehConnection;

      sqlCmd := 'IF OBJECT_ID(''tempdb..##temptable'') IS NOT NULL ' +
                '  DELETE FROM ##temptable ' +
                'ELSE ' +
                '  CREATE TABLE ##temptable ' +
                '  ( ' +
                '     f1  nvarchar(max)  NULL, ' +
                '     f2  nvarchar(max)  NULL, ' +
                '     f3  nvarchar(max)  NULL, ' +
                '     f4  nvarchar(max)  NULL, ' +
                '     f5  nvarchar(max)  NULL, ' +
                '     f6  nvarchar(max)  NULL, ' +
                '     f7  nvarchar(max)  NULL, ' +
                '     f8  int            NULL, ' +  // MYear
                '     f9  nvarchar(max)  NULL, ' +
                '     f10 nvarchar(max)  NULL, ' +
                '     f11 nvarchar(max)  NULL, ' +
                '     f12 nvarchar(max)  NULL, ' +
                '     f13 nvarchar(max)  NULL, ' +
                '     f14 nvarchar(max)  NULL, ' +
                '     f15 nvarchar(max)  NULL, ' +
                '     f16 nvarchar(max)  NULL, ' +
                '     f17 nvarchar(max)  NULL, ' +
                '     f18 nvarchar(max)  NULL, ' +
                '     f19 nvarchar(max)  NULL, ' +
                '     f20 nvarchar(max)  NULL, ' +
                '     f21 nvarchar(max)  NULL, ' +
                '     f22 nvarchar(max)  NULL, ' +
                '     f23 nvarchar(max)  NULL, ' +
                '     f24 nvarchar(max)  NULL, ' +
                '     f25 nvarchar(max)  NULL, ' +
                '     f26 nvarchar(max)  NULL, ' +
                '     f27 nvarchar(max)  NULL, ' +
                '     f28 nvarchar(max)  NULL, ' +
                '     f29 nvarchar(max)  NULL, ' +
                '     f30 nvarchar(max)  NULL, ' +
                '     f31 nvarchar(max)  NULL, ' +
                '     f32 nvarchar(max)  NULL, ' +
                '     f33 nvarchar(max)  NULL  ' +
                '     ) ';
      adoCmd.CommandText := sqlCmd;
      adoCmd.Execute;

      intCount := 0;
      for i := 3 to Rows do
      begin
        if (Trim(Excel.Cells[i, 1].Value) = '' ) then
          Continue;

        sqlCmd := '';
        for j := 1 to Cols do
        begin
          if (j = 8) then
          begin //MYear
            mYear := 0;
            try
              if (Length(Trim(Excel.Cells[i, j].Value)) > 0) then
                mYear := StrToInt(Copy(Excel.Cells[i, j].Value, 1, 4));
            except
              mYear := 0;
            end;

            if Length(sqlCmd) = 0 then
              sqlCmd := IntToStr(mYear)
            else
              sqlCmd := sqlCmd + ', ' + IntToStr(mYear);
          end
          else
          begin
            if Length(sqlCmd) = 0 then
              sqlCmd := QuotedStr(Excel.Cells[i, j].Value)
            else
              sqlCmd := sqlCmd + ', ' + QuotedStr(Excel.Cells[i, j].Value);
          end;
        end;
        sqlCmd := 'Insert Into ##temptable values(' + sqlCmd + ')';
        adoCmd.CommandText := sqlCmd;
        adoCmd.Execute;
        intCount := intCount + 1;
        lblProc.Caption := 'œ— Õ«· Å—œ«“‘  ' + IntToStr(intCount)  + ' —òÊ—œ';
        Application.ProcessMessages;
      end;
    finally
      lblProc.Visible := False;
      FreeAndNil(adoCmd);
    end;

    Excel.Workbooks.Close;
    Excel.Quit;
    Excel:=Unassigned;
  end;

  if dm.Secretariats.Active then
    dm.Secretariats.Locate('SecId',_DefaultSec,[]);

  try
    lblProc.Visible := True;
    lblProc.Caption := 'œ— Õ«· «‰ ﬁ«· œ«œÂ ...';
    Application.ProcessMessages;

    ImportExcel.Parameters.ParamByName('@SecretariatsID').Value := dm.SecretariatsSecID.AsInteger;
    ImportExcel.Parameters.ParamByName('@Path').Value := ValuePath;
    ImportExcel.ExecProc;
  finally
    lblProc.Visible := False;
    ShowMessage('Finish')
  end;

end;

end.
