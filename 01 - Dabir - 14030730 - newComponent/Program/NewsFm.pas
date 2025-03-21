unit NewsFm;
{Ranjbar}
interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  XPStyleActnCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  YDbgrid, ComCtrls, wwriched, CheckLst, YchecklistBox, DB, ADODB, UemsVCL ,StrUtils,
  Menus, xpBitBtn, xpWindow, ExtActns, TntDialogs, AppEvnts, AdvGlowButton;

type
  TFmNews = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDetail: TPanel;
    Panel4: TPanel;
    YDBGrid1: TYDBGrid;
    Label6: TLabel;
    DBETitle: TDBEdit;
    SBReport: TAdvGlowButton;
    Label7: TLabel;
    Label1: TLabel;
    wwDBREMemo: TwwDBRichEdit;
    Label2: TLabel;
    SpeedButton1: TAdvGlowButton;
    DBEAttachFileName: TDBEdit;
    Label3: TLabel;
    DBEUserTitle: TDBEdit;
    DBLkCBUrgenceis: TDBLookupComboBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBETimeAnnounce: TDBEdit;
    DBLkCBNewsGroup: TDBLookupComboBox;
    Label10: TLabel;
    CKLBUsers: TYchecklistBox;
    Label11: TLabel;
    Label13: TLabel;
    DBECode: TDBEdit;
    Label4: TLabel;
    OpenDialog1T: TOpenDialog;
    DBEDateAnnounce: TDBShamsiDateEdit;
    DBEDateExpire: TDBShamsiDateEdit;
    BBDelete: TAdvGlowButton;
    BBSave: TAdvGlowButton;
    SaveDialog1: TSaveDialog;
    EdtSearch: TEdit;
    Label12: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    BitBtn1: TAdvGlowButton;
    DBN1: TDBNavigator;
    OpenDialog1: TTntOpenDialog;
    pnlMain: TPanel;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BBDeleteClick(Sender: TObject);
    procedure BBSaveClick(Sender: TObject);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLkCBNewsGroupClick(Sender: TObject);
    procedure YDBGrid1CellClick(Column: TColumn);
    procedure YDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure OpenNewsTable(aLike:String);
  public

  end;

var
  FmNews: TFmNews;

implementation

uses NewsDM, Dmu, SearchFM , UMain,YShamsiDate;

{$R *.dfm}


procedure TFmNews.FormCreate(Sender: TObject);
begin
   inherited;
   DBNav_Setup(DBN1);
   DSForm.DataSet := DMNews.SpNews;
end;

procedure TFmNews.OpenNewsTable(aLike:String);
begin
   With DMNews do
   begin
      SpNews.Close;
      SpNews.Parameters.ParamByName('@Like').Value := aLike;//����� 500 ј��� ���
      SpNews.Open;
      SpNews.Sort :='NewsID';
      SpNews.Last;
   end;
end;


procedure TFmNews.FormShow(Sender: TObject);
begin
   inherited;
   With DMNews do
   begin
      OpenNewsTable('');

      dm.Urgenceis.Close;
      dm.Urgenceis.Open;

      QrUsersList.Close;
      QrUsersList.Open;
      CKLBUsers.Fill;
      ChLB_SelectItemsFromTable( CKLBUsers , QrNewsUsers ,'UsersID');

      SPNewsGroup.Close;
      SPNewsGroup.Parameters.ParamByName('@UsersID').Value := _userid;
      SPNewsGroup.Open;

   end;
   pnlDetail.Enabled  :=  (DMNews.SpNews.State in [dsInsert,dsEdit]) ;
end;

procedure TFmNews.SpeedButton1Click(Sender: TObject);
var
   path : string;
   i : integer;
begin
   inherited;
   With DMNews do
   begin
      if Not(SpNews.State in [dsInsert,dsEdit]) then
         Exit;
      if OpenDialog1.Execute then
      begin
         if SPImageData.State in [dsInsert,dsEdit] then
            SPImageData.Cancel;
         if SPImageData.RecordCount > 0 then
            SPImageData.Delete;
         SPImageData.Append; //Post on SpNewsAfterPost
         if FileExists(_ApplicationPath+'tmpFile')then
         begin
           SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpFile'), false);
           DeleteFile(pchar(_ApplicationPath+'tmpFile'));
         end;
         if CopyFileW(dm.replacePWC(StringToPWide(OpenDialog1.filename,i)), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            Path :=_ApplicationPath+'tmpFile'
         else if CopyFileW(StringToPWide(OpenDialog1.filename,i), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
            Path := _ApplicationPath+'tmpFile'
         else
            ShowMessage('��� �� ������ ���� ����');
         if path <>'' then
         begin
            SPImageDataData.LoadFromFile(OpenDialog1.FileName);
            SPImageDataFileName.AsString := OpenDialog1.FileName;
         end;
      end;
   end;
end;

procedure TFmNews.BBDeleteClick(Sender: TObject);
begin
   inherited;
   if Not(DMNews.SpNews.State in [dsInsert,dsEdit]) then
      Exit;
   if not DMNews.SPImageData.IsEmpty then
      DMNews.SPImageData.Delete;
end;

procedure TFmNews.BBSaveClick(Sender: TObject);
Var
   TempStr,FileName:String;
begin
   if Not(DMNews.SpNews.State in [dsInsert,dsEdit]) then
      Exit;
   TempStr := Trim(DMNews.SPImageDataFileName.AsString);
   if TempStr <>'' then
   begin
      FileName := File_GetFileName(TempStr);
      SaveDialog1.FileName := FileName;
     // if SaveDialog1.Execute then
       DMNews.SPImageDataData.SaveToFile(SaveDialog1.FileName);
   end;
end;

procedure TFmNews.DBN1Click(Sender: TObject; Button: TNavigateBtn);
Var
   I:integer;
begin
  inherited;
   pnlDetail.Enabled  :=  Button in [nbInsert,nbEdit] ;
   With DMNews do
      if Button = nbPost then
      begin
         While QrNewsUsers.RecordCount > 0 do
            QrNewsUsers.Delete;

         for i:=0 to CKLBUsers.Items.Count -1 do
             if CKLBUsers.Checked[i] then
             begin
                QrNewsUsers.Insert;
                QrNewsUsersNewsID.AsInteger := SpNewsNewsID.AsInteger;
                QrNewsUsersUsersID.AsInteger := CKLBUsers.Codes[I];
                QrNewsUsersIsRead.AsBoolean := False;
                QrNewsUsersNotShow.AsBoolean := False;
                QrNewsUsers.Post;
             end;

       // if (DMNews.SPImageDataData.Value = null) and  (DBEAttachFileName.text <> '') then
       //   BBSaveClick(self);
      end;
   //---
    if Button = nbInsert then
    begin
      For I:=0 to FmNews.CKLBUsers.Items.Count-1 do
          FmNews.CKLBUsers.Checked[I] := False;
      DBETitle.SetFocus;
    end;
    //----
    if Button in [nbInsert,nbEdit] then
    begin
      CKLBUsers.Enabled := True;
      DBLkCBNewsGroup.Enabled := True;

    end
    else
    begin
       CKLBUsers.Enabled := False;
       DBLkCBNewsGroup.Enabled := False;
       ChLB_SelectItemsFromTable( CKLBUsers , DMNews.QrNewsUsers ,'UsersID');
    end;
   //---
   DBLkCBNewsGroup.KeyValue := 0;

end;

procedure TFmNews.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = Vk_Return then
      SelectNext(TWinControl(Sender),True,True);
end;

procedure TFmNews.DBLkCBNewsGroupClick(Sender: TObject);
Var
   I:integer;
begin
  inherited;
  if DBLkCBNewsGroup.KeyValue <= 0 then
     Exit;

  With DMNews do
  begin
     if Not(SpNews.State in [dsInsert,dsEdit]) then
        Exit;

     QrNewsGroupUsers.Close;
     QrNewsGroupUsers.Parameters.ParamByName('Pa_NewsGroupID').Value := DBLkCBNewsGroup.KeyValue;
     //QrNewsGroupUsers.Parameters.ParamByName('Pa_UsersID').Value := _userid;
     QrNewsGroupUsers.Open;
  
     //For CKLBUsers
     QrNewsGroupUsers.First;
     For I:=0 to FmNews.CKLBUsers.Items.Count-1 do
        FmNews.CKLBUsers.Checked[I] := False;
     While Not QrNewsGroupUsers.Eof do
     begin
        For I:=0 to CKLBUsers.Items.Count-1 do
           if FmNews.CKLBUsers.Codes[I] = QrNewsGroupUsersUsersID.AsInteger then
              FmNews.CKLBUsers.Checked[I] := True;
        QrNewsGroupUsers.Next;
     end;
  end;
end;

procedure TFmNews.YDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ChLB_SelectItemsFromTable( CKLBUsers , DMNews.QrNewsUsers ,'UsersID');
end;

procedure TFmNews.YDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   ChLB_SelectItemsFromTable( CKLBUsers , DMNews.QrNewsUsers ,'UsersID');
end;

procedure TFmNews.EdtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = Vk_Return then
   begin
      OpenNewsTable(Trim(EdtSearch.text));
      EdtSearch.SetFocus;
   end;
end;

procedure TFmNews.SBReportClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFmNews.NShowClick(Sender: TObject);
begin
  inherited;
   if DMNews.SpNews.State in [dsEdit,dsInsert] then
   begin
      ShowMessage('���� ��� �� ����� ���� ������� ��� �� ����� ������');
      Exit;
   end;
   if DMNews.SpNews.RecordCount = 0 then
   begin
      ShowMessage('�� ј���� ���� ���');
      Exit;
   end;

   With DMNews do
   begin
      Try
         QrRepNews.Close;
         QrRepNews.Parameters.ParamByName('Pa_NewsID').Value := SpNewsNewsID.AsInteger;
         QrRepNews.Open;

         Rep_LoadFile(frxRepNews,'News1.fr3');
         //TfrxReportSummary(DMReports.frxRepAkasi.FindComponent('ReportSummary1')).Visible := False;
         if Sender = NShow  then
            Rep_Show(frxRepNews,rtShow);//��� �����
         if Sender = NPrint  then
            Rep_Show(frxRepNews,rtPrint);//�ǁ ����
         if Sender = NDesign  then
            Rep_Show(frxRepNews,rtDesign);//�����
      Finally
         QrRepNews.Close;
      End;
   end;
end;

procedure TFmNews.N11Click(Sender: TObject);
begin
  inherited;
  Rep_CorrectDesign('News1.fr3');
end;

procedure TFmNews.BitBtn1Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure TFmNews.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  With DMNews do
  begin
     SpNews.Close;
     SPImageData.Close;
     QrUsersList.Close;
     QrNewsUsers.Close;
     QrRepNews.Close;
     SPNewsGroup.Close;
     QrNewsGroupUsers.Close;
  end;
end;

end.
