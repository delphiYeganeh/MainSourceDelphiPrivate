unit UTemplateGroup;

interface

uses
jpeg, BaseUnit, DBActns, ActnMan, StdCtrls, DBLookupEdit, Grids, DBGrids,
  YDbgrid, ComCtrls, DBTreeView, Mask, DBCtrls, Controls, Buttons,
  Graphics, ExtCtrls, Classes, ActnList, DB,dialogs,SysUtils,Forms,
  ExtActns, ADODB, XPStyleActnCtrls, xpWindow, xpBitBtn;

type
  TFrUTemplateGroup = class(TMBaseForm)
    DBGrid2: TYDBGrid;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    Button3: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    ActionManager1: TActionManager;
    AClose: TAction;
    AInsert: TAction;
    Adelete: TAction;
    procedure ACloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
  public
  end;

var
  FrUTemplateGroup: TFrUTemplateGroup;

implementation
uses   UMain,    businessLayer, ArchiveDialog, Dmu;

{$R *.dfm}
procedure TFrUTemplateGroup.ACloseExecute(Sender: TObject);
begin
  inherited;
close;
end;


procedure TFrUTemplateGroup.FormCreate(Sender: TObject);
begin
  inherited;
 DBGrid2.Color:=dm.GetValue(1009);
end;



procedure TFrUTemplateGroup.Button1Click(Sender: TObject);
 var s: string;
begin
  inherited;
  if not dm.Y_InputQuery('���� ����','',s) then exit;
   with  dm,TemplateGroup do
    begin
     Insert;
     TemplateGroupTemplateGroupTitle.AsString:=s;
     post;
   end;
end;


procedure TFrUTemplateGroup.Button2Click(Sender: TObject);
 var i: integer;
begin
  inherited;
 i:=Exec_NumberOfTemplate_By_TemplateGroupID(dm.TemplateGroupTemplateGroupID.AsInteger);
  if i>0 then
   messageShowString(inttostr(i)+'  '+ Get_sysAppMessage(87),false)
  else
  if messageShowString(Get_sysAppMessage(88)+' "'+dm.TemplateGroupTemplateGroupTitle.AsString+'" '+Get_sysAppMessage(37),true)then   dm.TemplateGroup.Delete;
end;

procedure TFrUTemplateGroup.Button3Click(Sender: TObject);
 var s: string ;
begin
  inherited;
   with  dm,TemplateGroup do
  if not Y_InputQuery('���� ����',dm.TemplateGroupTemplateGroupTitle.AsString,s) then exit else
    begin
     edit;
     TemplateGroupTemplateGroupTitle.AsString:=s;
     post;
   end;

end;

procedure TFrUTemplateGroup.BitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
