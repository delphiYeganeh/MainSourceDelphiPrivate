unit UPublish;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls, Grids,
  DBGrids, YDbgrid, UemsVCL, BaseUnit, ExtActns, ActnList, DB;

type
  TFPublish = class(TMBaseForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBShamsiDateEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    YDBGrid1: TYDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPublish: TFPublish;

implementation

uses dmu;

{$R *.dfm}

procedure TFPublish.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TFPublish.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=caFree;
end;

end.
