unit uCiaTrayIcon;

{  Version history

   1.00 3 nov 2002
      - first official release into the public domain
      - created an icon for the thing
      - added CiaHideForms to make easy 'nice work' user interface
      - created TCiaBtnForm and TCiaTrayMainForm for easy creation of new
        projects that needed to run in tray.
}

interface

uses
   Classes, Menus, Windows, Messages, Forms, ShellAPI, SysUtils, Controls;

const
   CIA_ICON_VERSION = '1.00';
   WM_CIA_ICONMSG   = WM_USER + 1;

type
  TCiaTray = class(TComponent)
  private
    FVersion: string;
    FHint: string;
    FHandle: HWND;
    FIconData: TNotifyIconData;
    FPopupMenu: TPopupMenu;
    FOnDblClick: TNotifyEvent;
    procedure SetVersion(Value: string);
    procedure WndProc(var MsgRec: TMessage);
    procedure WMCiaIconMsg(var Msg: TMessage); message WM_CIA_ICONMSG;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
  published
    property Hint: string read FHint write FHint;
    property PopupMenu: TPopupMenu read FPopupMenu write FPopupMenu;
    property Version: string read FVersion write SetVersion;
    property OnDblClick: TNotifyEvent read FOnDblClick write FOnDblClick;
  end;

type
  TCiaBtnForm = class(TForm)
  protected
    procedure CreateParams(var params: TCreateParams); override;
  end;

type
  TCiaTrayMainForm = class(TCiaBtnForm)
  public
    constructor Create(AOwner: TComponent); override;
  end;

procedure CiaHideForms(F: array of TForm);
procedure Register;

implementation

procedure Register;
begin
   RegisterComponents('Yeganeh', [TCiaTray]);
end;

//------------------------------------------------------------------------------
//---- globals -----------------------------------------------------------------
//------------------------------------------------------------------------------
procedure CiaHideForms(F: array of TForm);
var
   n: integer;
begin
   for n := Low(F) to High(F) do
      if F[n].Visible then
         PostMessage(F[n].Handle, WM_CLOSE, 0, 0);
end;

//------------------------------------------------------------------------------
//---- TCiaBtnForm -------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TCiaBtnForm.CreateParams(var params: TCreateParams);
begin
   inherited;
   params.ExStyle   := params.ExStyle or WS_EX_APPWINDOW; // put form on the taskbar
   //params.WndParent := GetDesktopwindow;
end;

//------------------------------------------------------------------------------
//---- TCiaTrayMainForm --------------------------------------------------------
//------------------------------------------------------------------------------
constructor TCiaTrayMainForm.Create(AOwner: TComponent);
begin
   inherited;
   SetWindowLong(Application.Handle,
                 GWL_EXSTYLE,
                 GetWindowLong(Application.Handle, GWL_EXSTYLE)
                 or WS_EX_TOOLWINDOW         // remove app from the Alt+Tab window
                 and not WS_EX_APPWINDOW);   // remove app from the taskbar
end;

//------------------------------------------------------------------------------
//---- TCiaTray ----------------------------------------------------------------
//------------------------------------------------------------------------------
constructor TCiaTray.Create(AOwner: TComponent);
begin
   inherited;
   FVersion := CIA_ICON_VERSION;
   if not (csDesigning in ComponentState) then begin
      FHandle  := AllocateHWND(WndProc);
      Application.ShowMainForm := False;
      with FIconData do begin
         cbSize := SizeOf(FIconData);
         Wnd    := FHandle;
         uID    := $DEDB;
         uFlags := NIF_MESSAGE or NIF_ICON or NIF_TIP;
         hIcon  := Application.Icon.Handle;
         uCallbackMessage := WM_CIA_ICONMSG;
         if FHint = '' then
            FHint := Application.Title;
         StrCopy(szTip, PChar(FHint));
      end;
      Shell_NotifyIcon(NIM_Add, @FIconData);
   end;
end;

//------------------------------------------------------------------------------
destructor TCiaTray.Destroy;
begin
   if not (csDesigning in ComponentState) then begin
      Shell_NotifyIcon(NIM_DELETE, @FIconData);
      DeAllocateHWND(FHandle);
   end;
   inherited;
end;

//------------------------------------------------------------------------------
procedure TCiaTray.SetVersion(Value: string);
begin
end;

//------------------------------------------------------------------------------
procedure TCiaTray.WndProc(var MsgRec: TMessage);
begin
   with MsgRec do
      case Msg of
         WM_CIA_ICONMSG: WMCiaIconMsg(MsgRec);
         else
            Result := DefWindowProc(FHandle, Msg, wParam, lParam);
      end;
end;

//------------------------------------------------------------------------------
procedure TCiaTray.WMCiaIconMsg(var Msg: TMessage);
var
   P: TPoint;
   n: integer;
begin
   case Msg.LParam of
      WM_RBUTTONUP: begin
           SetForegroundWindow(FHandle);
           GetCursorPos(P);
           if Assigned(PopupMenu) then
              PopupMenu.Popup(P.x, P.y);
       end;
       WM_LBUTTONDBLCLK: begin
         if Assigned(PopupMenu) then begin
            for n := 0 to FPopupMenu.Items.Count - 1 do
               if FPopupMenu.Items[n].Default then
                  break;
            if n < FPopupMenu.Items.Count then
               FPopupMenu.Items[n].Click;
         end;
         if Assigned(FOnDblClick) then
            FOnDblClick(Self);
       end;
  end;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
end.
