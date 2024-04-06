unit URecommiteTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpBitBtn, Buttons, StdCtrls, ComCtrls, xpPages,
  xpWindow, ExtActns, ActnList, DB, Menus;

type
  TFrRecommiteTemplate = class(TMBaseForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    OrgTitle1: TEdit;
    OrgTitle2: TEdit;
    OrgTitle3: TEdit;
    OrgTitle4: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    OrgTitle5: TEdit;
    OrgTitle6: TEdit;
    OrgTitle7: TEdit;
    OrgTitle8: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrRecommiteTemplate: TFrRecommiteTemplate;

implementation

uses UMain, Dmu, businessLayer;

{$R *.dfm}

var  orgid: array[1..8] of integer;

procedure TFrRecommiteTemplate.SpeedButton2Click(Sender: TObject);
 var  i: integer;
begin
  inherited;
  if mainform.GetSearch then
   begin
     i:=TSpeedButton(sender).Tag;
     orgid[i]:=_ResultOrgID;
    try TEdit(FindComponent('OrgTitle'+IntToStr(i))).Text:=
            dm.YeganehConnection.Execute('Select Title from Fromorganizations where id='+IntToStr(orgid[i])).Fields[0].Value; except end;
     if trim(TEdit(FindComponent('Edit'+IntToStr(i))).Text)='' then
      TEdit(FindComponent('Edit'+IntToStr(i))).Text:=TEdit(FindComponent('OrgTitle'+IntToStr(i))).Text;
   end;

end;

procedure TFrRecommiteTemplate.BitBtn1Click(Sender: TObject);
 var i: byte;
begin
  inherited;
  for i:=1 to 8 do
  begin
     SetUserSetting('DefaultReciever'+IntToStr(i),orgid[i]);
     SetUserSetting('DefaultRecieverTitle'+IntToStr(i),TEdit(FindComponent('Edit'+IntToStr(i))).Text);
  end;
  close;
end;

procedure TFrRecommiteTemplate.FormCreate(Sender: TObject);
 var i: byte;
begin
  inherited;
  for i:=1 to 8 do
  begin
    orgid[i]:= GetUserSetting('DefaultReciever'+IntToStr(i));
    TEdit(FindComponent('Edit'+IntToStr(i))).Text:=GetUserSetting('DefaultRecieverTitle'+IntToStr(i));
    try TEdit(FindComponent('OrgTitle'+IntToStr(i))).Text:=
            dm.YeganehConnection.Execute('Select Title from Fromorganizations where id='+IntToStr(orgid[i])).Fields[0].Value; except end;
  end;
end;

procedure TFrRecommiteTemplate.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
