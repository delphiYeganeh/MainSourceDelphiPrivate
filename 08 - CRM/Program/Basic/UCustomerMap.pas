unit UCustomerMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, DBCtrls, StdCtrls,
  UemsVCL, Buttons, xpPanel, Grids, DBGrids, YDbgrid, dxGDIPlusClasses,
  ImgList, ADODB;

type
  TFCustomerMap = class(TMBaseForm)
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    dbgFollow: TYDBGrid;
    xpPanel1: TxpPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BDate: TShamsiDateEdit;
    Edate: TShamsiDateEdit;
    dblMarketer: TDBLookupComboBox;
    dblDoneStatusID: TDBLookupComboBox;
    followUpItem: TRadioGroup;
    DetailMap: TGroupBox;
    MainMap: TGroupBox;
    pnlMap: TPanel;
    DashLineGray: TImage;
    DashLineGreen: TImage;
    ImageList1: TImageList;
    TodoCircleYellow: TImage;
    AcceptGreen: TImage;
    btnMap: TBitBtn;
    LineGray: TImage;
    Image21: TImage;
    Image22: TImage;
    LineGreen: TImage;
    LineRed: TImage;
    TempLabel: TLabel;
    CricleLineGreen: TImage;
    qryActionTypeLevel: TADOQuery;
    qryActionTypeLevelID: TIntegerField;
    qryActionTypeLevelParentID: TIntegerField;
    qryActionTypeLevelChildID: TIntegerField;
    qryActionTypeLevelDescription: TStringField;
    qryActionTypeLevelLevel: TIntegerField;
    qryActionTypeLevelType: TIntegerField;
    qryActionTypeLevel_Detail: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    qryActionTypeLevelOrderId: TIntegerField;
    qryActionTypeLevel_DetailOrderId: TIntegerField;
    qryActionTypeLevelState: TIntegerField;
    qryActionTypeLevel_DetailState: TIntegerField;
    GroupBox2: TGroupBox;
    Image1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btnSrchFollow: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnMapClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnSrchFollowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DashLineGrayDblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    MainRight : Integer;
    aCustomerID : Integer ;
    PnlDetail :TGroupBox ;
    MainState : Integer;
    CustomerUse : Boolean;
    procedure CreateImag( ImgType : string; parent:TGroupBox = nil ; QRY :TADOQuery = nil ; MRight : Integer = 0 ; PintType : Integer = 0  );
    procedure PaintChart;
    procedure HeaderChart;
    procedure DetailChart( HeaderId : Integer  = 0 );
  public
    constructor create(AOwner :TComponent;CustomerID : Integer);reintroduce;virtual;
    { Public declarations }
  end;

var
  FCustomerMap: TFCustomerMap;

implementation

uses dmu,YShamsiDate;

{$R *.dfm}

procedure TFCustomerMap.FormShow(Sender: TObject);
var
  oldHeightGB :Integer;
begin
  inherited;

  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

  oldHeightGB := GroupBox2.Height ;

  pnlMap.Height    := DashLineGray.Height * 4 ;
  GroupBox2.Height := DashLineGray.Height * 2 ;
  DetailMap.Height := DashLineGray.Height * 2 ;

  lbl1.Top := (lbl1.Top * GroupBox2.Height) div oldHeightGB ;
  lbl2.Top := (lbl2.Top * GroupBox2.Height) div oldHeightGB ;
  lbl3.Top := (lbl3.Top * GroupBox2.Height) div oldHeightGB ;


  TodoCircleYellow.Width := 0 ;
  DashLineGreen   .Width := 0 ;
  DashLineGray    .Width := 0 ;
  AcceptGreen     .Width := 0 ;
  CricleLineGreen .Width := 0 ;
  LineGreen       .Width := 0 ;
  LineRed         .Width := 0 ;
  LineGray        .Width := 0 ;
  TempLabel       .Width := 0 ;



  xpPanel1.Minimized := True ;
  //PaintChart;

 With dm.ActionTypeByUserType do
 begin
   Close;
   if _accessID in [4,7,19] then //  ˜ÇÑÈÑ ÝÑæÔ
   begin
     SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where ( UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )'+
     ' and  isnull(SortOrderInSale ,0) >0  order by SortOrderInSale ' ;

   end
   else
   if _accessID in [10,11] then //  ˜ÇÑÈÑ æÇÍÏ ÇÏÇÑí
   begin
     SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where ( UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )' +
     ' and  isnull(SortOrderInOfficial ,0) >0  order by SortOrderInOfficial ' ;
   end
   else
   if _accessID in [9,6,15] then // ˜ÇÑÈÑ æÇÍÏ ÔÊíÈÇäí
   begin
     SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where ( UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )' +
     ' and  isnull(SortOrderInSupport ,0) >0  order by SortOrderInSupport ' ;
   end
   else
     SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where (UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )' ;

   //SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  ';
   Open;
 end;

 MainMap.Caption := ' ãÑÍáå ÇÕáí ' + ' ãÔÊÑí ' + IntToStr(aCustomerID) ;
 btnMapClick(Self);

end;

procedure TFCustomerMap.HeaderChart;
begin
  CustomerUse := False ;
  qryActionTypeLevel.Close;
  qryActionTypeLevel.Parameters.ParamByName('CustomerId').Value:=  aCustomerID;
  qryActionTypeLevel.Parameters.ParamByName('ATLevelId').Value:=  0 ;

  qryActionTypeLevel.Open;

  qryActionTypeLevel.First;

  MainRight := 0;//100 ;

  while not qryActionTypeLevel.Eof do
  begin
    if qryActionTypeLevelState.AsInteger = 1 then
      MainState := qryActionTypeLevelID.AsInteger ;

    if (qryActionTypeLevelID.AsInteger = 5) and (qryActionTypeLevelState.AsInteger = 2) then
      CustomerUse := True ;

    if qryActionTypeLevelOrderId.AsInteger = 1 then
      CreateImag('test',MainMap,qryActionTypeLevel, MainRight,0 )
    else CreateImag('test',MainMap,qryActionTypeLevel, MainRight,1 );

    qryActionTypeLevel.Next;
  end;
end;

procedure TFCustomerMap.DetailChart(HeaderId: Integer);

begin
  qryActionTypeLevel_Detail.Close;
  qryActionTypeLevel_Detail.Parameters.ParamByName('CustomerId').Value:=  aCustomerID;
  qryActionTypeLevel_Detail.Parameters.ParamByName('APTLevelId').Value:=  HeaderId;
  qryActionTypeLevel_Detail.Parameters.ParamByName('ATLevelId').Value:=  0 ;

  qryActionTypeLevel_Detail.Open;

  qryActionTypeLevel_Detail.First;

  MainRight := 0;//100 ;

  if HeaderId = 0 then
    DetailMap.Caption := 'ãÑÍáå ÝÑÚí'
  else if HeaderId = 1 then
    DetailMap.Caption := 'ãÑÍáå ÝÑÚí' +' ÝÑæÔ '
  else if HeaderId = 2 then
    DetailMap.Caption := 'ãÑÍáå ÝÑÚí'+' ÇÏÇÑí ' 
  else if HeaderId = 3 then
    DetailMap.Caption := 'ãÑÍáå ÝÑÚí'+ ' ÔÊíÈÇäí '
  else if HeaderId = 4 then
    DetailMap.Caption := 'ãÑÍáå ÝÑÚí'+ ' ÊæáíÏ '
  else if HeaderId = 5 then
    DetailMap.Caption := 'ãÑÍáå ÝÑÚí'+ ' ãÔÊÑí ' ;

  PnlDetail.Free;
  PnlDetail:= nil;

  PnlDetail         := TGroupBox.Create(nil);
  PnlDetail.Parent  := DetailMap ;
  PnlDetail.Align   := alClient ;
  PnlDetail.Name    := 'PnlDetail';
  if (HeaderId = 5) and (CustomerUse) then
  begin
    PnlDetail.Font.Color := clGreen;
    PnlDetail.Caption := ' ãÔÊÑí ÏÑ ÍÇá ÇÓÊÝÇÏå ÇÒ äÑã ÇÝÒÇÑ ãí ÈÇÔÏ '  ;

  end
  else
  if (HeaderId = 5) and not (CustomerUse) then
  begin
    PnlDetail.Font.Color := clRed;
    PnlDetail.Caption := ' ãÔÊÑí åäæÒ ÞØÚí äÔÏå ÇÓÊ '  ;

  end
  else
  if qryActionTypeLevel_Detail.RecordCount = 0 then
  begin
    PnlDetail.Font.Color := clRed;
    PnlDetail.Caption := ' ÊäÙíãÇÊ ãÑÈæØ Èå Çíä ÞÓãÊ ÇäÌÇã äÔÏå ÇÓÊ ' ;
  end
  else
    PnlDetail.Caption := '' ;


  while not qryActionTypeLevel_Detail.Eof do
  begin

    if qryActionTypeLevel_DetailOrderId.AsInteger = 1 then
      CreateImag('test',PnlDetail,qryActionTypeLevel_Detail, MainRight,0 )
    else CreateImag('test',PnlDetail,qryActionTypeLevel_Detail, MainRight,1 );

    qryActionTypeLevel_Detail.Next;

  end;

end;

procedure TFCustomerMap.PaintChart;
begin
  HeaderChart ;
  if  (MainState > 0) then
    DetailChart(MainState)
  else if (MainState = 0) and CustomerUse then
    DetailChart(5)
  else DetailChart(1);

end;

procedure TFCustomerMap.CreateImag( ImgType : string; parent:TGroupBox = nil ; QRY :TADOQuery = nil ; MRight : Integer = 0 ; PintType : Integer = 0  );
var
  CImage,CImage2 : TImage;
  LineImage1, LineImage2 : TImage;
  TempImage : TImage;
  ATop ,Aleft,PlusTop : Integer;
  LblTemp: TLabel;
  SetTag : Boolean;
  LineWidth   : Integer ;
  LineHeight  : Integer ;
  labellenTemp : Integer ;
  linePlusTop : Integer;

begin

  PlusTop := 2 ;
  //------------------//
  // Øæá æ ÚÑÖ ÎØ åÇí ÝÇÕáå
  LineWidth   := LineGreen.Height;//44;//LineGreen.Width ; //63 ;
  LineHeight  := LineGreen.Height;//40;//LineGreen.Height ; //58 ;

  labellenTemp := DashLineGray.Height ; //70; //100 ;  DashLineGray.Width ;    // ÈÒÑÊÑíä ÚÑÖ ÏÇíÑå åÇ

   ATop:= labellenTemp div 2 ;//50 ;  // ÝÇÕáå ÇÒ ÈÇáÇ
  //-----------------//

  linePlusTop := (labellenTemp div 2) -(LineHeight div 2); //20;//23 ;

  if PintType = 0 then
  begin
    //ÝÇÕáå ÇÈÊÏÇíí Çæáíä ÏÇíÑå ÇÒ ÑÇÓÊ
    Aleft := parent.Width - LineWidth ;//0;//40;// 70 ;
    MainRight := Aleft ;
  end;

  SetTag := False;

  LblTemp         := TLabel.Create(nil);
  LblTemp.Parent  := parent ;
  LblTemp.Caption := QRY.Fields.Fieldbyname('Description').AsString ;
  LblTemp.Top     := ATop - TempLabel.Height ;//TempImage.Top ;
  LblTemp.Height  := TempLabel.Height ;
  LblTemp.Name    := ImgType +'LBL'+ QRY.Fields.Fieldbyname('OrderId').AsString ;
 // LblTemp.Left    := MainRight  ;
 // LblTemp.Visible := True;
  LblTemp.Anchors :=[akTop, akRight] ;
  LblTemp.Transparent := True;
  LblTemp.Font := TempLabel.Font ;

  if parent = MainMap then
    SetTag := True;

  if PintType > 0 then
  begin

    case  QRY.Fields.Fieldbyname('State').AsInteger of
      0 :  TempImage := LineGray ;
      1 :  TempImage := LineGreen ;
      2 :  TempImage := LineGreen ;
      3 :  TempImage := LineGreen ;
      else TempImage := LineGray ;
    end;

    LineImage1         := TImage.Create(nil);
    LineImage1.Parent  := parent ;
    LineImage1.Top     := ATop + linePlusTop ;//TempImage.Top ;
    LineImage1.Width   := LineWidth;
    LineImage1.Height  := LineHeight;
    LineImage1.Anchors :=[akTop, akRight] ;
    LineImage1.Name    := ImgType +'LineOne'+ QRY.Fields.Fieldbyname('OrderId').AsString ;
    LineImage1.Left    := MainRight - LineImage1.Width  ;
    LineImage1.Picture := TempImage.Picture ;
    LineImage1.Stretch := True;
  //  LineImage1.Hint    := QRY.Fields.Fieldbyname('Description').AsString ;
   // LineImage1.ShowHint := True ;
    LineImage1.Visible := True;
    MainRight := LineImage1.Left  ;

    case  QRY.Fields.Fieldbyname('State').AsInteger of
      1 :  TempImage := LineRed ;
    end;

    LineImage2         := TImage.Create(nil);
    LineImage2.Parent  := parent ;
    LineImage2.Top     := ATop + linePlusTop ;//TempImage.Top ;
    LineImage2.Width   := LineWidth;
    LineImage2.Height  := LineHeight;
    LineImage2.Anchors :=[akTop, akRight] ;
    LineImage2.Name    := ImgType +'LineTwo'+ QRY.Fields.Fieldbyname('OrderId').AsString ;
    LineImage2.Left    := MainRight - LineImage2.Width ;
    LineImage2.Picture := TempImage.Picture ;
    LineImage2.Stretch := True;
  //  LineImage2.Hint    := QRY.Fields.Fieldbyname('Description').AsString ;
   // LineImage2.ShowHint := True ;
    LineImage2.Visible := True;
    MainRight := LineImage2.Left  ;

  end;

  case  QRY.Fields.Fieldbyname('State').AsInteger of
    0 :  TempImage := DashLineGray ;
    1 :  TempImage := TodoCircleYellow ;
    2 :  TempImage := AcceptGreen ;
    3 :  TempImage := DashLineGreen ;
    else TempImage := DashLineGray ;
  end;

  CImage         := TImage.Create(nil);
  CImage.Parent  := parent ;
  if SetTag then
  begin
    CImage.Tag := QRY.Fields.Fieldbyname('Id').AsInteger ;
    CImage.OnDblClick := DashLineGrayDblClick ;
  end;
  CImage.Anchors :=[akTop, akRight] ;

  CImage.Width   := TempImage.Height ;
  CImage.Height  := TempImage.Height ;

  if ( QRY.Fields.Fieldbyname('State').AsInteger in [1,2] ) then
  begin
    CImage.Top     := ATop + PlusTop;//TempImage.Top ;
    CImage.Left    := ( MainRight - CImage.Width ) + PlusTop ;
  end
  else
  begin
    CImage.Top     := ATop ;//TempImage.Top ;
    CImage.Left    := ( MainRight - CImage.Width ) ;
  end;
  //CImage.Width   := TempImage.Height ;
  //CImage.Height  := TempImage.Height ;

  CImage.Name    := ImgType +'ImageOne'+ QRY.Fields.Fieldbyname('OrderId').AsString ;
  CImage.Stretch := True;
  //CImage.Left    := TempImage.Left + 50 ;

  CImage.Picture := TempImage.Picture ;
  CImage.Hint    := QRY.Fields.Fieldbyname('Description').AsString ;
  CImage.ShowHint := True ;

  CImage.Visible := True;

  MainRight := CImage.Left  ;

  if  (LblTemp.Width > labellenTemp ) then
  begin
    LblTemp.Left    :=  MainRight - Round(((  (LblTemp.Width - labellenTemp )) div 2) )  ;
  end
  else
  begin
     LblTemp.Left    := MainRight +  Round((( ( labellenTemp - LblTemp.Width  )) div 2) ) ;
  end ;

  LblTemp.Visible := True;


  if  QRY.Fields.Fieldbyname('State').AsInteger in [1,2] then
  begin
    case  QRY.Fields.Fieldbyname('State').AsInteger of
      1 :  TempImage := DashLineGreen ;
      2 :  TempImage := CricleLineGreen ;
    end;

    CImage2         := TImage.Create(nil);
    CImage2.Parent  := parent ;
    if SetTag then
    begin
      CImage2.Tag := QRY.Fields.Fieldbyname('Id').AsInteger ;
      CImage2.OnDblClick := DashLineGrayDblClick ;
    end;
    CImage2.Anchors :=[akTop, akRight] ;
    CImage2.Top     := ATop ;//TempImage.Top ;
    CImage2.Width   := TempImage.Height;
    CImage2.Height  := TempImage.Height;
    CImage2.Name    := ImgType +'ImageTwo'+ QRY.Fields.Fieldbyname('OrderId').AsString ;
    CImage2.Stretch := True;
    //CImage.Left    := TempImage.Left + 50 ;
    CImage2.Left    := MainRight - PlusTop ;
    CImage2.Picture := TempImage.Picture ;
    CImage2.Hint    := QRY.Fields.Fieldbyname('Description').AsString ;
    CImage2.ShowHint := True ;

    CImage2.Visible := True;

    MainRight := CImage2.Left  ;
  end;

end;

procedure TFCustomerMap.btnMapClick(Sender: TObject);
begin
  inherited;
  PaintChart;
  btnSrchFollowClick(Self);
  //CreateImag('test') ;
end;



procedure TFCustomerMap.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  BDate.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFCustomerMap.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  EDate.Text := Dm.MssCalendarPro1.Execute('/');
end;

procedure TFCustomerMap.btnSrchFollowClick(Sender: TObject);
begin
  inherited;
   with dm.Select_FollowUP_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerid').Value:= aCustomerID;

      if followUpItem.Visible then
        followUpItem.ItemIndex := 4;
        
      if  followUpItem.ItemIndex = -1 then
        Parameters.ParamByName('@orgID').Value:=_orgID
      else
      if  followUpItem.ItemIndex = 0 then
        Parameters.ParamByName('@orgID').Value:=1
      else if  followUpItem.ItemIndex = 1 then
        Parameters.ParamByName('@orgID').Value:=2
      else if  followUpItem.ItemIndex = 2 then
        Parameters.ParamByName('@orgID').Value:=4
      else if  followUpItem.ItemIndex = 3 then
        Parameters.ParamByName('@orgID').Value:=3
      else Parameters.ParamByName('@orgID').Value:= 0 ;
      //Parameters.ParamByName('@orgID').Value:=_orgID;

      if Trim(BDate.Text) <>'' then
        Parameters.ParamByName('@DoneDate').Value:= Trim(BDate.Text)
      else  Parameters.ParamByName('@DoneDate').Value:= '';

      if Trim(EDate.Text) <> '' then
        Parameters.ParamByName('@TodODate').Value:= Trim(EDate.Text)
      else Parameters.ParamByName('@TodODate').Value:= '';

      if dblMarketer.KeyValue <> null then
        Parameters.ParamByName('@MarketerID').Value:= dblMarketer.KeyValue
      else   Parameters.ParamByName('@MarketerID').Value:= 0;

      if dblDoneStatusID.KeyValue <> null then
        Parameters.ParamByName('@DoneStatusID').Value:= dblDoneStatusID.KeyValue
      else   Parameters.ParamByName('@DoneStatusID').Value:= 0;

      Parameters.ParamByName('@ActionTypeID').Value:= 0;
      Open;
   end;
end;

procedure TFCustomerMap.FormCreate(Sender: TObject);
begin
  inherited;
//

end;

constructor TFCustomerMap.create(AOwner: TComponent; CustomerID: Integer);
begin
  inherited create(AOwner);
  aCustomerID :=  CustomerID ;

end;

procedure TFCustomerMap.DashLineGrayDblClick(Sender: TObject);
begin
  inherited;
  DetailChart(Timage(Sender).tag);
end;

procedure TFCustomerMap.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dblMarketer.KeyValue := null;
end;

procedure TFCustomerMap.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dblDoneStatusID.KeyValue := null;
end;

end.
