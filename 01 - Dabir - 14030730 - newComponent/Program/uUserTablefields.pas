unit uUserTablefields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  xpWindow, ExtActns, ActnList, StdCtrls, Buttons, Menus, AppEvnts,
  ExtCtrls, AdvGlowButton;

type
  TFrTableFields = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    xpBitBtn1: TAdvGlowButton;
    xpBitBtn2: TAdvGlowButton;
    xpBitBtn3: TAdvGlowButton;
    Get_UserFields_By_TableID: TADOStoredProc;
    xpBitBtn4: TAdvGlowButton;
    Get_UserFields_By_TableIDID: TAutoIncField;
    Get_UserFields_By_TableIDDescription: TWideStringField;
    Get_UserFields_By_TableIDFieldTypeID: TWordField;
    Get_UserFields_By_TableIDReferenceTableID: TIntegerField;
    Get_UserFields_By_TableIDorder: TIntegerField;
    Get_UserFields_By_TableIDFieldTypeTitle: TWideStringField;
    Get_UserFields_By_TableIDReferenceTanleTitle: TWideStringField;
    Get_UserFields_By_TableIDTableID: TIntegerField;
    Get_UserFields_By_TableIDFieldName: TStringField;
    QryDelFieldAccess: TADOQuery;
    pnlMain: TPanel;
    Panel1: TPanel;
    procedure xpBitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableID: integer;
  end;

var
  FrTableFields: TFrTableFields;

implementation

uses Dmu, UFieldDialog;

{$R *.dfm}

procedure TFrTableFields.xpBitBtn4Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrTableFields.FormShow(Sender: TObject);
begin
  inherited;
with get_userfields_by_tableID do
 begin
   close;
   Parameters.ParamByName('@TableID').Value:=TableID;
   open;
 end;
end;

procedure TFrTableFields.xpBitBtn1Click(Sender: TObject);
var
  ID:Integer;
begin
  inherited;
  ID:= Get_UserFields_By_TableIDID.AsInteger;
with get_userfields_by_tableID do
 begin
   Close;
   Open;
   Get_UserFields_By_TableID.Locate('ID',ID,[]);
   edit;

   FrFieldDialog:=TFrFieldDialog.Create(Application);

   FrFieldDialog.ShowModal;

   end;
   

end;

procedure TFrTableFields.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
 with get_userfields_by_tableID do
 begin
   Insert;
   get_userfields_by_tableIDTableID.AsInteger:=TableID;
   get_userfields_by_tableIDFieldName.AsString:='Field';
   FrFieldDialog:=TFrFieldDialog.Create(Application);
   FrFieldDialog.ShowModal;
 end;

end;

procedure TFrTableFields.xpBitBtn3Click(Sender: TObject);
begin
   inherited;
   if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',true) then
   begin
      {Ranjbar}//FieldAccess Õ–› ›Ì·œÂ«Ì ÃœÊ·
      Try
         QryDelFieldAccess.Close;
         QryDelFieldAccess.Parameters.ParamByName('FieldID').Value :=  Get_UserFields_By_TableIDID.AsInteger;
         QryDelFieldAccess.ExecSQL; 
      Finally

      End;
      //---
      get_userfields_by_tableID.Delete;
   end;
end;


end.
