unit URecommiteTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpBitBtn, Buttons, StdCtrls, ComCtrls, xpPages,
  xpWindow, ExtActns, ActnList, DB, Menus, ExtCtrls, AdvGlowButton;

type
  TFrRecommiteTemplate = class(TMBaseForm)
    SpeedButton2: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
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
    SpeedButton5: TAdvGlowButton;
    SpeedButton6: TAdvGlowButton;
    SpeedButton7: TAdvGlowButton;
    SpeedButton8: TAdvGlowButton;
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
    pnlMain: TPanel;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Clear8: TAdvGlowButton;
    Clear7: TAdvGlowButton;
    Clear6: TAdvGlowButton;
    Clear5: TAdvGlowButton;
    Clear4: TAdvGlowButton;
    Clear3: TAdvGlowButton;
    Clear2: TAdvGlowButton;
    Clear1: TAdvGlowButton;
    Bevel1: TBevel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
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
     i:=TAdvGlowButton(sender).Tag;
     orgid[i]:=_ResultOrgID;
    try TEdit(FindComponent('OrgTitle'+IntToStr(i))).Text:=
            dm.YeganehConnection.Execute('Select Title from Fromorganizations where id='+IntToStr(orgid[i])).Fields[0].Value; except end;
     if trim(TEdit(FindComponent('Edit'+IntToStr(i))).Text)='' then
      TEdit(FindComponent('Edit'+IntToStr(i))).Text := TEdit(FindComponent('OrgTitle'+IntToStr(i))).Text;
   end;

end;

procedure TFrRecommiteTemplate.BitBtn1Click(Sender: TObject);
 var i: byte;
begin
  inherited;
  for i:=1 to 8 do
  begin
     SetUserSetting('DefaultReciever'+IntToStr(i),orgid[i]);

     if orgid[i] = 0 then
       TEdit(FindComponent('Edit'+IntToStr(i))).Text := '' ;
       
     SetUserSetting('DefaultRecieverTitle'+IntToStr(i),TEdit(FindComponent('Edit'+IntToStr(i))).Text)
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

procedure TFrRecommiteTemplate.Clear1Click(Sender: TObject);
 var  i: integer;
begin
  inherited;

  i:=TAdvGlowButton(sender).Tag;

  orgid[i]:= 0 ;
  try TEdit(FindComponent('OrgTitle'+IntToStr(i))).Text:= '' ;

  except
  end;

  if trim(TEdit(FindComponent('Edit'+IntToStr(i))).Text)<>'' then
  TEdit(FindComponent('Edit'+IntToStr(i))).Text := '' ;


end;

end.
