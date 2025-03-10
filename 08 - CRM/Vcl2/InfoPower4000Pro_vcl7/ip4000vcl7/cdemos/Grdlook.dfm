�
 TGRIDDEMO 0�$  TPF0	TGridDemoGridDemoLeftTop� BorderStylebsDialogCaption!InfoPower - Lookup Combos in GridClientHeightwClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnCloseQueryFormCloseQueryOnShowFormShowPixelsPerInch`
TextHeight TTabbedNotebookTabbedNotebook1LeftTopWidth�HeightY	PageIndexTabFont.CharsetDEFAULT_CHARSETTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style TabOrder OnChangeTabbedNotebook1Change TTabPage LeftTopCaptionLookupCombo 	TwwDBGrid	wwDBGrid1LeftTop Width�Height� Selected.StringsLast Name	10	Last NameFirst Name	9	First NameBuyer	6	Buyer?
Zip	11	ZipCompany Name	17	Company Name IniAttributes.Delimiter;;
TitleColorclNavy	FixedColsShowHorzScrollBar	Color	clBtnFaceCtl3D	
DataSourceCustomerSourceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
KeyOptionsdgEnterToTabdgAllowDeletedgAllowInsert Options	dgEditingdgAlwaysShowEditordgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit ParentCtl3D
ParentFontTabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWhiteTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtons
UseTFieldsIndicatorColoricYellow  TMemoMemo2LeftTop� Width�Height� Ctl3D	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style Lines.StringsEThis example attaches a lookup combo to an InfoPower data-aware grid.KClick in the grid's field column "Zip" to display the lookup combo control. KThe combo control uses the value from field "Zip" in customer.db to lookup Ozip.db.  The drop-down displays the zip, city, and state from the lookup table. QYou can incrementally search through the lookup list by directly typing into the 1combo control while the lookup list is displayed. ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrder   TTabPage LeftTopCaptionLinked LookupCombo 	TwwDBGrid	wwDBGrid2LeftTop Width�Height� Selected.StringsLast Name	10	Last NameFirst Name	9	First Name	NoBuyer	5	Buyer?	NoZipCity	12	ZipCity	FCompany Name	17	Company Name	No IniAttributes.Delimiter;;
TitleColorclNavy	FixedColsShowHorzScrollBarColor	clBtnFace
DataSourceCustomerSourceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
KeyOptionsdgEnterToTabdgAllowDeletedgAllowInsert Options	dgEditingdgAlwaysShowEditordgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit 
ParentFontTabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWhiteTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtons
UseTFieldsIndicatorColoricYellow  TwwDBRichEditwwDBRichEdit1LeftTop� Width�Height� AutoURLDetectPrintJobName
C++BuilderTabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
G  C  {\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl {\f0\fnil Times New Roman;}}
\uc1\pard\f0\fs20 This example attaches a lookup combo to a lookup field in a InfoPower data-aware grid.  Click the City field in the grid to display the lookup combo control.  Type in characters to perform incremental searches on the lookup list.\par
\par
The combo control uses the value from "Zip" in customer.db to look up zip.db and display its corresponding "City" value. When the end-user selects a new"City", he/she is actually changing the "Zip" field value from "Customer.db".\par
}
     TwwDBLookupCombowwDBLookupCombo2Left<TopWidthHeightDropDownAlignmenttaLeftJustifySelected.Strings	ZIP	5	ZIPCITY	15	CITYSTATE	5	STATE LookupTableZipTableLookupFieldZIPOptions
loColLinesloTitles TabOrderAutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKeyShowMatchText	  TwwDBLookupCombowwDBLookupCombo1Left,TopWidthHeightDropDownAlignmenttaLeftJustifySelected.StringsCITY	11	CITY	ZIP	5	ZIPSTATE	5	STATECityDesc	20	CityDesc LookupTableZipTableLookupFieldZIPOptions
loColLinesloTitles TabOrderAutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKeyShowMatchText	  TButtonButton1LeftTopWidthgHeightCaptionLookup and FillTabOrderOnClickButton1Click  TBitBtnBitBtn2Left�TopWidth]HeightCaptionExitTabOrderOnClickBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphs  TwwTableCustomerTableActive	DatabaseName	InfoDemo5	FieldDefsNameCustomer NoDataType	ftInteger NameBuyerDataTypeftStringSize NameCompany NameDataTypeftStringSize( Name
First NameDataTypeftStringSize Name	Last NameDataTypeftStringSize NameStreetDataTypeftStringSize< NameCityDataTypeftStringSize NameStateDataTypeftStringSize NameZipDataTypeftStringSize
 NameFirst Contact DateDataTypeftDate NamePhone NumberDataTypeftStringSize NameInformationDataTypeftMemoSizeP NameRichEditDataTypeftBlobSizeP NameRequested DemoDataTypeftStringSize NameLogicalDataType	ftBoolean  	IndexDefsFieldsCustomer NoOptions	ixPrimaryixUnique  NameiBuyerFieldsBuyerOptionsixCaseInsensitive  NameiContactDateFieldsFirst Contact DateOptionsixCaseInsensitive  Name	iLastNameFields Last Name;First Name;Customer NoOptionsixCaseInsensitive  NameiCompanyNameFieldsCompany NameOptionsixCaseInsensitive  Name
iFirstNameFieldsFirst Name;Last NameOptionsixCaseInsensitive  NameiCityFieldsCityOptionsixCaseInsensitive   	IndexName	iLastName	StoreDefs		TableName
Ip4cust.DBControlType.StringsBuyer;CheckBox;Yes;NoRequested Demo;CheckBox;Yes;NoZip;CustomEdit;wwDBLookupCombo2#ZipCity;CustomEdit;wwDBLookupCombo1 SyncSQLByRange	NarrowSearchValidateWithMask	Left� Top TStringFieldCustomerTableLastNameDisplayWidth
	FieldName	Last NameSize  TStringFieldCustomerTableFirstNameDisplayWidth		FieldName
First NameSize  TStringFieldCustomerTableBuyerDisplayLabelBuyer?DisplayWidth	FieldNameBuyerSize  TStringFieldCustomerTableZipDisplayWidth	FieldNameZipSize
  TStringFieldCustomerTableCompanyNameDisplayWidth	FieldNameCompany NameSize(  TIntegerFieldCustomerTableCustomerNo	FieldNameCustomer NoVisible  TStringFieldCustomerTableStreet	FieldNameStreetVisibleSize<  TStringFieldCustomerTableCity	FieldNameCityVisibleSize  TStringFieldCustomerTableState	FieldNameStateVisibleSize  
TDateFieldCustomerTableFirstContactDate	FieldNameFirst Contact DateVisible  TStringFieldCustomerTablePhoneNumber	FieldNamePhone NumberVisible  
TMemoFieldCustomerTableInformation	FieldNameInformationVisibleBlobTypeftMemoSizeP  TStringFieldCustomerTableRequestedDemo	FieldNameRequested DemoVisibleSize  TBooleanFieldCustomerTableLogical	FieldNameLogicalVisible  TStringFieldCustomerTableZipCity	FieldKindfkLookup	FieldNameZipCityLookupDataSetZipTableLookupKeyFieldsZIPLookupResultFieldCITY	KeyFieldsZipSizeLookup	   TwwTableZipTableActive	DatabaseName	InfoDemo5	FieldDefsNameZIPDataTypeftStringSize
 NameCITYDataTypeftStringSize NameSTATEDataTypeftStringSize  	IndexDefsNameZipTableIndex1FieldsZIPOptions	ixPrimaryixUnique  NameiCityFieldsCITYOptionsixCaseInsensitive   	StoreDefs		TableName	IP4ZIP.DBSyncSQLByRange	NarrowSearchValidateWithMask	LeftTop TStringFieldZipTableZIPDisplayWidth	FieldNameZIPSize
  TStringFieldZipTableCITYDisplayWidth	FieldNameCITYSize  TStringFieldZipTableSTATEDisplayWidth	FieldNameSTATESize   TwwDataSourceCustomerSourceDataSetCustomerTableLeft� Top  TwwLookupDialogwwLookupDialog1Selected.Strings	ZIP	6	ZIPCITY	11	CITYSTATE	2	STATE GridTitleAlignmenttaLeftJustify	GridColorclWhiteOptionsopShowOKCancelopShowSearchByopGroupControlsopFixFirstColumnopShowStatusBar GridOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDelete LookupTableZipTableCaptionLookupMaxWidth 	MaxHeight� CharCaseecNormalUserButton1Caption&User ButtonOnUserButton1ClickwwLookupDialog1UserButton1ClickLeft� Top   