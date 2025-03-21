unit UInputTemplate;

interface

uses
  Windows,Word2000, BaseUnit, ExtCtrls, OleServer, StdActns, ExtActns, DBActns,
  ActnMan, Controls, Grids, DBGrids, YDbgrid, Classes, ActnList, DB,
  StdCtrls,dialogs,Variants,SysUtils,forms, Buttons, WordXP,
  XPStyleActnCtrls,  xpBitBtn, Menus;


type
  TEditTemplates = class(TMBaseForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    AText: TAction;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    Timer1: TTimer;
    OpenDialog: TOpenDialog;
    pnlMain: TPanel;
    Panel2: TPanel;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    Button6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure YDBGridDblClick(Sender: TObject);
    procedure ATextExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
procedure WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure EnableDsiable(en:boolean);
    procedure Button6Click(Sender: TObject);
    procedure AbortClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);

  private
procedure OpenFile(ReadOnly:boolean);
procedure NewFile;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  EditTemplates: TEditTemplates;


implementation
uses Dmu,ShellAPI, CreateTextU, ADODB;
{$R *.dfm}

var IsReadOnly,saved:boolean;


procedure TEditTemplates.FormCreate(Sender: TObject);
begin
  inherited;
  IsReadOnly:=true;
  saved:=false;
  with dm.WordTemplate do if not Active then Open;
end;

procedure TEditTemplates.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TEditTemplates.YDBGridDblClick(Sender: TObject);
begin
  inherited;
  AText.Execute;
  end;

procedure TEditTemplates.ATextExecute(Sender: TObject);
begin
  inherited;
 dm.RefreshTemplate;
end;

procedure TEditTemplates.openFile(ReadOnly:boolean);
var RO,ItemIndex,olv,emp,f,fals,tru:OleVariant;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;

    WordApplication.Caption := '��� ����� �������� ����';

   with WordApplication do
    begin
    Visible:=true;
     ChangeFileOpenDirectory(_TempPath);
     f:=_WordFileName;
     Ro:=ReadOnly;
     Documents.Open(f,fals,Ro,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);

     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;

     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;


    ItemIndex := 1;
    WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
  end;{with wordapplication}


end;


procedure TEditTemplates.Button1Click(Sender: TObject);
begin
  inherited;
 if dm.WordTemplate.RecordCount>0 then
  begin
   DM.SaveTemplateToFile;
   openFile(false);
   IsReadOnly:=false;
   EnableDsiable(False); 
  end;

end;

procedure TEditTemplates.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var  fileName: OleVariant;
begin
  inherited;
  fileName:=_TempPath +_WordFileName ;
  if not ISReadOnly then
   WordDocument.SaveAs(fileName);
   if not IsReadOnly then
    begin
     Timer1.Enabled:=true;
     saved:=false;
    end;

  WordApplication.Disconnect;
end;


procedure TEditTemplates.Button2Click(Sender: TObject);
begin
  inherited;
 if dm.WordTemplate.RecordCount>0 then
  begin
   DM.SaveTemplateToFile;
openFile(true);
   ISReadOnly:=true;

  end;

end;

procedure TEditTemplates.Button3Click(Sender: TObject);
var s: string;
begin
  inherited;

  if Dm.Y_InputQuery('��� ����','����',s) then
   with  dm,WordTemplate do
    begin
     Insert;
     WordTemplateTemplateTitle.AsString:=s;
     Post;
    end else exit;

   with  dm,WordTemplateDoc do
    begin
     close;
     Parameters.ParamByName('id').Value:=dm.WordTemplateWordTemplateID.AsInteger;
     Open;
    end;
       IsReadOnly:=false;
       NewFile;
       EnableDsiable(False);
 end;

                                                                    
procedure TEditTemplates.NewFile;
var Template,NewTemplate,ItemIndex:OleVariant;
begin
    Template := EmptyParam;
    NewTemplate := false;
    ItemIndex := 1;
    Wordapplication.Visible := True;
    WordApplication.Caption := '��� ������ ����';
    {Create new document}
    Template := EmptyParam;
    NewTemplate := False;
    WordApplication.Documents.Add(Template, NewTemplate,Template,Template);
    WordDocument.ConnectTo(WordApplication.Documents.Item(ItemIndex));
end;

procedure TEditTemplates.Timer1Timer(Sender: TObject);
begin
  inherited;
  if Saved then exit;
     with dm,WordTemplateDoc do
      begin
        Edit;
  //      try
        WordTemplateDocWordTemplate.LoadFromFile(_TempPath +_WordFileName);
        post;
        Timer1.Enabled:=false;
        saved:=true;
        EnableDsiable(true);
       // except
         Timer1.Interval:=500;
       // end;
   end;
end;

procedure TEditTemplates.Button4Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TEditTemplates.Button5Click(Sender: TObject);
var s:string;
begin
  inherited;
  if Dm.Y_InputQuery('��� ����',dm.WordTemplateTemplateTitle.AsString,s) then
   with  dm,WordTemplate do
    begin
     Edit;
     WordTemplateTemplateTitle.AsString:=s;
     Post;
    end else exit;
end;

procedure TEditTemplates.Button6Click(Sender: TObject);
begin
  inherited;
CreateText:=TCreateText.Create(Application);
CreateText.ShowModal;

end;

procedure TEditTemplates.EnableDsiable(en:boolean);
begin
  inherited;
Button1.Enabled:=En;
Button2.Enabled:=en;
Button3.Enabled:=en;
YDBGrid1.Enabled:=en;
if en then OnClose:=nil else OnClose:=AbortClose;
end;

procedure TEditTemplates.AbortClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
abort;
end;

procedure TEditTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   DeleteFile(_TempPath+_WordFileName);
end;

procedure TEditTemplates.BitBtn2Click(Sender: TObject);
begin
  inherited;
 if OpenDialog.Execute then
  with  dm,WordTemplate do
   begin
     Insert;
    with  dm,WordTemplateDoc do
     begin
      close;
      Parameters.ParamByName('id').Value:=dm.WordTemplateWordTemplateID.AsInteger;
      Open;
      Edit;
      WordTemplateDocWordTemplate.LoadFromFile(OpenDialog.FileName);
      Post;
     end;

    DM.SaveTemplateToFile;
    openFile(false);
    IsReadOnly:=false;
    EnableDsiable(False);
   end;


end;

procedure TEditTemplates.BitBtn1Click(Sender: TObject);
begin
  inherited;
   if messageShowString('��� �� ��� ���� �����',True) then
    dm.WordTemplate.Delete;

end;

procedure TEditTemplates.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  { TODO -oparsa : 14030203 }
  if (NewWidth < 494)  or (NewHeight < 410) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

procedure TEditTemplates.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

end;

end.
