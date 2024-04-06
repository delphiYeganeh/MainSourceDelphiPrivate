unit UntSearchDataSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, xpBitBtn, Grids, DBGrids,
  YDbgrid, DB, ADODB, ActnList;

type
  TFrmSearchDataSet = class(TForm)
    Panel1: TPanel;
    edtSearch: TEdit;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    Label1: TLabel;
    QSearch: TADOQuery;
    DsSearch: TDataSource;
    ExamGrid: TYDBGrid;
    btnSelect: TxpBitBtn;
    btnCancel: TxpBitBtn;
    btnSearch: TxpBitBtn;
    ActionList1: TActionList;
    ActionCancel: TAction;
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    function ActivateSearch (TableName , IdFieldName, CodeFieldName , TitleFieldName : String) : String;
    procedure edtSearchChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure SearchQuery;
    procedure ExamGridDblClick(Sender: TObject);
  private
    { Private declarations }
    PrivateIdFieldName : string;
    PrivateCodeFieldName : String;
    PrivateTitleFieldName : String;
    PrivateTableName : String;


  public
    { Public declarations }
    SelectItem : string;
  end;

var
  FrmSearchDataSet: TFrmSearchDataSet;

implementation

uses dmu;
{$R *.dfm}

procedure TFrmSearchDataSet.FormShow(Sender: TObject);
begin
 edtSearch.SetFocus;
 edtSearch.Clear;
end;
procedure TFrmSearchDataSet.btnSelectClick(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure TFrmSearchDataSet.btnCancelClick(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

function TFrmSearchDataSet.ActivateSearch (TableName , IdFieldName,  CodeFieldName , TitleFieldName  : String) : String;
begin
    Result:='';
    PrivateIdFieldName := IdFieldName;
    PrivateCodeFieldName := CodeFieldName;
    PrivateTitleFieldName := TitleFieldName;
    PrivateTableName := TableName;
    SearchQuery();
       if ShowModal=mrok then
      begin
       if (QSearch.Active) then
         if (QSearch.RecordCount > 0) then
           Result := QSearch.FieldByname('ID').AsString;
      end;
end;
procedure TFrmSearchDataSet.edtSearchChange(Sender: TObject);
begin
   SearchQuery();
end;

procedure TFrmSearchDataSet.SearchQuery;
begin
  if (PrivateIdFieldName <> '') and (PrivateCodeFieldName <> '') and (PrivateTitleFieldName <> '') then
  begin
    With QSearch do
    begin
      Close;
      SQL.Clear;
      Sql.Add('Select ' + PrivateIdFieldName + ' as ID, '   + PrivateCodeFieldName + ' as Code ,' + PrivateTitleFieldName + ' as Title From ' + PrivateTableName);
      if edtSearch.Text <> '' then
      begin
        Sql.Add('Where (' + PrivateCodeFieldName + ' like N''%' + edtSearch.Text + '%'') or (');
        Sql.Add(PrivateTitleFieldName + ' like N''%' + edtSearch.Text + '%'')');
      end;
      Open;
      StatusBar1.Panels[0].Text := 'ÊÚÏÇÏ Ñ˜æÑÏ : ' + IntToStr(RecordCount);
    end;
  end;
end;

procedure TFrmSearchDataSet.btnSearchClick(Sender: TObject);
begin
   edtSearchChange(Sender);
end;

procedure TFrmSearchDataSet.ExamGridDblClick(Sender: TObject);
begin
   btnSelectClick(Sender);
end;

end.
