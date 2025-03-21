unit LetterFilterU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, YWhereEdit, ComCtrls,BaseUnit, Buttons, ExtCtrls,
  ImgList, DB, ADODB, IWControl, IWCompListbox, IWDBStdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxColorComboBox, cxDBColorComboBox,
  YDBComboBox, DBCtrls, Yeganeh_Word;

type
  TLetterFilter = class(TMBaseForm)
    Label11: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label6: TLabel;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit13: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit25: TYWhereEdit;
    YWhereEdit27: TYWhereEdit;
    YWhereEdit15: TYWhereEdit;
    Label15: TLabel;
    YWhereEdit14: TYWhereEdit;
    Label2: TLabel;
    YWhereEdit2: TYWhereEdit;
    Label8: TLabel;
    YWhereEdit6: TYWhereEdit;
    Label18: TLabel;
    UserMemo1: TLabel;
    YWhereEdit17: TYWhereEdit;
    YWhereEdit12: TYWhereEdit;
    UserMemo2: TLabel;
    YWhereEdit1: TYWhereEdit;
    UserMemo3: TLabel;
    YWhereEdit5: TYWhereEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    ListItemID: TYWhereEdit;
    Label5: TLabel;
    ChBoListItem: TCheckBox;
    YWE_Incommingdate: TYWhereEdit;
    Label7: TLabel;
    CBEx_Color: TComboBoxEx;
    Label9: TLabel;
    ImageList: TImageList;
    ChBoIncommingNO: TCheckBox;
    SBFarsi: TSpeedButton;
    SBEnglish: TSpeedButton;
    QrSrchArchiveFolder: TADOQuery;
    EdtLetterArchiveFolder: TEdit;
    SBLetterArchiveFolder: TSpeedButton;
    QrSrchArchiveFolderFolderID: TAutoIncField;
    QrSrchArchiveFolderTitle: TWideStringField;
    cbDefineColors: TDBLookupComboBox;
    Yeganeh_Word1: TYeganeh_Word;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure YWhereEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CBEx_ColorKeyPress(Sender: TObject; var Key: Char);
    procedure YWhereEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure SBFarsiClick(Sender: TObject);
    procedure SBEnglishClick(Sender: TObject);
    procedure SBLetterArchiveFolderClick(Sender: TObject);
  private
    ChangeKaf : Boolean;
  public
    { Public declarations }
    function Where:string;
    Procedure ShowInPanel(P:TWinControl);
  end;

var
  LetterFilter: TLetterFilter;

implementation

uses Dmu , YShamsiDate, BusinessLayer, SearchFM;

{$R *.dfm}
Procedure TLetterFilter.ShowInPanel(P:TWinControl);
begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
end;

function TLetterFilter.Where:string;
Var
   i: byte;
   s:string;
   LetterColor : Integer;
begin
   for i:=1 to ComponentCount-1 do
      if Components[I].ClassNameIs('TYWhereEdit') then
      begin
         S := TYWhereEdit(Components[i]).Resultwhere;
         if s<>'' then
            if Components[i].Name=ListItemID.Name then
            begin
               {Ranjbar 89.06.21 ID=50}
               //Result:=Result+' and l.letterid in (select letterid from letterdata where '+s+') '
               if not ChBoListItem.Checked then
                  Result := Result+' and l.letterid in (select letterid from letterdata where '+s+') '
               else
                  Result := Result+' and l.letterid not in (select letterid from letterdata where '+s+') ';

               if (ListItemID.Text = '')And (ChBoListItem.Checked) then
                  ChBoListItem.Checked := False;
               //---
            end
               else
                   Result := Result+' and '+s+'';
      end;

   {Ranjbar 89.07.15 ID=55}   
   if CBEx_Color.ItemIndex > 0 then
   begin
      Case CBEx_Color.ItemIndex of
         1: LetterColor := clRed; //����
         2: LetterColor := clBlue; //���
         3: LetterColor := clGreen; //���
         4: LetterColor := clGray; //�������
         5: LetterColor := clPurple; //����
         6: LetterColor := RGB(255,95,0); //������  LowOrange
         7: LetterColor := RGB(0,175,240); //������ ��  LowTurquoise;
         8: LetterColor := RGB(240,90,160); //�����  LowPink;
      end;
      Result := Result + ' And (lc.ColorId = '+ IntToStr(LetterColor)+') ' ;
   end;
   //---

   if Trim(EdtLetterArchiveFolder.Text) <> '' then
      Result := Result + ' And(LetterArchiveFolder.ArchiveFolderID in('+ EdtLetterArchiveFolder.Text +') ) ' ;
   if cbDefineColors.KeyValue> -2 then
      begin
         if  cbDefineColors.KeyValue=-1 then
            Result := Result + ' And(l.letterid in(select letterid from LetterData where ColorID is null ) ) '
         else
            Result := Result + ' And(l.letterid in(select letterid from LetterData where ColorID ='+vartostr(cbDefineColors.KeyValue)+' ) ) '
      end;




   if Result <> '' then
      Result:=copy(Result,6,length(Result)-5);
end;

procedure TLetterFilter.FormCreate(Sender: TObject);
begin
   UserMemo1.Caption:= dm.UserMemo1;
   UserMemo2.Caption:= dm.UserMemo2;
   UserMemo3.Caption:= dm.UserMemo3;
end;

procedure TLetterFilter.YWhereEdit11KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = '�' then
     if ChangeKaf then
        Key := #152; //�
end;

procedure TLetterFilter.FormShow(Sender: TObject);
begin
   inherited;
   ChangeKaf := False;
   ChangeKaf := Dm.GetValue(200);// ����� ��� "�" �� ��� "�"�� ���� ���
   dm.qDC.Open;
   cbDefineColors.keyvalue:=-2;
end;

procedure TLetterFilter.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  //���� ���� ���� �����
  Keyboard_Simulation(YWhereEdit15,VK_SPACE,True,False,False);
end;

procedure TLetterFilter.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  //���� ���� ���� �����
  Keyboard_Simulation(YWhereEdit14,VK_SPACE,True,False,False);
end;

procedure TLetterFilter.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  //���� ���� ���� �����
  Keyboard_Simulation(YWhereEdit25,VK_SPACE,True,False,False);
end;

procedure TLetterFilter.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  //���� ���� ���� �����
  Keyboard_Simulation(YWhereEdit6,VK_SPACE,True,False,False);
end;

procedure TLetterFilter.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  //���� ���� ���� �����
  Keyboard_Simulation(ListItemID,VK_SPACE,True,False,False);

end;

procedure TLetterFilter.CBEx_ColorKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   Abort;
end;

procedure TLetterFilter.YWhereEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.02 ID=230}
   //����� ��� ����� ���     � . 55 - 12_125 . � / � / ���
   //TEdit(Sender).Text := Keyboard_TypeWithDivider(TEdit(Sender).Text , Key);
   if not ChBoIncommingNO.Checked then
   begin
      if YWhereEdit4.BiDiMode = bdLeftToRight then
         YWhereEdit4.BiDiMode := bdRightToLeft;
      YWhereEdit4.Text := Keyboard_TypeWithDivider(YWhereEdit4.Text,Key);
   end;
   //---
end;

procedure TLetterFilter.SBFarsiClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.26 ID=90}
   YWhereEdit4.SetFocus;
   YWhereEdit4.SelectAll;
   Keyboard_Farsi;
   YWhereEdit4.OnKeyPress := YWhereEdit4KeyPress;
   YWhereEdit4.BiDiMode := bdRightToLeft;
   //---
end;

procedure TLetterFilter.SBEnglishClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.26 ID=90}
   YWhereEdit4.SetFocus;
   YWhereEdit4.SelectAll;
   Keyboard_English;
   YWhereEdit4.OnKeyPress := nil;
   YWhereEdit4.BiDiMode := bdLeftToRight;
   //---
end;

procedure TLetterFilter.SBLetterArchiveFolderClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 90.03.17 ID=103}
   Try
      QrSrchArchiveFolder.Close;
      QrSrchArchiveFolder.Parameters.ParamByName('UserID').Value := _UserId;
      QrSrchArchiveFolder.Parameters.ParamByName('ArchiveCenterID').Value := _ArchiveCenterId;
      QrSrchArchiveFolder.Open;

      if FmSearch.GetSearchValue(QrSrchArchiveFolder,QrSrchArchiveFolderFolderID.FieldName,
                                 QrSrchArchiveFolderTitle.FieldName,' ',400,400)<>'0' then
      begin
         if Trim(EdtLetterArchiveFolder.Text) = '' then
            EdtLetterArchiveFolder.Text := QrSrchArchiveFolderFolderID.AsString
         else
            EdtLetterArchiveFolder.Text := EdtLetterArchiveFolder.Text + ',' + QrSrchArchiveFolderFolderID.AsString
      end;
   Finally
        QrSrchArchiveFolder.Close;
   End;
   //---
end;

end.
