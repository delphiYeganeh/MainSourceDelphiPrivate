unit AllScanImageFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dbcgrids, ExtCtrls, ieview, imageenview, ievect,
  dbimageenvect, BaseUnit, Buttons, DBCtrls, dbimageen;

type
  TFmAllScanImage = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Button1: TButton;
    uuVectAll: TImageEnDBVect;
    DBN1: TDBNavigator;
    DBVectAll: TImageEnDBView;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure uuVectAllDblClick(Sender: TObject);
  private
    { Private declarations }
  public
   
  end;

var
  FmAllScanImage: TFmAllScanImage;

implementation

Uses ScanImageDM , YShamsidate ;

{$R *.dfm}

procedure TFmAllScanImage.Button1Click(Sender: TObject);
begin
   Close;
end;

procedure TFmAllScanImage.FormShow(Sender: TObject);
begin
  inherited;
  DBVectAll.Fit;
  DBNav_Setup(DBN1);
end;

procedure TFmAllScanImage.uuVectAllDblClick(Sender: TObject);
begin
   inherited;
   if DBCtrlGrid1.ColCount = 1 then
   begin
      DBCtrlGrid1.ColCount := 2;
      DBCtrlGrid1.RowCount := 2;
   end
      else
      begin
         DBCtrlGrid1.ColCount := 1;
         DBCtrlGrid1.RowCount := 1;
      end;
end;

end.
