unit ArtServiceFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables, BaseUnit, ExtActns, ActnList;

type
  TFMArtService = class(TMBaseForm)
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    LabHelp: TLabel;
    DBECode: TDBEdit;
    DBEName: TDBEdit;
    DBESalePrice: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEBarcode: TDBEdit;
    Label9: TLabel;
    Panel1: TPanel;
    SBInsFirstGrp: TSpeedButton;
    SBInsSecGrp: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    SBEditFirstGrp: TSpeedButton;
    SBEditSecGrp: TSpeedButton;
    SBDelFirstGrp: TSpeedButton;
    SBDelSecGrp: TSpeedButton;
    DBLCBArtGroup_Ref1: TDBLookupComboBox;
    DBLCBArtGroup_Ref2: TDBLookupComboBox;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SBInsFirstGrpClick(Sender: TObject);
    procedure SBInsSecGrpClick(Sender: TObject);
    procedure SBEditFirstGrpClick(Sender: TObject);
    procedure SBEditSecGrpClick(Sender: TObject);
    procedure SBDelFirstGrpClick(Sender: TObject);
    procedure SBDelSecGrpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMArtService: TFMArtService;

implementation

Uses ArtServiceDM , DMu , YShamsiDate;

{$R *.dfm}

procedure TFMArtService.FormCreate(Sender: TObject);
begin
   inherited;
   DMArtService := TDMArtService.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMArtService.FormShow(Sender: TObject);
begin
   inherited;
   With DMArtService do
   begin
      QrFirstArtGroup.Open;
      QrSecendArtGroup.Open;
      QrArticle.Open;
   end;
   //Form_Animate(Self,100);
end;

procedure TFMArtService.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   With DMArtService do
   begin

   end;
   Qry_CloseAllQry(DMArtService);
   FreeAndNil(DMArtService);
end;

procedure TFMArtService.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,DBNavigator1,nil,nil,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;


procedure TFMArtService.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMArtService.DBNavigator1BeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
   inherited;
   DBECode.SetFocus;
   DBEName.SetFocus;
   
   if Button = nbPost then
      if Trim(DBLCBArtGroup_Ref2.Text) = '' then
      begin
         ShowMyMessage('ÅÌ€«„','·ÿ›« ê—ÊÂ ›—⁄Ì —«  ⁄ÌÌ‰ ‰„«ÌÌœ',[mbOK],mtInformation);
         Abort;
      end;
end;

procedure TFMArtService.SBInsFirstGrpClick(Sender: TObject);
Var
   GrpName : String;
begin
   inherited;
   if not(DMArtService.qrArticle.State in [dsEdit,dsInsert]) then
      Exit;

   GrpName := Input_Value(' ⁄—Ì› ê—ÊÂ «’·Ì ','‰«„ ê—ÊÂ «’·Ì ÃœÌœ','');
   if GrpName <> '' then
   begin
      Dm.YeganehConnection.Execute('Insert Into ArtGroup(Name,Type,Store_Ref,ArtGroup_Ref,IsService) '
                     + 'Values('+QuotedStr(GrpName)+',1,Null,Null,1)' ).Fields[0].Value;
      DMArtService.QrFirstArtGroup.Close;
      DMArtService.QrFirstArtGroup.Open;
      if Trim(DBLCBArtGroup_Ref1.Text) = '' then
      begin
         DMArtService.QrArticleArtGroup_Ref1.AsInteger :=
              Dm.YeganehConnection.Execute('Select Max(ArtGroup_ID) From ArtGroup Where Type = 1 And IsService = 1 ').Fields[0].Value;
      end;
   end;
end;

procedure TFMArtService.SBInsSecGrpClick(Sender: TObject);
Var
   GrpName : String;
   ArtGroup_ID : Integer;
begin
   inherited;
   if not(DMArtService.qrArticle.State in [dsEdit,dsInsert]) then
      Exit;
   //Bpl_LoadFormScroll('TFMSecendArtGroup',0,'',True); //  ⁄—Ì› ê—ÊÂ ›—⁄Ì ò«·«
   if DBLCBArtGroup_Ref1.KeyValue = Null then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« «» œ« ê—ÊÂ «’·Ì —«  ⁄ÌÌ‰ ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;
   GrpName := Input_Value(' ⁄—Ì› ê—ÊÂ ›—⁄Ì','‰«„ ê—ÊÂ ›—⁄Ì ÃœÌœ','');
   if GrpName <> '' then
   begin
      Dm.YeganehConnection.Execute('Insert Into ArtGroup(Name,Type,Store_Ref,ArtGroup_Ref,IsService) '
          + 'Values('+QuotedStr(GrpName)+',2,Null,'+IntToStr(DBLCBArtGroup_Ref1.KeyValue)+',1)' ).Fields[0].Value;
      DMArtService.QrSecendArtGroup.Close;
      DMArtService.QrSecendArtGroup.Open;
      if Trim(DBLCBArtGroup_Ref2.Text) = '' then
         DMArtService.QrArticleArtGroup_Ref2.AsInteger :=
            Dm.YeganehConnection.Execute('Select Max(ArtGroup_ID) From ArtGroup Where Type = 2 And IsService = 1) ').Fields[0].Value;
   end;
end;

procedure TFMArtService.SBEditFirstGrpClick(Sender: TObject);
Var
   GrpName : String;
begin
   inherited;
   if not(DMArtService.qrArticle.State in [dsEdit,dsInsert]) then
      Exit;
   if Trim(DBLCBArtGroup_Ref1.Text) = '' then
      Exit;

   GrpName := Input_Value('«’·«Õ ‰«„ ê—ÊÂ «’·Ì','«’·«Õ ‰«„ ê—ÊÂ «’·Ì',Trim(DMArtService.QrFirstArtGroupName.AsString));
   if GrpName <> '' then
      if GrpName <> Trim(DMArtService.QrFirstArtGroupName.AsString) then
      begin
         Dm.YeganehConnection.Execute('Update ArtGroup Set Name = ' + QuotedStr(GrpName) + ' Where ArtGroup_ID = '
                       + DMArtService.QrFirstArtGroupArtGroup_ID.AsString).Fields[0].Value;

         DMArtService.QrFirstArtGroup.Close;
         DMArtService.QrFirstArtGroup.Open;
      end;
end;

procedure TFMArtService.SBEditSecGrpClick(Sender: TObject);
Var
   GrpName : String;
begin
   inherited;
   if not(DMArtService.qrArticle.State in [dsEdit,dsInsert]) then
      Exit;
   if Trim(DBLCBArtGroup_Ref2.Text) = '' then
      Exit;

   GrpName := Input_Value('«’·«Õ ‰«„ ê—ÊÂ ›—⁄Ì','«’·«Õ ‰«„ ê—ÊÂ ›—⁄Ì',Trim(DMArtService.QrSecendArtGroupName.AsString));
   if GrpName <> '' then
      if GrpName <> Trim(DMArtService.QrSecendArtGroupName.AsString) then
      begin
         Dm.YeganehConnection.Execute('Update ArtGroup Set Name = ' + QuotedStr(GrpName) +
                       ' Where ArtGroup_ID = ' + DMArtService.QrSecendArtGroupArtGroup_ID.AsString).Fields[0].Value;
         DMArtService.QrSecendArtGroup.Close;
         DMArtService.QrSecendArtGroup.Open;
      end;
end;

procedure TFMArtService.SBDelFirstGrpClick(Sender: TObject);
Var
   ArtGroupID : Integer;
begin
   inherited;
   if not(DMArtService.qrArticle.State in [dsEdit,dsInsert]) then
      Exit;
   if Trim(DBLCBArtGroup_Ref1.Text) = '' then
      Exit;

   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–› ê—ÊÂ «’·Ì Â” Ìœø',mbOKCancel,mtWarning)= mrOK then
   begin
      //œ—’Ê— ÌòÂ «Ì‰ ê—ÊÂ ›—⁄Ì »—«Ì ò«—Â«Ì Œœ„« Ì œÌê—Ì «” ›«œÂ ‘œÂ »Êœ Õ–› ‰ê—œœ
      ArtGroupID := Dm.YeganehConnection.Execute('Select ArtGroup_ID from ArtGroup Where ArtGroup_Ref = ' +
                    IntToStr(DBLCBArtGroup_Ref1.KeyValue)).Fields[0].Value;
      if ArtGroupID > 0 then
      begin
         ShowMyMessage('ÅÌ€«„','»œ·Ì· ÊÃÊœ ê—ÊÂÂ«Ì ›—⁄Ì œ— «Ì‰ ê—ÊÂ «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
         Exit;
      end;

      Dm.YeganehConnection.Execute('Delete from ArtGroup ' +
                    ' Where ArtGroup_ID = ' + DMArtService.QrFirstArtGroupArtGroup_ID.AsString).Fields[0].Value;
      DMArtService.QrFirstArtGroup.Close;
      DMArtService.QrFirstArtGroup.Open;
   end;
end;

procedure TFMArtService.SBDelSecGrpClick(Sender: TObject);
Var
   ArticleID : Integer;
begin
   inherited;
   if not(DMArtService.qrArticle.State in [dsEdit,dsInsert]) then
      Exit;
   if Trim(DBLCBArtGroup_Ref2.Text) = '' then
      Exit;

   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–› ê—ÊÂ ›—⁄Ì Â” Ìœø',mbOKCancel,mtWarning)= mrOK then
   begin
      //œ—’Ê— ÌòÂ «Ì‰ ê—ÊÂ ›—⁄Ì »—«Ì ò«—Â«Ì Œœ„« Ì œÌê—Ì «” ›«œÂ ‘œÂ »Êœ Õ–› ‰ê—œœ
      ArticleID := Dm.YeganehConnection.Execute('Select Article_ID from Article Where ArtGroup_Ref2 = '+
                                 IntToStr(DBLCBArtGroup_Ref2.KeyValue)).Fields[0].Value;
      if ArticleID > 0 then
      begin
         ShowMyMessage('ÅÌ€«„','»œ·Ì· «” ›«œÂ ‘œ‰ ê—ÊÂ ›—⁄Ì œ— «Ì‰ —òÊ—œ Ì« —òÊ—œÂ«Ì œÌê— «„ò«‰ Õ–› ¬‰ ÊÃÊœ ‰œ«—œ',[mbOK],mtInformation);
         Exit;
      end;

      Dm.YeganehConnection.Execute('Delete from ArtGroup Where ArtGroup_ID = ' +
              DMArtService.QrSecendArtGroupArtGroup_ID.AsString).Fields[0].Value;
      DMArtService.QrSecendArtGroup.Close;
      DMArtService.QrSecendArtGroup.Open;
   end;
end;

Initialization
   RegisterClass(TFMArtService);

end.
