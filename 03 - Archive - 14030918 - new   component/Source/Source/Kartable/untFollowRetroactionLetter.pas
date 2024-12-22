//Add Sanaye 950306
//«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â

unit untFollowRetroactionLetter;

interface

uses
   shellApi,
  YDbgrid, Controls, xpBitBtn,  ExtActns, Classes, ActnList, DB,
  BaseUnit, Dialogs, XPStyleActnCtrls, ActnMan, Grids, DBGrids , Buttons, SysUtils,
  StdCtrls,  ADODB, windows, Menus, ExtCtrls, IdBaseComponent, IdCoder,
  IdCoder3to4, IdCoderMIME, Spin, DBCtrls;

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
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
   xmldom, XMLIntf, msxmldom, XMLDoc, YShamsiDate, DateUtils, UMain, ExitedLetterInputF;

{$R *.dfm}


procedure TfrmFollowRetroactionLetter.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TfrmFollowRetroactionLetter.Action1Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TfrmFollowRetroactionLetter.btnSaveClick(Sender: TObject);
  var FR_LetterID : Integer;
      strWhere : String;
  function Get_LetterID(IndicatorID : Integer; Year : Integer ; LetterType : Integer):Integer;
  begin
    strWhere := 'where MYear = ' + IntToStr(Year) + ' and Letter_Type = ' + IntToStr(LetterType);

    if edtIndicatorID.Text <> ''  then
      strWhere := strWhere + ' and IndicatorID = ' + IntToStr(IndicatorID) ;

    if edtLetterNO.Text <> '' then
    strWhere := strWhere + ' and IncommingNO = ' + QuotedStr(edtLetterNO.Text);

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

begin
  inherited;
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
    end
    else if State = dsEdit then
    begin
      Dm.adoFollow_Retroaction_LetterFR_LetterID.Value := FR_LetterID;
      Dm.adoFollow_Retroaction_LetterFR_Kind.Value := cmbFRKind.ItemIndex;
      Post;
    end;
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

  if not Dm.QLetterTypes.Active then Dm.QLetterTypes.Open;
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
  if MessageDlg('',mtWarning,mbOKCancel,0) = mrOk then
  begin
    Dm.adoFollow_Retroaction_Letter.Delete;
    Dm.adoFollow_Retroaction_Letter.Refresh;
  end;
end;

procedure TfrmFollowRetroactionLetter.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
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

end.
//End Sanaye...
