unit LetterFilterU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, YWhereEdit, ComCtrls,BaseUnit, Buttons, ExtCtrls,
  xpPages, wwriched, DB, ADODB, SolarCalendarPackage;

type
  TLetterFilter = class(TMBaseForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label6: TLabel;
    Label28: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label29: TLabel;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit7: TYWhereEdit;
    YWhereEdit9: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit25: TYWhereEdit;
    YWhereEdit27: TYWhereEdit;
    YWhereEdit15: TYWhereEdit;
    YWhereEdit28: TYWhereEdit;
    SubRec: TCheckBox;
    EdtOrgid: TEdit;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    YWhereEdit14: TYWhereEdit;
    YWhereEdit16: TYWhereEdit;
    YWhereEdit17: TYWhereEdit;
    YWhereEdit19: TYWhereEdit;
    YWhereEdit20: TYWhereEdit;
    YWhereEdit22: TYWhereEdit;
    YWhereEdit24: TYWhereEdit;
    YWhereEdit26: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    YWhereEdit8: TYWhereEdit;
    YWhereEdit10: TYWhereEdit;
    YWhereEdit12: TYWhereEdit;
    YWhereEdit18: TYWhereEdit;
    EdtRetroactionNo: TEdit;
    EdtFollowLetterNo: TEdit;
    EdtIncommingNO: TEdit;
    ChBoIncommingNO: TCheckBox;
    Label30: TLabel;
    SpeedButton12: TSpeedButton;
    YArchive: TEdit;
    ADOStoredProc1: TADOStoredProc;
    Label31: TLabel;
    Label32: TLabel;
    SolarDatePicker1: TSolarDatePicker;
    SolarDatePicker2: TSolarDatePicker;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure EdtIncommingNOKeyPress(Sender: TObject; var Key: Char);
    procedure ChBoIncommingNOClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
  private
    OrgID : Integer;
    function  FolderId:integer; // Amin 1391/12/01
  public
    { Public declarations }
    DateFieldName : String;

    function Where:string;
    Procedure ShowInPanel(P:TWinControl);

  end;

var
  LetterFilter: TLetterFilter;

implementation

uses Dmu, FromOrgU, YShamsiDate, ArchiveOrganize, U_CALENDAR_FRM;

{$R *.dfm}
Procedure TLetterFilter.ShowInPanel(P:TWinControl);
begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
end;

Function DATETONUMBER(S : String):Int64;
Var
  I : Int64;
Begin
  if S <> '' then
  begin
    I := StrToInt(Copy(S,1,4)+Copy(S,6,2)+Copy(S,9,2));
  end
  else
    I := 0;
  Result := I;
end;

function TLetterFilter.Where:string;
var i: byte;
  s:string;
  sArch : string ; // Amin 1391/12/01
begin
  if is_integer(YWhereEdit11.Text) then
  begin
    YWhereEdit11.FieldName:='Code';
    YWhereEdit11.EveryLike:=false;
    YWhereEdit11.isLike:=false;
  end
  else
  begin
    YWhereEdit11.FieldName:='Title';
    YWhereEdit11.EveryLike:=True;
    YWhereEdit11.isLike:=True;
  end;

  if is_integer(YWhereEdit9.Text) then
  begin
    YWhereEdit9.FieldName:='Code';
    YWhereEdit9.EveryLike:=false;
    YWhereEdit9.isLike:=false;
  end
  else
  begin
    YWhereEdit9.FieldName:='Title';
    YWhereEdit9.EveryLike:=True;
    YWhereEdit9.isLike:=True;
  end;

  for i:=1 to 28 do
  begin
    s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
    if s<>'' then
      Result:=Result+' and '+s;
  end;

  // Amin 1391/12/01 Start
  sArch :=YArchive.Text;
  sArch := Trim(sArch);
  if (Length(sArch) > 0) and (sArch[length(sArch)] = ',') then
    Delete(sArch,length(sArch), 1);

  if sArch<>'' then
  begin
    if(Trim(Result) <> '') then
      Result := Result + ' and ';

    Result := result + '(l.LetterID IN (SELECT LetterID FROM LetterArchiveFolder laf WHERE laf.ArchiveFolderID IN ('+sArch+')))';
  end;
  // Amin 1391/12/01 End

  //Ranjbar
  if Trim(EdtOrgid.Text)<>'' then
  begin
    if SubRec.Checked then
      Result := Result + 'And ((L.Letterid in ( SELECT ReCommites.LetterID FROM ReCommites where dbo.Is_ParentId(Orgid,'+ IntToStr(OrgID) +') =1 ) )) '
    else
      Result := Result + 'And ((L.Letterid in ( SELECT ReCommites.LetterID FROM ReCommites where Orgid = '+ IntToStr(OrgID) +' ) )) ';
  end;
  //---

  if ((SolarDatePicker1.Text <> '') and (SolarDatePicker2.Text = '')) or
    ((SolarDatePicker2.Text <> '') and (SolarDatePicker1.Text = '')) then
  begin
    ShowMessage('»—«Ì «⁄„«· ›Ì· —  «—ÌŒ „Ì »«Ì”  Â— œÊ ›Ì·œ  «—ÌŒ „ﬁœ«— œ«‘ Â »«‘‰œ');
    ShowMessage('œ— «⁄„«· ›Ì· — ›Ì·œ  «—ÌŒ œ— ‰Ÿ— ê—› Â ‰‘œÂ «” ');
  end
  else
  if (DATETONUMBER(SolarDatePicker1.Text) > DATETONUMBER(SolarDatePicker2.Text)) then
  begin
    ShowMessage(' «—ÌŒ «» œ« „Ì»«Ì”  «“  «—ÌŒ «‰ Â« òÊçò — »«‘œ');
    ShowMessage('œ— «⁄„«· ›Ì· — ›Ì·œ  «—ÌŒ œ— ‰Ÿ— ê—› Â ‰‘œÂ «” ');
  end
  else
  begin
    if (SolarDatePicker1.Text <> '') AND (SolarDatePicker2.Text <> '') then
    begin
      Result := Result + 'And ('+DateFieldName+' between '+QuotedStr(SolarDatePicker1.Text)+' and '+QuotedStr(SolarDatePicker2.Text)+') ';
    end;
  end;

  if Result<>'' then
    Result := Copy(Result,6,length(Result)-5);
end;

procedure TLetterFilter.FormCreate(Sender: TObject);
begin
  //YWhereEdit5.Text:=IntToStr(dm.CurrentMYear);
  Label12.Caption:=dm.UserMemoDisplay;
  {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            Label29.Visible := false;
            SpeedButton11.Visible := false;
            EdtOrgid.Visible := false;
            //SubRec.Visible := false;
            Label8.Visible := false;
            SpeedButton4.Visible := false;
            YWhereEdit6.Visible := false;
            Label14.Visible := false;
            YWhereEdit10.Visible := false;
       {$ENDIF}
   {$ENDIF}
end;



procedure TLetterFilter.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  dm.SearchTitle(YWhereEdit1);
end;

procedure TLetterFilter.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  dm.SearchTitle(YWhereEdit15);
end;

procedure TLetterFilter.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dm.SearchTitle(YWhereEdit25);
end;

procedure TLetterFilter.SpeedButton4Click(Sender: TObject);
begin
  inherited;
dm.SearchTitle(YWhereEdit6);
end;

procedure TLetterFilter.SpeedButton7Click(Sender: TObject);
begin
  inherited;
dm.SearchTitle(YWhereEdit14);
end;

procedure TLetterFilter.SpeedButton6Click(Sender: TObject);
begin
  inherited;
dm.SearchTitle(YWhereEdit16);
end;

procedure TLetterFilter.SpeedButton5Click(Sender: TObject);
begin
  inherited;
dm.SearchTitle(YWhereEdit18);
end;



procedure TLetterFilter.SpeedButton8Click(Sender: TObject);
begin
  inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.OrganizeMode:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
      YWhereEdit9.Text:=_ResultOrgCode

end;

procedure TLetterFilter.SpeedButton9Click(Sender: TObject);
begin
  inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.OrganizeMode:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
      YWhereEdit11.Text:=_ResultOrgCode

end;

procedure TLetterFilter.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  dm.SearchTitle(YWhereEdit28);

end;

procedure TLetterFilter.SpeedButton11Click(Sender: TObject);
begin
   inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.outerOrg.Checked := false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
   begin
      EdtOrgid.Text := _ResultOrgTitle; //_ResultOrgCode
      OrgID := _ResultOrgID;
   end;
end;

procedure TLetterFilter.EdtIncommingNOKeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.02 ID=230}
   //«„ﬂ«‰  «ÌÅ Õ—Ê›Ì „À·     » . 55 - 12_125 . Ã / » / «·›
   //TEdit(Sender).Text := Keyboard_TypeWithDivider(TEdit(Sender).Text , Key);
   if not ChBoIncommingNO.Checked then
   begin
      if EdtIncommingNO.BiDiMode = bdLeftToRight then
         EdtIncommingNO.BiDiMode := bdRightToLeft;
      EdtIncommingNO.Text := Keyboard_TypeWithDivider(EdtIncommingNO.Text,Key);
   end;
   //---
end;

procedure TLetterFilter.ChBoIncommingNOClick(Sender: TObject);
begin
   inherited;
   EdtIncommingNO.SetFocus;
end;

// Amin 1391/12/01 Start
function TLetterFilter.FolderId:integer;
begin
  inherited;
  ArchiveOrganizeForm := TArchiveOrganizeForm.Create(Application);
  ArchiveOrganizeForm.OrganizeMode := False;
  ArchiveOrganizeForm.ShowModal;

  if ArchiveOrganizeForm.done then
     Result:=_ResultFolderID
  else
     Result:=0;
end;
// Amin 1391/12/01 End

procedure TLetterFilter.SpeedButton12Click(Sender: TObject);
var
   fID : Integer;
   s:string;
   Qry : TADOStoredProc;
begin
  inherited;

  fID := FolderId;
  Qry := TADOStoredProc.Create(self);
  Qry.Connection:=dm.YeganehConnection;
  Qry.ProcedureName := 'GetChildsArchiveFolder';
  Qry.Parameters.Refresh;
  Qry.Parameters.ParamByName('@FolderId').Value :=fID;
  Qry.Open;
  s:=Qry.Fields.Fieldbyname('ChildArchiveFolder').AsString;

  if Trim(YArchive.Text) <> '' then
    YArchive.Text := YArchive.Text + ', ';
  YArchive.Text := YArchive.Text + s;
  qry.Free;
end;

end.


