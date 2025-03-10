�
 TGRIDDEMO 0	(  TPF0	TGridDemoGridDemoLeft� Top� HorzScrollBar.VisibleVertScrollBar.VisibleBorderStylebsDialogCaption!InfoPower - Lookup Combos in GridClientHeightwClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
KeyPreview	OldCreateOrder	PositionpoScreenCenterOnCloseQueryFormCloseQueryOnShowFormShowPixelsPerInch`
TextHeight TTabbedNotebookTabbedNotebook1LeftTopWidth�HeightYTabFont.CharsetDEFAULT_CHARSETTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style TabOrderOnChangeTabbedNotebook1Change TTabPage LeftTopCaptionLookupCombo 	TwwDBGrid	wwDBGrid1LeftTop Width�Height� Selected.StringsLast Name	11	Last Name	FFirst Name	11	First Name	FBuyer	7	Buyer?	FZip	10	Zip	FCompany Name	21	Company Name	F IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameGridDemowwDBGrid1IniAttributes.Delimiter;;
TitleColorclNavy	FixedColsShowHorzScrollBar	Color	clBtnFaceCtl3D	
DataSourceCustomerSourceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
KeyOptionsdgEnterToTabdgAllowDeletedgAllowInsert Options	dgEditingdgAlwaysShowEditordgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFitdgProportionalColResize ParentCtl3D
ParentFontTabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWhiteTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtons
UseTFieldsOnKeyUpwwDBGrid1KeyUpIndicatorIconColorclYellow  TMemoMemo2LeftTop� Width�Height� Ctl3D	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style Lines.StringsEThis example attaches a lookup combo to an InfoPower data-aware grid.KClick in the grid's field column "Zip" to display the lookup combo control. KThe combo control uses the value from field "Zip" in customer.db to lookup Ozip.db.  The drop-down displays the zip, city, and state from the lookup table. QYou can incrementally search through the lookup list by directly typing into the 1combo control while the lookup list is displayed. ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrder   TTabPage LeftTopCaptionLinked LookupCombo 	TwwDBGrid	wwDBGrid2LeftTop Width�Height� Selected.StringsLast Name	11	Last Name	FFirst Name	11	First Name	NoBuyer	7	Buyer?	NoZipCity	14	ZipCity	FCompany Name	17	Company Name	No IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameGridDemowwDBGrid2IniAttributes.Delimiter;;
TitleColorclNavy	FixedColsShowHorzScrollBarColor	clBtnFace
DataSourceCustomerSourceEditCalculated	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
KeyOptionsdgEnterToTabdgAllowDeletedgAllowInsert Options	dgEditingdgAlwaysShowEditordgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFitdgProportionalColResize 
ParentFontTabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWhiteTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtons
UseTFieldsOnCalcCellColorswwDBGrid2CalcCellColorsIndicatorIconColorclYellow  TMemoMemo1LeftTop� Width�Height� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style Lines.StringsFThis example attaches a lookup combo to a linked field in a InfoPower Odata-aware grid.  Click the City field in the grid to display the lookup combo Pcontrol.  Type in characters to perform incremental searches on the lookup list. BThis grid is actually displaying values from two different tables.PThe combo control uses the value from "Zip" in customer.db to look up zip.db to Tretrieve and display its corresponding "City" value.. The displayed field "City" in Kthe above grid comes from the zip.db table. When the end-user selects a newM"City", he/she is actually changing the "Zip" field value from "Customer.db". 
ParentFont
ScrollBars
ssVerticalTabOrder   TTabPage LeftTopCaptionDateTime Picker 	TwwDBGrid	wwDBGrid3LeftTop Width�Height� Selected.StringsLast Name	11	Last Name	FFirst Name	11	First Name	NoBuyer	7	Buyer?	NoCompany Name	19	Company Name	F*First Contact Date	12	First Contact~Date	F IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameGridDemowwDBGrid3IniAttributes.Delimiter;;
TitleColorclNavy	FixedColsShowHorzScrollBarColor	clBtnFace
DataSourceCustomerSourceEditCalculated	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold Options	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFitdgProportionalColResize 
ParentFontTabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWhiteTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtons
UseTFieldsOnMouseDownwwDBGrid3MouseDownIndicatorIconColorclYellow  TwwDBRichEditwwDBRichEdit1LeftTop� Width�Height� AutoURLDetectPrintJobNameDelphi 5TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
�  �  {\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\sa43\cf1\f0\fs20 The \ul First Contact Date\ulnone  field uses InfoPower's new DateTimePicker control.  The grid will automatically detect date or time fields and use the appropriate control.\par
\pard See the DateTimePicker demonstration form for details on the flexibility of InfoPower's DateTimePicker.\par
\par
}
     TwwDBLookupCombowwDBLookupCombo2Left<TopWidthHeightDropDownAlignmenttaLeftJustifySelected.Strings	ZIP	5	ZIPCITY	15	CITYSTATE	5	STATE LookupTableZipTableLookupFieldZIPOptions
loColLinesloTitles TabOrderAutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKeyShowMatchText	  TwwDBLookupCombowwDBLookupCombo1Left,TopWidthHeightDropDownAlignmenttaLeftJustifySelected.StringsCITY	11	CITY	ZIP	5	ZIPSTATE	5	STATECityDesc	20	CityDesc LookupTableZipTableLookupFieldZIPOptions
loColLinesloTitles TabOrder AutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKeyShowMatchText	  TButtonButton1LeftTopWidthgHeightCaptionLookup and FillTabOrderOnClickButton1Click  TBitBtnBitBtn2Left�TopWidth]HeightCaptionExitTabOrderOnClickBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphs  TwwTableCustomerTableActive	DatabaseName	InfoDemo5	IndexName	iLastName	TableName
IP4CUST.DBLookupFields.Strings'ZipCity;InfoDemo5;IP4ZIP.DB;CITY;;ZIP;Y LookupLinks.StringsZip;ZIP ControlType.StringsBuyer;CheckBox;Yes;NoRequested Demo;CheckBox;Yes;NoZip;CustomEdit;wwDBLookupCombo2#ZipCity;CustomEdit;wwDBLookupCombo1 SyncSQLByRange	NarrowSearchValidateWithMask	Left� Top TStringFieldCustomerTableLastNameDisplayWidth
	FieldName	Last NameSize  TStringFieldCustomerTableFirstNameDisplayWidth		FieldName
First NameSize  TStringFieldCustomerTableBuyerDisplayLabelBuyer?DisplayWidth	FieldNameBuyerSize  TStringFieldCustomerTableZipDisplayWidth	FieldNameZipSize
  TStringFieldCustomerTableZipCityDisplayWidth	FieldKindfkCalculated	FieldNameZipCity
Calculated	  TStringFieldCustomerTableCompanyNameDisplayWidth	FieldNameCompany NameSize(  TIntegerFieldCustomerTableCustomerNo	FieldNameCustomer NoVisible  TStringFieldCustomerTableStreet	FieldNameStreetVisibleSize<  TStringFieldCustomerTableCity	FieldNameCityVisibleSize  TStringFieldCustomerTableState	FieldNameStateVisibleSize  
TDateFieldCustomerTableFirstContactDate	FieldNameFirst Contact DateVisible  TStringFieldCustomerTablePhoneNumber	FieldNamePhone NumberVisible  
TMemoFieldCustomerTableInformation	FieldNameInformationVisibleBlobTypeftMemoSizeP  TStringFieldCustomerTableRequestedDemo	FieldNameRequested DemoVisibleSize  TBooleanFieldCustomerTableLogical	FieldNameLogicalVisible   TwwTableZipTableActive	DatabaseName	InfoDemo5	TableName	IP4ZIP.DBLookupFields.Strings+CityDesc;InfoDemo;CITY.DB;City Description; LookupLinks.Strings	CITY;City SyncSQLByRange	NarrowSearchValidateWithMask	LeftTop TStringFieldZipTableZIPDisplayWidth	FieldNameZIPSize
  TStringFieldZipTableCITYDisplayWidth	FieldNameCITYSize  TStringFieldZipTableSTATEDisplayWidth	FieldNameSTATESize   TwwDataSourceCustomerSourceDataSetCustomerTableLeft� Top  TwwLookupDialogwwLookupDialog1Selected.Strings	ZIP	6	ZIPCITY	11	CITYSTATE	2	STATE GridTitleAlignmenttaLeftJustify	GridColorclWhiteOptionsopShowOKCancelopShowSearchByopGroupControlsopFixFirstColumnopShowStatusBar GridOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDelete LookupTableZipTableCaptionLookupMaxWidth 	MaxHeight� CharCaseecNormalUserButton1Caption&User ButtonOnUserButton1ClickwwLookupDialog1UserButton1ClickLeft� Top   