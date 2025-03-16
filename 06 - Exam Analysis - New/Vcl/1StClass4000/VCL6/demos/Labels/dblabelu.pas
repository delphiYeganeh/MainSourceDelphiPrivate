unit dblabelu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Db, fcLabel, DBTables, StdCtrls, fcpanel, fcImager,
  ComCtrls, fcDemoRichEdit;

type
  TJustifyLabelDemoForm = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    fcGroupBox1: TfcGroupBox;
    fcImager1: TfcImager;
    fcPanel3: TfcPanel;
    fcLabel2: TfcLabel;
    fcDemoRichEdit1: TfcDemoRichEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    fcLabel1: TfcLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JustifyLabelDemoForm: TJustifyLabelDemoForm;

implementation

{$R *.DFM}

procedure TJustifyLabelDemoForm.FormShow(Sender: TObject);
begin
   fcDemoRichEdit1.Anchors := [akLeft,akTop,akBottom];
end;

end.
