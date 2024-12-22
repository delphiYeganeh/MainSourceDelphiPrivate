unit OrdersFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, DB, DBTables, frxClass, frxDBSet;

type
  TFMOrders = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SBReport: TSpeedButton;
    DBNavigator1: TDBNavigator;
    LabHelp: TLabel;
    SBSearch: TSpeedButton;
    LabelDate: TLabel;
    SBEmkanat: TSpeedButton;
    PopEmkanat: TPopupMenu;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    MenuItem1: TMenuItem;
    NDefault: TMenuItem;
    DBECode: TDBEdit;
    Label1: TLabel;
    DBLkCBOrdersType: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEArtName: TDBEdit;
    DBEArtCount: TDBEdit;
    Label4: TLabel;
    DBEArtPrice: TDBEdit;
    Label5: TLabel;
    DBEPersonelName: TDBEdit;
    Label6: TLabel;
    DBEComment: TDBEdit;
    Label7: TLabel;
    SBPersonelName: TSpeedButton;
    DBEDateOrders: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEDateDo: TDBEdit;
    SBArtName: TSpeedButton;
    N1: TMenuItem;
    SBExportToWord: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure SBEmkanatClick(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure NDefaultClick(Sender: TObject);
    procedure SBArtNameClick(Sender: TObject);
    procedure SBPersonelNameClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBEArtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEPersonelNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBExportToWordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMOrders: TFMOrders;

implementation

Uses OrdersDM , Myutil , VertionDM, SearchFM;

{$R *.dfm}

procedure TFMOrders.FormCreate(Sender: TObject);
begin
   DMOrders := TDMOrders.Create(Self);
   DBNav_Setup(DBNavigator1);
end;

procedure TFMOrders.FormShow(Sender: TObject);
begin
   With DMOrders do
   begin
      QrOrdersType.Open;
      QrOrders.Open;
   end;
   LabelDate.Caption := _TodayName +'  '+ _TodayDate;
   Form_Animate(Self);
   DBECode.Color := _ReadOnlyColor;
end;

procedure TFMOrders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   With DMOrders do
   begin
      FormClose_CheckQryState(QrOrders);
      Qry_CloseAllQry(DMOrders);
   end;
   FreeAndNil(DMOrders);
end;

procedure TFMOrders.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   Form_SetShortCut(Self,DBNavigator1,SBSearch,SBReport,Sender,Key,Shift);

   if (ssctrl in Shift) then
   begin
      if (Key=Word('E')) then //œò„Â «„ò«‰« 
         SBEmkanat.Click;
   end;

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;


procedure TFMOrders.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFMOrders.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
   DBNav_Refresh(TDBNavigator(Sender));
end;

procedure TFMOrders.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
   DBNav_ControlOnBefAct(Sender,Button,DBLkCBOrdersType);
end;

procedure TFMOrders.SBReportClick(Sender: TObject);
begin
   if DMOrders.QrOrders.State in [dsInsert,dsEdit] then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ﬁ»· «“ ê“«—‘êÌ—Ì «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;

   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFMOrders.NShowClick(Sender: TObject);
Var
   RepFileName : String;
   FrxReport : TFrxReport;
begin
   if DMOrders.QrOrders.RecordCount = 0 then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;

   if DMOrders.QrOrders.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ﬁ»· «“ ê“«—‘ êÌ—Ì «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;

   //DMRep := TDMRep.Create(Nil);
   With DMOrders do
      Try
         QrRepOrders.Close;
         Qry_DeleteWhere(QrRepOrders);
         //ÃÂ  ‰„«Ì‘ —òÊ—œ Ã«—Ì
         Qry_AddWhere(QrRepOrders,'(Orders_ID = ' + QrOrdersOrders_ID.AsString + ' ) ');
         QrRepOrders.Open;

         RepFileName := 'Orders1.fr3'; //Change
         FrxReport := frxRepOrders ; //Change

         if Sender = NShow  then
            Rep_LoadAndShow(FrxReport , RepFileName , rtShow);
         if Sender = NPrint  then
            Rep_LoadAndShow(FrxReport , RepFileName , rtPrint);
         if Sender = NDesign  then
            Rep_LoadAndShow(FrxReport , RepFileName , rtDesign);
      Finally
         QrRepOrders.Close;
         //FreeAndNil(DMRep);
      End;
end;

procedure TFMOrders.NDefaultClick(Sender: TObject);
begin
   Rep_CorrectDesign('Orders1.fr3');
end;

procedure TFMOrders.SBEmkanatClick(Sender: TObject);
begin
   Cursor_SetPos(Self,SBEmkanat,PopEmkanat);
end;

procedure TFMOrders.SBSearchClick(Sender: TObject);
begin
   if FmSearch.GetSearchValue(DMOrders.QrSrchOrders ,'Orders_ID', 'ArtName' , ' ' , 400 , 600 ) <> '0' then
      DMOrders.QrOrders.Locate('Orders_ID',DMOrders.QrSrchOrdersOrders_ID.AsInteger,[]);
end;


procedure TFMOrders.SBArtNameClick(Sender: TObject);
begin
   if not(DMOrders.QrOrders.State in [dsEdit,dsInsert]) then
      Exit;

   if FmSearch.GetSearchValue(DMOrders.QrSrchArticle ,'Article_ID', 'Name' , ' ' , 400 , 400 ) <> '0' then
   begin
      DMOrders.QrOrdersArtName.AsString := DMOrders.QrSrchArticleName.AsString;
      DMOrders.QrOrdersArtCount.AsInteger := DMOrders.QrSrchArticleMaxBuy.AsInteger;
      DMOrders.QrOrdersArtPrice.AsFloat := DMOrders.QrSrchArticleEndBuyPrice.AsFloat;
   end;
end;

procedure TFMOrders.SBPersonelNameClick(Sender: TObject);
begin
   if not(DMOrders.QrOrders.State in [dsEdit,dsInsert]) then
      Exit;
   if FmSearch.GetSearchValue(DMOrders.QrSrchPrs ,'Personel_ID', 'Family' , ' ' , 400 , 500 ) <> '0' then
      DMOrders.QrOrdersPersonelName.AsString := Trim(DMOrders.QrSrchPrsName.AsString) + ' ' + Trim(DMOrders.QrSrchPrsFamily.AsString);
end;

procedure TFMOrders.N1Click(Sender: TObject);
begin
   Access_ToForm('FMED_OrdersType',_PersonelID);
   EnterData_CallForm(33,'›—„  ⁄—Ì› ‰Ê⁄ ”›«—‘','ﬂœ','‰Ê⁄ ”›«—‘',' Ê÷ÌÕ« ',0); //›—„  ⁄—Ì› ‰Ê⁄ ”›«—‘« 
   DMOrders.QrOrdersType.Close;
   DMOrders.QrOrdersType.Open;
end;

procedure TFMOrders.DBEArtNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssCtrl in shift) And (Key = Vk_Return) then
      SBArtName.Click;
end;

procedure TFMOrders.DBEPersonelNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssCtrl in shift) And (Key = Vk_Return) then
      SBPersonelName.Click;
end;

procedure TFMOrders.SBExportToWordClick(Sender: TObject);
begin
   DBG_ExportToWord(DBGrid1,_CompanyName);
end;

Initialization
   RegisterClass(TFMOrders);

end.
