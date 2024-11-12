unit ImageDataFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids, Mask,BaseUnit,
   ExtActns, ActnList, DB, ComCtrls, Menus, AppEvnts, AdvGlowButton;

type
  TFmImageData = class(TMBaseForm)
    Panel1: TPanel;
    DBN1: TDBNavigator;
    Panel2: TPanel;
    Panel3: TPanel;
    xpBitBtn1: TAdvGlowButton;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBETitle: TDBEdit;
    DBENotes: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    pnlMain: TPanel;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmImageData: TFmImageData;

implementation

Uses ScanImageFM , YShamsiDate, Dmu;

{$R *.dfm}

procedure TFmImageData.xpBitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFmImageData.FormShow(Sender: TObject);
begin
   inherited;
   With FMScanImage do
   begin
      
   end;

   DBNav_Setup(DBN1);

end;

procedure TFmImageData.DBN1Click(Sender: TObject; Button: TNavigateBtn);
begin
   inherited;
   DBETitle.SetFocus;
end;

end.
