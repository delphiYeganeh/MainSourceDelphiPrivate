unit KimiyaFormFader;
{-----------------------------------------}
{      Use this unit for Fade effects     }
{                                         }
{      Written by: Saber Kahalian         }
{            Copyright © 2007             }
{          KimiyaRayanehParsian           }
{-----------------------------------------}

interface

uses
  windows,SysUtils, Classes,graphics,forms,extctrls;

{$IFDEF VER150}
  {$DEFINE DELPHI7}
{$ENDIF}
{$IFDEF VER160}
  {$DEFINE DELPHI7}
{$ENDIF}
{$IFDEF VER170}
  {$DEFINE DELPHI7}
{$ENDIF}

type
  TFrameRange=1..255 ;

  TKimiyaFormFader = class(TComponent)
  private
    fFadeTimer:TTimer;
    fParentForm:TForm;
    fParentShow:TNotifyEvent;
    fParentClose:TCloseEvent;
    fFadeFrameRate: TFrameRange;
    fFadeIn: Boolean;
    fAutoDisableAlpha: Boolean;
    //fOnFormClose: TCloseEvent;
    //fOnFormShow: TNotifyEvent;
    fFadeOut: Boolean;

    { Private declarations }
  protected
    procedure OnParentShow(Sender: TObject);
    procedure OnParentClose(Sender: TObject; var Action: TCloseAction);
    Procedure OnFadeTimer  (Sender: TObject);
    { Protected declarations }
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    { Public declarations }
  published
    Property FadeFrameRate:TFrameRange read fFadeFrameRate write fFadeFrameRate default 20;
    Property FadeIn:Boolean	 read fFadeIn write fFadeIn default true;
    Property FadeOut:Boolean	 read fFadeOut write fFadeOut default true;
    Property AutoDisableAlpha:Boolean read fAutoDisableAlpha write fAutoDisableAlpha default false ;
    //Property OnFormClose:TCloseEvent read fOnFormClose write fOnFormClose;
    //Property OnFormShow:TNotifyEvent read fOnFormShow write  fOnFormShow;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('VCLComponent', [TKimiyaFormFader]);
end;

{ TFormFader }

constructor TKimiyaFormFader.Create(AOwner: TComponent);
begin
  inherited;
  fParentForm:=TForm(AOwner);
  If not (csDesigning in self.ComponentState) then
  begin
    fParentClose:=fParentForm.OnClose;
    fParentShow:=fParentForm.OnShow;

    fParentForm.OnClose:=OnParentClose;
    fParentForm.OnShow:=OnParentShow;
  end;

  fFadeTimer:=TTimer.Create(nil);
  fFadeTimer.Enabled:=false;
  fFadeTimer.Interval:=1;
  fFadeTimer.OnTimer:=OnFadeTimer;
  fAutoDisableAlpha:=false;
  fFadeIn:=true;
  fFadeOut:=true;
  fFadeFrameRate:=20;
  If not (csDesigning in self.ComponentState) then
    fParentForm.Visible:=false;
end;

destructor TKimiyaFormFader.Destroy;
begin
  If not (csDesigning in self.ComponentState) then
  begin
    fParentForm.OnClose:=fParentClose;
    fParentForm.OnShow:=fParentShow ;
  end;
  If assigned(fFadeTimer) then
    fFadeTimer.Free;
  inherited;
end;

procedure TKimiyaFormFader.OnFadeTimer(Sender: TObject);
begin
{$IFDEF DELPHI7}
  If (fParentForm.AlphaBlendValue+fFadeFrameRate>254)or(not fFadeIn) then begin
    fFadeTimer.Enabled:=false;
    fParentForm.AlphaBlendValue:=254;
    If  fAutoDisableAlpha then
      fParentForm.AlphaBlend:=false;
    exit;
  end;
  fParentForm.AlphaBlendValue:=fParentForm.AlphaBlendValue+fFadeFrameRate;
{$Else}
  fFadeTimer.Enabled:=false;
{$EndIf}
end;

procedure TKimiyaFormFader.OnParentClose(Sender: TObject;
  var Action: TCloseAction);
var
  i:integer;
begin
  If assigned(fParentClose) then
    fParentClose(sender,action);
{$IFDEF DELPHI7}
  If action=caNone then exit;
  fParentForm.AlphaBlend:=fFadeOut;
  If not fFadeOut then exit;
  i:=254;
  While (i<=254)and(i>=0) do
  begin
    fParentForm.AlphaBlendValue:=i;
    fParentForm.Refresh;
    dec(i,fFadeFrameRate);
  end;
  fParentForm.AlphaBlendValue:=1;
{$EndIf}
end;

procedure TKimiyaFormFader.OnParentShow(Sender: TObject);
begin
  If assigned(fParentShow) then
    fParentShow(sender);
  fFadeTimer.Interval:=1;
  fParentForm.Visible:=True;
{$IFDEF DELPHI7}
  If fFadeIn then begin
    fParentForm.AlphaBlend:=true;
    fParentForm.AlphaBlendValue:=0;
  end;
{$EndIf}
  fFadeTimer.Enabled:=fFadeIn;

end;

end.
 