unit ShowmessageU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, xpBitBtn, AdvGlowButton, AdvPanel;

type
  TShowMessageF = class(TForm)
    pnlMain: TPanel;
    Label1: TLabel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    yes: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    AppMsgID:integer;
    ShowCancel,Done:boolean;
  end;

var
  ShowMessageF: TShowMessageF;

implementation

uses Dmu, businessLayer;


{$R *.dfm}

procedure TShowMessageF.FormShow(Sender: TObject);
begin
 if not ShowCancel then
     BitBtn1.Left:=Width div 2 - BitBtn1.Width div 2
   else
       BitBtn1.Caption:=yes.Caption;

 if AppMsgID>0 then
   Label1.Caption:=Get_sysAppMessage(AppMsgID);
 BitBtn2.Visible:=ShowCancel;

end;

procedure TShowMessageF.FormCreate(Sender: TObject);
var
  Region: HRGN;
begin
  inherited;
 // Region := CreateRoundRectRgn(0, 0, ClientWidth, ClientHeight, 30, 30);
 // SetWindowRgn(Handle, Region, True);
  self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;  
  done:=false;
  AppMsgID:=0;
end;

procedure TShowMessageF.BitBtn1Click(Sender: TObject);
begin
 done:=true;
 Close;
 
end;

procedure TShowMessageF.BitBtn2Click(Sender: TObject);
begin
 done:=false;
 Close;

end;

procedure TShowMessageF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
 end;

end.
