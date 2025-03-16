unit printheader;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, wwriched, Buttons;

type
  TPrintHeaderForm = class(TForm)
    wwDBRichEdit1: TwwDBRichEdit;
    Button2: TButton;
    BitBtn1: TBitBtn;
    procedure wwDBRichEdit1PrintHeader(Sender: TwwCustomRichEdit;
      DrawRect: TRect; PageNumber: Integer; var LeftText, CenterText,
      RightText: String; var DoDefault: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintHeaderForm: TPrintHeaderForm;

implementation

{$R *.dfm}

procedure TPrintHeaderForm.wwDBRichEdit1PrintHeader(Sender: TwwCustomRichEdit;
  DrawRect: TRect; PageNumber: Integer; var LeftText, CenterText,
  RightText: String; var DoDefault: Boolean);
begin
  RightText:= 'Page ' + inttostr(PageNumber) + ' of ' +
              inttostr(Sender.TotalPages);
  LeftText:= datetostr(date);
end;

procedure TPrintHeaderForm.BitBtn1Click(Sender: TObject);
begin
  wwdbrichedit1.print('TestJob');
end;

procedure TPrintHeaderForm.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
