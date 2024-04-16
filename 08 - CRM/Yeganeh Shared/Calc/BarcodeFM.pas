unit BarcodeFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, Menus, frxClass, frxBarcode,frxBarcod;


Type
  TFMBarCode = class(TForm)
    Panel3: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SBReport: TSpeedButton;
    LabHelp: TLabel;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    MenuItem1: TMenuItem;
    d1: TMenuItem;
    Label1: TLabel;
    RGBarType: TRadioGroup;
    EdtBarcodeNumber: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure d1Click(Sender: TObject);
  private

  public

  end;

var
  FMBarCode: TFMBarCode;

implementation

Uses BarcodeDM , Myutil , VertionDM;

{$R *.dfm}

procedure TFMBarCode.FormShow(Sender: TObject);
begin
   Form_Animate(Self);
end;

procedure TFMBarCode.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   Form_SetShortCut(Self,nil,nil,SBReport,Sender,Key,Shift);

   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
   if (Key = VK_Return)And(ssShift in Shift) then
      SelectNext(TWinControl(ActiveControl),False,True);
end;


procedure TFMBarCode.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFMBarCode.SBReportClick(Sender: TObject);
begin
   Cursor_SetPos(Self,SBReport,RepPopMnu);
end;

procedure TFMBarCode.NShowClick(Sender: TObject);
Var
   RepFileName : String;
   FrxReport : TFrxReport;
   I : Integer;
   //BarType : TfrxBarcodeType;
   BarCodeView : TfrxBarCodeView;
begin
   if Trim(EdtBarcodeNumber.Text) = '' then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ›Ì·œ "‘„«—Â »«—òœ" —« „ﬁœ«—œÂÌ ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
   end;

   DMBarcode := TDMBarcode.Create(Self);
   With DMBarcode do
      Try
         BarCodeView := TfrxBarCodeView.Create(Self);
         Case RGBarType.ItemIndex of
             0: BarCodeView.BarType := bcCodeEAN13;   //CodeEAN13
             1: BarCodeView.BarType := bcCodeEAN8;   //CodeEAN8
             2: BarCodeView.BarType := bcCodeEAN128A;   //CodeEAN128A
             3: BarCodeView.BarType := bcCodeEAN128B;   //CodeEAN128B
             4: BarCodeView.BarType := bcCodeEAN128C;   //CodeEAN128C
             5: BarCodeView.BarType := bcCode39;   //Code39
             6: BarCodeView.BarType := bcCode39Extended;   //Code39Extended
             7: BarCodeView.BarType := bcCode128A;   //Code128A
             8: BarCodeView.BarType := bcCode128B;   //Code128B
             9: BarCodeView.BarType := bcCode128C;   //Code128C
            10: BarCodeView.BarType := bcCode93;   //Code93
            11: BarCodeView.BarType := bcCode93Extended;   //Code93Extended
            12: BarCodeView.BarType := bcCodeMSI;   //CodeMSI
            13: BarCodeView.BarType := bcCodePostNet;   //CodePostNet
            14: BarCodeView.BarType := bcCodeCodabar;   //CodeCodabar
            15: BarCodeView.BarType := bcCodeUPC_A;   //CodeUPC_A
            16: BarCodeView.BarType := bcCodeUPC_E0;   //CodeUPC_E0
            17: BarCodeView.BarType := bcCodeUPC_E1;   //CodeUPC_E1
            18: BarCodeView.BarType := bcCodeUPC_Supp2;   //CodeUPC_Supp2
            19: BarCodeView.BarType := bcCodeUPC_Supp5;   //CodeUPC_Supp5
            20: BarCodeView.BarType := bcCode_2_5_interleaved;   //Code_2_5_interleaved
            21: BarCodeView.BarType := bcCode_2_5_industrial;   //Code_2_5_industrial
            22: BarCodeView.BarType := bcCode_2_5_matrix;   //Code_2_5_matrix
         end;

         RepFileName := 'Barcode1.fr3';
         FrxReport := frxRepBarcode ;
         Rep_LoadFile(FrxReport,RepFileName);
         For I := 1 to DMBarcode.frxRepBarcode.ComponentCount-1 do
            if frxRepBarcode.Components[I] is TfrxBarCodeView then
               With frxRepBarcode.Components[I] as TfrxBarCodeView do
               begin
                  //TfrxBarCodeView(frxRepBarcode.FindComponent('BarCode'+IntToStr(I))).BarType := BarType; //uses frxBarcod
                  //TfrxBarCodeView(frxRepBarcode.FindComponent('BarCode'+IntToStr(I))).Text := EdtBarcodeNumber.Text;
                  TfrxBarCodeView(frxRepBarcode.Components[I]).BarType := BarCodeView.BarType; //uses frxBarcod
                  TfrxBarCodeView(frxRepBarcode.Components[I]).Text := EdtBarcodeNumber.Text;
               end;

         if Sender = NShow  then
            Rep_Show(FrxReport , rtShow);
         if Sender = NPrint  then
            Rep_Show(FrxReport , rtPrint);
         if Sender = NDesign  then
            Rep_Show(FrxReport , rtDesign);
      Finally
         FreeAndNil(DMBarcode);
         FreeAndNil(BarCodeView);
      End;
end;

procedure TFMBarCode.d1Click(Sender: TObject);
begin
   Rep_CorrectDesign('Barcode1.fr3');
end;

Initialization
   RegisterClass(TFMBarCode);

end.
