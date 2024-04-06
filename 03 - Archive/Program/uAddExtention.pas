unit uAddExtention;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls, xpWindow, xpBitBtn, Dialogs,
  ExtCtrls;

type
  TFrAddExtention = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Panel1: TPanel;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Button3: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddExtention: TFrAddExtention;

implementation

uses  Dmu, businessLayer, ADODB, uAddExtentionDialog;

{$R *.dfm}

procedure TFrAddExtention.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddExtention.Action1Execute(Sender: TObject);
begin
  inherited;

  close;
end;

procedure TFrAddExtention.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid2.Color:=dm.GetValue(1009);
end;

procedure TFrAddExtention.Button1Click(Sender: TObject);
begin
  inherited;
  with  dm,Extention do
  begin
    Insert;
    FrAddExtentionDialog:=TFrAddExtentionDialog.Create(self);
    FrAddExtentionDialog.ShowModal;
  end;
end;

procedure TFrAddExtention.Button2Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  if not dm.ExtentionIsSystem.AsBoolean then
    if messageShow(39,True) then
    begin
      with TADOQuery.Create(nil)do
      begin
        Connection := dm.YeganehConnection;
        SQL.Text := 'SELECT count(LetterDataID) from Letterdata WHERE extention = '+ dm.ExtentionExtentionID.AsString;
        Open;
        i := Fields[0].Value;
      end;

      if i=0 then
      begin
        try
          Exec_delete_Extention(dm.ExtentionExtentionID.AsInteger);
          dm.Extention.Close;
          dm.Extention.Open;
        except on e: exception do
          ShowMsgString('«“ «Ì‰ ‰Ê⁄ ›«Ì· œ— ÅÌÊ”  Â« «” ›«œÂ ‘œÂ «”  „Ã«“ »Â Õ–› ‰Ì” Ìœ');
        end;
      end
      else
        ShowMsgString('«“ «Ì‰ ‰Ê⁄ ›«Ì· œ— ÅÌÊ”  Â« «” ›«œÂ ‘œÂ «”  „Ã«“ »Â Õ–› ‰Ì” Ìœ');
    end;
end;

procedure TFrAddExtention.Button3Click(Sender: TObject);
begin
  inherited;
  if dm.ExtentionIsSystem.AsBoolean then exit;
    with  dm,Extention do
    begin
      edit;
      FrAddExtentionDialog:=TFrAddExtentionDialog.Create(self);
      FrAddExtentionDialog.ShowModal;
   end;
end;

end.
