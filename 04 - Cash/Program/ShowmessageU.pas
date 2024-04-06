unit ShowmessageU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TShowMessageF = class(TForm)
    Panel1: TPanel;
    yes: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ExitButton: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExitButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ShowExit,ShowCancel,Done,Exit_Clicked:boolean;

  end;

var
  ShowMessageF: TShowMessageF;

implementation

uses Dmu, businessLayer;


{$R *.dfm}

procedure TShowMessageF.FormShow(Sender: TObject);
begin
   if ShowExit then
     begin
       ShowCancel:=true;
       ExitButton.Show;
     end;
 if not ShowCancel then
     BitBtn1.Left:=Width div 2 - BitBtn1.Width div 2
   else
       BitBtn1.Caption:=yes.Caption;
 BitBtn2.Visible:=ShowCancel;

end;

procedure TShowMessageF.FormCreate(Sender: TObject);
begin
done:=false;
Exit_Clicked:=false;
ShowExit:=false;
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

procedure TShowMessageF.ExitButtonClick(Sender: TObject);
begin
Exit_Clicked:=True;
Close;
end;

end.
