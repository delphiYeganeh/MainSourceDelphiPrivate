unit UEditQuestion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ActnList, xpBitBtn, DBCtrls, StdCtrls, Mask;

type
  TFrEditQuestion = class(TMBaseForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEditQuestion: TFrEditQuestion;

implementation

uses dmu;

{$R *.dfm}

procedure TFrEditQuestion.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
dm.Select_Question.Post;
close;
end;

procedure TFrEditQuestion.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
dm.Select_Question.Post;
close;

end;

end.
