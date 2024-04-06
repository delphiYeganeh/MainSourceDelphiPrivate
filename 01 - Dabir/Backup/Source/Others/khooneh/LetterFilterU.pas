unit LetterFilterU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, YWhereEdit, ComCtrls,BaseUnit, Buttons, ExtCtrls,
  xpPages;

type
  TLetterFilter = class(TMBaseForm)
    PageControl1: TxpPageControl;
    xpTabSheet2: TxpTabSheet;
    xpPageControl1: TxpPageControl;
    xpTabSheet3: TxpTabSheet;
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
    xpTabSheet4: TxpTabSheet;
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
    YWhereEdit1: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit7: TYWhereEdit;
    YWhereEdit9: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit21: TYWhereEdit;
    YWhereEdit23: TYWhereEdit;
    YWhereEdit25: TYWhereEdit;
    YWhereEdit27: TYWhereEdit;
    YWhereEdit15: TYWhereEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label28: TLabel;
    SpeedButton10: TSpeedButton;
    YWhereEdit28: TYWhereEdit;
    procedure FormCreate(Sender: TObject);
    procedure SearchTitle(YW:TYWhereEdit);
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
  private
    { Private declarations }
  public
    { Public declarations }
    function Where:string;
    Procedure ShowInPanel(P:TWinControl);
  end;

var
  LetterFilter: TLetterFilter;

implementation

uses Dmu, FromOrgU, YShamsiDate;

{$R *.dfm}
Procedure TLetterFilter.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
 end;
function TLetterFilter.Where:string;
 var i: byte;
  s:string;
 begin
    if is_integer(YWhereEdit11.Text) then
      begin
       YWhereEdit11.FieldName:='Code';
       YWhereEdit11.EveryLike:=false;
       YWhereEdit11.isLike:=false;
      end else
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
      end else
      begin
       YWhereEdit9.FieldName:='Title';
       YWhereEdit9.EveryLike:=True;
       YWhereEdit9.isLike:=True;
      end;

   for i:=1 to 28 do
     begin
      s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
      if s<>'' then
       begin
        Result:=Result+' and '+s;
       end;
     end;
  if Result<>'' then Result:=copy(Result,6,length(Result)-5);
 end;

procedure TLetterFilter.FormCreate(Sender: TObject);
begin
  YWhereEdit5.Text:=IntToStr(dm.CurrentMYear);
  Label12.Caption:=dm.UserMem;
end;

procedure TLetterFilter.SearchTitle(YW:TYWhereEdit);
var i: integer;
begin
  inherited;
i:=DM.Search(YW);
 if i>-1 then
  if trim(YW.Text)<>'' then
   YW.Text:=YW.Text+','+IntToStr(i)
  else
   YW.Text:=IntToStr(i);
end;

procedure TLetterFilter.SpeedButton1Click(Sender: TObject);
begin
  inherited;
SearchTitle(YWhereEdit1);
end;

procedure TLetterFilter.SpeedButton2Click(Sender: TObject);
begin
  inherited;
SearchTitle(YWhereEdit15);
end;

procedure TLetterFilter.SpeedButton3Click(Sender: TObject);
begin
  inherited;
SearchTitle(YWhereEdit25);

end;

procedure TLetterFilter.SpeedButton4Click(Sender: TObject);
begin
  inherited;
SearchTitle(YWhereEdit6);
end;

procedure TLetterFilter.SpeedButton7Click(Sender: TObject);
begin
  inherited;
SearchTitle(YWhereEdit14);
end;

procedure TLetterFilter.SpeedButton6Click(Sender: TObject);
begin
  inherited;
SearchTitle(YWhereEdit16);
end;

procedure TLetterFilter.SpeedButton5Click(Sender: TObject);
begin
  inherited;
SearchTitle(YWhereEdit18);
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
SearchTitle(YWhereEdit28);

end;

end.


