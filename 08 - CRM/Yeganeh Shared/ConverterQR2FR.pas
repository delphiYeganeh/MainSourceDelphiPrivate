{******************************************}
{                                          }
{             FastReport 4                 }
{        Converter from QuickReport        }
{                                          }
{         Copyright (c) 2007-2008          }
{             by Serg Puhoff               }
{            Fast Reports Inc.             }
{                                          }
{                                          }
{******************************************}

//
// Using:
//   conv := TConverterQr2Fr.Create;
//   conv.Source := QuickRep1;
//   conv.Target := FReport;
//   conv.Convert;
//   FReport.SaveToFile('converted_fromQR.fr3');
//

unit ConverterQR2FR;

interface

uses frxClass, QuickRpt, frxADOComponents, strutils,math;

type
  TConverterQr2Fr = class
  private
    FTarget: TfrxReport;
    FSource: TQuickRep;
  protected
    procedure CreateMainBands;
    procedure CreateCustomBand(const ABand: TQRCustomband);
    procedure AddObjects(const ABand: TQRCustomband; const Band: TfrxBand);
  public
    property Source: TQuickRep read FSource write FSource;
    property Target: TfrxReport read FTarget write FTarget;

    procedure Convert;
  end;

implementation

uses SysUtils, Controls, QrPrntr, Classes, QRCtrls, frxRich;


{ TConverterQr2Fr }

procedure TConverterQr2Fr.AddObjects(const ABand: TQRCustomband;
  const Band: TfrxBand);
var
  i: integer;
  s: string;
  Memo: TfrxMemoView;
  Rich: TfrxRichView;
  Shape: TfrxShapeView;
  Image: TfrxPictureView;
  //????,??QrLabel, QrDBText ,QrExpr..
  Lbl: TQRLabel;
  Txt: TQRDBText;
  Exp: TQRExpr;
  Rt: TQRRichText;
  Sh: TQRShape;
  Img: TQRImage;
  Sys: TQRSYSData;
  ExpMemo: TQRExprMemo;
  cus: TQRCustomLabel;

begin
  for i := 0 to ABand.ControlCount - 1 do
    if ABand.Controls[i] is TQRLabel then
    begin
      Lbl := ABand.Controls[i] as TQRLabel;
      Memo := TfrxMemoView.Create(Band);
      Memo.CreateUniqueName;
      Memo.Memo.Text := Lbl.Caption;
      Memo.Font.Assign(Lbl.Font);
      memo.Font.Charset := 1;
      Memo.SetBounds(Lbl.Left, Lbl.Top, Lbl.Width*2, Lbl.Height);
    end

    else if ABand.Controls[i] is TQRExprMemo then
    begin
      ExpMemo := ABand.Controls[i] as TQRExprMemo;
      Memo := TfrxMemoView.Create(Band);
      Memo.CreateUniqueName;
      Memo.Memo.Text := ExpMemo.Lines.Text;
      Memo.Font.Assign(ExpMemo.Font);
      memo.Font.Charset := 1;

      Memo.SetBounds(ExpMemo.Left, ExpMemo.Top, ExpMemo.Width*2, ExpMemo.Height);
    end

    else if ABand.Controls[i] is TQRSYSData then
    begin
      Sys := ABand.Controls[i] as TQRSYSData;
      Memo := TfrxMemoView.Create(Band);
      Memo.CreateUniqueName;
      case sys.Data of
        qrsTime: Memo.Text := '[Time]';
        qrsDate: Memo.Text := '[Date]';
        qrsDateTime: Memo.Text := '[<Date>+<Time>]';
        qrsPageNumber: Memo.Text := '[Page]';
        qrsReportTitle: Memo.Text := '''kw-report''';
        qrsDetailCount: Memo.Text := '[COUNT(MasterData1)]';
        qrsDetailNo: Memo.Text := '[Line]';
      end;
      Memo.Font.Assign(Sys.Font);
      memo.Font.Charset := 1;
      Memo.SetBounds(Sys.Left, Sys.Top, Sys.Width*2, Sys.Height);
    end

    else if ABand.Controls[i] is TQRDBText then
    begin
      Txt := ABand.Controls[i] as TQRDBText;
      Memo := TfrxMemoView.Create(Band);
      Memo.CreateUniqueName;
      //Memo.Memo.Text := '[ds."'+Txt.DataField+'"]';
      if Target.DataSets.Count > 0 then
      begin
        Memo.DataSet := Target.DataSets[0].DataSet;
        Memo.DataField := Txt.DataField;
      end
      else
      begin
        Memo.Memo.Text := Txt.Caption;
      end;
      Memo.Font.Assign(Txt.Font);
      memo.Font.Charset := 1;
      if trim(Txt.Mask) = '0.00' then
        Memo.DisplayFormat.FormatStr := '%2.2f';
      Memo.SetBounds(Txt.Left, Txt.Top, Txt.Width*2, Txt.Height);
    end
    else if ABand.Controls[i] is TQRExpr then
    begin
      Exp := ABand.Controls[i] as TQRExpr;
      Memo := TfrxMemoView.Create(Band);
      Memo.CreateUniqueName;
      s := Exp.Expression;
      //s := stringreplace(
      if leftstr(s, 6) = 'PARAMS' then
        s := '[' + lowercase(rightstr(s, length(s) - 6)) + ']'
      else
      begin
        s := stringreplace(s, 'cdsReportDataSet.', '<ds."', [rfReplaceAll, rfIgnoreCase]);
        s := stringreplace(s, ' ', '', [rfReplaceAll]);
        s := stringreplace(s, '-', '"> - ', [rfReplaceAll]);
        s := stringreplace(s, '+', '"> + ', [rfReplaceAll]);
        s := stringreplace(s, '*', '"> * ', [rfReplaceAll]);
        s := stringreplace(s, '/', '"> / ', [rfReplaceAll]);
        s := '[' + s + '">]';
        s := stringreplace(s, ')">', '">)', [rfReplaceAll]);
      end;
      Memo.Memo.Text := s;
      Memo.Font.Assign(Exp.Font);
      memo.Font.Charset := 1;
      if trim(Exp.Mask) = '0.00' then
        Memo.DisplayFormat.FormatStr := '%2.2f';

      Memo.SetBounds(Exp.Left, Exp.Top, Exp.Width*2, Exp.Height);
    end
    else if ABand.Controls[i] is TQRRichText then
    begin
      Rt := ABand.Controls[i] as TQRRichText;
      Rich := TfrxRichView.Create(Band);
      Rich.RichEdit.Lines.Assign(Rt.Lines);
      Rich.CreateUniqueName;
      Rich.RichEdit.Font.Assign(Rt.Font);
      Rich.RichEdit.Font.Charset := 1;
      Rich.Color := Rt.Color;
      Rich.SetBounds(Rt.Left, Rt.Top, Rt.Width*2, Rt.Height);
    end

    else if ABand.Controls[i] is TQRCustomLabel then
    begin

      cus := ABand.Controls[i] as TQRCustomLabel;
      Memo := TfrxMemoView.Create(Band);
      Memo.CreateUniqueName;
      if cus.Caption = '' then
        Memo.Memo.Text := cus.Lines.Text
      else
        Memo.Memo.Text := cus.Caption;
      Memo.Font.Assign(cus.Font);
      memo.Font.Charset := 1;
      Memo.SetBounds(cus.Left, cus.Top, cus.Width*2, cus.Height);
    end

    else if ABand.Controls[i] is TQRShape then
    begin
      Sh := ABand.Controls[i] as TQRShape;
      Shape := TfrxShapeView.Create(Band);
      Shape.CreateUniqueName;
      case Sh.Shape of
        qrsRectangle: Shape.Shape := skRectangle;
        qrsCircle: Shape.Shape := skEllipse;
//        qrsRoundRect: Shape.Shape := skRoundRectangle;
      end;
      Shape.SetBounds(Sh.Left, Sh.Top, ifthen(Sh.Width=1,0,Sh.Width), ifthen(Sh.Height=1,0,Sh.Height));
    end

    else if ABand.Controls[i] is TQRImage then
    begin
      Img := ABand.Controls[i] as TQRImage;
      Image := TfrxPictureView.Create(Band);
      Image.CreateUniqueName;
      Image.Picture.Assign(Img.Picture);
      Image.SetBounds(Img.Left, Img.Top, Img.Width*2, Img.Height);
    end;

end;

procedure TConverterQr2Fr.Convert;
begin
  if not Assigned(Source) then
    raise Exception.Create('Source not assigned');
  if not Assigned(Target) then
    raise Exception.Create('Target not assigned');

  Target.Clear;
  CreateMainBands;
end;

procedure TConverterQr2Fr.CreateCustomBand(const ABand: TQRCustomBand);
var
  s: string;
  Band: TfrxBand;
begin
  if ABand.BandType = rbPageHeader then
    Band := TfrxPageHeader.Create(Target.Pages[0])
  else
    if ABand.BandType = rbPageFooter then
      Band := TfrxPageFooter.Create(Target.Pages[0])
    else
      if ABand.BandType = rbTitle then
        //Band := TfrxHeader.Create(Target.Pages[0])
        Band := TfrxReportTitle.Create(Target.Pages[0])
      else
        if ABand.BandType = rbChild then
          Band := TfrxChild.Create(Target.Pages[0])
        else
          if ABand.BandType = rbColumnHeader then
            Band := TfrxColumnHeader.Create(Target.Pages[0])
          else
            if ABand.BandType = rbGroupHeader then
            begin
              s := (ABand as TQrGroup).Expression;
              Band := TfrxGroupHeader.Create(Target.Pages[0]);
              s := stringreplace(s, 'cdsReportDataSet.', 'ds."', [rfReplaceAll, rfIgnoreCase]);
              s := trim(s) + '"';
              (Band as TfrxGroupHeader).Condition := s;
            end
            else
              if ABand.BandType = rbGroupFooter then
                Band := TfrxGroupFooter.Create(Target.Pages[0])
              else
                if ABand.BandType = rbDetail then
                  //Band := TfrxDetailData.Create(Target.Pages[0])
                  Band := TfrxMasterData.Create(Target.Pages[0])
                else
                  Exit;

  Band.CreateUniqueName;

  Band.Top := ABand.Top;
  Band.Height := ABand.Height;

  AddObjects(ABand, Band);
end;

procedure TConverterQr2Fr.CreateMainBands;
var
  Page: TfrxReportPage;
  ds: TfrxAdoquery;
  i: integer;
begin
  Page := TfrxReportPage.Create(Target);
  ds := TfrxAdoquery.Create(Target);
  ds.Name := 'ds';
  Target.DataSets.Add(ds);
  Page.CreateUniqueName;
  Page.SetDefaults;

  for i := 0 to Source.BandList.Count - 1 do
    CreateCustomBand(TQRCustomBand(Source.BandList[i]));
end;
end.
