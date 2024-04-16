unit UCaseBasicData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, Grids, DBGrids, YDbgrid, StdCtrls, Buttons,
  ExtActns, ActnList, DB;

type
  TfrCaseBasicData = class(TMBaseForm)
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    Panel5: TPanel;
    btndCaseType: TBitBtn;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Splitter1: TSplitter;
    btnCancel: TBitBtn;
    dbgCaseType: TYDBGrid;
    YDBGrid1: TYDBGrid;
    Panel6: TPanel;
    GroupBox5: TGroupBox;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    YDBGrid4: TYDBGrid;
    GroupBox3: TGroupBox;
    YDBGrid2: TYDBGrid;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Splitter2: TSplitter;
    procedure btndCaseTypeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCaseBasicData: TfrCaseBasicData;

implementation

uses dmu;

{$R *.dfm}

procedure TfrCaseBasicData.btndCaseTypeClick(Sender: TObject);
begin
  inherited;
   dm.tblCaseType.Append;  
end;

procedure TfrCaseBasicData.BitBtn1Click(Sender: TObject);
begin
  inherited;
   dm.tblCasePriority.Append;
end;

procedure TfrCaseBasicData.BitBtn2Click(Sender: TObject);
begin
  inherited;
   dm.tblCaseOriginal.Append;
end;

procedure TfrCaseBasicData.BitBtn4Click(Sender: TObject);
begin
  inherited;
  Dm.tblTaskStatus.Append;
end;

procedure TfrCaseBasicData.FormCreate(Sender: TObject);
begin
  inherited;
 with dm do
 begin
   tblCaseType.Close;
   tblCaseType.Open;
   tblCasePriority.Close;
   tblCasePriority.Open;
   tblCaseOriginal.Close;
   tblCaseOriginal.Open;
   tblTaskStatus.Close;;
   tblTaskStatus.Open;
 end;
end;

end.
