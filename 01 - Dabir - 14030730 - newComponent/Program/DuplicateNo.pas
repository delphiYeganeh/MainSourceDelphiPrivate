unit DuplicateNo;

interface

uses
  Forms,Buttons, DB, StdCtrls, Mask,baseunit, DBCtrls, Controls, Classes, ADODB,
  xpBitBtn;

type
  TFDuplicate = class(TmbaseForm)
    Button1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DGet_LetterAbstract: TDataSource;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    BitBtn1: TBitBtn;
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
  FDuplicate: TFDuplicate;

implementation

uses Dmu, EnteredLetterInputF;

{$R *.dfm}

procedure TFDuplicate.Button1Click(Sender: TObject);
begin
 close;
end;

procedure TFDuplicate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFDuplicate.BitBtn1Click(Sender: TObject);
begin
  with ReceivedLetterInputForm do
   begin
     ReceivedLetterInputForm:=TReceivedLetterInputForm.Create(Application);
      GetLetter(LetterID);
     ShowModal;
   end;

end;

procedure TFDuplicate.FormShow(Sender: TObject);
begin

  with Get_LetterAbstract,parameters do
     begin
       Close;
      ParamByName('@LetterID').value:=LetterID;

      open;
   end;
end;


end.
