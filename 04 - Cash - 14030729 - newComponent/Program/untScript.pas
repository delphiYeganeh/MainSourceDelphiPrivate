unit untScript;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TfrmScript = class(TForm)
    Report_DelayedLoanPayment: TMemo;
    ADOQueryScript: TADOQuery;
    ADOQueryAux: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CreateSmsTextForSumPayment: TMemo;
    GET_NEWACCOUNTNO_New: TMemo;
    procedure RunScript(Tag : Integer);
    procedure DatabaseVersion;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmScript: TfrmScript;

implementation

uses Dmu;

{$R *.dfm}

procedure TfrmScript.DatabaseVersion;
begin
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
 ADOQueryAux.SQL.Text := 'Select * From DBUpdate';
 ADOQueryAux.Open;
 if ADOQueryAux.IsEmpty then
  begin
   ADOQueryAux.Close;
   ADOQueryAux.SQL.Text := 'Insert Into DBUpdate(DBVersion, Tag) Values( ' + QuotedStr('Version 1.0.0.0') +' ,1)';
   ADOQueryAux.ExecSQL
  end;
 RunScript(1);
end;

procedure TfrmScript.RunScript(Tag : Integer);
var
 I : Integer;
 SqlText : String;
begin
 for I := 0 to ComponentCount - 1 do
  begin
  if Tag = 1 then
   begin
    if Components[I] is TMemo then
     begin
      try
       case StrToInt((Components[i] as TMemo).Hint) of
        3 : SqlText := 'IF OBJECT_ID(' + QuotedStr((Components[i] as TMemo).Name) + ') IS NOT NULL Drop Procedure ' + (Components[i] as TMemo).Name;
       end;
       ADOQueryScript.Close;
       ADOQueryScript.SQL.Text := SqlText;
       ADOQueryScript.ExecSQL;
       ADOQueryScript.Close;
       ADOQueryScript.SQL.Text := (Components[i] as TMemo).Text;
       ADOQueryScript.ExecSQL;
      except
       ShowMessage('Error ' + (Components[i] as TMemo).Name);
       Abort;
      end;
     end;
   end
  else
   begin
    if Components[I] is TMemo then
     if (Components[i] as TMemo).Tag = Tag then
      begin
       try
        case StrToInt((Components[i] as TMemo).Hint) of
         3 : SqlText := 'Drop Procedure ' + (Components[i] as TMemo).Name;
        end;
        ADOQueryScript.Close;
        ADOQueryScript.SQL.Text := SqlText;
        ADOQueryScript.ExecSQL;
        ADOQueryScript.Close;
        ADOQueryScript.SQL.Text := (Components[i] as TMemo).Text;
        ADOQueryScript.ExecSQL;
       except
        ShowMessage('Error' + (Components[i] as TMemo).Name);
        Abort;
       end;
      end;
   end;
  end;
end;

end.
