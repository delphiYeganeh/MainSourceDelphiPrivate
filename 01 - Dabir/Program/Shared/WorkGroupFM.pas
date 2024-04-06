unit WorkGroupFM;
{Ranjbar 16}
interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, XPStyleActnCtrls, ActnMan, StdCtrls, Mask,
  DBCtrls, ToolWin, ActnCtrls, ExtCtrls, ComCtrls, Buttons, CheckLst,
  YchecklistBox, DB, ADODB, Grids, DBGrids, YDbgrid, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid;
const FromOrg='SELECT Title+' +'('+'''+ResponsibleStaffer+'+')+''''as Title, ID,  ParentID, Phone, Fax, Email, ResponsibleStaffer, IsActive, PreCode, Code, UniqueID, IsInnerOrg, GroupID FROM FromOrganizations f where IsInnerOrg=1 and isactive=1 order by title';
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
    Edit1: TEdit;
    DataSource1: TDataSource;
    DBAdvGrid1: TDBAdvGrid;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    Button1: TButton;
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
    procedure Edit1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure ChangeOrgListData;
    procedure FeatchData;
  public
    { Public declarations }
    _AdoSearch:TADOQuery;
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
//   DMWorkGroup.FromOrganizations.CommandText:=FromOrg;
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
with TADOQuery.Create(Nil) do
begin
  sql.Clear;
  SQL.Add('update FromOrganizations set Selected = 1 where id in(select w.WorkGroupOrgID from WorkGroupOrg w where WorkGroupID = '+DMWorkGroup.SPWorkGroupWorkGroupID.asString+') ');
  try
   Connection:=Dm.YeganehConnection;
   ExecSQL;
  except


  end;
  Free;
end;
   ChangeOrgListData;
   DBAdvGrid1.Visible:=False;
      OrgList.Visible:=True;
end;

procedure TFMWorkGroup.Edit1Change(Sender: TObject);
var
  OldCommand:string;
begin
  inherited;
FeatchData;
   DBAdvGrid1.Visible:=True;
   OrgList.Visible:=False;
end;

procedure TFMWorkGroup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
//   DMWorkGroup.FromOrganizations.CommandText:=FromOrg;
end;

procedure TFMWorkGroup.FeatchData;
var
  i:Integer;
begin
with ADOQuery1 do
 begin
  SQL.Clear;
  SQL.Add('select Title+'+ QuotedStr('-')+ '+ResponsibleStaffer as title ,* FROM FromOrganizations where Title+'+QuotedStr(' -')+ '+ResponsibleStaffer like N''%'+ Edit1.Text+'%''' ) ;
  try
      Connection:=DMWorkGroup.FromOrganizations.Connection;
      open;

//      OrgList.Items.Clear;
//      for i  := 1 to RecordCount do
//        begin
//          Application.ProcessMessages;
//          OrgList.Items.Add(FieldByName('title').AsString);
//          Next
//        end;

  except

  end;

end;
end;

procedure TFMWorkGroup.Edit1Click(Sender: TObject);
begin
  inherited;
Edit1.Text:='';
end;

procedure TFMWorkGroup.Button1Click(Sender: TObject);
begin
  inherited;
with TADOQuery.Create(Nil) do
  begin
    SQL.Clear;
    sql.Add('Delete From WorkGroupOrg where WorkGroupID='+DMWorkGroup.SPWorkGroupWorkGroupID.asString);
    SQL.Add('insert into WorkGroupOrg" ("FromOrgID","WorkGroupID") select ID,'+DMWorkGroup.SPWorkGroupWorkGroupID.asString+' from FromOrganizations where Selected = 1 ');
    sql.Add('update FromOrganizations set Selected =0 ');
    try
      Connection:=Dm.YeganehConnection;
      ExecSQL;;
      except


    end;
  free;
  end;
     DBAdvGrid1.Visible:=False;
        OrgList.Visible:=True;
end;

end.
