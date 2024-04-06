unit FUserShortCut;

interface

uses
  Windows, Messages, SysUtils,BaseUnit, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, Buttons, Grids, DBGrids, YDbgrid,
  xpBitBtn, xpWindow, ExtActns, ActnList, ExtCtrls;

type
  TUserShortCutF = class(TMBaseForm)
    DUserShortCut: TDataSource;
    Panel1: TPanel;
    Button1: TBitBtn;
    Button2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserShortCutF: TUserShortCutF;

implementation

uses Dmu, UAddShortCut;

{$R *.dfm}

procedure TUserShortCutF.Button2Click(Sender: TObject);
begin

 dm.UserShortCut.insert;
 dm.UserShortCutUserID.AsInteger:=_userid;
 FrAddShortCut:=TFrAddShortCut.Create(Application);
 FrAddShortCut.ShowModal;
end;

procedure TUserShortCutF.Button1Click(Sender: TObject);
begin
close;

end;

procedure TUserShortCutF.BitBtn1Click(Sender: TObject);
begin
 dm.UserShortCut.Edit;
 FrAddShortCut:=TFrAddShortCut.Create(Application);
 FrAddShortCut.ShowModal;

end;

procedure TUserShortCutF.BitBtn2Click(Sender: TObject);
begin
   if messageShow(39,True) then
    dm.UserShortCut.delete;

end;

end.
