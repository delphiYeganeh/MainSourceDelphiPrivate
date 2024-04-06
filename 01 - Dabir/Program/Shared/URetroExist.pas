unit URetroExist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, baseunit,Mask, DBCtrls, Buttons, ExtCtrls, ADODB;

type
  TRetroExist = class(TMBaseForm)
    Button1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DGet_LetterAbstract: TDataSource;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    Get_LetterAbstract: TADOStoredProc;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LetterID:integer;
  end;

var
  RetroExist: TRetroExist;

implementation

uses Dmu, EnteredLetterInputF, ExitedLetterInputF;

{$R *.dfm}

procedure TRetroExist.Button1Click(Sender: TObject);
begin
 close;
end;

procedure TRetroExist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRetroExist.BitBtn1Click(Sender: TObject);
begin
  with SentLetterInputForm do
   begin
     SentLetterInputForm:=TSentLetterInputForm.Create(Application);
      GetLetter(LetterID);
     ShowModal;
   end;

end;

procedure TRetroExist.FormShow(Sender: TObject);
begin

  with Get_LetterAbstract,parameters do
     begin
       Close;
      ParamByName('@LetterID').value:=LetterID;

      open;
   end;
end;

end.
