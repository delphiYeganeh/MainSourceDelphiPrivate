�
 TFRMAKEREPORT 0�
  TPF0TFrMakeReportFrMakeReportLeftgTop� WidthHeight{AutoSize	BiDiModebdRightToLeftCaption   تهيه گزارش ازColor	clBtnFaceFont.CharsetARABIC_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderParentBiDiModePositionpoScreenCenterOnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TYDBGridYDBGLeft TopWidthHeight1CursorcrHandPointAlignalTopColor��� 
DataSourceDSampleTabOrder TitleFont.CharsetARABIC_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style YeganehColor	YeganehFinish
PageNumberRecordNumberHasTime	Oriention
poPortraitHasDateHasIndexInvertFarsiDate		TitleSort	
AutoInsertFooterFieldsCount  TPanelPanel1Left Top2WidthHeight'AlignalTopTabOrder
DesignSize'  TLabelLabel1Left� TopWidthHeightCaption   تعداد:  TButtonreportLeft�TopWidth]HeightCursorcrHandPointAnchorsakRightakBottom Caption   تهيه گزارشTabOrder OnClickreportClick  TButtonButton1Left,TopWidth]HeightCursorcrHandPointCaption   انتخاب ستون هاTabOrderOnClickButton1Click  TButtonButton2Left�TopWidth]HeightCursorcrHandPointCaption   چاپ گزارشTabOrderOnClickButton2Click  TButtonButton3LeftiTopWidth]HeightCursorcrHandPointCaption   ارسال به WordTabOrderOnClickButton3Click  TButtonButton4LeftTopWidthIHeightCursorcrHandPointCaption   .1H,TabOrderOnClickButton4Click  TButtonButton5Left� TopWidthqHeightCursorcrHandPointCaption'   ورود و ويرايش اطلاعاتTabOrderOnClickButton5Click   TPanelFilterPanelLeft Top WidthHeightAlignalTopTabOrder  TADODataSetSample
ConnectionDm.YeganehConnection
Parameters Left� Top�   TDataSourceDSampleDataSetSampleLeft Top�   TADODataSetFields
ConnectionDm.YeganehConnection
CursorTypectStaticCommandText4select *
from fields
where 
tableid = :@tableid

ParametersName@tableid
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftPTopP TAutoIncFieldFieldsID	FieldNameIDReadOnly	  
TWordFieldFieldsTableID	FieldNameTableID  TStringFieldFieldsFieldName	FieldName	FieldNameSize2  TStringFieldFieldsDescription	FieldNameDescriptionSize2  TBooleanFieldFieldsIsWhere	FieldNameIsWhere  TBooleanFieldFieldsISString	FieldNameISString  TBooleanFieldFieldsIsLike	FieldNameIsLike  TBooleanFieldFieldsEveryLike	FieldName	EveryLike  TBooleanFieldFieldsVisibleInGrid	FieldNameVisibleInGrid    