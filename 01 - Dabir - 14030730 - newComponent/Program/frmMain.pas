unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, CheckLst, YchecklistBox, Grids, DBGrids,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, AsgFindDialog, YDbgrid, Mask,
  DBCtrls, Buttons, ExtCtrls, AdvGlowButton;

type
  TForm_WorkGroupFM = class(TForm)
    Panel3: TPanel;
    BitBtn1: TAdvGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TAdvGlowButton;
    Panel2: TPanel;
    Panel4: TPanel;
    YDBGrid1: TYDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    ListBox1: TListBox;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ListBox2: TListBox;
    Label_AllRec: TLabel;
    Label_Grid: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    DBEDescript: TDBEdit;
    DBETitle: TDBEdit;
    Label3: TLabel;
    BBOK: TAdvGlowButton;
    NewRecommite: TAdvGlowButton;
    BBDelRecommite: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    pnlMain: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure YDBGrid1CellClick(Column: TColumn);
    procedure ListBox1DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure YDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure NewRecommiteClick(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure BBDelRecommiteClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure loadGroupDetails;
  public
    { Public declarations }
  end;

var
  Form_WorkGroupFM: TForm_WorkGroupFM;

implementation

uses Dmu;

{$R *.dfm}

procedure TForm_WorkGroupFM.Button1Click(Sender: TObject);
var
  i:Integer;
begin
with TADOQuery.Create(Nil) do
 begin
    sql.Clear;
    sql.Add('Delete From WorkGroupOrg where WorkGroupID='+ADOQuery1.FieldByName('WorkGroupID').asstring);
    if ListBox2.Count<>0 then
    SQL.Add('insert into WorkGroupOrg (FromOrgID,WorkGroupID) select ID,'+ADOQuery1.FieldByName('WorkGroupID').asstring+' from FromOrganizations where ID in('+ListBox2.Items.CommaText+') ');
    try
        Connection:=Dm.YeganehConnection;
        ExecSQL;
    except

    end;
 end;
  with ADOQuery2 do
    begin
      SQL.Clear;
      SQL.Add('select * FROM FromOrganizations ' ) ;
      try
          open;
      except

      end;
    end;
end;

procedure TForm_WorkGroupFM.Edit1Change(Sender: TObject);
var
  i:Integer;
begin

 with ADOQuery2 do
  begin
    SQL.Clear;
    SQL.Add('select Title+'+ QuotedStr('-')+ '+ResponsibleStaffer as title ,* FROM FromOrganizations where Title+'+QuotedStr(' -')+ '+ResponsibleStaffer like N''%'+ Edit1.Text+'%''' ) ;
    try
     Open;
     Label_Grid.Caption:=IntToStr(RecordCount);

    except

    end;

  end;
end;

procedure TForm_WorkGroupFM.FormShow(Sender: TObject);
begin
with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT [WorkGroupID]       ,[Title]      ,[Descript]      ,[UserID]  FROM [dbo].[WorkGroup] where userid = '+IntToStr(Dm._MyUserID));
    try
     Open;
    except

    end  
  end;
end;

procedure TForm_WorkGroupFM.YDBGrid1CellClick(Column: TColumn);
begin
loadGroupDetails
end;

procedure TForm_WorkGroupFM.ListBox1DblClick(Sender: TObject);
begin
ListBox2.Items.Delete(ListBox1.ItemIndex);
ListBox1.DeleteSelected;

end;

procedure TForm_WorkGroupFM.DBGrid1DblClick(Sender: TObject);
begin
ListBox1.Items.Add(ADOQuery2.FieldByName('Title').AsString);
ListBox2.Items.Add(ADOQuery2.FieldByName('ID').AsString)
end;

procedure TForm_WorkGroupFM.Edit1Click(Sender: TObject);
begin
Edit1.Text:='';
end;

procedure TForm_WorkGroupFM.loadGroupDetails;
begin
//
with TADOQuery.Create(Nil) do
  begin
    SQL.Clear;
    SQL.Add('select Title+'+ QuotedStr('-')+ '+ResponsibleStaffer as titleS,WO.id AS ids from WorkGroupOrg w join FromOrganizations wo on w.FromOrgID = wo.ID where w.WorkGroupID =  '+ADOQuery1.Fieldbyname('WorkGroupID').AsString ) ;
    try
     Connection:=Dm.YeganehConnection;
     open;
     ListBox1.Clear;
     ListBox2.Clear;
     if not IsEmpty then
      begin
        Label_AllRec.Caption:=IntToStr(RecordCount);
         repeat
           Application.ProcessMessages;
          ListBox1.Items.Add(FieldByName('TitleS').asstring);
          ListBox2.Items.Add(FieldByName('ids').AsString) ;
          Next;
         until eof;

      end
      else
        Label_AllRec.Caption:=IntToStr(0);



    except

    end;
    Free;

  end;

 with ADOQuery2 do
  begin
   try
     sql.Clear;
     SQL.Add('select Title+'+ QuotedStr('-')+ '+ResponsibleStaffer as title ,* FROM FromOrganizations ' );
     Open;

     except

     end;
  Label_Grid.Caption:=IntToStr(RecordCount);

  end;
end;

procedure TForm_WorkGroupFM.YDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
loadGroupDetails
end;

procedure TForm_WorkGroupFM.YDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
loadGroupDetails
end;

procedure TForm_WorkGroupFM.Button2Click(Sender: TObject);
begin
ADOQuery1.Insert
end;

procedure TForm_WorkGroupFM.Button3Click(Sender: TObject);
begin
  ADOQuery1.FieldByName('UserID').Value:=DM.UsersId.AsInteger;
ADOQuery1.Post;
end;

procedure TForm_WorkGroupFM.BitBtn2Click(Sender: TObject);
begin
DBETitle.Enabled:=True;
DBEDescript.Enabled:=True;

  ADOQuery1.edit;
  ADOQuery1.FieldByName('UserID').Value:=DM.UsersId.AsInteger;
//  ADOQuery1.Post;
DBETitle.SetFocus;
BitBtn2.Enabled:=False;
BBOK.Enabled:=True;
 Edit1.Enabled:=True;
 BitBtn3.Enabled:=True;
end;

procedure TForm_WorkGroupFM.NewRecommiteClick(Sender: TObject);
begin
Edit1.Enabled:=False;
BitBtn3.Enabled:=False;

DBETitle.Enabled:=True;
DBEDescript.Enabled:=True;

  ListBox1.Clear;
ListBox2.Clear;
ADOQuery1.Insert;
DBETitle.SetFocus;
BBOK.Enabled:=True;
NewRecommite.Enabled:=False;
end;

procedure TForm_WorkGroupFM.BBOKClick(Sender: TObject);
begin
  ADOQuery1.Edit;

  ADOQuery1.FieldByName('UserID').Value:=Dm._MyUserID;
  ADOQuery1.Post;
  DBETitle.Enabled:=False;
DBEDescript.Enabled:=False;
NewRecommite.Enabled:=True;
BBOK.Enabled:=False;
BitBtn2.Enabled:=True;
Edit1.Enabled:=True;
BitBtn3.Enabled:=True;


end;

procedure TForm_WorkGroupFM.BBDelRecommiteClick(Sender: TObject);
begin

if ADOQuery1.IsEmpty  then Exit;

if Application.MessageBox('��� �� ������ ���� �� ��� ���Ͽ', '', MB_YESNO +
  MB_ICONSTOP) = IDYES then
begin

  with TADOQuery.Create(Nil) do
   begin
      sql.Clear;
      sql.Add('Delete From WorkGroupOrg where WorkGroupID='+ADOQuery1.FieldByName('WorkGroupID').asstring);
      try
          Connection:=Dm.YeganehConnection;
          ExecSQL;
      except

      end;
      free;
   end;

  ADOQuery1.Delete;
end;

end;

procedure TForm_WorkGroupFM.BitBtn3Click(Sender: TObject);

var
  i:Integer;
begin

with TADOQuery.Create(Nil) do
 begin
    sql.Clear;
    sql.Add('Delete From WorkGroupOrg where WorkGroupID='+ADOQuery1.FieldByName('WorkGroupID').asstring);
    if ListBox2.Count<>0 then
    SQL.Add('insert into WorkGroupOrg (FromOrgID,WorkGroupID) select ID,'+ADOQuery1.FieldByName('WorkGroupID').asstring+' from FromOrganizations where ID in('+ListBox2.Items.CommaText+') ');

    try
        Connection:=Dm.YeganehConnection;
        ExecSQL;
    except

    end;
    free;
 end;
  with ADOQuery2 do
    begin
      SQL.Clear;
      SQL.Add('select * FROM FromOrganizations ' ) ;
      try
          open;
      except

      end;
    end;
end;

procedure TForm_WorkGroupFM.FormCreate(Sender: TObject);
begin
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;  
end;

procedure TForm_WorkGroupFM.BitBtn1Click(Sender: TObject);
begin
    ModalResult := mrCancel ;
end;

end.
