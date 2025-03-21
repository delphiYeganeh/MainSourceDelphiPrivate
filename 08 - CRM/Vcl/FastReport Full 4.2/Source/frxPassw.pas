
{******************************************}
{                                          }
{             FastReport v4.0              }
{              Password form               }
{                                          }
{         Copyright (c) 1998-2007          }
{         by Alexander Tzyganenko,         }
{            Fast Reports Inc.             }
{                                          }
{******************************************}

unit frxPassw;

interface

{$I frx.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls
{$IFDEF Delphi6}
, Variants
{$ENDIF};
  

type
  TfrxPasswordForm = class(TForm)
    OkB: TButton;
    CancelB: TButton;
    PasswordE: TEdit;
    PasswordL: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;


implementation
                      
{$R *.dfm}

uses frxRes;


procedure TfrxPasswordForm.FormCreate(Sender: TObject);
begin
  Caption := frxGet(5000);
  PasswordL.Caption := frxGet(5001);
  OkB.Caption := frxGet(1);
  CancelB.Caption := frxGet(2);

  if UseRightToLeftAlignment then
    FlipChildren(True);
end;

end.


//862fd5d6aa1a637203d9b08a3c0bcfb0