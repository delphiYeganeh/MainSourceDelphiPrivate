unit DBGridRg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Registry;

type
  TDBGridRg = class(TDBGrid)
  private
    { Private declarations }
    FRegistryKeyName:string;

  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner : TComponent ); override;
    procedure SaveReg;
    procedure LoadReg;
  published
    { Published declarations }
    property RegistryKeyName:string read FRegistryKeyName write FRegistryKeyName;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Data Controls', [TDBGridRg]);
end;

constructor TDBGridRg.Create(AOwner : TComponent );
begin
  inherited Create(AOwner);
end;

procedure TDBGridRg.SaveReg;
var
  TheReg:TRegistry;
  Index:integer ;

begin
  TheReg:=TRegistry.Create;
  try
    TheReg.RootKey:=HKEY_CURRENT_USER;
    if RegistryKeyName='' then
      RegistryKeyName:='Grid';
    TheReg.OpenKey('\software\'+RegistryKeyName,True);
    for index := 0 to Columns.Count-1 do
    begin
      TheReg.WriteString('Column'+IntToStr(index),
                         DataSource.DataSet.Fields[index].FieldName+','+
                         IntToStr(Columns.Items[index].Width));
    end;
  finally
    TheReg.Free;
  end;
end;

procedure TDBGridRg.LoadReg;
var
  TheReg:TRegistry;
  Index:integer ;
  RegString:string;
  TheField:TField;
  PosComma:integer;
  TheFieldName:string;
  TheFieldWidth:integer;
begin
  TheReg:=TRegistry.Create;
  try
    TheReg.RootKey:=HKEY_CURRENT_USER;
    if RegistryKeyName='' then
      RegistryKeyName:='Grid';
    TheReg.OpenKey('\software\'+RegistryKeyName,False);
    for index := 0 to Columns.Count-1 do
    begin
      RegString:=TheReg.ReadString('Column'+IntToStr(index));
      PosComma:=pos(',',RegString);
      if PosComma>0 then
      begin
        TheFieldName:=copy(RegString,1,PosComma-1);
        TheFieldWidth:=StrToInt(copy(RegString,PosComma+1,20));
        if TheFieldName>'' then
        begin
          TheField:=DataSource.Dataset.FindField(TheFieldName);
          if TheField<>nil then
          begin
            TheField.Index:=index;
            Columns.Items[index].Width:=TheFieldWidth;
          end;
        end;
      end;
    end;
  finally
    TheReg.Free;
  end;
end;

end.
