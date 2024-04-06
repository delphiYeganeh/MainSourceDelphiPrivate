unit WorkGroupFM;
{Ranjbar 16}
interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, XPStyleActnCtrls, ActnMan, StdCtrls, Mask,
  DBCtrls, ToolWin, ActnCtrls, ExtCtrls, ComCtrls, Buttons, CheckLst,
  YchecklistBox, DB, ADODB, Grids, DBGrids, YDbgrid;

type
  TFMWorkGroup = class(TMBaseForm)
    ActionManager: TActionManager;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    DBEDescript: TDBEdit;
    DBETitle: TDBEdit;
    OrgList: TYchecklistBox;
    Label1: TLabel;
    Panel2: TPanel;
    ActionToolBar1: TActionToolBar;
    Panel4: TPanel;
    YDBGrid1: TYDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetEdit1Execute(Sender: TObject);
    procedure DataSetPost1Execute(Sender: TObject);
    procedure OrgListChecked(ID: Integer);
    procedure OrgListNeedCheck(ID: Integer; var checked: Boolean);
    procedure OrgListClearInDb;
    procedure DataSetEditExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetPrior1Execute(Sender: TObject);
    procedure DataSetNext1Execute(Sender: TObject);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure YDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YDBGrid1CellClick(Column: TColumn);
  private
    procedure ChangeOrgListData;
  public
    { Public declarations }
  end;

var
  FMWorkGroup: TFMWorkGroup;

implementation

uses WorkGroupDM , Dmu;

{$R *.dfm}

procedure TFMWorkGroup.ChangeOrgListData;
begin
   With DMWorkGroup do
   begin
      //if SPWorkGroup.RecordCount > 0 then
      //begin
         QrWorkGroupOrg.Close;
         QrWorkGroupOrg.Open;
      //end;
   end;

   OrgList.Fill;
end;

procedure TFMWorkGroup.FormShow(Sender: TObject);
begin
   inherited;
   With DMWorkGroup do
   begin
      SPWorkGroup.Close;
      SPWorkGroup.Parameters.ParamByName('@UserID').Value := _userid;
      SPWorkGroup.Open;
      FromOrganizations.Open;

      ChangeOrgListData;
   end;
end;

procedure TFMWorkGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   //Tag := DMWorkGroup.SPWorkGroupWorkGroupID.AsInteger;
end;

procedure TFMWorkGroup.DataSetEdit1Execute(Sender: TObject);
begin
  inherited;
   OrgList.Enabled := True;
   
end;

procedure TFMWorkGroup.DataSetPost1Execute(Sender: TObject);
Var
   I:integer;
begin
  inherited;

end;

procedure TFMWorkGroup.OrgListChecked(ID: Integer);
begin
  inherited;

   //œ—Ã —òÊ—œ ÃœÌœ
   With DMWorkGroup do
   begin
      QrWorkGroupOrg.Insert;
      QrWorkGroupOrgWorkGroupID.AsInteger := SPWorkGroupWorkGroupID.AsInteger;
      QrWorkGroupOrgFromOrgID.AsInteger := ID;
      QrWorkGroupOrg.Post;
   end;
end;

procedure TFMWorkGroup.OrgListNeedCheck(ID: Integer; var checked: Boolean);
begin
  inherited;
 Checked := DMWorkGroup.QrWorkGroupOrg.Locate('FromOrgID',ID,[]);
end;

procedure TFMWorkGroup.OrgListClearInDb;
begin
  inherited;
  //Õ–›  „«„Ì —òÊ—œÂ«Ì «Ì‰ ê—ÊÂ ò«—Ì
  With DMWorkGroup do
  begin
     SpDelWorkGroupOrg.Close;
     SpDelWorkGroupOrg.Parameters.ParamByName('@WorkGroupID').Value :=  SPWorkGroupWorkGroupID.AsInteger;
     SpDelWorkGroupOrg.ExecProc;
  end;
end;

procedure TFMWorkGroup.DataSetEditExecute(Sender: TObject);
begin
  inherited;
  DMWorkGroup.spWorkGroup.Edit;
  OrgList.Enabled := True;
  DBETitle.SetFocus;
end;

procedure TFMWorkGroup.DataSetPostExecute(Sender: TObject);
begin
  inherited;
  DMWorkGroup.SPWorkGroup.Post;

  OrgList.Post;
  ChangeOrgListData;
  OrgList.Enabled := False;
end;

procedure TFMWorkGroup.DataSetPrior1Execute(Sender: TObject);
begin
  inherited;
  DMWorkGroup.spWorkGroup.Prior;
  ChangeOrgListData;
end;

procedure TFMWorkGroup.DataSetNext1Execute(Sender: TObject);
begin
  inherited;
  DMWorkGroup.spWorkGroup.Next;
  ChangeOrgListData;
end;

procedure TFMWorkGroup.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
  DMWorkGroup.spWorkGroup.Append;
  ChangeOrgListData;
  OrgList.Enabled := True;
  DBETitle.SetFocus;
end;

procedure TFMWorkGroup.DataSetCancelExecute(Sender: TObject);
begin
  inherited;
  DMWorkGroup.spWorkGroup.Cancel;
  ChangeOrgListData;
  OrgList.Enabled := False;
end;

procedure TFMWorkGroup.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   ChangeOrgListData;
end;

procedure TFMWorkGroup.YDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   ChangeOrgListData;
end;

procedure TFMWorkGroup.YDBGrid1CellClick(Column: TColumn);
begin
  inherited;
   ChangeOrgListData;
end;

end.
