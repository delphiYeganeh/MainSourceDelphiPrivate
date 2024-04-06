unit _AbstractUI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Actions,
  Vcl.ActnList, EhLibVCL, GridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.Buttons,
  EhlibADO, DBAxisGridsEh,
  Vcl.StdCtrls, Math, StrUtils, PrnDbgeh, Data.DB,
  Generics.Collections, Generics.Defaults, Classes, ActnList;

type
  TfrmAbstract = class(TForm)
    aclAbstract: TActionList;
    actClose: TAction;
    actDefSize: TAction;
    ehPrintMain: TPrintDBGridEh;
    actPrint: TAction;
    actSetPrint: TAction;
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actDefSizeExecute(Sender: TObject);
    procedure EhGridGlobalMenuClick(Sender: TObject);
    procedure EhGridGlobalMenuPopup(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSetPrintExecute(Sender: TObject);
  private

  protected
    procedure LoadBasePrintParams;
    procedure LoadPrintParams;
    procedure SetPrintsColumns; virtual;
    procedure SetDefaultColumns; virtual;
  public
    AllowPrint: Boolean;
    AbstractKeyName: string;
    RegWidthList, RegVisibleList, RegIndexList, RegFooterTypeList : TStringList;
  end;

var
  frmAbstract: TfrmAbstract;

implementation

uses Menus, PrViewEh, Printers, SolarCalendarPackage;
{$R *.dfm}

procedure TfrmAbstract.actCloseExecute(Sender: TObject);
begin
  Close;
end;

{$REGION 'actDefSizeExecute'}
procedure TfrmAbstract.actDefSizeExecute(Sender: TObject);
begin
  if Self.Constraints.MinHeight > 0 then
    Self.Height := Self.Constraints.MinHeight;
  if Self.Constraints.MinWidth > 0 then
    Self.Width := Self.Constraints.MinWidth;
  Self.Top := 10;
  Self.Left := 10;
end;
{$ENDREGION}

{$REGION 'FormClose'}
procedure TfrmAbstract.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I, J, Fvt: Integer;
  cxPath, EhPath: string;
  MenuItem : TMenuItem;
begin
  {========= Save Window State ===========}
  SaveToRegistry(AbstractKeyName, 'wState', ifthen(Self.WindowState = wsNormal, 0, 1));
  SaveToRegistry(AbstractKeyName, 'wWidth', Self.Width);
  SaveToRegistry(AbstractKeyName, 'wHeight', Self.Height);
  SaveToRegistry(AbstractKeyName, 'wLeft', Self.Left);
  SaveToRegistry(AbstractKeyName, 'wTop', Self.Top);
  {========= Save Grids State ===========}
  for I := 0 to self.ComponentCount - 1 do
  begin
    if (Components[I] is TDBGridEh) then
    begin
      EhPath := AbstractKeyName + '\EhGrid\' + TDBGridEh(Components[I]).Name;
      RegWidthList := TStringList.Create;
      RegVisibleList := TStringList.Create;
      RegIndexList := TStringList.Create;
      RegFooterTypeList := TStringList.Create;
      try
        for J := 0 to TDBGridEh(Components[I]).Columns.Count - 1 do
        begin
          RegWidthList.Add(TDBGridEh(Components[I]).Columns[J].FieldName+'|W|'+IntToStr(TDBGridEh(Components[I]).Columns[J].Width));
          RegVisibleList.Add(TDBGridEh(Components[I]).Columns[J].FieldName+'|V|'+IntToStr(TDBGridEh(Components[I]).Columns[J].Tag));
          RegIndexList.Add(TDBGridEh(Components[I]).Columns[J].FieldName+'|I|'+IntToStr(TDBGridEh(Components[I]).Columns[J].Index));
          If (TDBGridEh(Components[I]).Columns[J].Footer.ValueType = fvtNon) then Fvt := 0
          else If (TDBGridEh(Components[I]).Columns[J].Footer.ValueType = fvtSum) then Fvt := 1
          else If (TDBGridEh(Components[I]).Columns[J].Footer.ValueType = fvtAvg) then Fvt := 2
          else If (TDBGridEh(Components[I]).Columns[J].Footer.ValueType = fvtCount) then Fvt := 3
          else if (TDBGridEh(Components[I]).Columns[J].Footer.ValueType = fvtFieldValue) then Fvt := 4;
          RegFooterTypeList.Add(TDBGridEh(Components[I]).Columns[J].FieldName+'|F|'+IntToStr(Fvt));
        end;
        SaveToRegistry(EhPath, 'ColumnsWidth', RegWidthList.CommaText);
        SaveToRegistry(EhPath, 'ColumnsVisible', RegVisibleList.CommaText);
        SaveToRegistry(EhPath, 'ColumnsIndex', RegIndexList.CommaText);
        SaveToRegistry(EhPath, 'ColumnsFooterType', RegFooterTypeList.CommaText);
      finally
        RegWidthList.Free;
        RegVisibleList.Free;
        RegIndexList.Free;
        RegFooterTypeList.Free;
      end;
      SaveToRegistry(EhPath, 'ShowFooter', (TDBGridEh(Components[I]).FooterRowCount = 1));
    end;
  end;
end;
{$ENDREGION}

{$REGION 'FormCreate'}
procedure TfrmAbstract.FormCreate(Sender: TObject);
begin
  AbstractKeyName := 'Forms\' + IfThen(Self.Tag > 0, Self.ClassName + IntToStr(Self.Tag), Self.ClassName);
  {========= Load Window State ===========}
  Self.WindowState := wsNormal;
  Self.Width := LoadFromRegistry(AbstractKeyName, 'wWidth', Self.Width);
  Self.Height := LoadFromRegistry(AbstractKeyName, 'wHeight', Self.Height);
  Self.Left := LoadFromRegistry(AbstractKeyName, 'wLeft', 10);
  Self.Top := LoadFromRegistry(AbstractKeyName, 'wTop', 10);
  if LoadFromRegistry(AbstractKeyName, 'wState', 0) <> 0 then
    Self.WindowState := wsMaximized;
  {========= Load Window State ===========}
  SetKeyBoardToPersian;
  AllowPrint := False;
end;
{$ENDREGION}

{$REGION 'FormShow'}
procedure TfrmAbstract.FormShow(Sender: TObject);
var
  I, j, Fvt, IntValue: Integer;
  EhPath, fieldName: string;
  MenuItem, MenuItem2, SubMenuItem: TMenuItem;
  GridPrinter : TPrintDBGridEh;
  GrdIndcMenu : TPopupMenu;
  BoolValue : Boolean;
begin
  {========= Load Grids State ===========}
  for I := 0 to Self.ComponentCount - 1 do
  begin
    if (Components[I] is TSolarDatePicker) then
      TSolarDatePicker(Components[I]).Height := 21
    {$REGION 'TDBGridEh'}
    else if (Components[I] is TDBGridEh) then
    begin
      {$REGION 'Main Configuration'}
      TDBGridEh(Components[I]).EmptyDataInfo.Active := True;
      TDBGridEh(Components[I]).EmptyDataInfo.Text := 'اطلاعاتی جهت نمایش وجود ندارد';
      TDBGridEh(Components[I]).ColumnDefValues.Layout := tlCenter;
      TDBGridEh(Components[I]).IndicatorOptions := [gioShowRowIndicatorEh];
      TDBGridEh(Components[I]).IndicatorTitle.UseGlobalMenu := False;
      TDBGridEh(Components[I]).IndicatorTitle.ShowDropDownSign := True;
      TDBGridEh(Components[I]).IndicatorTitle.TitleButton := True;
      TDBGridEh(Components[I]).SumList.Active := True;
      TDBGridEh(Components[I]).STFilter.Visible := False;
      TDBGridEh(Components[I]).STFilter.Local := True;
      TDBGridEh(Components[I]).TitleParams.FillStyle := cfstGradientEh;
      TDBGridEh(Components[I]).Flat := False;
      with TDBGridEh(Components[I]).FooterParams do
      begin
        Color := TDBGridEh(Components[I]).Color;
        VertLineColor := Color;
        HorzLineColor := clMedGray;
        Font.Color := clBlue;
        Font.Style := Font.Style + [fsBold];
      end;

      if TDBGridEh(Components[I]).ReadOnly then
        TDBGridEh(Components[I]).Options := TDBGridEh(Components[I]).Options - [dgEditing]; // + [dgRowSelect];
      {$ENDREGION}
      {$REGION 'Registry'}
      if TDBGridEh(Components[I]).Tag <> 666 then
      begin
        EhPath := AbstractKeyName + '\EhGrid\' + TDBGridEh(Components[I]).Name;
        RegWidthList := TStringList.Create;
        RegVisibleList := TStringList.Create;
        RegIndexList := TStringList.Create;
        RegFooterTypeList := TStringList.Create;
        try
          TDBGridEh(Components[I]).SearchPanel.PersistentShowing := True;
          RegWidthList.CommaText := LoadFromRegistry(EhPath, 'ColumnsWidth', '');
          RegVisibleList.CommaText := LoadFromRegistry(EhPath, 'ColumnsVisible', '');
          RegIndexList.CommaText := LoadFromRegistry(EhPath, 'ColumnsIndex', '');
          RegFooterTypeList.CommaText := LoadFromRegistry(EhPath, 'ColumnsFooterType', '');

          if RegVisibleList.Count > 1 then
            for j := 0 to RegVisibleList.Count - 1 do
            begin
              fieldName := Copy(RegVisibleList[j], 1, Pos('|V|', RegVisibleList[j])-1);
              IntValue := StrToIntDef(Copy(RegVisibleList[j], Pos('|V|', RegVisibleList[j])+Length('|V|'), 2), 0);
              if TDBGridEh(Components[I]).FindFieldColumn(fieldName) <> nil then
                TDBGridEh(Components[I]).FindFieldColumn(fieldName).Tag := IntValue;
            end;
          if RegIndexList.Count > 1 then
            for j := 0 to RegIndexList.Count - 1 do
            begin
              fieldName := Copy(RegIndexList[j], 1, Pos('|I|', RegIndexList[j])-1);
              IntValue := StrToIntDef(Copy(RegIndexList[j], Pos('|I|', RegIndexList[j])+Length('|I|'), 2), 0);
              if TDBGridEh(Components[I]).FindFieldColumn(fieldName) <> nil then
                TDBGridEh(Components[I]).FindFieldColumn(fieldName).Index := IntValue;
            end;
          if RegWidthList.Count > 1 then
            for j := 0 to RegWidthList.Count - 1 do
            begin
              fieldName := Copy(RegWidthList[j], 1, Pos('|W|', RegWidthList[j])-1);
              IntValue := StrToIntDef(Copy(RegWidthList[j], Pos('|W|', RegWidthList[j])+Length('|W|'), 4), 50);
              if TDBGridEh(Components[I]).FindFieldColumn(fieldName) <> nil then
                TDBGridEh(Components[I]).FindFieldColumn(fieldName).Width := IntValue;
            end;
          if RegFooterTypeList.Count > 1 then
          begin
            for j := 0 to RegFooterTypeList.Count - 1 do
            begin
              fieldName := Copy(RegFooterTypeList[j], 1, Pos('|F|', RegFooterTypeList[j])-1);
              IntValue := StrToIntDef(Copy(RegFooterTypeList[j], Pos('|F|', RegFooterTypeList[j])+Length('|F|'), 1), 0);
              case IntValue of
                0: TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.ValueType := fvtNon;
                1:
                begin
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Alignment := taRightJustify;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Color := clInactiveBorder;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.DisplayFormat := '0,';
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.ValueType := fvtSum;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.FieldName := fieldName;
                end;
                2:
                begin
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.ValueType := fvtAvg;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Alignment := taRightJustify;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Color := clInactiveBorder;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.DisplayFormat := '0,';
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.FieldName := fieldName;
                end;
                3:
                begin
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.ValueType := fvtCount;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Alignment := taCenter;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Color := clInactiveBorder;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.DisplayFormat := '0,';
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.ValueType := fvtCount;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.FieldName := fieldName;
                end;
                4:
                begin
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.ValueType := fvtFieldValue;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Alignment := taLeftJustify;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.Color := clInactiveBorder;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.ValueType := fvtFieldValue;
                  TDBGridEh(Components[I]).FindFieldColumn(fieldName).Footer.FieldName := FieldName;
                end;
              end;
            end;
          end;
        finally
          RegWidthList.Free;
          RegVisibleList.Free;
          RegIndexList.Free;
          RegFooterTypeList.Free;
        end;
        TDBGridEh(Components[I]).FooterRowCount := IfThen(LoadFromRegistry(EhPath, 'ShowFooter', False), 1, 0);
      end;
      {$ENDREGION}
      {$REGION 'Global Popup Menu'}
      if TDBGridEh(Components[I]).Tag <> 666 then
      begin
        if TDBGridEh(Components[I]).PopupMenu = nil then
        begin
          GrdIndcMenu := TPopupMenu.Create(Self);
          GrdIndcMenu.Name := 'pm'+TDBGridEh(Components[I]).Name;
          GrdIndcMenu.AutoHotkeys := maManual;
          GrdIndcMenu.AutoLineReduction := maManual;
          if GrdIndcMenu.Images = Nil then
              GrdIndcMenu.Images := dmMain.ilsIcon16;
          GrdIndcMenu.OnPopup := EhGridGlobalMenuPopup;
        end
        else begin
          TDBGridEh(Components[I]).PopupMenu.AutoHotkeys := maManual;
          TDBGridEh(Components[I]).PopupMenu.AutoLineReduction := maManual;
          if TDBGridEh(Components[I]).PopupMenu.Images = Nil then
            TDBGridEh(Components[I]).PopupMenu.Images := dmMain.ilsIcon16;
          SubMenuItem := TMenuItem.Create(GrdIndcMenu);
          SubMenuItem.Caption := '-';
          SubMenuItem.Name := 'mnSepMainPopup'+TDBGridEh(Components[I]).Name;
          TDBGridEh(Components[I]).PopupMenu.Items.Add(SubMenuItem);
        end;
        SubMenuItem := TMenuItem.Create(GrdIndcMenu);
        SubMenuItem.Caption := 'جستجو در این ستون';
        SubMenuItem.Name := 'mnSearchCol'+TDBGridEh(Components[I]).Name;
        SubMenuItem.ImageIndex := 47;
        SubMenuItem.OnClick := EhGridGlobalMenuClick;
        if TDBGridEh(Components[I]).PopupMenu = nil then
          GrdIndcMenu.Items.Add(SubMenuItem)
        else
          TDBGridEh(Components[I]).PopupMenu.Items.Add(SubMenuItem);

        SubMenuItem := TMenuItem.Create(GrdIndcMenu);
        SubMenuItem.Caption := 'جستجو در کل جدول';
        SubMenuItem.Name := 'mnSearchAll'+TDBGridEh(Components[I]).Name;
        SubMenuItem.ImageIndex := 46;
        SubMenuItem.OnClick := EhGridGlobalMenuClick;
        if TDBGridEh(Components[I]).PopupMenu = nil then
          GrdIndcMenu.Items.Add(SubMenuItem)
        else
          TDBGridEh(Components[I]).PopupMenu.Items.Add(SubMenuItem);

        SubMenuItem := TMenuItem.Create(GrdIndcMenu);
        SubMenuItem.Caption := 'نمایش کادر فیلتر';
        SubMenuItem.Name := 'mnSTFilter'+TDBGridEh(Components[I]).Name;
        SubMenuItem.ImageIndex := 45;
        SubMenuItem.OnClick := EhGridGlobalMenuClick;
        if TDBGridEh(Components[I]).PopupMenu = nil then
          GrdIndcMenu.Items.Add(SubMenuItem)
        else
          TDBGridEh(Components[I]).PopupMenu.Items.Add(SubMenuItem);

        SubMenuItem := TMenuItem.Create(GrdIndcMenu);
        SubMenuItem.Caption := '-';
        SubMenuItem.Name := 'mnSeparate1'+TDBGridEh(Components[I]).Name;
        if TDBGridEh(Components[I]).PopupMenu = nil then
          GrdIndcMenu.Items.Add(SubMenuItem)
        else
          TDBGridEh(Components[I]).PopupMenu.Items.Add(SubMenuItem);

        SubMenuItem := TMenuItem.Create(GrdIndcMenu);
        SubMenuItem.Caption := 'تنظیم زیر ستون';
        SubMenuItem.Name := 'mnFooterSub'+TDBGridEh(Components[I]).Name;
        SubMenuItem.ImageIndex := 44;
        if TDBGridEh(Components[I]).PopupMenu = nil then
          GrdIndcMenu.Items.Add(SubMenuItem)
        else
          TDBGridEh(Components[I]).PopupMenu.Items.Add(SubMenuItem);

        MenuItem := TMenuItem.Create(GrdIndcMenu);
        MenuItem.Caption := 'مقدار ستون';
        MenuItem.Name := 'mnFooterField'+TDBGridEh(Components[I]).Name;
        MenuItem.OnClick := EhGridGlobalMenuClick;
        SubMenuItem.Add(MenuItem);

        MenuItem := TMenuItem.Create(GrdIndcMenu);
        MenuItem.Caption := 'تعداد';
        MenuItem.Name := 'mnFooterCount'+TDBGridEh(Components[I]).Name;
        MenuItem.OnClick := EhGridGlobalMenuClick;
        SubMenuItem.Add(MenuItem);

        MenuItem := TMenuItem.Create(GrdIndcMenu);
        MenuItem.Caption := 'جمع';
        MenuItem.Name := 'mnFooterSum'+TDBGridEh(Components[I]).Name;
        MenuItem.OnClick := EhGridGlobalMenuClick;
        SubMenuItem.Add(MenuItem);

        MenuItem := TMenuItem.Create(GrdIndcMenu);
        MenuItem.Caption := 'میانگین';
        MenuItem.Name := 'mnFooterAvg'+TDBGridEh(Components[I]).Name;
        MenuItem.OnClick := EhGridGlobalMenuClick;
        SubMenuItem.Add(MenuItem);

        MenuItem := TMenuItem.Create(GrdIndcMenu);
        MenuItem.Caption := '-';
        MenuItem.Name := 'mnSeparate2'+TDBGridEh(Components[I]).Name;
        SubMenuItem.Add(MenuItem);

        MenuItem := TMenuItem.Create(GrdIndcMenu);
        MenuItem.Caption := 'بدون زیر ستون';
        MenuItem.Name := 'mnFooterNon'+TDBGridEh(Components[I]).Name;
        MenuItem.OnClick := EhGridGlobalMenuClick;
        SubMenuItem.Add(MenuItem);

        MenuItem := TMenuItem.Create(GrdIndcMenu);
        MenuItem.Caption := 'نمایش کادر سرجمع';
        MenuItem.Name := 'mnFooterShow'+TDBGridEh(Components[I]).Name;
        MenuItem.OnClick := EhGridGlobalMenuClick;
        MenuItem.Checked := LoadFromRegistry(EhPath, 'ShowFooter', False);
        if TDBGridEh(Components[I]).PopupMenu = nil then
          GrdIndcMenu.Items.Add(MenuItem)
        else
          TDBGridEh(Components[I]).PopupMenu.Items.Add(MenuItem);

        if TDBGridEh(Components[I]).PopupMenu = nil then
          TDBGridEh(Components[I]).PopupMenu := TPopupMenu(GrdIndcMenu);
      {$ENDREGION}
      end;
      for j := 0 to TDBGridEh(Components[I]).Columns.Count -1 do
      begin
        if pos('price', LowerCase(TDBGridEh(Components[I]).Columns[j].FieldName)) > 0 then
          TDBGridEh(Components[I]).Columns[j].DisplayFormat := '##,##';
        if pos('solar', LowerCase(TDBGridEh(Components[I]).Columns[j].FieldName)) > 0 then
          TDBGridEh(Components[I]).Columns[j].EditMask := '!9999/99/00;1;_';
      end;
    end
    {$ENDREGION}
  end;
  {========= Load Grids State ===========}
end;
{$ENDREGION}

procedure TfrmAbstract.actPrintExecute(Sender: TObject);
begin
//  if AllowPrint then
//  begin
//    SetPrintsColumns;
//    ehPrintMain.PageHeader.CenterText.Clear;
//    ehPrintMain.PageHeader.RightText.Clear;
//    ehPrintMain.PageHeader.LeftText.Clear;
//    ehPrintMain.PageFooter.CenterText.Clear;
//    ehPrintMain.PageFooter.RightText.Clear;
//    ehPrintMain.PageFooter.LeftText.Clear;
//    ehPrintMain.Title.Clear;
//    LoadBasePrintParams;
//    if PrintSetting.FitToPage then
//      ehPrintMain.Options := ehPrintMain.Options + [pghFitGridToPageWidth]
//    else
//      ehPrintMain.Options := ehPrintMain.Options - [pghFitGridToPageWidth];
//
//    if PrintSetting.FitColumns then
//      ehPrintMain.Options := ehPrintMain.Options + [pghOptimalColWidths]
//    else
//      ehPrintMain.Options := ehPrintMain.Options - [pghOptimalColWidths];
//
//    if PrintSetting.PrintColor then
//      ehPrintMain.Options := ehPrintMain.Options + [pghColored]
//    else
//      ehPrintMain.Options := ehPrintMain.Options - [pghColored];
//
//    ehPrintMain.Title.Add(PrintSetting.Title);
//    ehPrintMain.PrintFontName := PrintSetting.PrintFontName;
//
//    ehPrintMain.PageHeader.CenterText.Add(PrintSetting.HeaderCenter);
//    ehPrintMain.PageHeader.LeftText.Add(IfThen(PrintSetting.HeaderRight = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.HeaderRight = 'ساعت', TimeToStr(Time), PrintSetting.HeaderRight)));
//    ehPrintMain.PageHeader.RightText.Add(IfThen(PrintSetting.HeaderLeft = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.HeaderLeft = 'ساعت', TimeToStr(Time), PrintSetting.HeaderLeft)));
//    case PrintSetting.HeaderLine of
//      0: ehPrintMain.PageHeader.LineType := pcltNon;
//      1: ehPrintMain.PageHeader.LineType := pcltSingleLine;
//      2: ehPrintMain.PageHeader.LineType := pcltDoubleLine;
//    end;
//    ehPrintMain.PageHeader.Font.Name := PrintSetting.HeaderFontName;
//    ehPrintMain.PageHeader.Font.Size := PrintSetting.HeaderSize;
//    if PrintSetting.HeaderBold then
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style + [fsbold]
//    else
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style - [fsbold];
//    if PrintSetting.HeaderItalic then
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style + [fsItalic]
//    else
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style - [fsItalic];
//
//    ehPrintMain.PageFooter.CenterText.Add(IfThen(PrintSetting.FooterCenter = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.FooterCenter = 'ساعت', TimeToStr(Time), PrintSetting.FooterCenter)));
//    ehPrintMain.PageFooter.LeftText.Add(IfThen(PrintSetting.FooterRight = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.FooterRight = 'ساعت', TimeToStr(Time), PrintSetting.FooterRight)));
//    ehPrintMain.PageFooter.RightText.Add(IfThen(PrintSetting.FooterLeft = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.FooterLeft = 'ساعت', TimeToStr(Time), PrintSetting.FooterLeft)));
//    case PrintSetting.FooterLine of
//      0: ehPrintMain.PageFooter.LineType := pcltNon;
//      1: ehPrintMain.PageFooter.LineType := pcltSingleLine;
//      2: ehPrintMain.PageFooter.LineType := pcltDoubleLine;
//    end;
//    ehPrintMain.PageFooter.Font.Name := PrintSetting.FooterFontName;
//    ehPrintMain.PageFooter.Font.Size := PrintSetting.FooterSize;
//    if PrintSetting.FooterBold then
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style + [fsbold]
//    else
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style - [fsbold];
//    if PrintSetting.FooterItalic then
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style + [fsItalic]
//    else
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style - [fsItalic];
//
//    if PrintSetting.prLandscape = 1 then
//      PrinterPreview.Orientation := poLandscape
//    else
//      PrinterPreview.Orientation := poPortrait;
//    ehPrintMain.Preview;
//    SetDefaultColumns;
//  end;
end;

procedure TfrmAbstract.actSetPrintExecute(Sender: TObject);
begin
//  if AllowPrint then
//  begin
//    SetPrintsColumns;
////    GetBasePrintSetting(Self.Name);
//    ehPrintMain.PageHeader.CenterText.Clear;
//    ehPrintMain.PageHeader.RightText.Clear;
//    ehPrintMain.PageHeader.LeftText.Clear;
//    ehPrintMain.PageFooter.CenterText.Clear;
//    ehPrintMain.PageFooter.RightText.Clear;
//    ehPrintMain.PageFooter.LeftText.Clear;
//    ehPrintMain.Title.Clear;
//    LoadPrintParams;
//    if PrintSetting.FitToPage then
//      ehPrintMain.Options := ehPrintMain.Options + [pghFitGridToPageWidth]
//    else
//      ehPrintMain.Options := ehPrintMain.Options - [pghFitGridToPageWidth];
//
//    if PrintSetting.FitColumns then
//      ehPrintMain.Options := ehPrintMain.Options + [pghOptimalColWidths]
//    else
//      ehPrintMain.Options := ehPrintMain.Options - [pghOptimalColWidths];
//
//    if PrintSetting.PrintColor then
//      ehPrintMain.Options := ehPrintMain.Options + [pghColored]
//    else
//      ehPrintMain.Options := ehPrintMain.Options - [pghColored];
//
//    ehPrintMain.Title.Add(PrintSetting.Title);
//    ehPrintMain.PrintFontName := PrintSetting.PrintFontName;
//
//    ehPrintMain.PageHeader.CenterText.Add(PrintSetting.HeaderCenter);
//    ehPrintMain.PageHeader.LeftText.Add(IfThen(PrintSetting.HeaderRight = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.HeaderRight = 'ساعت', TimeToStr(Time), PrintSetting.HeaderRight)));
//    ehPrintMain.PageHeader.RightText.Add(IfThen(PrintSetting.HeaderLeft = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.HeaderLeft = 'ساعت', TimeToStr(Time), PrintSetting.HeaderLeft)));
//    case PrintSetting.HeaderLine of
//      0: ehPrintMain.PageHeader.LineType := pcltNon;
//      1: ehPrintMain.PageHeader.LineType := pcltSingleLine;
//      2: ehPrintMain.PageHeader.LineType := pcltDoubleLine;
//    end;
//    ehPrintMain.PageHeader.Font.Name := PrintSetting.HeaderFontName;
//    ehPrintMain.PageHeader.Font.Size := PrintSetting.HeaderSize;
//    if PrintSetting.HeaderBold then
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style + [fsbold]
//    else
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style - [fsbold];
//    if PrintSetting.HeaderItalic then
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style + [fsItalic]
//    else
//      ehPrintMain.PageHeader.Font.Style := ehPrintMain.PageHeader.Font.Style - [fsItalic];
//
//    ehPrintMain.PageFooter.CenterText.Add(IfThen(PrintSetting.FooterCenter = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.FooterCenter = 'ساعت', TimeToStr(Time), PrintSetting.FooterCenter)));
//    ehPrintMain.PageFooter.LeftText.Add(IfThen(PrintSetting.FooterRight = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.FooterRight = 'ساعت', TimeToStr(Time), PrintSetting.FooterRight)));
//    ehPrintMain.PageFooter.RightText.Add(IfThen(PrintSetting.FooterLeft = 'روز', dmMain.Solar(Now), IfThen(PrintSetting.FooterLeft = 'ساعت', TimeToStr(Time), PrintSetting.FooterLeft)));
//    case PrintSetting.FooterLine of
//      0: ehPrintMain.PageFooter.LineType := pcltNon;
//      1: ehPrintMain.PageFooter.LineType := pcltSingleLine;
//      2: ehPrintMain.PageFooter.LineType := pcltDoubleLine;
//    end;
//    ehPrintMain.PageFooter.Font.Name := PrintSetting.FooterFontName;
//    ehPrintMain.PageFooter.Font.Size := PrintSetting.FooterSize;
//    if PrintSetting.FooterBold then
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style + [fsbold]
//    else
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style - [fsbold];
//    if PrintSetting.FooterItalic then
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style + [fsItalic]
//    else
//      ehPrintMain.PageFooter.Font.Style := ehPrintMain.PageFooter.Font.Style - [fsItalic];
//
//    if PrintSetting.prLandscape = 1 then
//      PrinterPreview.Orientation := poLandscape
//    else
//      PrinterPreview.Orientation := poPortrait;
//    ehPrintMain.Preview;
//    SetDefaultColumns;
//  end;
end;

procedure TfrmAbstract.LoadBasePrintParams;
begin
//  PrintSetting.Title              := LoadFromRegistry('Prints\Public', 'Title', 'چاپ لیست');
//  PrintSetting.PrintFontName      := LoadFromRegistry('Prints\Public', 'PrintFontName', 'Tahoma');
//  PrintSetting.FitToPage          := LoadFromRegistry('Prints\Public', 'FitToPage', False);
//  PrintSetting.FitColumns         := LoadFromRegistry('Prints\Public', 'FitColumns', False);
//  PrintSetting.PrintColor         := LoadFromRegistry('Prints\Public', 'PrintColor', False);
//  PrintSetting.HeaderRight        := LoadFromRegistry('Prints\Public', 'HeaderRight', 'روز');
//  PrintSetting.HeaderLeft         := LoadFromRegistry('Prints\Public', 'HeaderLeft', 'ساعت');
//  PrintSetting.HeaderCenter       := LoadFromRegistry('Prints\Public', 'HeaderCenter', '« نرم افزار مدیریت یکپارچه بیمه نامه ها »');
//  PrintSetting.HeaderFontName     := LoadFromRegistry('Prints\Public', 'HeaderFontName', 'Tahoma');
//  PrintSetting.HeaderBold         := LoadFromRegistry('Prints\Public', 'HeaderBold', False);
//  PrintSetting.HeaderItalic       := LoadFromRegistry('Prints\Public', 'HeaderItalic', False);
//  PrintSetting.HeaderLine         := LoadFromRegistry('Prints\Public', 'HeaderLine', 0);
//  PrintSetting.HeaderSize         := StrToIntDef(LoadFromRegistry('Prints\Public', 'HeaderSize', '8'), 8);
//  PrintSetting.FooterRight        := LoadFromRegistry('Prints\Public', 'FooterRight', '');
//  PrintSetting.FooterLeft         := LoadFromRegistry('Prints\Public', 'FooterLeft', 'امضا');
//  PrintSetting.FooterCenter       := LoadFromRegistry('Prints\Public', 'FooterCenter', '');
//  PrintSetting.FooterFontName     := LoadFromRegistry('Prints\Public', 'FooterFontName', 'Tahoma');
//  PrintSetting.FooterBold         := LoadFromRegistry('Prints\Public', 'FooterBold', False);
//  PrintSetting.FooterItalic       := LoadFromRegistry('Prints\Public', 'FooterItalic', False);
//  PrintSetting.FooterLine         := LoadFromRegistry('Prints\Public', 'FooterLine', 0);
//  PrintSetting.FooterSize         := StrToIntDef(LoadFromRegistry('Prints\Public', 'FooterSize', '8'), 8);
//  PrintSetting.GridSize           := StrToIntDef(LoadFromRegistry('Prints\Public', 'GridSize', '8'), 8);
//  PrintSetting.prLandscape        := LoadFromRegistry('Prints\Public', 'prLandscape', 0);
end;

procedure TfrmAbstract.LoadPrintParams;
begin
//  PrintSetting.Title              := LoadFromRegistry('Prints\'+Self.Name, 'Title', 'چاپ لیست');
//  PrintSetting.PrintFontName      := LoadFromRegistry('Prints\'+Self.Name, 'PrintFontName', 'Tahoma');
//  PrintSetting.FitToPage          := LoadFromRegistry('Prints\'+Self.Name, 'FitToPage', False);
//  PrintSetting.FitColumns         := LoadFromRegistry('Prints\'+Self.Name, 'FitColumns', False);
//  PrintSetting.PrintColor         := LoadFromRegistry('Prints\'+Self.Name, 'PrintColor', False);
//  PrintSetting.HeaderRight        := LoadFromRegistry('Prints\'+Self.Name, 'HeaderRight', 'روز');
//  PrintSetting.HeaderLeft         := LoadFromRegistry('Prints\'+Self.Name, 'HeaderLeft', 'ساعت');
//  PrintSetting.HeaderCenter       := LoadFromRegistry('Prints\'+Self.Name, 'HeaderCenter', '« نرم افزار مدیریت یکپارچه بیمه نامه ها »');
//  PrintSetting.HeaderFontName     := LoadFromRegistry('Prints\'+Self.Name, 'HeaderFontName', 'Tahoma');
//  PrintSetting.HeaderBold         := LoadFromRegistry('Prints\'+Self.Name, 'HeaderBold', False);
//  PrintSetting.HeaderItalic       := LoadFromRegistry('Prints\'+Self.Name, 'HeaderItalic', False);
//  PrintSetting.HeaderLine         := LoadFromRegistry('Prints\'+Self.Name, 'HeaderLine', 0);
//  PrintSetting.HeaderSize         := StrToIntDef(LoadFromRegistry('Prints\'+Self.Name, 'HeaderSize', '8'), 8);
//  PrintSetting.FooterRight        := LoadFromRegistry('Prints\'+Self.Name, 'FooterRight', '');
//  PrintSetting.FooterLeft         := LoadFromRegistry('Prints\'+Self.Name, 'FooterLeft', 'امضا');
//  PrintSetting.FooterCenter       := LoadFromRegistry('Prints\'+Self.Name, 'FooterCenter', '');
//  PrintSetting.FooterFontName     := LoadFromRegistry('Prints\'+Self.Name, 'FooterFontName', 'Tahoma');
//  PrintSetting.FooterBold         := LoadFromRegistry('Prints\'+Self.Name, 'FooterBold', False);
//  PrintSetting.FooterItalic       := LoadFromRegistry('Prints\'+Self.Name, 'FooterItalic', False);
//  PrintSetting.FooterLine         := LoadFromRegistry('Prints\'+Self.Name, 'FooterLine', 0);
//  PrintSetting.FooterSize         := StrToIntDef(LoadFromRegistry('Prints\'+Self.Name, 'FooterSize', '8'), 8);
//  PrintSetting.GridSize           := StrToIntDef(LoadFromRegistry('Prints\'+Self.Name, 'GridSize', '8'), 8);
//  PrintSetting.prLandscape        := LoadFromRegistry('Prints\'+Self.Name, 'prLandscape', 0);
end;

procedure TfrmAbstract.SetDefaultColumns;
begin

end;

procedure TfrmAbstract.SetPrintsColumns;
begin

end;

{$REGION 'EhGridGlobalMenuClick'}
procedure TfrmAbstract.EhGridGlobalMenuClick(Sender: TObject);
var
  TmpGrid : TDBGridEh;
  SenderName : string;
  j : Integer;
  GridCols : TStringList;
  I: Integer;
begin
  SenderName := TMenuItem(Sender).Name;
  if Pos(LowerCase('FooterShow'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('FooterShow')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.FooterRowCount := IfThen(TmpGrid.FooterRowCount = 1, 0, 1);
      TMenuItem(Sender).Checked := not (TMenuItem(Sender).Checked);
    end;
  end
  else
  if Pos(LowerCase('SearchCol'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('SearchCol')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.SearchPanel.Visible := True;
      TmpGrid.SearchPanel.SearchScope := gssCurrentColumnEh;
      TmpGrid.SearchPanel.Active := True;
    end;
  end
  else
  if Pos(LowerCase('SearchAll'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('SearchAll')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.SearchPanel.Visible := True;
      TmpGrid.SearchPanel.SearchScope := gssEntireGridEh;
      TmpGrid.SearchPanel.Active := True;
    end;
  end
  else
  if Pos(LowerCase('STFilter'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('STFilter')+3, Length(SenderName))));
    if TmpGrid <> nil then
      TmpGrid.STFilter.Visible := not (TmpGrid.STFilter.Visible);
  end
  else
  if Pos(LowerCase('FooterField'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('FooterField')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Alignment := taLeftJustify;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Color := clInactiveBorder;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.ValueType := fvtFieldValue;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.FieldName := TmpGrid.SelectedField.FieldName;
    end;
  end
  else
  if Pos(LowerCase('FooterSum'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('FooterSum')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Alignment := taRightJustify;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Color := clInactiveBorder;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.DisplayFormat := '0,';
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.ValueType := fvtSum;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.FieldName := TmpGrid.SelectedField.FieldName;
    end;
  end
  else
  if Pos(LowerCase('FooterCount'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('FooterCount')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Alignment := taCenter;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Color := clInactiveBorder;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.DisplayFormat := '0,';
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.ValueType := fvtCount;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.FieldName := TmpGrid.SelectedField.FieldName;
    end;
  end
  else
  if Pos(LowerCase('FooterAvg'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('FooterAvg')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Alignment := taRightJustify;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Color := clInactiveBorder;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.DisplayFormat := '0,';
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.ValueType := fvtAvg;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.FieldName := TmpGrid.SelectedField.FieldName;
    end;
  end
  else
  if Pos(LowerCase('FooterField'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('FooterField')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Alignment := taLeftJustify;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Color := clInactiveBorder;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.ValueType := fvtFieldValue;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.FieldName := TmpGrid.SelectedField.FieldName;
    end;
  end
  else
  if Pos(LowerCase('FooterNon'), LowerCase(SenderName)) > 1 then begin
    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('FooterNon')+3, Length(SenderName))));
    if TmpGrid <> nil then
    begin
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.ValueType := fvtNon;
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.FieldName := '';
      TmpGrid.FindFieldColumn(TmpGrid.SelectedField.FieldName).Footer.Color := clGradientInactiveCaption;
    end;
  end
  else
  if Pos(LowerCase('PrintShow'), LowerCase(SenderName)) > 1 then begin
//    TmpGrid := TDBGridEh(FindComponent(Copy(SenderName, Length('PrintShow')+3, Length(SenderName))));
//    if TmpGrid <> nil then
//    begin
//      TMenuItem(Sender).Checked := not (TMenuItem(Sender).Checked);
//      TmpGrid.SelectedField.Tag := ifthen(TMenuItem(Sender).Checked, 0, 1);
//    end;
  end;
end;
{$ENDREGION}

{$REGION 'EhGridGlobalMenuPopup'}
procedure TfrmAbstract.EhGridGlobalMenuPopup(Sender: TObject);
var
  tmpGrid : TDBGridEh;
  SenderName, GridName : string;
  tmpMenuItem : TMenuItem;
begin
  SenderName := TPopupMenu(Sender).Name;
  GridName := Copy(SenderName, 3, Length(SenderName));
  tmpGrid := TDBGridEh(FindComponent(GridName));
  if (tmpGrid <> nil) then
  begin
    tmpMenuItem := TMenuItem(TPopupMenu(Sender).FindComponent('mnFooterAvg'+GridName));
    if tmpMenuItem <> nil then
      tmpMenuItem.Enabled := (tmpGrid.SelectedField.DataType in [ftSmallint, ftInteger, ftFloat, ftCurrency, ftLargeint, ftShortint, ftSingle, ftBCD])
                              and (tmpGrid.FindFieldColumn(tmpGrid.SelectedField.FieldName).LookupParams.KeyFieldNames <> tmpGrid.SelectedField.FieldName);
    tmpMenuItem := TMenuItem(TPopupMenu(Sender).FindComponent('mnFooterSum'+GridName));
    if tmpMenuItem <> nil then
      tmpMenuItem.Enabled := (tmpGrid.SelectedField.DataType in [ftSmallint, ftInteger, ftFloat, ftCurrency, ftLargeint, ftShortint, ftSingle, ftBCD])
                              and (tmpGrid.FindFieldColumn(tmpGrid.SelectedField.FieldName).LookupParams.KeyFieldNames <> tmpGrid.SelectedField.FieldName);
  end;
end;
{$ENDREGION}
end.


