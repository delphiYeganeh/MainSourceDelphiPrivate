unit URecommiteReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, YWhereEdit,  ExtActns, ActnList, DB,
  ExtCtrls, xpBitBtn, Grids, DBGrids, YDbgrid, ADODB, Buttons, Menus;

type
  TFrRecommiteReport = class(TMBaseForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    RecommiteDate: TYWhereEdit;
    DeadLineDate: TYWhereEdit;
    ProceedDate: TYWhereEdit;
    Label5: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    ProceedStatus: TComboBox;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Lusermem: TLabel;
    YWhereEdit27: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit12: TYWhereEdit;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    DelayDays: TYWhereEdit;
    Label6: TLabel;
    ProgressDay: TYWhereEdit;
    Panel2: TPanel;
    Number: TLabel;
    MakeRep: TBitBtn;
    Button6: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    SpeedButton1: TSpeedButton;
    OrgID: TYWhereEdit;
    SBReport: TSpeedButton;
    Label7: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    RadioGroup1: TRadioGroup;
    Label10: TLabel;
    YWhereEdit1: TYWhereEdit;
    CheckBox1: TCheckBox;
    RadioGroup2: TRadioGroup;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    function  Where:string;
    procedure FormCreate(Sender: TObject);
    procedure MakeRepClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrRecommiteReport: TFrRecommiteReport;

implementation

uses Dmu, FromOrgU, businessLayer, DateUtils, SearchFM, RecommiteReportDM,
  UMain,YShamsiDate;

{$R *.dfm}

function TFrRecommiteReport.Where:string;
Var i: byte;
begin
   for i:=0 to ComponentCount-1 do
      if Components[i].ClassNameIs('TYWhereEdit') then
         if TYWhereEdit(Components[i]).Resultwhere <>'' then
         begin
            case RadioGroup1.ItemIndex of
              0:Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere+'';
              1,2:
                begin
                  // if Pos('Orgid',TYWhereEdit(Components[i]).Resultwhere)=0 then
                      Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere+'';
                end;

            end;
         end;

   if ProceedStatus.ItemIndex>0 then
      Result := Result + ' and (Rc.Proceeded='+IntToStr(2-ProceedStatus.ItemIndex)+')';

   if Result<>'' then
      Result:=Copy(Result,6,length(Result)-5);
end;


procedure TFrRecommiteReport.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;

end;

procedure TFrRecommiteReport.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;

end;

procedure TFrRecommiteReport.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;

end;

procedure TFrRecommiteReport.FormCreate(Sender: TObject);
begin
  inherited;
  Lusermem.Caption := dm.UserMemoDisplay;
  DelayDays.FieldName   := '-dbo.Recommite_DeadLine(rc.Recommiteid,isnull(rc.Proceeddate,'''+_Today+'''))';
  ProgressDay.FieldName := 'dbo.shamsidatediff(rc.Recommitedate ,isnull(rc.Proceeddate,'''+_Today+'''))';
   if _kartable then
  begin
  //  SpeedButton2.Visible:=false;
    orgid.Text:=IntToStr(_UserFromOrgID);
    orgid.Enabled:=false;
  end;
  RecommiteDate.Text:=copy(_Today,1,8)+'01-'+copy(_Today,1,8)+'29';
end;

procedure TFrRecommiteReport.MakeRepClick(Sender: TObject);
begin
  inherited;
  with DMRecommiteReport,sp_recommite_report,Parameters do
   begin
     close;
     ParamByName('@SecretariatID').Value := dm.SecID;
     ParamByName('@myear').Value := dm.CurrentMyear;
{     case RadioGroup1.ItemIndex of
       0: ParamByName('@where').Value := where;
       1: ParamByName('@where').Value := '';
     end;}
     ParamByName('@where').Value := where;

//     ShowMessage(Where);

     ParamByName('@RecommitFlag').Value:=RadioGroup1.ItemIndex;
     ParamByName('@UserID').Value:=_UserID;
     ParamByName('@LettrTypeID').Value:=RadioGroup2.ItemIndex;
     if CheckBox1.Checked = True then
       ParamByName('@falg').Value:= 1
     else
       ParamByName('@falg').Value:= 0;

     Open;
     Number.Caption:=' ⁄œ«œ ‰«„Â Â«  : '+ IntToStr(RecordCount)
   end;
end;

procedure TFrRecommiteReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  FromOrgForm:=TFromOrgForm.Create(Application);
  FromOrgForm.OrganizeMode:=false;
  if _kartable then
    FromOrgForm.Rootid:=_UserFromOrgID;
  FromOrgForm.ShowModal;
  if FromOrgForm.done then
   if OrgID.text='' then
    OrgID.Text:=IntToStr( _ResultOrgID)
   else
    OrgID.Text:=OrgID.Text+','+IntToStr( _ResultOrgID);

    {
  With DMRecommiteReport do
     if FmSearch.GetSearchValue(QrOrg,'ID','Title',' ',550,500)<>'0' then
     begin
        if OrgID.text='' then
           OrgID.Text:=IntToStr( QrOrgID.AsInteger)
        else
           OrgID.Text:=OrgID.Text+','+IntToStr( QrOrgID.AsInteger);
     end;  }
  //---
end;

procedure TFrRecommiteReport.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;


procedure TFrRecommiteReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  With DMRecommiteReport do
     if FmSearch.GetSearchValue(QrOrg,'ID','Title',' ',550,500)<>'0' then
        YWhereEdit11.Text := Trim(QrOrgTitle.AsString);
end;

procedure TFrRecommiteReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  With DMRecommiteReport do
     QrOrg.Close;
end;

procedure TFrRecommiteReport.SBReportClick(Sender: TObject);
begin
  inherited;
   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFrRecommiteReport.NShowClick(Sender: TObject);
begin
  inherited;
  //Please Check FormKeyDown Event
  With DMRecommiteReport do
  begin
     {if sp_recommite_report.State in [dsEdit,dsInsert] then
     begin
        ShowMessage('·ÿ›« ﬁ»· «“ ê“«—‘ êÌ—Ì «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ');
        Exit;
     end;}
     if sp_recommite_report.RecordCount = 0 then
     begin
        ShowMessage('ÂÌç —òÊ—œÌ Ì«›  ‰‘œ');
        Exit;
     end;

     Rep_LoadFile(frxRepRecommite_report,'RecommiteReport1.fr3');
     //TfrxReportSummary(DMReports.frxRepAkasi.FindComponent('ReportSummary1')).Visible := False;
     if Sender = NShow  then
        Rep_Show(frxRepRecommite_report,rtShow);
     if Sender = NPrint  then
        Rep_Show(frxRepRecommite_report,rtPrint);
     if Sender = NDesign  then
        Rep_Show(frxRepRecommite_report,rtDesign);
  end;
end;

procedure TFrRecommiteReport.N11Click(Sender: TObject);
begin
  inherited;
   Rep_CorrectDesign('RecommiteReport1.fr3');
end;

procedure TFrRecommiteReport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_F9)And(Shift=[]) then
     SBReport.PopupMenu.Items[0].Click;
  if (Key = Vk_F9)And(Shift=[ssCtrl]) then
     SBReport.PopupMenu.Items[1].Click;
  if (Key = Vk_F9)And(Shift=[ssAlt]) then
     SBReport.PopupMenu.Items[2].Click;
end;

procedure TFrRecommiteReport.FormShow(Sender: TObject);
begin
  inherited;
//  OrgID.Text := '';
//  RecommiteDate.Text := '';
   if DMRecommiteReport.sp_recommite_report.Active then
   begin
      DMRecommiteReport.sp_recommite_report.Active := False;
   end;

end;

end.
