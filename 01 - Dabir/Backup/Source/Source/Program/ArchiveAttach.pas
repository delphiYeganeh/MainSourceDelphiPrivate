unit ArchiveAttach;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmFarsi, DB, ADODB, Grids, DBGrids, YDbgrid, StdCtrls, ExtCtrls,
  Mask, Buttons;

type
  TfmArchiveAttachment = class(TfmFarsi)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBGrid2: TYDBGrid;
    YDBGrid1: TYDBGrid;
    dsAttachments: TDataSource;
    dsDocuments: TDataSource;
    qryAttachments: TADOQuery;
    sp_SearchArchive: TADOStoredProc;
    sp_SearchArchiveLetterID: TAutoIncField;
    sp_SearchArchiveIndicatorID: TIntegerField;
    sp_SearchArchiveMYear: TWordField;
    sp_SearchArchiveSecretariatID: TWordField;
    sp_SearchArchiveIncommingNO: TWideStringField;
    sp_SearchArchiveFromOrgID: TIntegerField;
    sp_SearchArchiveIncommingDate: TWideStringField;
    sp_SearchArchiveToOrgID: TIntegerField;
    sp_SearchArchiveMemo: TWideStringField;
    sp_SearchArchiveRegistrationDate: TStringField;
    sp_SearchArchiveSenderTitle: TWideStringField;
    sp_SearchArchiveDeliverTitle: TWideStringField;
    sp_SearchArchiveInnerNo: TWideStringField;
    sp_SearchArchiveUserTitle: TWideStringField;
    sp_SearchArchiveUserMemo: TWideStringField;
    sp_SearchArchiveUserMemo1: TWideStringField;
    sp_SearchArchiveUserMemo2: TWideStringField;
    Label3: TLabel;
    edInnerNo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edTop: TMaskEdit;
    Label6: TLabel;
    edFromDate: TMaskEdit;
    edToDate: TMaskEdit;
    Label7: TLabel;
    edUserMemo1: TEdit;
    Label8: TLabel;
    edUserMemo2: TEdit;
    Label10: TLabel;
    edUserMemo3: TEdit;
    Label11: TLabel;
    edDesc: TEdit;
    Label12: TLabel;
    btnSearch: TBitBtn;
    edMyear: TEdit;
    edIndicatorID: TEdit;
    btnSelDoc: TBitBtn;
    btnSelAttach: TBitBtn;
    qryAttachmentsLetterDataID: TAutoIncField;
    qryAttachmentsPageNumber: TIntegerField;
    qryAttachmentsExtentionTitle: TWideStringField;
    qryAttachmentsDescription: TWideStringField;
    qryAttachmentsextention: TStringField;
    ADOCommand1: TADOCommand;
    qryAttachmentsExtentionID: TAutoIncField;
    sp_INSERT_LetterData_Extended: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure sp_SearchArchiveAfterScroll(DataSet: TDataSet);
    procedure edMyearKeyPress(Sender: TObject; var Key: Char);
    procedure edIndicatorIDKeyPress(Sender: TObject; var Key: Char);
    procedure edInnerNoKeyPress(Sender: TObject; var Key: Char);
    procedure edTopKeyPress(Sender: TObject; var Key: Char);
    procedure edFromDateKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure sp_SearchArchiveAfterOpen(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure btnSelDocClick(Sender: TObject);
    procedure btnSelAttachClick(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    function  TRUNC(str : string; len : integer): string;
  private
    { Private declarations }
    procedure ShowDocuments;
    function MyStrToInt(str : string): integer;
  public
    { Public declarations }
    DabirLetterID : integer;
  end;

var
  fmArchiveAttachment: TfmArchiveAttachment;

implementation

uses Dmu, YShamsiDate, InputUserPassU;

{$R *.dfm}

procedure TfmArchiveAttachment.ShowDocuments;
var
   TD,FD : string;
begin
   FD := edFromDate.Text;
   TD := edToDate.Text;

   if _Arch_UserID = 0 then
   begin
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.YeganehConnection;
         SQL.Text := 'SELECT ArchiveUserID FROM Users WHERE ArchiveUserID IS NOT NULL AND id ='+IntToStr(_UserID);
         Open;
         if (IsEmpty) or (Fields[0].AsInteger=0) then
         begin
            FInputUserPass := TFInputUserPass.Create(Application);
            FInputUserPass.ShowModal;
         end
         else
            _Arch_UserID :=  Fields[0].AsInteger;
      end;

   end;

   sp_SearchArchive.Close;
   sp_SearchArchive.Parameters.ParamByName('@TOP').Value := MyStrToInt(trim(edTOP.Text));
   sp_SearchArchive.Parameters.ParamByName('@MYEAR').Value := MyStrToInt(trim(edMYear.Text));
//   sp_SearchArchive.Parameters.ParamByName('@SecID').Value := StrToInt(trim(ed.Text));
   sp_SearchArchive.Parameters.ParamByName('@IndicatorID').Value := MyStrToInt(trim(edIndicatorID.Text));
   sp_SearchArchive.Parameters.ParamByName('@IncommingNo').Value := trim(edInnerNo.Text);
   if IsValidDate(FD) then
      sp_SearchArchive.Parameters.ParamByName('@FromDate').Value := trim(FD);
   if IsValidDate(TD) then
      sp_SearchArchive.Parameters.ParamByName('@ToDate').Value := trim(TD);
   sp_SearchArchive.Parameters.ParamByName('@Memo').Value := trim(edDesc.Text);
   sp_SearchArchive.Parameters.ParamByName('@UserField1').Value := trim(edUserMemo1.Text);
   sp_SearchArchive.Parameters.ParamByName('@UserField2').Value := trim(edUserMemo2.Text);
   sp_SearchArchive.Parameters.ParamByName('@UserField3').Value := trim(edUserMemo3.Text);
   sp_SearchArchive.Parameters.ParamByName('@ArchiveUserID').Value := _Arch_UserID;
   sp_SearchArchive.Open;
end;

procedure TfmArchiveAttachment.FormShow(Sender: TObject);
begin
  inherited;
   ShowDocuments;
end;

procedure TfmArchiveAttachment.btnSearchClick(Sender: TObject);
begin
  inherited;
   ShowDocuments;
end;

procedure TfmArchiveAttachment.sp_SearchArchiveAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   qryAttachments.Close;
   qryAttachments.Parameters[0].Value := sp_SearchArchiveLetterID.AsInteger;
   qryAttachments.Open;
   btnSelAttach.Enabled := not qryAttachments.IsEmpty;
end;

function TfmArchiveAttachment.MyStrToInt(str: string): integer;
begin
   try
      Result := StrToInt(str);
   Except
      Result := 0;
   end;
end;

procedure TfmArchiveAttachment.edMyearKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
      btnSearchClick(self);
   if (not (Key in ['0'..'9', #8])) then
      Key := #0;
end;

procedure TfmArchiveAttachment.edIndicatorIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
      btnSearchClick(self);
   if (not (Key in ['0'..'9', #8]))  then
      Key := #0;
end;

procedure TfmArchiveAttachment.edInnerNoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
      btnSearchClick(self);
end;

procedure TfmArchiveAttachment.edTopKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
      btnSearchClick(self);
end;

procedure TfmArchiveAttachment.edFromDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
      btnSearchClick(self);
end;

procedure TfmArchiveAttachment.FormCreate(Sender: TObject);
begin
  inherited;
   if Trim(_Arch_Documnt_Caption)='' then
   begin
      _Arch_Documnt_Caption := dm.GetArchiveSetting(52);
      _Arch_Subject_Caption := dm.GetArchiveSetting(53);
      _Arch_Summery_Caption := dm.GetArchiveSetting(54);
      _Arch_UsrFld1_Caption := dm.GetArchiveSetting(15);
      _Arch_UsrFld2_Caption := dm.GetArchiveSetting(45);
      _Arch_UsrFld3_Caption := dm.GetArchiveSetting(46);
   end;
   Label3.Caption := '‘„«—Â' + ' ' + _Arch_Documnt_Caption+ ' :';
   DBGrid2.Columns[1].Title.Caption := '‘„«—Â' + ' ' + _Arch_Documnt_Caption;
   Label12.Caption := _Arch_Summery_Caption+ ' :';
   DBGrid2.Columns[3].Title.Caption := _Arch_Summery_Caption;
   DBGrid2.Columns[5].Title.Caption := _Arch_Subject_Caption;

   Label8.Caption :=  _Arch_UsrFld1_Caption+ ' :';
   DBGrid2.Columns[6].Title.Caption :=  _Arch_UsrFld1_Caption;
   Label10.Caption :=  _Arch_UsrFld2_Caption+ ' :';
   DBGrid2.Columns[7].Title.Caption :=  _Arch_UsrFld2_Caption;
   Label11.Caption :=  _Arch_UsrFld3_Caption+ ' :';
   DBGrid2.Columns[8].Title.Caption :=  _Arch_UsrFld3_Caption;

end;

procedure TfmArchiveAttachment.sp_SearchArchiveAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
   btnSelDoc.Enabled := not sp_SearchArchive.IsEmpty;
end;

procedure TfmArchiveAttachment.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
   btnSelDocClick(self);
end;

procedure TfmArchiveAttachment.btnSelDocClick(Sender: TObject);
var
   indicID,myear,dabirkhaneh :string;
begin
  inherited;
      try
      indicID := '0';
      myear := '0';
      dabirkhaneh :='';
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.YeganehConnection;
         SQL.Text := 'SELECT IndicatorID,MYear,Secretariats.SecTitle FROM Letter LEFT JOIN Secretariats ON Letter.SecretariatID = Secretariats.SecID WHERE LetterID = '+IntToStr(DabirLetterID);
         Open;
         IF not IsEmpty then
         begin
            indicID := Fields[0].AsString;
            myear := Fields[1].AsString;
            dabirkhaneh := Fields[2].AsString;
         end;
      end;
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.ArchiveConnection;
         SQL.Text := 'SELECT * FROM AutomationRelation WHERE DabirLetterID='+IntToStr(DabirLetterID)+' AND ArchiveID='+sp_SearchArchiveLetterID.AsString+' AND isDocument=1';
         Open;
         if IsEmpty then
         begin
            Close;
            SQL.Text := 'INSERT INTO AutomationRelation(DabirLetterID,DabirIndicatorID,DabirMyear,DabirKhanehName,ArchiveID,isDocument) VALUES('+IntToStr(DabirLetterID)+','+indicID+','+myear+','''+dabirkhaneh+''','+sp_SearchArchiveLetterID.AsString+',1)';
            ExecSQL;
         end
         else
         begin
            ShowMessage('«Ì‰ ”‰œ ﬁ»·« »Â «Ì‰ ‰«„Â «›“ÊœÂ ‘œÂ');
            Exit;
         end;
      end;
   except
      ShowMessage('Œÿ« œ— «›“Êœ‰ ”‰œ »«Ìê«‰Ì');
      exit;
   end;

   try
      sp_INSERT_LetterData_Extended.Close;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@LetterID').Value := DabirLetterID;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@PageNumber').Value := 1;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@extentionType').Value := '@';
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@extentionDesc').Value := '”‰œ »«Ìê«‰Ì';
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@Description').Value := TRUNC(Label3.Caption+sp_SearchArchiveIncommingNO.AsString+' - '+sp_SearchArchiveMemo.AsString,40);
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@archiveID').Value := sp_SearchArchiveLetterID.AsInteger;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@isDocument').Value := 1;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@isFromArchive').Value := True;
      sp_INSERT_LetterData_Extended.ExecProc;
   except
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.ArchiveConnection;
         SQL.Text := 'DELETE FROM AutomationRelation WHERE DabirLetterID='+IntToStr(DabirLetterID)+' AND ArchiveID='+sp_SearchArchiveLetterID.AsString+' AND isDocument=1';
         ExecSQL;
      end;
      ShowMessage('Œÿ« œ— «›“Êœ‰ ”‰œ »«Ìê«‰Ì');
   end;
   close;
end;

procedure TfmArchiveAttachment.btnSelAttachClick(Sender: TObject);
var
   PN : integer;
   indicID,myear,dabirkhaneh :string;
begin
  inherited;
   try
      indicID := '0';
      myear := '0';
      dabirkhaneh :='';
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.YeganehConnection;
         SQL.Text := 'SELECT IndicatorID,MYear,Secretariats.SecTitle FROM Letter LEFT JOIN Secretariats ON Letter.SecretariatID = Secretariats.SecID WHERE LetterID = '+IntToStr(DabirLetterID);
         Open;
         IF not IsEmpty then
         begin
            indicID := Fields[0].AsString;
            myear := Fields[1].AsString;
            dabirkhaneh := Fields[2].AsString;
         end;
      end;
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.ArchiveConnection;
         SQL.Text := 'SELECT * FROM AutomationRelation WHERE DabirLetterID='+IntToStr(DabirLetterID)+' AND ArchiveID='+qryAttachmentsLetterDataID.AsString+' AND isDocument=0';
         Open;
         if IsEmpty then
         begin
            Close;
            SQL.Text := 'INSERT INTO AutomationRelation(DabirLetterID,DabirIndicatorID,DabirMyear,DabirKhanehName,ArchiveID,isDocument) VALUES('+IntToStr(DabirLetterID)+','+indicID+','+myear+','''+dabirkhaneh+''','+qryAttachmentsLetterDataID.AsString+',0)';
            ExecSQL;
         end
         else
         begin
            ShowMessage('«Ì‰ ÅÌÊ”  ﬁ»·« »Â «Ì‰ ‰«„Â «›“ÊœÂ ‘œÂ');
            Exit;
         end;
      end;
   except
      ShowMessage('Œÿ« œ— «›“Êœ‰ ÅÌÊ”  »«Ìê«‰Ì');
      exit;
   end;

   with TADOQuery.Create(nil) do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'SELECT MAX(PageNumber) FROM LetterData WHERE LetterID='+ IntToStr(DabirLetterID);
      Open;
      PN := fields[0].AsInteger ;
   end;

   try
      sp_INSERT_LetterData_Extended.Close;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@LetterID').Value := DabirLetterID;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@PageNumber').Value := PN + 1;
      if qryAttachmentsextentionID.AsInteger = 3 then
      begin
         with TADOQuery.Create(nil) do
         begin
            Connection := dm.YeganehConnection;
            SQL.Text := 'SELECT * FROM Extention WHERE Extention=''doc'' AND IsSystem = 0';
            Open;
            if IsEmpty then
            begin
               close;
               SQL.Text := 'INSERT INTO Extention(ExtentionTitle,Extention,IsSystem) VALUES(''›«Ì· Ê—œ'', ''doc'' , 0)';
               ExecSQL;
            end;
         end;
         sp_INSERT_LetterData_Extended.Parameters.ParamByName('@extentionType').Value := 'doc' ;
      end
      else
         sp_INSERT_LetterData_Extended.Parameters.ParamByName('@extentionType').Value := qryAttachmentsextention.AsString;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@extentionDesc').Value := qryAttachmentsExtentionTitle.AsString;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@Description').Value := '('+ 'ÅÌÊ”  ”‰œ ' + sp_SearchArchiveIncommingNO.AsString + ') ' + qryAttachmentsDescription.AsString;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@archiveID').Value := qryAttachmentsLetterDataID.AsInteger;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@isDocument').Value := 0;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@isFromArchive').Value := True;
      sp_INSERT_LetterData_Extended.ExecProc;
   except
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.ArchiveConnection;
         SQL.Text := 'DELETE FROM AutomationRelation WHERE DabirLetterID='+IntToStr(DabirLetterID)+' AND ArchiveID='+qryAttachmentsLetterDataID.AsString+' AND isDocument=0';
         ExecSQL;
      end;
      ShowMessage('Œÿ« œ— «›“Êœ‰ ÅÌÊ”  »«Ìê«‰Ì');
   end;
   close;
end;

procedure TfmArchiveAttachment.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
   btnSelAttachClick(self);
end;

function TfmArchiveAttachment.TRUNC(str: string; len: integer): string;
begin
   if length(str)<=len then
      Result := str
   else
      Result := copy(str,0,len);
end;

end.
