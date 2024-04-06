//Hamed_Ansari_990713
unit untScript;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TfrmScript = class(TForm)
    Report_UserLog: TMemo;
    ADOQueryScript: TADOQuery;
    ADOQueryAux: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure RunScript(Tag : Integer);
    procedure DatabaseVersion;
  private
    { Private declarations }
  public
   DBVersion, UserDBVersion : Integer;
  end;

var
  frmScript: TfrmScript;

implementation

uses Dmu;

{$R *.dfm}

procedure TfrmScript.DatabaseVersion;
var
  WhileDBVersion : Integer;
begin
  DBVersion := 2;
  ADOQueryAux.Close;
  ADOQueryAux.SQL.Text := ' if OBJECT_ID(''DBUpdate'') IS NULL ' +
                           ' CREATE TABLE [dbo].[DBUpdate]( ' +
                           ' [Id] [int] IDENTITY(1,1) NOT NULL, ' +
                           ' [DBVersion] [varchar](50) NULL, ' +
                           ' [Tag] [int] NULL, ' +
                           ' CONSTRAINT [PK_DBUpdate] PRIMARY KEY CLUSTERED ' +
                           ' ( ' +
                           '	[Id] ASC ' +
                           ' )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ' +
                           ' ) ON [PRIMARY]';
  ADOQueryAux.ExecSQL;
  ADOQueryAux.Close;
  ADOQueryAux.SQL.Text := 'Select Top 1 * From DBUpdate Order By Tag Desc';
  ADOQueryAux.Open;
  UserDBVersion := ADOQueryAux.FieldByName('Tag').AsInteger;
  WhileDBVersion := DBVersion - UserDBVersion;
  if not WhileDBVersion <= 0 then
    while not (WhileDBVersion = DBVersion) do
    begin
      Inc(WhileDBVersion);
      RunScript(WhileDBVersion);
      ADOQueryAux.Close;
      ADOQueryAux.SQL.Text := 'Insert Into DBUpdate(DBVersion, Tag) Values( ' + QuotedStr('Version ' + IntToStr(WhileDBVersion) + '.0.0.0') +' ,' + IntToStr(WhileDBVersion) + ')';
      ADOQueryAux.ExecSQL;
    end;
end;

procedure TfrmScript.RunScript(Tag : Integer);
var
  I : Integer;
  SqlText : String;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TMemo) and (((Components[I] as TMemo).Tag) = Tag)   then
    begin
      try
        case StrToInt((Components[i] as TMemo).Hint) of
          3 : SqlText := 'IF OBJECT_ID(' + QuotedStr((Components[i] as TMemo).Name) + ') IS NOT NULL Drop Procedure ' + (Components[i] as TMemo).Name;
        end;
        ADOQueryScript.SQL.Clear;
        ADOQueryScript.Close;
        ADOQueryScript.SQL.Text := SqlText;
        ADOQueryScript.ExecSQL;
        ADOQueryScript.SQL.Clear;
        ADOQueryScript.Close;
        ADOQueryScript.SQL.Text := (Components[i] as TMemo).Lines.Text;
        ADOQueryScript.ExecSQL;
      except
        ShowMessage('Error ' + (Components[i] as TMemo).Name);
        Abort;
      end;
    end;
  end
end;

end.
