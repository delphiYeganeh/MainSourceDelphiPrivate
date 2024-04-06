unit FirstArtGroupFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, BaseUnit, ExtActns, ActnList, DB;

type
  TFMFirstArtGroup = class(TMBaseForm)
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    LabHelp: TLabel;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DBLkCBStore: TDBLookupComboBox;
    DBEName: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    
  public

  end;

var
  FMFirstArtGroup: TFMFirstArtGroup;

implementation

Uses FirstArtGroupDM,Dmu,YShamsiDate, StoreFM;

{$R *.dfm}

procedure TFMFirstArtGroup.FormCreate(Sender: TObject);
begin
   inherited;
   DMFirstArtGroup := TDMFirstArtGroup.Create(Self);
   DBNav_Setup(DBNavigator1);

end;

procedure TFMFirstArtGroup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   Form_SetShortCut(Self,DBNavigator1,Nil,Nil,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;

procedure TFMFirstArtGroup.FormShow(Sender: TObject);
begin
   inherited;
   With DMFirstArtGroup do
   begin
      QrStore.Open;
      DBLkCBStore.KeyValue := QrStoreStore_ID.AsInteger;
      QrFirstArtGroup.Close;
      QrFirstArtGroup.Open;
   end;
   //Form_Animate(Self,100);
end;


procedure TFMFirstArtGroup.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFMFirstArtGroup.DBNavigator1BeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
   inherited;
   DBLkCBStore.SetFocus;
end;

procedure TFMFirstArtGroup.SpeedButton4Click(Sender: TObject);
begin
   inherited;
   FMStore := TFMStore.Create(Self); // ⁄—Ì› «‰»«—
   FMStore.ShowModal;
   With DMFirstArtGroup do
   begin
      QrStore.Close;
      QrStore.Open;
   end;
end;

procedure TFMFirstArtGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   With DMFirstArtGroup do
   begin

   end;
   Qry_CloseAllQry(DMFirstArtGroup);
end;

Initialization
   RegisterClass(TFMFirstArtGroup);

end.
