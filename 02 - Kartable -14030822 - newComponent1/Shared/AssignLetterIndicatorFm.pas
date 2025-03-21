unit AssignLetterIndicatorFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, Menus, ExtActns, ActnList, DB,
  ADODB, ExtCtrls, AppEvnts, AdvGlowButton;

type
  TfmAssignLetterIndicator = class(TMBaseForm)
    ReCommites: TADODataSet;
    ReCommitesRecommiteID: TAutoIncField;
    ReCommitesLetterID: TIntegerField;
    ReCommitesID: TSmallintField;
    ReCommitesType: TWordField;
    ReCommitesParentId: TSmallintField;
    ReCommitesOrgID: TIntegerField;
    ReCommitesParaph: TWideStringField;
    ReCommitesRecommiteDate: TStringField;
    ReCommitesUserID: TWordField;
    ReCommitesIsCopy: TBooleanField;
    ReCommitesProceeded: TBooleanField;
    ReCommitesProceedDate: TStringField;
    ReCommitesstaffmemo: TWideStringField;
    ReCommitesviewdate: TStringField;
    ReCommitesOrgStaff: TWideStringField;
    ReCommitesDeadLineDate: TStringField;
    ReCommitesLastUpdate: TDateTimeField;
    ReCommitesActionTypeID: TWordField;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel2: TPanel;
    lblMessage: TLabel;
    IsCopy: TCheckBox;
    Proceed: TCheckBox;
    ArchiveCurrent: TCheckBox;
    IsCopy_In_Dabir: TCheckBox;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAssignLetterIndicator: TfmAssignLetterIndicator;

implementation

uses Dmu;

{$R *.dfm}

procedure TfmAssignLetterIndicator.FormCreate(Sender: TObject);
begin
  inherited;
  ArchiveCurrent.Visible:=_kartable;
end;

end.
