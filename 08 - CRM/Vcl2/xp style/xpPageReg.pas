unit xpPageReg;

interface
{$I xpDelphi.inc}

uses xpReg,
  Windows, Messages, SysUtils, Classes,
   {$IFDEF DELPHI6UP} DesignIntf, DesignEditors, {$ELSE} DsgnIntf, {$ENDIF}ComCtrls;


type
  TxpPageControlEditor = class(TDefaultEditor)
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

procedure Register;

implementation

uses xpPages;

procedure TxpPageControlEditor.ExecuteVerb(Index: Integer);
var
  PageControl: TxpPageControl;
  Page: TxpTabSheet;
  {$IFDEF DELPHI3}
  ADesigner: TFormDesigner;
  {$ELSE}
    {$IFDEF DELPHI6UP}
  ADesigner: IDesigner;
    {$ELSE}
  ADesigner: IFormDesigner;
    {$ENDIF}
  {$ENDIF}
begin
  if Component is TTabSheet then
    PageControl := TxpTabSheet(Component).PageControl as TxpPageControl
  else
    PageControl := TxpPageControl(Component);
  if PageControl <> nil then
  begin
    ADesigner := Self.Designer;
    if Index = 0 then
    begin
      {$IFDEF DELPHI6UP}
      Page := TxpTabSheet.Create(ADesigner.Root);
      {$ELSE}
      Page := TxpTabSheet.Create(ADesigner.Form);
      {$ENDIF}
      try
        Page.Name := ADesigner.UniqueName(TxpTabSheet.ClassName);
        Page.Parent := PageControl;
        Page.PageControl := PageControl
      except
        Page.Free;
        raise
      end;
      PageControl.ActivePage := Page;
      PageControl.UpdateGlyphs
    end else begin
      Page := PageControl.FindNextPage(PageControl.ActivePage,Index = 1, False) as TxpTabSheet;
      if (Page <> nil) and (Page <> PageControl.ActivePage) then
        PageControl.ActivePage := Page
    end;

    ADesigner.SelectComponent(Page);
    ADesigner.Modified
  end
end;

function TxpPageControlEditor.GetVerb(Index: Integer): string;
begin
  case Index of
    0 : Result := 'New XP page';
    1 : Result := 'Next page';
    2 : Result := 'Previous page'
  end
end;

function TxpPageControlEditor.GetVerbCount: Integer;
begin
  Result := 3
end;

procedure Register;
begin
  RegisterClasses([TxpTabSheet]);
  RegisterComponents ('XP Controls', [TxpPageControl]);
  RegisterComponentEditor(TxpPageControl, TxpPageControlEditor);
  RegisterComponentEditor(TxpTabSheet, TxpPageControlEditor)
end;

end.
