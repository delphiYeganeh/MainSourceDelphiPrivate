�
 TFMREPORTSALARY 0�#  TPF0�TFmReportSalaryFmReportSalaryLeft{Top� WidthAHeight�CaptionReportSalaryFmOldCreateOrder	PixelsPerInch`
TextHeight � TPanelPanel1Left Top Width9Height7AlignalClientTabOrder  TLabelLabel9Left�TopWidthHeightCaption   �'1(1Font.CharsetARABIC_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabelLabel6LeftTopWidthHeightCaption   E'GFont.CharsetARABIC_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabelLabel5Left�Top(WidthGHeightCaption   شماره حساب :  TYWhereEditYWhereEdit6LeftTopWidth� HeightBiDiModebdLeftToRightColor��� Font.CharsetARABIC_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style ParentBiDiMode
ParentFontTabOrder isLikeisDate		EveryLikeisString		FieldName	Begindate	TableNameContract	ListTablemarketer	CodeField
MarketerID
TitleFieldmarketerTitle
ConnectionDm.YeganehConnection  TDBLookupComboBoxDBLookupComboBox1Left@TopWidth� HeightBiDiModebdLeftToRightKeyFieldId	ListFieldTitle
ListSourceDataSource1ParentBiDiModeTabOrderOnClickDBLookupComboBox1Click  TPageControlPageControl1LeftTop>Width7Height�
ActivePage	TabSheet2AlignalBottomTabOrder 	TTabSheet	TabSheet1Caption   -BHB TYDBGridSalaryLeft TopWidth/Height� CursorcrHandPointAlignalBottomColorclWhite
DataSourceDslrGetSalaryTableByPersonalIDFont.CharsetARABIC_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder TitleFont.CharsetARABIC_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold YeganehColorYeganehFinish
PageNumberRecordNumberHasTime	Oriention
poPortraitHasDateHasIndex
PrintTitle>   ليست تهيه شده توسط نرم افزار يگانهInvertFarsiDate		TitleSort	
AutoInsertOnNeedColorConditionContractGridNeedColorConditionFooterFieldsCountColumnsExpanded	FieldNameTitleTitle.Caption   شرح مواردWidth� Visible	 Expanded	FieldNamePlusTitle.Caption   اضافه مي شودVisible	 Expanded	FieldNameMinusTitle.Caption   کسر مي شودVisible	 Expanded	FieldNameeffectVisible Expanded	FieldNamecommentTitle.Caption   *H6J-Visible	    TYDBGridContractGridLeft Top Width/HeightCursorcrHandPointAlignalClientColorclWhite
DataSourceDSFormFont.CharsetARABIC_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrderTitleFont.CharsetARABIC_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold YeganehColorYeganehFinish
PageNumberRecordNumberHasTime	OrientionpoLandscapeHasDateHasIndex
PrintTitle>   ليست تهيه شده توسط نرم افزار يگانهInvertFarsiDate		TitleSort	
AutoInsertOnNeedColorConditionContractGridNeedColorConditionFooterFieldsCountColumnsExpanded	FieldNameSalaryItemTitleVisible	 Expanded	FieldNameAmountVisible	 Expanded	FieldNameCommentTitle.Caption   *H6J-'*WidthVisible	     	TTabSheet	TabSheet2Caption   ليست کليه حقوق ها
ImageIndex TYDBGridYDBGridLeft Top Width/Height�CursorcrHandPointAlignalClient
DataSourceDSalaryListTabOrder TitleFont.CharsetARABIC_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style YeganehColorYeganehFinish
PageNumberRecordNumberHasTime	Oriention
poPortraitHasDateHasIndexInvertFarsiDate		TitleSort	
AutoInsertFooterFieldsCount    TButtonButton1LeftTopWidthKHeightCaption   '13'DTabOrderOnClickButton1Click  TDBEditDBEdit1LeftTop&Width� Height	DataField	AccountNo
DataSourceDataSource1TabOrder  TButtonButton2Left� Top$WidthKHeightCaption	ClipBoardTabOrderOnClickButton2Click   �TPanelPanel2Left Top`Width9Height.AlignalBottomTabOrder TBitBtnBitBtn2Left�Top	WidthPHeightCaption   �'~TabOrder OnClickBitBtn2Click  TBitBtnBitBtn3Left'Top	WidthPHeightCaption   انتقال به wordTabOrderOnClickBitBtn3Click  TBitBtnBitBtn5Left)Top	Width=HeightCaption   .1H,TabOrderOnClickBitBtn5Click  TBitBtnBitBtn6LefttTop	WidthPHeightCaption   انتخاب ستون هاTabOrderOnClickBitBtn6Click  TBitBtnBitBtn1Left� Top	WidthPHeightCaption   انتقال به ExcelTabOrderOnClickBitBtn1Click  TBitBtndobtnLeft�Top	WidthPHeightCaption   تهيه گزارشDefault	TabOrderOnClick
dobtnClick   �TPanelPanel3Left Top7Width9Height)AlignalBottomTabOrder TLabelLabel1LeftTopWidthHeightCaption_____  TLabelLabel2Left�TopWidthHeightCaption_____  TLabelLabel3Left� TopWidthHeightCaption_____  TLabelLabel4LeftiTopWidthHeightCaption_____   �TDataSourceDSFormDataSetslrGetSalaryByPersonalIDLeft Top  �TActionList
ActionListLeft�Top�  	TADOTableUser
ConnectionDm.YeganehConnection
CursorTypectStaticFilterisActive=TrueFiltered		TableNameUsersLeftATopu TIntegerFieldUserId	FieldNameId  TWideStringField	UserTitle	FieldNameTitleSize2  TWideStringFieldUserUserName	FieldNameUserNameSize2  TWideStringFieldUserPassWord	FieldNamePassWordSize2  
TWordFieldUserMarketerID	FieldName
MarketerID  
TWordFieldUserDefaultProductID	FieldNameDefaultProductID  TStringField	UserEmail	FieldNameEmailSize2  TStringFieldUserAccountNo	FieldName	AccountNoSize2  TBooleanFieldUserIsActive	FieldNameIsActive   TDataSourceDataSource1DataSetUserLeft� Topx  TADOStoredProcslrGetSalaryByPersonalID
ConnectionDm.YeganehConnection
CursorTypectStaticAfterInsert#slrGetSalaryByPersonalIDAfterInsertProcedureNameslrGetSalaryByPersonalID
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@PersonalID
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@month
Attributes
paNullable DataTypeftStringSizeValue  Name@sum
Attributes
paNullable DataType	ftInteger	DirectionpdInputOutput	Precision
Value  Name@PaidAmount
Attributes
paNullable DataType	ftInteger	DirectionpdInputOutput	Precision
Value  Name@cashAmount
Attributes
paNullable DataType	ftInteger	DirectionpdInputOutput	Precision
Value  Name@remain
Attributes
paNullable DataType	ftInteger	DirectionpdInputOutput	Precision
Value   Left� Top TAutoIncFieldslrGetSalaryByPersonalIDID	FieldNameIDReadOnly	  TIntegerField"slrGetSalaryByPersonalIDPersonalID	FieldName
PersonalID  TStringFieldslrGetSalaryByPersonalIDmonth	FieldNamemonth	FixedChar	Size  TIntegerField$slrGetSalaryByPersonalIDSalaryItemID	FieldNameSalaryItemID  TYIntegerFieldslrGetSalaryByPersonalIDAmount	FieldNameAmount  TIntegerFieldslrGetSalaryByPersonalIDEffect	FieldKindfkLookup	FieldNameEffectLookupDataSetslrSalaryItemsLookupKeyFieldsIDLookupResultFieldEffect	KeyFieldsSalaryItemIDLookup	  TStringField'slrGetSalaryByPersonalIDSalaryItemTitle	FieldKindfkLookup	FieldNameSalaryItemTitleLookupDataSetslrSalaryItemsLookupKeyFieldsIDLookupResultFieldTitle	KeyFieldsSalaryItemIDLookup	  TWideStringFieldslrGetSalaryByPersonalIDComment	FieldNameCommentSize�    	TADOTableslrSalaryItems
ConnectionDm.YeganehConnection
CursorTypectStatic	TableNameslrSalaryItemsLeft@Top�   TADOStoredProcslrGetSalaryTableByPersonalID
ConnectionDm.YeganehConnection
CursorTypectStaticLockTypeltBatchOptimisticProcedureNameslrGetSalaryTableByPersonalID;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@PersonalID
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@month
Attributes
paNullable DataTypeftStringSizeValue   Left� Toph TYIntegerField!slrGetSalaryTableByPersonalIDPlus	FieldNamePlusReadOnly	  TYIntegerField"slrGetSalaryTableByPersonalIDMinus	FieldNameMinusReadOnly	  TWideStringField"slrGetSalaryTableByPersonalIDTitle	FieldNameTitleSize2  TSmallintField#slrGetSalaryTableByPersonalIDeffect	FieldNameeffect  TWideStringField$slrGetSalaryTableByPersonalIDcomment	FieldNamecommentSize�    TDataSourceDslrGetSalaryTableByPersonalIDDataSetslrGetSalaryTableByPersonalIDLeft� Top�  TADOStoredProc
SalaryList
ConnectionDm.YeganehConnection
CursorTypectStaticLockTypeltBatchOptimisticAfterInsert#slrGetSalaryByPersonalIDAfterInsertProcedureNameSalaryList;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@month
Attributes
paNullable DataTypeftStringSizeValue1388/09  Left� Top   TDataSourceDSalaryListDataSet
SalaryListLeft� TopX   