unit DuplicateNo;

interface

uses
  Forms,Buttons, DB, StdCtrls, Mask,baseunit, DBCtrls, Controls, Classes, ADODB,
  xpBitBtn, ExtCtrls;

type
  TFDuplicate = class(TmbaseForm)
    DGet_LetterAbstract: TDataSource;
    Get_LetterAbstract: TADOStoredProc;
    Panel1: TPanel;
    Button1: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
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

uses Dmu, UAddDocument;

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
  with FrAddDocument do
   begin
     FrAddDocument:=TFrAddDocument.Create(Application);
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
