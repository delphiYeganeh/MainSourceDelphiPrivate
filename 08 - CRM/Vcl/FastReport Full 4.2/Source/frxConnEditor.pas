
{******************************************}
{                                          }
{             FastReport v4.0              }
{          Connection list editor          }
{                                          }
{         Copyright (c) 1998-2007          }
{         by Alexander Tzyganenko,         }
{            Fast Reports Inc.             }
{                                          }
{******************************************}

unit frxConnEditor;

interface

{$I frx.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, frxClass;

type
  TfrxConnEditorForm = class(TForm)
    NewB: TButton;
    DeleteB: TButton;
    ConnLV: TListView;
    OKB: TButton;
    Panel: TPanel;
    ExpressionB: TSpeedButton;
    CancelB: TButton;
    NameE: TEdit;
    ConnE: TEdit;
    OwnerE: TEdit;
    procedure ConnLVSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure NewBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DeleteBClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure ExpressionBClick(Sender: TObject);
    procedure OKBClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Report: TfrxReport;
  end;


implementation

{$R *.DFM}

uses frxDesgn, frxRes, IniFiles, Registry;


procedure TfrxConnEditorForm.FormShow(Sender: TObject);
var
  i: Integer;
  ini: TRegistry;
  sl: TStringList;
  li: TListItem;
begin
  Caption := frxGet(5800);
  NewB.Caption := frxGet(5801);
  DeleteB.Caption := frxGet(5802);
  OKB.Caption := frxGet(1);
  CancelB.Caption := frxGet(2);
  ConnLV.Columns[0].Caption := frxResources.Get('cpName');
  ConnLV.Columns[2].Caption := frxResources.Get('cpConnStr');

  NameE.Height := 19;
  ConnE.Height := 19;
  OwnerE.Height := 19;
  Panel.Visible := False;

  ini := TRegistry.Create;
  try
    ini.RootKey := HKEY_LOCAL_MACHINE;
    sl := TStringList.Create;
    try
      if ini.OpenKeyReadOnly(DEF_REG_CONNECTIONS) then
      begin
        ini.GetValueNames(sl);
        for i := 0 to sl.Count - 1 do
        begin
          li := ConnLV.Items.Add;
          li.Caption := sl[i];
          li.SubItems.Add('System');
          li.SubItems.Add(Ini.ReadString(sl[i]));
        end;
      end;
      ini.RootKey := HKEY_CURRENT_USER;
      if ini.OpenKeyReadOnly(DEF_REG_CONNECTIONS) then
      begin
        ini.GetValueNames(sl);
        for i := 0 to sl.Count - 1 do
        begin
          li := ConnLV.Items.Add;
          li.Caption := sl[i];
          li.SubItems.Add('User');
          li.SubItems.Add(Ini.ReadString(sl[i]));
        end;
      end;
    finally
      sl.Free;
    end;
  finally
    ini.Free;
  end;
end;

procedure TfrxConnEditorForm.FormHide(Sender: TObject);
var
  i: Integer;
  ini: TRegistry;
  li: TListItem;
begin
  if ModalResult <> mrOk then Exit;
  ini := TRegistry.Create;
  try
    ini.RootKey := HKEY_CURRENT_USER; // HKEY_LOCAL_MACHINE;
    ini.DeleteKey(DEF_REG_CONNECTIONS);
    if ini.OpenKey(DEF_REG_CONNECTIONS, true) then
      for i := 0 to ConnLV.Items.Count - 1 do
      begin
        li := ConnLV.Items[i];
        if li.SubItems[0] <> 'System' then
          ini.WriteString(li.Caption, li.SubItems[1]);
      end;
  finally
    ini.Free;
  end;
end;

procedure TfrxConnEditorForm.NewBClick(Sender: TObject);
var
  li: TListItem;
begin
  li := ConnLV.Items.Add;
  li.Caption := 'New name';
  li.SubItems.Add('User');
  li.SubItems.Add('');
  ConnLV.Selected := li;
  NameE.SetFocus;
end;

procedure TfrxConnEditorForm.DeleteBClick(Sender: TObject);
begin
  ConnLV.Selected.Free;
end;

procedure TfrxConnEditorForm.ConnLVSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  if Selected then
  begin
    Panel.Visible := True;
    Panel.Top := ConnLV.Top + Item.Top;
    NameE.Text := Item.Caption;
    OwnerE.Text := Item.SubItems[0];
    ConnE.Text := Item.SubItems[1];
    if OwnerE.Text = 'System' then
    begin
      DeleteB.Enabled := false;
      ExpressionB.Visible := false;
      ConnE.Width := 300;
    end
    else
    begin
      DeleteB.Enabled := true;
      ExpressionB.Visible := true;
      ConnE.Width := 281;
    end
  end
  else
  begin
    Panel.Visible := False;
    Item.Caption := NameE.Text;
    Item.SubItems[0] := OwnerE.Text;
    Item.SubItems[1] := ConnE.Text;
  end;
end;

procedure TfrxConnEditorForm.ExpressionBClick(Sender: TObject);
begin
  if Assigned(Report) and Assigned(Report.OnEditConnection) then
    ConnE.Text := Report.OnEditConnection(ConnE.Text);
end;

procedure TfrxConnEditorForm.OKBClick(Sender: TObject);
begin
  ConnLV.Selected := nil;
end;

procedure TfrxConnEditorForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    frxResources.Help(Self);
end;

end.


//862fd5d6aa1a637203d9b08a3c0bcfb0