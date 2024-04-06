unit WorkGroupFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, XPStyleActnCtrls, ActnMan, StdCtrls, Mask,
  DBCtrls, ToolWin, ActnCtrls, ExtCtrls, ComCtrls, Buttons, CheckLst,
  YchecklistBox;

type
  TFmWorkGroup = class(TForm)
    ActionManager: TActionManager;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    ActionToolBar1: TActionToolBar;
    Panel3: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    EdtUserName: TEdit;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    ActionManager1: TActionManager;
    DataSetPrior2: TDataSetPrior;
    DataSetNext2: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Panel1: TPanel;
    ActionToolBar2: TActionToolBar;
    OrgList: TYchecklistBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmWorkGroup: TFmWorkGroup;

implementation

{$R *.dfm}

end.
