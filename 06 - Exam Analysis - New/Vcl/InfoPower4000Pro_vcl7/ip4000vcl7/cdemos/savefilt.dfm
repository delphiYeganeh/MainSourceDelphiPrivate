�
 TSAVEFILTERDEMO 0�  TPF0TSaveFilterDemoSaveFilterDemoLeft1Top� Width�HeightBCaptionSaving and restoring a filterColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Menu	MainMenu1OldCreateOrder	OnShowFormShowPixelsPerInch`
TextHeight 	TwwDBGrid	wwDBGrid1Left Top Width�Height� Selected.StringsCustomer No	10	Customer No	NoBuyer	5	Buyer	NoCompany Name	26	Company Name	NoFirst Name	25	First Name	NoLast Name	25	Last Name	NoStreet	60	Street	NoCity	25	City	NoState	25	State	NoZip	10	Zip	No+First Contact Date	14	First Contact Date	NoPhone Number	20	Phone Number	NoInformation	10	Information	No#Requested Demo	14	Requested Demo	NoLogical	6	Logical	No IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	AlignalTop
DataSourcewwDataSource1TabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack  TMemoMemo1LeftTop� Width�HeightIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style Lines.StringsFYour end-users may wish to use the InfoPower++ FilterDialog to create someEcommon search criteria that they wish to restore later.  This example@shows how you can save and restore named filters to a text file.)Just click on the Filter Menu at the top. 
ParentFontTabOrder  TwwFilterDialogwwFilterDialog1
DataSourcewwDataSource1OptionsfdShowCaseSensitivefdShowOKCancelfdShowViewSummaryfdShowFieldOrderfdShowValueRangeTabfdShowNonMatching SortByfdSortByFieldNoFilterMethod
fdByFilterDefaultMatchTypefdMatchStartDefaultFilterByfdSmartFilterFieldOperators.OrCharorFieldOperators.AndCharandFieldOperators.NullCharnull&FilterPropertyOptions.LikeWildcardChar%FilterOptimizationfdNoneQueryFormatDateModeqfdMonthDayYear	SQLTables Left0Top  TwwDataSourcewwDataSource1DataSetwwTable1LeftTop0  TwwTablewwTable1Active	DatabaseName	InfoDemo5	FieldDefsNameCustomer NoDataType	ftInteger NameBuyerDataTypeftStringSize NameCompany NameDataTypeftStringSize( Name
First NameDataTypeftStringSize Name	Last NameDataTypeftStringSize NameStreetDataTypeftStringSize< NameCityDataTypeftStringSize NameStateDataTypeftStringSize NameZipDataTypeftStringSize
 NameFirst Contact DateDataTypeftDate NamePhone NumberDataTypeftStringSize NameInformationDataTypeftMemoSizeP NameRichEditDataTypeftBlobSizeP NameRequested DemoDataTypeftStringSize NameLogicalDataType	ftBoolean  	StoreDefs		TableName
Ip4cust.DBSyncSQLByRange	NarrowSearchValidateWithMask	Left0Top0  	TMainMenu	MainMenu1LeftTop 	TMenuItemFilter1Caption&Filter 	TMenuItemFilter2Caption
Filter ...OnClickFilter2Click  	TMenuItemClearFilter1CaptionClear FilterOnClickClearFilter1Click  	TMenuItemLoadFilter1CaptionLoad Filter ...OnClickLoadFilter1Click  	TMenuItemSaveFilter1Caption&Save Filter ...OnClickSaveFilter1Click  	TMenuItemExit1CaptionE&xitOnClick
Exit1Click     