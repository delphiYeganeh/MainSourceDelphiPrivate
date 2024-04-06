(*
Copyright (c) 1998-2008 by HiComponents. All rights reserved.

This software comes without express or implied warranty.
In no case shall the author be liable for any damage or unwanted behavior of any
computer hardware and/or software.

HiComponents grants you the right to include the compiled component
in your application, whether COMMERCIAL, SHAREWARE, or FREEWARE,
BUT YOU MAY NOT DISTRIBUTE THIS SOURCE CODE OR ITS COMPILED .DCU IN ANY FORM.

ImageEn, IEvolution and ImageEn ActiveX may not be included in any commercial,
shareware or freeware libraries or components.

email: support@hicomponents.com

http://www.hicomponents.com
*)

unit imageen;

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}


{$R-}
{$Q-}

{$I ie.inc}

{$IFDEF IEINCLUDETIMAGEEN}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Clipbrd, stdctrls, ImageEnView, ImageEnProc, ImageEnIO, hyiedefs, iefft, printers, hyieutils;

type

{!!
<FS>TImageEn

<FM>Description<FN>

This component is included only to preserve compatibility with legacy applications.
We suggest that new implementations use <A TImageEnView> and its associated properties <A TImageEnView.IO> and <A TImageEnView.Proc>.

Starting at version 2.1.7, TImageEn is the same of TImageEnView.
!!}
  TImageEn = class(TImageEnView)
  private
  protected
  public
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
  published
  end;

implementation

uses IEOpenSaveDlg;

{$R-}

/////////////////////////////////////////////////////////////////////////////////////
{$HINTS OFF}

constructor TImageEn.Create(Owner: TComponent);
var
  dummyio, dummyproc: TObject;
begin
  inherited Create(Owner);
  // this precreate embedded TImageEnIo and TImageEnProc. Without this Delphi hang up when put TImageEn on a form

  dummyio := io;
  dummyproc := proc;
end;
{$HINTS ON}


destructor TImageEn.Destroy;
begin
  inherited;
end;


{$ELSE} // IEINCLUDETIMAGEEN

interface
implementation

{$ENDIF}

end.
