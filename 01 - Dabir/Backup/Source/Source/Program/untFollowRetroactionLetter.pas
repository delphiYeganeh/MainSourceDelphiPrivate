//Add Sanaye 950306
//«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â

unit untFollowRetroactionLetter;

interface

uses
   shellApi,
  YDbgrid, Controls, xpBitBtn,  ExtActns, Classes, ActnList, DB,
  BaseUnit, Dialogs, XPStyleActnCtrls, ActnMan, Grids, DBGrids , Buttons, SysUtils,
  StdCtrls,  ADODB, windows, Menus, ExtCtrls, IdBaseComponent, IdCoder,
  IdCoder3to4, IdCoderMIME, Spin, DBCtrls, AppEvnts;

type
  TfrmFollowRetroactionLetter = class(TMBaseForm)
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    btnExit: TBitBtn;
    btnDel: TBitBtn;
    btnSave: TBitBtn;
    AddBtn: TBitBtn;
    btnedit: TBitBtn;
    dsLetterTypes: TDataSource;
    edtIndicatorID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cmbFRKind: TComboBox;
    Label3: TLabel;
    cmbxLetterType: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edtLetterNO: TEdit;
    edtLetterYear: TSpinEdit;
    ChBoIncommingNO: TCheckBox;
    DataSource1: TDataSource;
    dbgIncommingNo: TYDBGrid;
    qryIncommingNo: TADOQuery;
    dsIncommingNo: TDataSource;
    qryIncommingNoIncommingNo: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtLetterNOKeyPress(Sender: TObject; var Key: Char);
    procedure edtLetterNOExit(Sender: TObject);
    procedure edtLetterNOChange(Sender: TObject);
    procedure edtLetterNOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgIncommingNoCellClick(Column: TColumn);
    procedure dbgIncommingNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbxLetterTypeCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _FR_LetterID : Integer;
  end;

var
  frmFollowRetroactionLetter: TfrmFollowRetroactionLetter;

implementation

uses  Dmu, businessLayer, Forms, UAddLetterDataDialog, ArchiveAttach,
  Uconnect, ShowArchiveDoc,
   xmldom, XMLIntf, msxmldom, XMLDoc, YShamsiDate, DateUtils, UMain, ExitedLetterInputF,
  Variants;

{$R *.dfm}


procedure TfrmFollowRetroactionLetter.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmFollowRetroactionLetter.Action1Execute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmFollowRetroactionLetter.btnSaveClick(Sender: TObject);
  var FR_LetterID : Integer;
      strWhere : String;
  function Get_LetterID(IndicatorID : Integer; Year : Integer ; LetterType : Integer):Integer;
  begin
    strWhere := 'where MYear = ' + IntToStr(Year) + ' and Letter_Type = ' + IntToStr(LetterType);

    if edtIndicatorID.Text <> ''  then
      strWhere := strWhere + ' and IndicatorID = ' + IntToStr(IndicatorID) ;

    Case cmbxLetterType.KeyValue of
     1 : if edtLetterNO.Text <> '' then
          strWhere := strWhere + ' and IncommingNO = ' + QuotedStr(edtLetterNO.Text);
     2:  if edtLetterNO.Text <> '' then
          strWhere := strWhere + ' and InnerNo = ' + QuotedStr(edtLetterNO.Text);
    end;

    with TADOQuery.Create(nil) do
    begin
      try
        Connection := Dm.YeganehConnection;
        Close;
        SQL.Text := 'select LetterID from Letter ' + strWhere;
        Open;
        if RecordCount > 0 then
          Result := Fields[0].AsInteger
        else
          Result := 0;
      finally
        Free;
      end;
    end;
  end;
var
 AQry : TADOQuery;
 blnChange : Boolean;
begin
  inherited;
 //
  //v:= cmbxLetterType.KeyValue;

  blnChange := False;

  if VarIsNull(cmbxLetterType.KeyValue) then
  begin
    ShowMessage('‰Ê⁄ ‰«„Â —Ê „‘Œ’ ‰„«ÌÌœ');
    Exit;
  end;

  if ChBoIncommingNO.Checked then
  begin
    edtLetterNO.SetFocus;
    edtLetterNO.SelectAll;
    Keyboard_Farsi;
    edtLetterNO.Font.Name := 'Tahoma';
    edtLetterNO.BiDiMode := bdRightToLeft;
  end
  else
  begin
    edtLetterNO.SetFocus;
    edtLetterNO.SelectAll;
    Keyboard_English;
    edtLetterNO.BiDiMode := bdLeftToRight;
  end;
 // edtLetterNO.Text:=StringReplace(edtLetterNO.Text,' ','',[rfReplaceAll]);

  with Dm.adoFollow_Retroaction_Letter do
  begin
    FR_LetterID := Get_LetterID(StrToIntDef(edtIndicatorID.Text, 0), StrToIntDef(edtLetterYear.Text, _Year), cmbxLetterType.KeyValue);

    if FR_LetterID = 0  then
    begin
      ShowMessage('‰«„Â «ÌÌ »« „‘Œ’«  „–òÊ— Ì«›  ‰‘œ');
      Cancel;
      Abort;
    end;

    if State = dsInsert then
    begin
      Dm.adoFollow_Retroaction_LetterLetterID.Value := _FR_LetterID;
      Dm.adoFollow_Retroaction_LetterFR_LetterID.Value := FR_LetterID;
      Dm.adoFollow_Retroaction_LetterFR_Kind.Value := cmbFRKind.ItemIndex;
      Post;

      blnChange := True;
    end
    else
    if State = dsEdit then
    begin
      Dm.adoFollow_Retroaction_LetterFR_LetterID.Value := FR_LetterID;
      Dm.adoFollow_Retroaction_LetterFR_Kind.Value := cmbFRKind.ItemIndex;
      Post;

      blnChange := True;
    end;
  end;

  if blnChange then
  begin
    //Hamed_Ansari_990710_S
    AQry := TADOQuery.Create(Nil);
    try
     AQry.Connection := Dm.YeganehConnection;
     AQry.Close;
     AQry.SQL.Text := ' Update Letter ' +
                      ' Set ' +
                      '  ATF = dbo.FollowLetterNo_LIST(' + IntToStr(_FR_LetterID) + '), ' +
                      '  ATF2 = dbo.FollowLetterNo_LIST_02(' + IntToStr(_FR_LetterID) + '), ' +
                      '  PEY = dbo.RetroactionNo_LIST(' + IntToStr(_FR_LetterID) + '), ' +
                      '  PEY2 = dbo.RetroactionNo_LIST_02(' + IntToStr(_FR_LetterID) + ')' +
                      ' Where LetterId = ' + IntToStr(_FR_LetterID);
     AQry.ExecSQL;
    finally
     FreeAndNil(AQry);
    end;
    //Hamed_Ansari_990710_E
  end;
end;

procedure TfrmFollowRetroactionLetter.FormShow(Sender: TObject);
begin
  inherited;
  with dm.adoFollow_Retroaction_Letter do
  begin
    try
      Close;
      Parameters.ParamByName('LetterId').Value := _FR_LetterID;
      Open;
    except
      ShowMessage('Œÿ« œ— »«“ ò—œ‰ ÃœÊ·');
    end;
  end;

  if not Dm.QLetterTypes.Active then
    Dm.QLetterTypes.Open;

  edtLetterYear.Value := _Year;
end;

procedure TfrmFollowRetroactionLetter.AddBtnClick(Sender: TObject);
begin
  inherited;
  Dm.adoFollow_Retroaction_Letter.Insert;
  edtIndicatorID.SetFocus;
end;

procedure TfrmFollowRetroactionLetter.btneditClick(Sender: TObject);
begin
  inherited;
  dm.adoFollow_Retroaction_Letter.Edit;
  edtIndicatorID.Text := Dm.adoFollow_Retroaction_LetterFRIndicatorID.AsString;
  cmbFRKind.ItemIndex := Dm.adoFollow_Retroaction_LetterFR_Kind.Value;
  edtIndicatorID.SetFocus;
end;

procedure TfrmFollowRetroactionLetter.btnDelClick(Sender: TObject);
begin
  inherited;
  if Dm.adoFollow_Retroaction_Letter.IsEmpty then
   Exit;
  if MessageDlg('',mtWarning,mbOKCancel,0) = mrOk then
  begin
    Dm.adoFollow_Retroaction_Letter.Delete;
    Dm.adoFollow_Retroaction_Letter.Refresh;
  end;
end;

procedure TfrmFollowRetroactionLetter.DBGrid2DblClick(Sender: TObject);
//Add Sanaye 950721
//Ã·ÊêÌ—Ì «“ «—Ã«⁄ ‰«ÂÂ Â«ÌÌ òÂ ⁄ÿ› Ì« ÅÌ—Ê „Õ—„«‰Â œ«—‰œ
  Function GetHasSecureLetterAccess :Boolean;
    var qry: TADOQuery;
  begin
    Result:=False;
    qry := TADOQuery.Create(Self);
    qry.Connection := dm.YeganehConnection;
    qry.SQL.Text := 'SELECT HasSecureLetterAccess FROM dbo.Users where ID = '+IntToStr(_UserID);
    qry.Open;
    if qry.RecordCount>0 then
      Result := qry.Fields.FieldByName('HasSecureLetterAccess').AsBoolean;
    qry.Free;
  end;

  function CheckClassificationFollowRetroactionLetter(LID : Integer):Integer;
    var qry: TADOQuery;
  begin
    qry := TADOQuery.Create(Self);
    qry.Connection := dm.YeganehConnection;
    qry.SQL.Text := ' SELECT ClassificationID FROM Letter ' +
                    ' WHERE LetterID = ' + IntToStr(LID) ;
    qry.Open;
    Result := qry.Fields[0].AsInteger;
    qry.Free;
  end;
  //End Sanaye

var tmpRslt : Integer;
begin
  inherited;

   //Add Sanaye 950721
   //Ã·ÊêÌ—Ì «“ «—Ã«⁄ ‰«ÂÂ Â«ÌÌ òÂ ⁄ÿ› Ì« ÅÌ—Ê „Õ—„«‰Â œ«—‰œ
   tmpRslt := CheckClassificationFollowRetroactionLetter(Dm.adoFollow_Retroaction_LetterFR_LetterID.AsInteger);
   if (not GetHasSecureLetterAccess) and (tmpRslt > 1) then
   begin
     MessageShowString('œ” —”Ì €Ì— „Ã«“ ' + #13#10 + ' ‰«„Â œ«—«Ì ”ÿÕ ÿ»›Â »‰œÌ „Ì»«‘œ Ê ‘„« „Ã«“ »Â „‘«ÂœÂ ”‰œ ‰„Ì»«‘Ìœ', False);
     Exit;
   end;
   //End Sanaye..

    with TADOQuery.Create(Nil) do
    begin
      try
        Connection := Dm.YeganehConnection;
        Close;
        SQL.Text := 'select Letter_Type from Letter where LetterID = ' + Dm.adoFollow_Retroaction_LetterFR_LetterID.AsString;
        Open;
        if RecordCount > 0  then
        begin
           Case Fields[0].AsInteger of
             1: MainForm.ViewReceivedLetter(Dm.adoFollow_Retroaction_LetterFR_LetterID.AsInteger);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
             2: MainForm.ViewSentLetter(Dm.adoFollow_Retroaction_LetterFR_LetterID.AsInteger);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
             3: MainForm.ViewInnerLetter(Dm.adoFollow_Retroaction_LetterFR_LetterID.AsInteger);
             4: MainForm.ViewDocument(Dm.adoFollow_Retroaction_LetterFR_LetterID.AsInteger);
           end;
        end;
      finally
        Free;
      end;
    end;
end;

procedure TfrmFollowRetroactionLetter.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  dm.QLetterTypes.Close;
  dm.adoFollow_Retroaction_Letter.Close;
end;

procedure TfrmFollowRetroactionLetter.edtLetterNOKeyPress(Sender: TObject;
  var Key: Char);
var
  result : string;
begin
  inherited;
{  if Length(Trim(edtLetterNO.Text)) > 2 then
  begin
    if not dbgDocNo.Visible then
    begin
      dbgDocNo.Top := edtLetterNO.Top - edtLetterNO.Height;

      dbgDocNo.Visible := True;


    end;
  end
  else
    dbgDocNo.Visible := False;
}

  if ChBoIncommingNO.Checked then
  begin
    if Dm.adoFollow_Retroaction_LetterFRLetterNO.Alignment = taLeftJustify then
      Dm.adoFollow_Retroaction_LetterFRLetterNO.Alignment := taRightJustify;
    edtLetterNO.Text := Keyboard_TypeWithDivider(edtLetterNO.Text, Key);
  end;
end;

procedure TfrmFollowRetroactionLetter.edtLetterNOExit(Sender: TObject);
var
  S : String;
begin
  inherited;
    if  ChBoIncommingNO.Checked then
   begin
      if Dm.adoFollow_Retroaction_LetterFRLetterNO.Alignment = taLeftJustify then
         Dm.adoFollow_Retroaction_LetterFRLetterNO.Alignment := taRightJustify;
       //edtLetterNO.Text := Keyboard_TypeWithDivider(edtLetterNO.Text,Key);
   end;


  S := YeganehTrim(edtLetterNO.Text);

  //S := IncommingNoRevers(S);

  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    qryIncommingNo.Close;
    qryIncommingNo.SQL.Text := 'Select IncommingNo From Letter with (NOLOCK)' +
          ' where dbo.GetNumericValue(IsNull(IncommingNo, '''')) like ''' + '%''' + ' + dbo.GetNumericValue(''' + S + ''') + ' + '''%''';

    qryIncommingNo.open;

    if qryIncommingNo.RecordCount = 0 then
      ShowMsg(64)
    {else
    begin
      edtLetterNO.OnChange := nil;
      edtLetterNO.Text := qryIncommingNoIncommingNo.AsString;
      edtLetterNO.OnChange := edtLetterNOChange;
    end;}
  end;

  if not dbgIncommingNo.Focused then
    dbgIncommingNo.Hide;

end;

procedure TfrmFollowRetroactionLetter.edtLetterNOChange(Sender: TObject);
var
  S : String;
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    //s := Replace(YeganehTrim(edtLetterNO.Text),char(152),'yy');
    //S := Replace(s,'ﬂ','yy');
    S := YeganehTrim(edtLetterNO.Text);


    //S := IncommingNoRevers(S);
    if length(s) >= 3  then
    begin
      qryIncommingNo.Close;
      qryIncommingNo.SQL.Text := 'Select IncommingNo From Letter with (NOLOCK)' +
          ' where dbo.GetNumericValue(IsNull(IncommingNo, '''')) like ''' + '%''' + ' + dbo.GetNumericValue(''' + S + ''') + ' + '''%''';

      if not dbgIncommingNo.Showing then
        dbgIncommingNo.Show;
      qryIncommingNo.open;
    end;
  end;
end;

procedure TfrmFollowRetroactionLetter.edtLetterNOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
    if (key = vk_down) or (key = vk_up) then
    begin
      if ssalt in shift then
        dbgIncommingNo.Visible := not dbgIncommingNo.Visible
      else
        dbgIncommingNo.SetFocus;
    end;
end;

procedure TfrmFollowRetroactionLetter.dbgIncommingNoCellClick(
  Column: TColumn);
begin
{  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    edtLetterNO.OnChange := nil;
    edtLetterNO.Text := qryIncommingNoIncommingNo.AsString;
    edtLetterNO.OnChange := edtLetterNOChange;

    dbgIncommingNo.Hide;
  end;}
end;

procedure TfrmFollowRetroactionLetter.dbgIncommingNoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=32 then
  begin
    edtLetterNO.OnChange := nil;
    edtLetterNO.Text := qryIncommingNoIncommingNo.AsString;
    edtLetterNO.OnChange := edtLetterNOChange;

    dbgIncommingNo.Hide;
  end;

end;

procedure TfrmFollowRetroactionLetter.cmbxLetterTypeCloseUp(
  Sender: TObject);
begin
  inherited;
 case cmbxLetterType.KeyValue of
  2 : Label5.Caption := '‘„«—Â ‰«„Â  —òÌ»Ì :';
  else Label5.Caption := '‘„«—Â ‰«„Â :';
  end;
end;

end.
//End Sanaye...
