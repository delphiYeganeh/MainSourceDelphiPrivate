unit UviewExamKey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ExtActns, ActnList, ADODB, ExtCtrls, Grids,
  DBGrids, YDbgrid, StdCtrls, Buttons, YWhereEdit, CheckLst, YchecklistBox,
  ComCtrls, Yeganeh_Word, QuickRpt, QRCtrls, DBCtrls, UemsVCL, Mask,
  xpWindow, xpBitBtn;

type
  TFrViewExamKey = class(TMBaseForm)
    Get_ExamKey_Details_ByExamID: TADOStoredProc;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    Get_ExamKey_Details_ByExamIDNumber: TSmallintField;
    Get_ExamKey_Details_ByExamIDItem1: TBooleanField;
    Get_ExamKey_Details_ByExamIDItem2: TBooleanField;
    Get_ExamKey_Details_ByExamIDItem3: TBooleanField;
    Get_ExamKey_Details_ByExamIDItem4: TBooleanField;
    Get_ExamKey_Details_ByExamIDItem5: TBooleanField;
    QRShape5: TQRShape;
    Get_ExamKey_Details_ByExamIDCorrectItemNumber: TWordField;
    Get_ExamKey_Details_ByExamIDCorrectItemNumber2: TWordField;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape8: TQRShape;
    QGetNumberOfItems: TADOQuery;
    QGetNumberOfItemsNumber_of_Items: TWordField;
    QRShape9: TQRShape;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    Get_ExamKey_Details_ByExamIDCorrectItemNumber3: TIntegerField;
    Get_ExamKey_Details_ByExamIDCorrectItemNumber4: TIntegerField;
    Get_ExamKey_Details_ByExamIDCorrectItemNumber5: TIntegerField;
    Get_ExamKey_Details_ByExamIDCorrectItemNumber6: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1Preview(Sender: TObject);
  private
    FNumberOFItem: Integer;
    procedure SetNumberOFItem(const Value: Integer);
    function GetNumberOfItem:Integer;
    procedure ShowNumberOfItems;
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent);reintroduce;virtual;
    property NumberOFItem:Integer read FNumberOFItem write SetNumberOFItem;
  end;

var
  FrViewExamKey: TFrViewExamKey;

implementation

uses dmu, BusinessLayer,  ULetterTemplate, Upreview, UfrBase;

{$R *.dfm}

procedure TFrViewExamKey.Button1Click(Sender: TObject);

begin
  inherited;
  with dm,Get_ExamKey_Details_ByExamID do
   begin
     close;
     Parameters.ParamByName('@ExamId').Value:=dm.Browse_ExamExamID.AsInteger;
     Open;
  end;

end;

constructor TFrViewExamKey.create(AOwner: TComponent);
begin
  inherited create(AOwner);
  NumberOFItem:=GetNumberOfItem;
  ShowNumberOfItems;
  QuickRep1.Preview;
end;

procedure TFrViewExamKey.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;

 with Get_ExamKey_Details_ByExamID do
  begin
      QRShape1.Brush.Color:=clWhite;
      QRShape2.Brush.Color:=clWhite;
      QRShape3.Brush.Color:=clWhite;
      QRShape4.Brush.Color:=clWhite;
      QRShape8.Brush.Color:=clWhite;
      QRShape9.Brush.Color:=clWhite;

      QRShape1.Brush.Style:=bsClear;
      QRShape2.Brush.Style:=bsClear;
      QRShape3.Brush.Style:=bsClear;
      QRShape4.Brush.Style:=bsClear;
      QRShape8.Brush.Style:=bsClear;
      QRShape9.Brush.Style:=bsClear;

     case FieldByName('CorrectItemNumber').Value  of
      1:QRShape1.Brush.Color:=clBlack;
      2:QRShape2.Brush.Color:=clBlack;
      3:QRShape3.Brush.Color:=clBlack;
      4:QRShape4.Brush.Color:=clBlack;
      5:QRShape8.Brush.Color:=clBlack;
      6:QRShape9.Brush.Color:=clBlack;
     end;

     case FieldByName('CorrectItemNumber2').Value  of
      1:
        Begin
          QRShape1.Brush.Color      := clBlack;
          QRShape1.Brush.Style      := bsFDiagonal;
        End;
      2:
        Begin
          QRShape2.Brush.Color      := clBlack;
          QRShape2.Brush.Style      := bsFDiagonal;
        End;
      3:
        Begin
          QRShape3.Brush.Color      :=clBlack;
          QRShape3.Brush.Style      := bsFDiagonal;
        End;
      4:
        Begin
          QRShape4.Brush.Style      := bsFDiagonal;
          QRShape4.Brush.Color      :=clBlack;
        End;
      5:
        Begin
          QRShape8.Brush.Style      := bsFDiagonal;
          QRShape8.Brush.Color      :=clBlack;
        End;
      6:
        Begin
          QRShape9.Brush.Style      := bsFDiagonal;
          QRShape9.Brush.Color      :=clBlack;
        End;
     end;
 //-------------------------begin Movahed 1398/0326---------------------------
      case FieldByName('CorrectItemNumber3').Value  of
      1:
        Begin
          QRShape1.Brush.Color      := clBlack;
          QRShape1.Brush.Style      := bsFDiagonal;
        End;
      2:
        Begin
          QRShape2.Brush.Color      := clBlack;
          QRShape2.Brush.Style      := bsFDiagonal;
        End;
      3:
        Begin
          QRShape3.Brush.Color      :=clBlack;
          QRShape3.Brush.Style      := bsFDiagonal;
        End;
      4:
        Begin
          QRShape4.Brush.Style      := bsFDiagonal;
          QRShape4.Brush.Color      :=clBlack;
        End;
      5:
        Begin
          QRShape8.Brush.Style      := bsFDiagonal;
          QRShape8.Brush.Color      :=clBlack;
        End;
      6:
        Begin
          QRShape9.Brush.Style      := bsFDiagonal;
          QRShape9.Brush.Color      :=clBlack;
        End;
     end;
     case FieldByName('CorrectItemNumber4').Value  of
      1:
        Begin
          QRShape1.Brush.Color      := clBlack;
          QRShape1.Brush.Style      := bsFDiagonal;
        End;
      2:
        Begin
          QRShape2.Brush.Color      := clBlack;
          QRShape2.Brush.Style      := bsFDiagonal;
        End;
      3:
        Begin
          QRShape3.Brush.Color      :=clBlack;
          QRShape3.Brush.Style      := bsFDiagonal;
        End;
      4:
        Begin
          QRShape4.Brush.Style      := bsFDiagonal;
          QRShape4.Brush.Color      :=clBlack;
        End;
      5:
        Begin
          QRShape8.Brush.Style      := bsFDiagonal;
          QRShape8.Brush.Color      :=clBlack;
        End;
      6:
        Begin
          QRShape9.Brush.Style      := bsFDiagonal;
          QRShape9.Brush.Color      :=clBlack;
        End;
     end;
     case FieldByName('CorrectItemNumber5').Value  of
      1:
        Begin
          QRShape1.Brush.Color      := clBlack;
          QRShape1.Brush.Style      := bsFDiagonal;
        End;
      2:
        Begin
          QRShape2.Brush.Color      := clBlack;
          QRShape2.Brush.Style      := bsFDiagonal;
        End;
      3:
        Begin
          QRShape3.Brush.Color      :=clBlack;
          QRShape3.Brush.Style      := bsFDiagonal;
        End;
      4:
        Begin
          QRShape4.Brush.Style      := bsFDiagonal;
          QRShape4.Brush.Color      :=clBlack;
        End;
      5:
        Begin
          QRShape8.Brush.Style      := bsFDiagonal;
          QRShape8.Brush.Color      :=clBlack;
        End;
      6:
        Begin
          QRShape9.Brush.Style      := bsFDiagonal;
          QRShape9.Brush.Color      :=clBlack;
        End;
     end;
     case FieldByName('CorrectItemNumber6').Value  of
      1:
        Begin
          QRShape1.Brush.Color      := clBlack;
          QRShape1.Brush.Style      := bsFDiagonal;
        End;
      2:
        Begin
          QRShape2.Brush.Color      := clBlack;
          QRShape2.Brush.Style      := bsFDiagonal;
        End;
      3:
        Begin
          QRShape3.Brush.Color      :=clBlack;
          QRShape3.Brush.Style      := bsFDiagonal;
        End;
      4:
        Begin
          QRShape4.Brush.Style      := bsFDiagonal;
          QRShape4.Brush.Color      :=clBlack;
        End;
      5:
        Begin
          QRShape8.Brush.Style      := bsFDiagonal;
          QRShape8.Brush.Color      :=clBlack;
        End;
      6:
        Begin
          QRShape9.Brush.Style      := bsFDiagonal;
          QRShape9.Brush.Color      :=clBlack;
        End;
     end;
 //-------------------------end mvahed 1398/0326------------------------------
   end;
end;

procedure TFrViewExamKey.FormCreate(Sender: TObject);
begin
  inherited;
  with dm,Get_ExamKey_Details_ByExamID do
   begin
     close;
     Parameters.ParamByName('@ExamId').Value:=dm.Browse_ExamExamID.AsInteger;
     Open;
  end;
end;

function TFrViewExamKey.GetNumberOfItem: Integer;
begin
  Result:=0;
  QGetNumberOfItems.Close;
  QGetNumberOfItems.SQL.Clear;
  QGetNumberOfItems.SQL.Add('SELECT Number_of_Items FROM Exam WHERE ExamID='+IntToStr(dm.Browse_ExamExamID.AsInteger));
  QGetNumberOfItems.Open;
  if not QGetNumberOfItems.IsEmpty then
      if not QGetNumberOfItemsNumber_of_Items.IsNull then
               Result:=QGetNumberOfItemsNumber_of_Items.AsInteger;
end;

procedure TFrViewExamKey.QuickRep1Preview(Sender: TObject);
begin
  inherited;
  Fpreview:=TFpreview.Create(Application);
  Fpreview.QRPreview1.QRPrinter:=QuickRep1.QRPrinter;
  Fpreview.Show;

end;

procedure TFrViewExamKey.SetNumberOFItem(const Value: Integer);
begin
  FNumberOFItem := Value;
end;

procedure TFrViewExamKey.ShowNumberOfItems;
begin
  case NumberOFItem of
     1:
       begin
          QRShape2.Width:=0;
          QRShape3.Width:=0;
          QRShape4.Width:=0;
          QRShape8.Width:=0;
          QRShape9.Width:=0;
       end;
     2:
       begin
          QRShape3.Width:=0;
          QRShape4.Width:=0;
          QRShape8.Width:=0;
          QRShape9.Width:=0;
       end;
     3:
       begin
          QRShape4.Width:=0;
          QRShape8.Width:=0;
          QRShape9.Width:=0;
       end;
     4:
       begin
          QRShape8.Width:=0;
          QRShape9.Width:=0;
       end;
     5:
       begin
          QRShape9.Width:=0;
       end;
  end;
end;

end.
