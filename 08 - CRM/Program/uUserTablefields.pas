unit uUserTablefields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpBitBtn, Grids, DBGrids, YDbgrid,
  xpWindow, ExtActns, ActnList, StdCtrls, Buttons, Menus, ExtCtrls;

type
  TFrTableFields = class(TMBaseForm)
    Get_UserFields_By_TableID: TADOStoredProc;
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
    Panel1: TPanel;
    xpBitBtn2: TBitBtn;
    xpBitBtn1: TBitBtn;
    xpBitBtn3: TBitBtn;
    xpBitBtn4: TBitBtn;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
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
begin
  inherited;
with get_userfields_by_tableID do
 begin
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
   FrFieldDialog.DSForm.DataSet:=Get_UserFields_By_TableID;
   FrFieldDialog.ShowModal;
 end;

end;

procedure TFrTableFields.xpBitBtn3Click(Sender: TObject);
begin
   inherited;
   if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',true) then
   begin
      {FieldAccess Õ–› ›Ì·œÂ«Ì ÃœÊ·
      Try
         QryDelFieldAccess.Close;
         QryDelFieldAccess.Parameters.ParamByName('FieldID').Value :=  Get_UserFields_By_TableIDID.AsInteger;
         QryDelFieldAccess.ExecSQL; 
      Finally

      End;
     }
      get_userfields_by_tableID.Delete;
   end;
end;

end.
