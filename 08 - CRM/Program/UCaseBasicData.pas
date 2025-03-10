unit UCaseBasicData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, Grids, DBGrids, YDbgrid, StdCtrls, Buttons,
  ExtActns, ActnList, DB;

type
  TfrCaseBasicData = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    GroupBox4: TGroupBox;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    Panel5: TPanel;
    btndCaseType: TBitBtn;
    dbgCaseType: TYDBGrid;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    YDBGrid1: TYDBGrid;
    Panel6: TPanel;
    Splitter2: TSplitter;
    GroupBox5: TGroupBox;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    YDBGrid3: TYDBGrid;
    GroupBox3: TGroupBox;
    YDBGrid2: TYDBGrid;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Panel7: TPanel;
    Splitter3: TSplitter;
    GroupBox6: TGroupBox;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    YDBGrid4: TYDBGrid;
    GroupBox7: TGroupBox;
    YDBGrid5: TYDBGrid;
    Panel9: TPanel;
    BitBtn5: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    procedure btndCaseTypeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCaseBasicData: TfrCaseBasicData;

implementation

uses dmu,YShamsiDate;

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

procedure TfrCaseBasicData.BitBtn3Click(Sender: TObject);
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
   CustomerStatus.Close;
   CustomerStatus.Open;
   Compagin.Close;
   Compagin.Open;
 end;
end;

procedure TfrCaseBasicData.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 763)  or (NewHeight < 546) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TfrCaseBasicData.FormShow(Sender: TObject);
begin
  inherited;
   ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
end;

procedure TfrCaseBasicData.BitBtn5Click(Sender: TObject);
begin
  inherited;
  dm.Compagin.Append;
end;

procedure TfrCaseBasicData.BitBtn4Click(Sender: TObject);
begin
  inherited;
  dm.CustomerStatus.Append;
 // dm.CustomerStatusCustomerStatusID := ();
end;

procedure TfrCaseBasicData.Button1Click(Sender: TObject);
begin
  inherited;
   if ShowMyMessage('�����','��� ���� �� ��� ����� ���� ����Ͽ',mbOKCancel,mtWarning) = mrOK then
        dm.Compagin.Delete;
end;

procedure TfrCaseBasicData.Button2Click(Sender: TObject);
begin
  inherited;
   if ShowMyMessage('�����','��� ���� �� ��� ����� ���� ����Ͽ',mbOKCancel,mtWarning) = mrOK then
     dm.CustomerStatus.Delete;
end;

end.
