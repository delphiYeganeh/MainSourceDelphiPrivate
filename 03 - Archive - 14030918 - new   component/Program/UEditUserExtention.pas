unit UEditUserExtention;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB,FileCtrl, StdCtrls, ExtActns, XPStyleActnCtrls, Dialogs,
  xpWindow, xpBitBtn, ExtCtrls, TntDialogs, AdvGlowButton;

type
  TFrEditUserExtention = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    Action2: TAction;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Panel2: TPanel;
    DBGrid2: TYDBGrid;
    TntOpenDialog: TTntOpenDialog;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEditUserExtention: TFrEditUserExtention;

implementation

uses  Dmu, businessLayer;

{$R *.dfm}

procedure TFrEditUserExtention.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrEditUserExtention.Action1Execute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrEditUserExtention.FormCreate(Sender: TObject);
begin
  inherited;
  with dm , get_UserExtention_by_UserID do
  begin
    close;
    Parameters.ParamByName('@userID').Value:=_userid;
    Open;
  end;
  DBGrid2.Color:=dm.GetValue(1009);
end;

procedure TFrEditUserExtention.Button3Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  with  dm,get_UserExtention_by_UserID do
  if OpenDialog.Execute then
  begin
    edit;
    { if FileExists(_ApplicationPath+'tmpFile')then
           DeleteFile(pchar(_ApplicationPath+'tmpFile'));

            if CopyFileW( replacePWC(StringToPWide(TntOpenDialog.filename,i)), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
               Get_LetterWordFileImage.LoadFromFile(_ApplicationPath+'tmpFile')
            else if CopyFileW( StringToPWide(TntOpenDialog.filename,i), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
               Get_LetterWordFileImage.LoadFromFile(_ApplicationPath+'tmpFile')
            else
               ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');   }
    get_UserExtention_by_UserIDReaderApplication.AsString:=OpenDialog.FileName;
    post;
  end;
end;

end.
