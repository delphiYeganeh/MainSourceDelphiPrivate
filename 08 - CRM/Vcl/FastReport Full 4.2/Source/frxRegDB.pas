
{******************************************}
{                                          }
{             FastReport v4.0              }
{            Registration unit             }
{                                          }
{         Copyright (c) 1998-2007          }
{         by Alexander Tzyganenko,         }
{            Fast Reports Inc.             }
{                                          }
{******************************************}

unit frxRegDB;

{$I frx.inc}

interface


procedure Register;

implementation

uses
  Windows, Messages, SysUtils, Classes, Forms, Controls,
{$IFNDEF Delphi6}
  DsgnIntf,
{$ELSE}
  DesignIntf, DesignEditors,
{$ENDIF}
  frxDBSet,
  frxCustomDB,
  frxCustomDBEditor,
  frxCustomDBRTTI,
  frxEditMD,
  frxEditQueryParams;


{-----------------------------------------------------------------------}
procedure Register;
begin
  RegisterComponents('FastReport 4.0', [TfrxDBDataset]);
end;

end.


//862fd5d6aa1a637203d9b08a3c0bcfb0