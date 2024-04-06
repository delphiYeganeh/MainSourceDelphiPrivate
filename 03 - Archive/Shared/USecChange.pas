unit USecChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask , BaseUnit, Menus, DB, DBCtrls,
  xpBitBtn, xpWindow, ExtActns, ActnList, ADODB;

type
  TSecChange = class(TMBaseForm)
    dUserSecs: TDataSource;
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    ADOStoredProc1: TADOStoredProc;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SecChange: TSecChange;

implementation

uses Dmu, UMain,  RpBase;



{$R *.DFM}

procedure TSecChange.BitBtn2Click(Sender: TObject);
var i : Word;

begin
  if MainForm.ValueSecid = 0 then
  begin
    Dm.SecId := DBLookupComboBox1.KeyValue;
    _ArchiveCenterId := Dm.SecretariatsArchiveCenterID.AsInteger;

    //Add Sanaye 941121
    //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
    if (dm.UserSecsAccessId.AsString <> '') then
    begin
        with dm,ActionsAccess do
        begin
          Close;
          Parameters.ParamByName('AccessId').Value :=UserSecsAccessId.Value;
          Open;
        end;

        with MainForm do
        begin
          for i:=0 to ComponentCount-1 do
          begin
            if Components[i].InheritsFrom(Taction) then
            begin
             TAction(Components[i]).Visible:=dm.GetActionAccess(TAction(Components[i]).Name,1);
             TAction(Components[i]).Enabled:=TAction(Components[i]).Visible;
            end;
          end;
        end;
    end;
    //end Sanaye

    Close;
  end
  else
  begin
        //ShowMessage('Ì« ⁄·Ì „‘ÂœÌ');
   if MessageDlg('¬Ì« „«Ì· »Â «‰ ﬁ«· ”‰œ »Â œ»Ì—Œ«‰Â œÌê— „Ì »«‘Ìœ ø', mtWarning, mbOKCancel, 0) = mrOK then
     begin

      ADOStoredProc1.Close;
      ADOStoredProc1.Parameters.ParamByName('@LetterId').Value :=  Dm.Get_All_LetterLetterID.AsInteger;
      ADOStoredProc1.Parameters.ParamByName('@SecID').Value := DBLookupComboBox1.KeyValue;
      ADOStoredProc1.ExecProc;
      MainForm.ValueSecid := 0;
      ShowMessage('«‰ ﬁ«· »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');

      MainForm.RefreshQuery;
      Close;
     END
  END
//  end;
end;

procedure TSecChange.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TSecChange.FormShow(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.KeyValue:=Dm.SecId;
end;

end.
