unit UInputTeacher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ExtCtrls, DBCtrls, Mask, DB, ExtActns,
  ActnList, UemsVCL, Buttons, ADODB, DBActns, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, ActnMenus, xpBitBtn, xpWindow;

type
  TFrInputTeacher = class(TMBaseForm)
    Select_Teacher_by_TeacherID: TADOStoredProc;
    DSelect_Teacher_by_TeacherID: TDataSource;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Action1: TAction;
    xpBitBtn1: TxpBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Select_Teacher_by_TeacherIDTeacherID: TSmallintField;
    Select_Teacher_by_TeacherIDTeacherCode: TStringField;
    Select_Teacher_by_TeacherIDFirstName: TWideStringField;
    Select_Teacher_by_TeacherIDLastName: TWideStringField;
    Select_Teacher_by_TeacherIDFullName: TWideStringField;
    Select_Teacher_by_TeacherIDTitle: TWideStringField;
    Select_Teacher_by_TeacherIDPhoneNumbers: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure GetTeacher_BYTeacherID(TeacherID: integer);
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      constructor create(AOwner: TComponent;TeacherID:integer = 0);reintroduce;virtual;    
  end;

var
  FrInputTeacher: TFrInputTeacher;

implementation

uses dmu, UMainForm;

{$R *.dfm}

procedure TFrInputTeacher.Button1Click(Sender: TObject);
begin
  inherited;
close;
end;

constructor TFrInputTeacher.create(AOwner: TComponent; TeacherID: integer);
begin
  inherited create(AOwner);
  if TeacherID <> 0 then GetTeacher_BYTeacherID(TeacherID);
end;

procedure TFrInputTeacher.GetTeacher_BYTeacherID(TeacherID: integer);
begin
  inherited;
with Select_Teacher_by_TeacherID do
 begin
   close;
   Parameters.ParamByName('@TeacherID').Value:=TeacherID;
   Open;
 end;
end;

procedure TFrInputTeacher.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
 if Select_Teacher_by_TeacherID.State  in [dsedit,dsinsert] then
  Select_Teacher_by_TeacherID.Post;
close;
end;

end.
