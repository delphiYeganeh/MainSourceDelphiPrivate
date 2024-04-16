unit xpReg;

interface
{$DEFINE REGXPPACK}


{$I xpDelphi.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls;

const
  cXPPackVersion : String = '2.4';
  cXPPackCopyright : String = 'rhoStyle 2004. All rights reserved.';


{$ifndef REGXPPACK}
function IsDelphiRunning : boolean;
{$ENDIF}

implementation

{$ifndef REGXPPACK}


function IsDelphiRunning : boolean;
var
  H1, H2: Hwnd;
const
  A1 : array[0..12] of char = 'TApplication'#0;
  A2 : array[0..18] of char = 'TPropertyInspector'#0;
  {$IFDEF DELPHI3}
  T1 : array[0..8] of char = 'Delphi 3'#0;
  {$ELSE}
   {$IFDEF DELPHI4}
  T1 : array[0..8] of char = 'Delphi 4'#0;
   {$ELSE}
    {$IFDEF DELPHI5}
  T1 : array[0..8] of char = 'Delphi 5'#0;
    {$ELSE}
     {$IFDEF DELPHI6}
  T1 : array[0..8] of char = 'Delphi 6'#0;
     {$ELSE}
  T1 : array[0..8] of char = 'Delphi 7'#0;
     {$ENDIF}
    {$ENDIF}
   {$ENDIF}
  {$ENDIF}
begin
  H1 := FindWindow(A1, T1);
  H2 := FindWindow(A2, nil);

  Result := (H1 <> 0) and (H2 <> 0);
end;


{$endif}

{--------------------------------About Box-------------------------}

procedure ShowAboutBox;
var
    AboutForm: TForm;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    ProductName2: TLabel;
    ProductName1: TLabel;
    ProgramIcon: TImage;
    Bevel1: TBevel;
    Label1: TLabel;
begin
    AboutForm:=TForm.Create(Application);
   try
      With AboutForm do begin
         Position:=poScreenCenter;
         Height := 260;
         Width := 270;
         BorderStyle:=bsDialog;
         scaled:=False;
         Font.Name:='MS Sans Serif';
         Font.Size := 9;
         BorderStyle:= bsDialog;
         Caption:= 'xpStyle components for Delphi '+cXPPackVersion;
      end;
      BitBtn1:=TBitBtn.Create(AboutForm);
      with BitBtn1 do begin
         BitBtn1.Parent:= AboutForm;
         Width:= 75;
         Height:= 25;
         Left:= 97;
         Left:= (AboutForm.Width shr 1)- (BitBtn1.Width shr 1);
         Top:= 200;
         Kind:= bkOK;
      end;
      Memo1:=TMemo.Create(AboutForm);
      with Memo1 do begin
         Memo1.Parent:=AboutForm;
         Left:= 15;
         Top:= 96;
         Width:= 241;
         Height:= 81;
         Alignment:= taCenter;
         BorderStyle:= bsNone;
         Color:= clBtnFace;
         Ctl3D:= False;
         Lines.Add(cXPPackCopyright);
         Lines.Add('');
         Lines.Add('Thank you for using XP Style components');
{$ifdef REGXPPACK}
         Lines.Add('This is the registered version of XP Style components');
         Lines.Add('http://www.rhoStyle.com');
{$else}
         Lines.Add('This is an unregistered evaluation version for Delphi developers');
         Lines.Add('To register see http://www.rhoStyle.com');
{$endif}
         ReadOnly:= True;
         WordWrap := True;
      end;
      ProductName2 := TLabel.Create(AboutForm);
      with ProductName2 do begin
         ProductName2.Parent:= AboutForm;
         Left:= 30;
         Top:= 16;
         Width:= 172;
         Height:= 29;
         Caption:= 'xpStyle components';
         Font.Color:= clBlue;
         Font.Height:= -22;
         Font.Name:= 'Swis721 BlkEx BT';
         Font.Style:= [fsBold, fsUnderline];
         ParentFont:= False;
      end;
      ProductName1 := TLabel.Create(AboutForm);
      with ProductName1 do begin
         ProductName1.Parent:= AboutForm;
         Left:= 28;
         Top:= 17;
         Width:= 172;
         Height:= 29;
         Caption:= 'xpStyle components';
         Font.Color:= clNavy;
         Font.Height:= -22;
         Font.Name:= 'Swis721 BlkEx BT';
         Font.Style:= [fsBold, fsUnderline];
         ParentFont:= False;
         Transparent:= True;
      end;
    ProgramIcon := TImage.Create(AboutForm);
    with ProgramIcon do begin
         ProgramIcon.Parent := AboutForm;
         Left:= 22;
         Top:= 16;
         Width:= 24;
         Height:= 24;
         AutoSize:= True;
         //Picture.Bitmap.Handle := LoadBitMap(hinstance,'mtLogoBMP');
    end;
      Label1 := TLabel.Create(AboutForm);
      with Label1 do begin
         Label1.Parent:= AboutForm;
         Left:= 42;
         Top:= 56;
         Width:= 226;
         Height:= 16;
         Alignment:= taCenter;
         Caption:= 'XP style controls for Delphi';
         Font.Color:= clNavy;
         Font.Size := 10;
{         Font.Height:= -13; }
         Font.Name:= 'MS Sans Serif';
         Font.Style:= [fsBold, fsUnderline];
      end;
      Bevel1 := TBevel.Create(AboutForm);
      with Bevel1 do begin
         Bevel1.Parent := AboutForm;
         Height:= 184;
         Align := alTop;
      end;
      AboutForm.ShowModal;
   finally
      if Assigned(AboutForm)    then AboutForm.Free;
   end;
end;

initialization

{$IFNDEF REGXPPACK}
   if not IsDelphiRunning then
      ShowAboutBox;
{$endif}


end.
