unit untRecommites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, YDbgrid;

type
  TfrmRecommites = class(TForm)
    Panel1: TPanel;
    spRecommites: TADOStoredProc;
    spRecommitesRecommiteID: TAutoIncField;
    spRecommitesLetterID: TIntegerField;
    spRecommitesIndicatorID: TIntegerField;
    spRecommitesIncommingdate: TWideStringField;
    spRecommitesIncommingNO: TWideStringField;
    dsRecommites: TDataSource;
    ExitBtn: TBitBtn;
    xpBitBtn1: TBitBtn;
    spRecommitesParaph: TStringField;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn1: TBitBtn;
    spRecommitesOrgID: TIntegerField;
    spRecommitesUserID: TWordField;
    spRecommitesSenderDesc: TWideStringField;
    spRecommitesReceiverDesc: TWideStringField;
    spRecommitesTarafErja: TStringField;
    spRecommitescustomField1: TStringField;
    spRecommitescustomField2: TStringField;
    spRecommitescustomField3: TStringField;
    spRecommitessenderTitle: TStringField;
    spRecommitesreceiverTitle: TStringField;
    spRecommitesrecommiteDate: TStringField;
    SpeedButton1: TSpeedButton;
    lettersDbGrid: TYDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    cbAllRecommites: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAllRecommitesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecommites: TfrmRecommites;

implementation

uses Dmu, UMain, BaseUnit, YShamsiDate;

{$R *.dfm}

procedure TfrmRecommites.FormShow(Sender: TObject);
begin
   BitBtn2Click(self);
   cbAllRecommites.Checked := false;
   cbAllRecommites.Enabled := Dmu._CanViewAllRecommites;

end;

procedure TfrmRecommites.ExitBtnClick(Sender: TObject);
begin
   self.Close;
end;

procedure TfrmRecommites.xpBitBtn1Click(Sender: TObject);
begin
   if spRecommites.RecordCount = 0 then exit;
   MainForm.ViewDocumnet(spRecommitesLetterID.AsInteger,false);
end;

procedure TfrmRecommites.BitBtn2Click(Sender: TObject);
begin
      spRecommites.Active:= false;
      spRecommites.Parameters.Refresh;
      spRecommites.Parameters.ParamByName('@OrgID').Value:= _UserFromOrgID;
      spRecommites.Parameters.ParamByName('@ForMe').Value:= RadioButton1.Checked or RadioButton2.Checked;
      spRecommites.Parameters.ParamByName('@FromMe').Value:= RadioButton1.Checked or RadioButton3.Checked;
      spRecommites.Parameters.ParamByName('@Type').Value:= cbAllRecommites.Checked;
      spRecommites.Active:= true;

      BitBtn1.Enabled := RadioButton1.Checked or RadioButton3.Checked;
end;

procedure TfrmRecommites.RadioButton1Click(Sender: TObject);
begin
   BitBtn2Click(self);
end;

procedure TfrmRecommites.BitBtn1Click(Sender: TObject);
begin
   if spRecommitesUserID.AsInteger = _UserId then
      if ShowMyMessage('ÅÌ€«„','¬Ì« «“ Õ–› «—Ã«⁄  „ÿ„∆‰ Â” Ìœø',mbOKCancel,mtWarning)=mrOK then
    //  if MessageShowString('¬Ì« «“ Õ–› «—Ã«⁄ „ÿ„∆‰ Â” Ìœø',true) then
         with TADOQuery.Create(nil)do
         begin
            Connection := Dm.YeganehConnection;
            SQL.Text := 'DELETE FROM recommites WHERE RecommiteID = ' + IntToStr(spRecommitesRecommiteID.AsInteger);
            ExecSQL;
            BitBtn2Click(Self);
         end;

end;

procedure TfrmRecommites.SpeedButton1Click(Sender: TObject);
begin
   lettersDbGrid.CustomizePrint;
end;

procedure TfrmRecommites.SpeedButton2Click(Sender: TObject);
begin
   lettersDbGrid.ExportToWord();
end;

procedure TfrmRecommites.SpeedButton3Click(Sender: TObject);
begin
   lettersDbGrid.ExportToExcel;
end;

procedure TfrmRecommites.FormCreate(Sender: TObject);
var
   i: integer;
begin
   if FileExists(_ApplicationPath+'recrep.dbg') then
      lettersDbGrid.Columns.LoadFromFile(_ApplicationPath+'recrep.dbg');
   for i := 0 to lettersDbGrid.Columns.Count -1 do
   begin
      if lettersDbGrid.Columns.Items[i].FieldName = 'customField1' then
         lettersDbGrid.Columns.Items[i].Title.Caption := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = 15 ',dm.YeganehConnection);
      if lettersDbGrid.Columns.Items[i].FieldName = 'customField2' then
         lettersDbGrid.Columns.Items[i].Title.Caption := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = 45 ',dm.YeganehConnection);
      if lettersDbGrid.Columns.Items[i].FieldName = 'customField3' then
         lettersDbGrid.Columns.Items[i].Title.Caption := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = 46 ',dm.YeganehConnection);
   end;
end;

procedure TfrmRecommites.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if FileExists(_ApplicationPath+'recrep.dbg') then
      DeleteFile(_ApplicationPath+'recrep.dbg');
   lettersDbGrid.Columns.SaveToFile(_ApplicationPath+'recrep.dbg');
end;

procedure TfrmRecommites.cbAllRecommitesClick(Sender: TObject);
begin
   RadioButton1.Enabled := not cbAllRecommites.Checked;
   RadioButton2.Enabled := not cbAllRecommites.Checked;
   RadioButton3.Enabled := not cbAllRecommites.Checked;
   BitBtn2Click(self);
end;

end.
