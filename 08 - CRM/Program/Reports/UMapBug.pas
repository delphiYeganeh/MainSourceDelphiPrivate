unit UMapBug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, StdCtrls, Buttons,
  dxGDIPlusClasses, ADODB;

type
  TFMapBug = class(TMBaseForm)
    pnlMain: TPanel;
    pnlMap: TPanel;
    MainMap: TGroupBox;
    TodoCircleYellow: TImage;
    LineGray: TImage;
    ArrowLine: TImage;
    LineRed: TImage;
    TempLabel: TLabel;
    btnMap: TBitBtn;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    qryCaseTask: TADOQuery;
    qryCaseTaskComment: TStringField;
    qryCaseTaskTodoDate: TStringField;
    qryCaseTaskStatusId: TIntegerField;
    qryCaseTaskAssignedUserId: TIntegerField;
    qryCaseTaskAssignedDate: TStringField;
    qryCaseTaskEstimatedDate: TStringField;
    qryCaseTaskAssignedComment: TStringField;
    qryCaseTaskTaskCurrentDatetime: TDateTimeField;
    qryCaseTaskTitle: TStringField;
    CircleGreen: TImage;
    CircleRed: TImage;
    CircleGray: TImage;
    qryCaseTaskTaskStatusTitle: TStringField;
    qryCaseTaskTaskID: TIntegerField;
    qryCaseTaskCaseId: TIntegerField;
    qryCaseTaskDescriptions: TStringField;
    GroupBox2: TGroupBox;
    MemoDesc: TMemo;
    MemoCase: TMemo;
    procedure FormShow(Sender: TObject);
    procedure btnMapClick(Sender: TObject);
    procedure TodoCircleYellowDblClick(Sender: TObject);
  private
    aCaseID : Integer;
    MainRight : Integer;
    aMainRight : Integer;
    aCoefficientTop : Integer;
    aCircleCount : Integer;
    procedure PaintChart;
    procedure CreateImag( ImgType : string; parent:TGroupBox = nil ; QRY :TADOQuery = nil ; MRight : Integer = 0 ; PintType : Integer = 0  );
  public
    { Public declarations }
    constructor create(AOwner :TComponent;CaseID : Integer);reintroduce;virtual;
  end;

var
  FMapBug: TFMapBug;

implementation

uses dmu,YShamsiDate;


{$R *.dfm}

procedure TFMapBug.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
  
  TodoCircleYellow.Width := 0 ;
  CircleGray   .Width := 0 ;
  CircleRed   .Width := 0 ;
  CircleGreen   .Width := 0 ;

  ArrowLine       .Width := 0 ;
  LineRed         .Width := 0 ;
  LineGray        .Width := 0 ;
  TempLabel       .Width := 0 ;
  Self.Width := 1600;
  aCircleCount := 0 ;
  aCoefficientTop := 0 ;

 MainMap.Caption := ' ˜Ï ãæÑÏ ' + IntToStr(aCaseID) ;

 btnMapClick(Self);
end;

procedure TFMapBug.btnMapClick(Sender: TObject);
begin
  inherited;
  PaintChart;
end;

procedure TFMapBug.PaintChart;
var
  countR : Integer;
begin

  qryCaseTask.Close;
  qryCaseTask.Parameters.ParamByName('CaseId').Value:=  aCaseID;

  qryCaseTask.Open;

  qryCaseTask.First;

  MainRight := 100 ;
  aMainRight := MainRight;
  countR := 1 ;


  while not qryCaseTask.Eof do
  begin

    if countR = 1 then
    begin
      CreateImag('test',MainMap,qryCaseTask, MainRight,0 );
      MemoCase.Text := char(10)+char(13)+ qryCaseTaskAssignedComment.AsString ;
      MainMap.Caption := ' ˜Ï ãæÑÏ ' + IntToStr(aCaseID)  + '  ' + qryCaseTaskDescriptions.AsString;
    end
    else CreateImag('test',MainMap,qryCaseTask, MainRight,1 );

    MemoDesc.Text := qryCaseTaskComment.AsString ;

    countR := countR + 1 ;
    qryCaseTask.Next;
  end;

end;

procedure TFMapBug.CreateImag(ImgType: string; parent: TGroupBox; QRY: TADOQuery; MRight, PintType: Integer);
var
  CImage,CImage2 : TImage;
  LineImage1, LineImage2,LineImage3 : TImage;
  TempImage : TImage;
  ATop ,Aleft: Integer;
  LblTemp: TLabel;
  LblTemp2: TLabel;
  MainTop : Integer ;
begin

  aCircleCount := aCircleCount + 1 ;
  ATop:= 50 ;

  if (PintType = 0) or ((aCircleCount mod 7) =  0 ) then
  begin
    Aleft := parent.Width - 70 ;
    MainRight := Aleft ;
    aCoefficientTop := aCoefficientTop + 1 ;
  end;

  //-------------description-------------//
  LblTemp         := TLabel.Create(nil);
  LblTemp.Parent  := parent ;
  LblTemp.Caption := QRY.Fields.Fieldbyname('Title').AsString + ' - ' +  QRY.Fields.Fieldbyname('TaskStatusTitle').AsString ;
  LblTemp.Height  := TempLabel.Height ;
  LblTemp.Name    := ImgType +'LBL'+ QRY.Fields.Fieldbyname('TaskID').AsString ;
  LblTemp.Anchors :=[akTop, akRight] ;
  LblTemp.Transparent := True;
  LblTemp.Font := TempLabel.Font ;

  LblTemp2         := TLabel.Create(nil);
  LblTemp2.Parent  := parent ;
  LblTemp2.Caption := QRY.Fields.Fieldbyname('AssignedDate').AsString ;
  LblTemp2.Height  := TempLabel.Height ;
  LblTemp2.Name    := ImgType +'l2LBL'+ QRY.Fields.Fieldbyname('TaskID').AsString ;
  LblTemp2.Anchors :=[akTop, akRight] ;
  LblTemp2.Transparent := True;
  LblTemp2.Font := TempLabel.Font ;
  //--------------------------------//


  //-------------lines--------------//
  if PintType > 0 then   //ÎØ åÇ
  begin

    case  QRY.Fields.Fieldbyname('StatusId').AsInteger of
      1,2,5,8,10,12 :  TempImage := ArrowLine ;
      4,11          :  TempImage := ArrowLine ;
      7,9,13        :  TempImage := ArrowLine ;

      else TempImage := ArrowLine ;
    end;

    LineImage1         := TImage.Create(nil);
    LineImage1.Parent  := parent ;
    LineImage1.Width   := 63;
    LineImage1.Height  := 58;
    LineImage1.Anchors :=[akTop, akRight] ;
    LineImage1.Name    := ImgType +'LineOne'+ QRY.Fields.Fieldbyname('TaskID').AsString ;
    LineImage1.Picture := TempImage.Picture ;
    LineImage1.Visible := True;


    LineImage2         := TImage.Create(nil);
    LineImage2.Parent  := parent ;
    LineImage2.Width   := 63;
    LineImage2.Height  := 58;
    LineImage2.Anchors :=[akTop, akRight] ;
    LineImage2.Name    := ImgType +'LineTwo'+ QRY.Fields.Fieldbyname('TaskID').AsString ;
    LineImage2.Picture := TempImage.Picture ;
    LineImage2.Visible := True;

  end;
  //-------------------------------//

  //-----------------------circle-----------//
  case  QRY.Fields.Fieldbyname('StatusId').AsInteger of
    1,2,5,8,10,12 :  TempImage := TodoCircleYellow ;
    4,11          :  TempImage := CircleGreen ;
    7,9,13        :  TempImage := CircleRed ;

    else TempImage := CircleGray ;
  end;

  CImage         := TImage.Create(nil);
  CImage.Parent  := parent ;

  CImage.Tag := QRY.Fields.Fieldbyname('TaskId').AsInteger ;
  CImage.OnDblClick := TodoCircleYellowDblClick ;

  CImage.Anchors :=[akTop, akRight] ;

  CImage.Width   := TempImage.Height ;
  CImage.Height  := TempImage.Height ;
  CImage.Name    := ImgType +'ImageOne'+ QRY.Fields.Fieldbyname('TaskID').AsString ;

  CImage.Picture := TempImage.Picture ;
  CImage.Hint    := QRY.Fields.Fieldbyname('TaskStatusTitle').AsString ;
  CImage.ShowHint := True ;
  CImage.Visible := True;
  //--------------------------------------//



  //--------------set top left -----------//
  MainTop := (ATop * aCoefficientTop) +  (CImage.Height * (aCoefficientTop -1 ));

  LblTemp.Top     := MainTop - TempLabel.Height ;//TempImage.Top ;
  LblTemp2.Top    := (MainTop + ATop ) - (TempLabel.Height) ;//TempImage.Top ;

  if (PintType > 0) then   //ÎØ åÇ
  begin
    LineImage1.Top     := MainTop + (23) ;//TempImage.Top ;
    LineImage1.Left    := MainRight - LineImage1.Width  ;


    LineImage2.Top     := LineImage1.Top ;//TempImage.Top ;
    LineImage2.Left    := LineImage1.Left - LineImage2.Width ;
    MainRight          := LineImage2.Left  ;
  end;

  CImage.Top     := MainTop ;//TempImage.Top ;
  CImage.Left    := ( MainRight - CImage.Width ) ;

  if ((aCircleCount mod 6) =  0 ) and (QRY.RecordCount > 6 )  then
  begin
  
    case  QRY.Fields.Fieldbyname('StatusId').AsInteger of
      1,2,5,8,10,12 :  TempImage := ArrowLine ;
      4,11          :  TempImage := ArrowLine ;
      7,9,13        :  TempImage := ArrowLine ;

      else TempImage := ArrowLine ;
    end;

    LineImage3         := TImage.Create(nil);
    LineImage3.Parent  := parent ;
    LineImage3.Width   := 63;
    LineImage3.Height  := 58;
    LineImage3.Anchors :=[akTop, akRight] ;
    LineImage3.Name    := ImgType +'LineTree'+ QRY.Fields.Fieldbyname('TaskID').AsString ;
    LineImage3.Picture := TempImage.Picture ;
    LineImage3.Top     := LineImage1.Top ;
    LineImage3.Left    := CImage.Left  - LineImage3.Width ;
    LineImage3.Visible := True;
  end;

  if  (LblTemp.Width > 100) then
  begin
    LblTemp.Left    :=  CImage.Left - Round(((  (LblTemp.Width - 100 )) div 2) )  ;
  end
  else
  begin
     LblTemp.Left    := CImage.Left +  Round((( ( 100 - LblTemp.Width  )) div 2) ) ;
  end ;

  if  (LblTemp2.Width > 100) then
  begin
    LblTemp2.Left    :=  CImage.Left - Round(((  (LblTemp2.Width - 100 )) div 2) )  ;
  end
  else
  begin
     LblTemp2.Left    := CImage.Left +  Round((( ( 100 - LblTemp2.Width  )) div 2) ) ;
  end ;
  //-------------------------------------//

  LblTemp.Visible := True;
  LblTemp2.Visible := True;

  //if (aCoefficientTop = 1)  or ((aCircleCount mod 6) <>  0 ) then
  MainRight := CImage.Left ;


end;

constructor TFMapBug.create(AOwner: TComponent; CaseID: Integer);
begin
  inherited create(AOwner);
  aCaseID :=  CaseID ;
end;

procedure TFMapBug.TodoCircleYellowDblClick(Sender: TObject);
begin
  inherited;
  qryCaseTask.Locate('TaskID',Timage(Sender).tag,[]);
  MemoDesc.Text := qryCaseTaskComment.AsString ;
end;

end.
