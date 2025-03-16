unit dbselftree;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, fcdbtreeview, Grids,
  StdCtrls, Mask, DBCtrls, ComCtrls, fccommon, fcCombo, fctreecombo,
  ExtCtrls, fctreeheader, DBGrids, fcDemoRichEdit, fcLabel, ImgList,
  Provider, DBClient, fcImager;

type
  TSelfDBForm = class(TForm)
    ScrollBox1: TScrollBox;
    fcDBTreeView1: TfcDBTreeView;
    Panel1: TPanel;
    RootNodesDataSource: TDataSource;
    RootNodesQuery: TQuery;
    ChildNodesDataSource: TDataSource;
    ChildNodesQuery: TQuery;
    IndexLookupTable: TTable;
    ViewDataSource: TDataSource;
    ViewTable: TTable;
    Database1: TDatabase;
    HeaderControl1: TfcTreeHeader;
    DBRichEdit1: TDBRichEdit;
    ViewTableMsgID: TAutoIncField;
    ViewTableMsgIDString: TStringField;
    ViewTableDate: TDateTimeField;
    ViewTableRootID: TIntegerField;
    ViewTableParentID: TIntegerField;
    ViewTableSubject: TStringField;
    ViewTableName: TStringField;
    ViewTableMsg: TMemoField;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    fcLabel3: TfcLabel;
    fcLabel4: TfcLabel;
    ImageList1: TImageList;
    RootNodesClientDataSet: TClientDataSet;
    RootNodesProvider: TDataSetProvider;
    RootNodesClientDataSetMsgID: TAutoIncField;
    RootNodesClientDataSetDate: TDateTimeField;
    RootNodesClientDataSetRootID: TIntegerField;
    RootNodesClientDataSetParentID: TIntegerField;
    RootNodesClientDataSetSubject: TStringField;
    RootNodesClientDataSetName: TStringField;
    TileImager: TfcImager;
    procedure fcDBTreeView1UserExpand(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure fcDBTreeView1CalcNodeAttributes(
      TreeView: TfcDBCustomTreeView; Node: TfcDBTreeNode);
    procedure fcDBTreeView1Change(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure HeaderControl1SectionClick(HeaderControl: TfcTreeHeader;
      Section: TfcTreeHeaderSection);
    procedure FormShow(Sender: TObject);
  private
     LastDS: TDataSource;
     OrderByFieldName: string;
     OldSection: TfcTreeHeaderSection;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelfDBForm: TSelfDBForm;

implementation

{$R *.DFM}

procedure TSelfDBForm.fcDBTreeView1UserExpand(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
var childquery: TQuery;
    childdatasource: TDatasource;
begin
   if fcdbtreeview1.displayfields.count=0 then
   begin
       fcdbtreeview1.displayfields.add('');
       fcdbtreeview1.displayfields.add('');
   end;

   if node.level+1<fcdbtreeview1.displayfields.count then exit;

   { Create new detail paramaterized query }
   childdatasource:= TDatasource.create(self);
   childdatasource.name:= 'ChildDataSource' + inttostr(node.level+1);
   childquery:= TQuery.create(self);
   childdatasource.dataset:= childquery;
   with childquery do begin
      childquery.sql.assign(ChildNodesQuery.sql);
      childquery.databasename:= ChildNodesQuery.databasename;
      if lastds=nil then childquery.datasource:= ChildNodesDataSource
      else childquery.datasource:= lastDS;
      childquery.active:=true;
   end;
   with fcdbtreeview1 do begin
     DataSources:= DataSources + ';'+ ChildDatasource.name;
     displayfields.add(displayfields[displayfields.count-1]);
     lastDS:= Childdatasource;
   end
end;

procedure TSelfDBForm.fcDBTreeView1CalcNodeAttributes(
  TreeView: TfcDBCustomTreeView; Node: TfcDBTreeNode);
begin
   { Determine if expand button should be displayed by using a lookup table }
   node.haschildren:= IndexLookupTable.Locate('ParentID', node.dataset.fieldbyname('msgid').asstring, []);
end;

procedure TSelfDBForm.fcDBTreeView1Change(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
begin
   { Synchronize table bound to edit controls }
   ViewTable.locate('MsgID', node.dataset.fieldbyname('MsgID').asstring, []);
end;


// Sort on column click
procedure TSelfDBForm.HeaderControl1SectionClick(HeaderControl: TfcTreeHeader;
  Section: TfcTreeHeaderSection);
begin
   if section.fieldname='' then exit;

   screen.cursor:= crhourglass;
   OrderByFieldName:= Section.FieldName;

   // Update active section image
   Section.ImageIndex:=0;
   if Section<>OldSection then
   begin
     OldSection.ImageIndex:= -1;
     OldSection:= Section;
   end;

   RootNodesClientDataSet.IndexFieldNames:= section.fieldname;
   screen.cursor:= crarrow;

   // Return to root active node, as otherwise the tree could be confused if
   // there are no children in root
   fcdbtreeview1.MakeActiveDataSet(RootNodesClientDataSet, true);

//   fcdbtreeview.activedataset:= RootNodesDataSet;

{   exit;

   with RootNodesQuery do begin
      sql.clear;
      sql.add('Select * from fcmsg');
      sql.add('where fcmsg."parentID" is null');
      sql.add('order by fcmsg."' + Section.FieldName + '"');
      active:= false;
      active:= true;
   end;

   screen.cursor:= crarrow;
}
end;

procedure TSelfDBForm.FormShow(Sender: TObject);
begin
     OldSection:= HeaderControl1.Sections[0];
end;

end.
