unit DocumentsListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, YDbgrid, StdCtrls, Buttons, ExtCtrls,
  Spin;

type
  TDocumentsListForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnSelect: TBitBtn;
    btnClose: TBitBtn;
    lettersDbGrid: TYDBGrid;
    DSItems: TDataSource;
    Get_All_Letter: TADOStoredProc;
    Get_All_LetterLetterID: TIntegerField;
    Get_All_LetterCenterNo: TWideStringField;
    Get_All_LetterIndicatorID: TIntegerField;
    Get_All_LetterMYear: TIntegerField;
    Get_All_LetterSecretariatID: TIntegerField;
    Get_All_LetterLetter_Type: TIntegerField;
    Get_All_Letterletterformat: TIntegerField;
    Get_All_LetterIncommingNO: TWideStringField;
    Get_All_LetterFromOrgID: TIntegerField;
    Get_All_LetterIncommingDate: TWideStringField;
    Get_All_LetterToOrgID: TIntegerField;
    Get_All_LetterUrgencyID: TIntegerField;
    Get_All_LetterMemo: TWideStringField;
    Get_All_LetterRetroactionNo: TWideStringField;
    Get_All_LetterRegistrationDate: TStringField;
    Get_All_LetterFollowLetterNo: TWideStringField;
    Get_All_LetterToStaffer: TWideStringField;
    Get_All_LetterSentLetterID: TIntegerField;
    Get_All_LetterTemplateID: TIntegerField;
    Get_All_LetterUserMemo: TWideStringField;
    Get_All_LetterDeadLineDate: TStringField;
    Get_All_LetterSenderTitle: TWideStringField;
    Get_All_LetterDeliverTitle: TWideStringField;
    Get_All_Letterhas_Page: TBooleanField;
    Get_All_Letterhas_WordPage: TBooleanField;
    Get_All_Letterhas_file: TBooleanField;
    Get_All_LetterSubjectID: TIntegerField;
    Get_All_LetterLetterTypeTitle: TWideStringField;
    Get_All_LetterLetterRecommites: TWideStringField;
    Get_All_LettersendstatusTitle: TWideStringField;
    Get_All_LetterInnerNo: TStringField;
    Get_All_LetterArchived: TBooleanField;
    Get_All_LetterActionTypeTitle: TWideStringField;
    Get_All_LetterSignerID: TWideStringField;
    Get_All_LetterSignerTitle: TWideStringField;
    Get_All_LetterReceiveTypeID: TIntegerField;
    Get_All_LetterClassificationID: TIntegerField;
    Get_All_LetterArchivePlace: TWideStringField;
    Label1: TLabel;
    seYear: TSpinEdit;
    BitBtn1: TBitBtn;
    Get_All_LetterSubjectDescription: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    txtMemo: TEdit;
    txtSubjectDescription: TEdit;
    Label4: TLabel;
    txtIndicatorID: TEdit;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure btnCloseClick(Sender: TObject);
    procedure lettersDbGridDblClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function fnSelectedDocID : integer;
  public
    { Public declarations }                               
    MainDocID : integer;
    property SelectedDocID : integer read fnSelectedDocID;
    procedure RefereshQuery;
  end;

var
  DocumentsListForm: TDocumentsListForm;

implementation

uses Dmu;

{$R *.dfm}

procedure TDocumentsListForm.RefereshQuery;
begin
   With Get_All_Letter , Parameters do
   begin
      Close;
      ParamByName('@archiveFolderID').value := 0;
      ParamByName('@Letter_Type').value := 4;
      ParamByName('@LetterFormat').value := 0;
      ParamByName('@myear').value := seYear.Value;
      ParamByName('@Secretariatid').value := Dm.SecID;
      ParamByName('@top').value := 100;
      ParamByName('@where').value := 'Letter.LetterID <> ' + IntToStr(MainDocID);
      ParamByName('@ArchiveStatus').value := 0;
      ParamByName('@UserID').value := _Userid;
      Open;
   end;
end;

function TDocumentsListForm.fnSelectedDocID : integer;
begin
   if (Get_All_Letter.Active = false) or (Get_All_Letter.RecNo = -1) or
      (Get_All_Letter.RecordCount = 0) then
   begin
      Result := 0;
      exit;
   end;

   Result := Get_All_LetterLetterID.Value;
end;

procedure TDocumentsListForm.btnCloseClick(Sender: TObject);
begin
   ModalResult := mrCancel;
   Close;
end;

procedure TDocumentsListForm.lettersDbGridDblClick(Sender: TObject);
begin
   btnSelect.Click;
end;

procedure TDocumentsListForm.btnSelectClick(Sender: TObject);
begin
   if SelectedDocID = 0 then
      ModalResult := mrCancel
   else
      ModalResult := mrOk;
end;

procedure TDocumentsListForm.FormCreate(Sender: TObject);
begin
   ModalResult := mrCancel;
   seYear.Value := _Year;
   MainDocID := 0;
end;

procedure TDocumentsListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if ModalResult <> mrOk then
   begin
      ModalResult:= mrCancel;
   end;
end;

procedure TDocumentsListForm.FormShow(Sender: TObject);
begin
   RefereshQuery;
end;

procedure TDocumentsListForm.BitBtn1Click(Sender: TObject);
var
   sc : string;
   FilterAdded : boolean;
begin
   RefereshQuery;

   Get_All_Letter.Filtered := false;
   FilterAdded := false;
   sc:= '';

   if Trim(txtIndicatorID.Text) <> '' then
   begin
      if FilterAdded then
         sc := sc + ' AND ';

      sc := sc + 'IndicatorID = ' + txtIndicatorID.Text;
      FilterAdded := true;
   end;

   if (Trim(txtMemo.Text) <> '')or(Trim(txtSubjectDescription.Text) <> '') then
   begin               
      if FilterAdded then
         sc := sc + ' And ';

      sc := sc + '(';

      if Trim(txtMemo.Text) <> '' then
      begin
         sc := sc + 'Memo Like ''%'+txtMemo.Text+'%''';
      end;

      if Trim(txtSubjectDescription.Text) <> '' then
      begin
         if Trim(txtMemo.Text) <> '' then
            if RadioButton1.Checked then
               sc := sc + ' And '
            else
               sc := sc + ' OR ';
               
         sc := sc + 'SubjectDescription Like ''%'+txtSubjectDescription.Text+'%''';
      end;

      sc:= sc + ')';  
      FilterAdded := true;
   end;

   Get_All_Letter.Filter := sc;
   if trim(sc) <> '' then
      Get_All_Letter.Filtered := true;
end;

end.
