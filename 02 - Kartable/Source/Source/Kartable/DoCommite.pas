unit DoCommite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB,
  UemsVCL, ComCtrls, Grids, DBGrids, ActnList, ADODB, ExtActns, xpWindow,
  xpBitBtn, Menus;

type
  TFDoCommite = class(TMBaseForm)
    ReCommites: TADODataSet;
    ReCommitesRecommiteID: TAutoIncField;
    ReCommitesLetterID: TIntegerField;
    ReCommitesID: TSmallintField;
    ReCommitesType: TWordField;
    ReCommitesParentId: TSmallintField;
    ReCommitesOrgID: TIntegerField;
    ReCommitesParaph: TWideStringField;
    ReCommitesRecommiteDate: TStringField;
    ReCommitesUserID: TWordField;
    ReCommitesIsCopy: TBooleanField;
    ReCommitesProceeded: TBooleanField;
    ReCommitesProceedDate: TStringField;
    ReCommitesstaffmemo: TWideStringField;
    ReCommitesviewdate: TStringField;
    Archive: TDataSource;
    ArchivePanel: TPanel;
    Label1: TLabel;
    DBLkCBArchive: TDBLookupComboBox;
    ReCommitesOrgStaff: TWideStringField;
    ReCommitesDeadLineDate: TStringField;
    ReCommitesLastUpdate: TDateTimeField;
    ReCommitesActionTypeID: TWordField;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Label2: TLabel;
    DBStaffMemo: TDBMemo;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Bevel1: TBevel;
    TemplateButton1: TBitBtn;
    TemplateButton2: TBitBtn;
    TemplateButton3: TBitBtn;
    TemplateButton4: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function FolderId:integer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TemplateButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    Procedure Refresh_templates;
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDoCommite: TFDoCommite;

implementation

uses  Dmu, businessLayer, ArchiveOrganize, insertParaphTemplateU;

{$R *.dfm}
 var SelectedItems: TStrings;

procedure TFDoCommite.BitBtn1Click(Sender: TObject);
var
  j,i : Integer;
  s : String;
begin
  inherited;

  with ReCommites do
  if State in [dsedit] then
  begin
    ReCommitesProceeded.AsBoolean  := True;
    ReCommitesProceedDate.AsString := _Today;
    //œ— «—”«· ‘œÂ Â« Ê œ—” Ê‰  Ê÷⁄Ì  «ﬁœ«„  „ﬁœ«— «ﬁœ«„ Ê »«Ìê«‰Ì ﬁ—«— „Ì êÌ—œ
    ReCommitesActionTypeID.AsInteger := atDone_Archived;
    Post;

    j := dm.sp_inboxrecommiteid.AsInteger;
    s := Trim(DBStaffMemo.Text);
    if DBLkCBArchive.KeyValue <> null then
      Exec_insert_LetterArchiveFolder(DBLkCBArchive.KeyValue,ReCommitesRecommiteID.AsInteger,_Today,1,'');// recommiteid insteed letterid

    if SelectedItems.Count>0  then
      for i:=0 to SelectedItems.Count-1 do
      begin
        if strtoint(SelectedItems[i])<>j then
        begin
          Exec_sp_makeRecommited(strtoint(SelectedItems[i]),s,_Today);
          if DBLkCBArchive.KeyValue<> null then
            Exec_insert_LetterArchiveFolder(DBLkCBArchive.KeyValue,strtoint(SelectedItems[i]),_Today,1,'');// recommiteid insteed letterid
        end;
      end;
  end;
  Close;
end;

procedure TFDoCommite.BitBtn2Click(Sender: TObject);
begin
  inherited;
  with ReCommites do
     Cancel;
  Close;
end;

procedure TFDoCommite.FormShow(Sender: TObject);
begin
  inherited;
  DBStaffMemo.SetFocus;
  Archive.DataSet := Exec_get_ArchiveFolder_byUserID_and_Title(_userid,'',1);
  Refresh_templates;
end;

function TFDoCommite.FolderId:integer;
begin
  inherited;
  ArchiveOrganizeForm:=TArchiveOrganizeForm.Create(Application);
  ArchiveOrganizeForm.ShowModal;
  if ArchiveOrganizeForm.done then
  begin
    Result:=_ResultFolderID
  end
     ELSE Result:=0;
end;

procedure TFDoCommite.SpeedButton1Click(Sender: TObject);
VAR i:integer;
begin
  inherited;
  i:=FolderId;
  if i<>0 then
     DBLkCBArchive.KeyValue:=i;
end;

procedure TFDoCommite.FormCreate(Sender: TObject);
begin
   inherited;
   SelectedItems:=_selectedRecommitesID

end;

procedure TFDoCommite.Edit1Change(Sender: TObject);
begin
  inherited;
  Archive.DataSet.Close;
  Archive.DataSet := Exec_get_ArchiveFolder_byUserID_and_Title(_userid,Edit1.Text,1);
  Archive.DataSet.open;
  DBLkCBArchive.DropDown;
end;

procedure TFDoCommite.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FrInsertParaphTemplate:= TFrInsertParaphTemplate.Create(Application);
  FrInsertParaphTemplate.TemplateType := 2;
  FrInsertParaphTemplate.ShowModal;
  Refresh_templates;
end;

procedure TFDoCommite.TemplateButton1Click(Sender: TObject);
begin
  inherited;
   ReCommitesstaffmemo.AsString:=Get_ParaphTemplate_Paraph(TSpeedButton(sender).Tag);
end;

procedure TFDoCommite.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
   ReCommitesstaffmemo.AsString:=DBLookupComboBox1.KeyValue;
end;

Procedure TFDoCommite.Refresh_templates;
var i: byte;
begin
  Open_ParaphTemplate(2);
  for  i:=0 to 4 do TBitBtn(FindComponent('TemplateButton'+IntToStr(i))).Caption:=Get_ParaphTemplate_title(i);
end;

end.
