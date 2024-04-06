unit ImageDataFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids, Mask,BaseUnit,
  xpWindow, ExtActns, ActnList, DB, ComCtrls;

type
  TFmImageData = class(TMBaseForm)
    Panel1: TPanel;
    DBN1: TDBNavigator;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBETitle: TDBEdit;
    DBENotes: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmImageData: TFmImageData;

implementation

Uses ScanImageDM , YShamsiDate, Dmu;

{$R *.dfm}

procedure TFmImageData.FormShow(Sender: TObject);
begin
   inherited;
   With DMScanImage do
   begin
      
   end;

   DBNav_Setup(DBN1);

end;

procedure TFmImageData.DBN1Click(Sender: TObject; Button: TNavigateBtn);
begin
   inherited;
   DBETitle.SetFocus;
end;

procedure TFmImageData.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

end.
