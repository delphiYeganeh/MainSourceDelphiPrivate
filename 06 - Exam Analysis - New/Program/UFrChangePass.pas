unit UFrChangePass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, jpeg, ExtCtrls, ActnList,
  ActnMan, XPStyleActnCtrls;

type
  TFrChangePass = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Bevel1: TBevel;
    BitBtn3: TBitBtn;
    ActionManager1: TActionManager;
    ChangePassWord: TAction;
    procedure ChangePassWordExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrChangePass: TFrChangePass;

implementation

uses dmu;



{$R *.dfm}

procedure TFrChangePass.ChangePassWordExecute(Sender: TObject);
begin
  inherited;
  if (edit1.Text='') or (Edit3.Text='') then
    exit;

  if edit2.Text<>Edit3.Text then
    begin
    messagedlg('ò·„Â Â«Ì ⁄»Ê— ÃœÌœ »« Â„ „ ›«Ê ‰œ',mterror,[mbok],0);
    exit
    end;
  if Dm.UserID.fieldValues['Pass']=upperCase(trim(Edit1.text)) then
    begin
    Dm.UserID.Edit;
    Dm.UserID.FieldByName('pass').AsString:=upperCase(trim(Edit2.text));
      try
      Dm.UserID.Post
      except
        begin
        messagedlg('ò·„Â ⁄»Ê—  €ÌÌ— ÅÌœ« ‰ò—œ',mterror,[mbok],0);
        exit
        end;
      end;
    end
  else
    begin
    messagedlg('ò·„Â ⁄»Ê— ﬁ»·Ì «‘ »«Â «” ',mterror,[mbok],0);
    exit
    end;
   messagedlg('Å«Ì«‰ „Ê›ﬁÌ  ¬„Ì“  €ÌÌ— ò·„Â ⁄»Ê—',mterror,[mbok],0);
end;

end.
