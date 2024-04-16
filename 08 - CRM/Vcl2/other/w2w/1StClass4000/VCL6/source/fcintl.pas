unit fcintl;
{
//
// Components : TfcInternational
//
// Copyright (c) 1995-2001 by Woll2Woll Software
//
}
{$i fcIfDef.pas}

interface

uses
  Consts, SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, db,
  Registry,
  Buttons;

type

  TfcCalculatorIntl = class(TPersistent)
  private
//    FConfirmDeleteMessage: string;
//    FHints: TwwDBNavigatorIntlHints;
  published
//    property ConfirmDeleteMessage: string read FConfirmDeleteMessage write FConfirmDeleteMessage;
//    property Hints: TwwDBNavigatorIntlHints read FHints write FHints;
  end;

  TfcIntl = class(TComponent)
  private
    FCalculator: TfcCalculatorIntl;
    Procedure SetConnected(val: boolean);
  protected
    Procedure Loaded; override;
    Procedure Connect;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
     property Calculator: TfcCalculatorIntl read FCalculator write FCalculator;
     property Connected: boolean read FConnected write SetConnected;
  end;

procedure Register;

var fcInternational: TfcIntl;

implementation

uses StdCtrls;

constructor TfcIntl.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);

   FCalculator:= TwwCalculatorIntl.create;
   with Calculator do
   begin
   end;

end;

destructor TfcIntl.Destroy;
begin
  FCalculator.Free;
  inherited Destroy;
  if self=fcInternational then fcInternational:= nil;
end;

Procedure TfcIntl.Loaded;
begin
   inherited Loaded;
   if Connected then Connect;
end;

Procedure TfcIntl.SetConnected(val: boolean);
begin
    FConnected:= val;
    if not val then exit;
    Connect;
end;

Procedure TfcIntl.Connect;
begin
    if self=fcInternational then exit;

    with Calculator do begin
//       wwInternational.RichEdit.TabDialog.HelpContext:= FTabDialog.HelpContext;
    end;

end;


procedure Register;
begin
end;


procedure InitMainIntl;
begin
  fcInternational:= TfcIntl.create(Application);
end;


initialization
  InitMainIntl;
finalization
  fcInternational.Free;
end.


