unit Utabloo;

interface

uses
  Windows, BaseUnit, Menus, DB, Classes, ActnList, ActnMan, ADODB,Controls,
  StdCtrls, DBTreeView, ComCtrls, Buttons, DBCtrls, Grids,  DBGrids, YDbgrid,
  ExtCtrls,Graphics,variants,FORMS,SysUtils,ComObj,Dialogs,
  XPStyleActnCtrls;

  type
 DisplayModes=(Notany,FromOrg,ToOrg);
  TFBoard = class(TMBaseForm)
    MainActionManager: TActionManager;
    List: TPanel;
    PSearch: TPanel;
    LetterPopup: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Pdata: TPanel;
    Label1: TLabel;
    N8: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    N32: TMenuItem;
    ExactCopy1: TMenuItem;
    N4: TMenuItem;
    AOtherSenders1: TMenuItem;
    N6: TMenuItem;
    PtoolBar: TPanel;
    DBMemo1: TDBMemo;
    N9: TMenuItem;
    N10: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    GroupingPanel: TPanel;
    Dcommon: TDataSource;
    lettersDbGrid: TYDBGrid;
    PDate: TPanel;
    ToOrgDbgrid: TYDBGrid;
    Dsp_distinctDate: TDataSource;
    sp_distinctDate: TADODataSet;
    sp_distinctDateRecommiteDate: TStringField;
    SpeedButton1: TSpeedButton;
    sp_board: TADODataSet;
    sp_boardIndicatorID: TIntegerField;
    sp_boardMYear: TWordField;
    sp_boardSecretariatID: TWordField;
    sp_boardLetter_type: TWordField;
    sp_boardFromOrgID: TSmallintField;
    sp_boardToOrgID: TIntegerField;
    sp_boardUrgencyID: TSmallintField;
    sp_boardMemo: TWideStringField;
    sp_boardLetterFormat: TWordField;
    sp_boardAttachTitle: TWideStringField;
    sp_boardRegistrationDate: TStringField;
    sp_boardRegistrationTime: TStringField;
    sp_boardFollowLetterNo: TStringField;
    sp_boardToStaffer: TStringField;
    sp_boardParaph: TStringField;
    sp_boardRecommiteDate: TStringField;
    sp_boardno1: TWideStringField;
    SpeedButton2: TSpeedButton;
    Action1: TAction;
    Action2: TAction;
    Ahome: TAction;
    procedure AHomeExecute(Sender: TObject);
    procedure lettersDbGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure FormShow(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N13Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetRdate(value:string);
    procedure SpeedButton15Click(Sender: TObject);
    procedure sp_distinctDateAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
   procedure   RefreshQuery;
    procedure Action1Execute(Sender: TObject);

  private
    FRdate:string;
    { Private declarations }
  public
     Property Rdate: string read FRdate write SetRdate;
    { Public declarations }
  end;

var
  FBoard: TFBoard;

implementation

uses    Dmu {, colorSetting} , UMain{, ScanImageU, ScanImageFm},
  ScanImageFm;
{$R *.DFM}


procedure TFBoard.SetRdate(value:string);
begin
   FRdate:=value;
   RefreshQuery;
end;

procedure   TFBoard.RefreshQuery;
begin
   with sp_board,Parameters do
   begin
      close;
      ParamByName('@Myear').Value:=dm.CurrentmYear;
      ParamByName('@Date').Value:=Rdate;
      open
   end;
end;

procedure TFBoard.AHomeExecute(Sender: TObject);
begin
  inherited;
 Rdate:='0';
 GroupingPanel.Hide;
 RefreshQuery;
end;

procedure TFBoard.lettersDbGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
  var c1,c2:Tcolor;
begin
  inherited;
     c1:=lettersDbGrid.Color;
     c2:=lettersDbGrid.NearColor(c1,30);

      case sp_board.RecNo mod 2 of
       0 :Color:=c1;
       1 :Color:=c2;
      end;
end;

procedure TFBoard.FormShow(Sender: TObject);
begin
  inherited;
 AHome.Execute;
end;
procedure TFBoard.N9Click(Sender: TObject);
begin
  inherited;
 lettersDbGrid.Print;
end;

procedure TFBoard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  MainForm.pnlAction.Show;
end;

procedure TFBoard.N13Click(Sender: TObject);
begin
  inherited;
lettersDbGrid.CustomizePrint;
end;

procedure TFBoard.FormCreate(Sender: TObject);
begin
  inherited;
  MainForm.pnlAction.Hide;
 with sp_distinctDate do
  begin
   Close;
   Open;
   AfterScroll:=sp_distinctDateAfterScroll;
  end;
end;

procedure TFBoard.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  GroupingPanel.show;
  PDate.Hide;
end;

procedure TFBoard.sp_distinctDateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Rdate:=sp_distinctDateRecommiteDate.AsString;
end;

procedure TFBoard.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  GroupingPanel.show;
  PDate.show;

end;

procedure TFBoard.Action1Execute(Sender: TObject);
begin
  inherited;
  {Ranjbar
  ScanImageF:=TScanImageF.Create(Application);
  with ScanImageF do
  begin
     LetterID:=sp_board.FieldByname('indicatorid').AsInteger;
     RReadOnly:=true;
     PageNo:=1;
     ShowModal;
  end;}
   FmScanImage := TFmScanImage.Create(Application);
   FmScanImage.LetterID := Sp_board.FieldByname('indicatorid').AsInteger;
   FmScanImage.RReadOnly := True;
   FmScanImage.ShowModal;
end;

end.
