�
 TTABLEQUERYFORM 0!  TPF0TTableQueryFormTableQueryFormLeft� TopnBorderStylebsDialogCaptionLookup list from QueryClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight TButtonButton1Left� Top�Width=HeightCancel	CaptionCancelModalResultTabOrder   TPageControlPageControl1Left Top WidthHeight�
ActivePage	TabSheet2TabOrder 	TTabSheet	TabSheet2Caption4Using a Parameterized Query to Fill a Drop-down List 	TwwDBGrid	wwDBGrid1LeftTop Width	Height� Selected.StringsCustomer No	6	NoCompany Name	18	Company NameState	8	State
Zip	13	ZipBuyer	8	BuyerFirst Name	25	First NameLast Name	25	Last NameStreet	60	Street(First Contact Date	14	First Contact DatePhone Number	20	Phone NumberInformation	10	InformationRichEdit	10	RichEdit Requested Demo	14	Requested DemoLogical	6	Logical IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourceCustDSTabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack  TwwDBLookupCombowwDBLookupCombo1LeftTop� Width� HeightDropDownAlignmenttaLeftJustifySelected.Strings	ZIP	5	ZIPCITY	25	CITYSTATE	5	STATE 	DataFieldZip
DataSourceCustDSLookupTableZipQueryLookupFieldZIPTabOrderAutoDropDown
ShowButton	
UseTFieldsAllowClearKey  TRadioGroupRadioGroup1LeftTop� WidthHeight)CaptionLookup Component TypeColumns	ItemIndex Items.StringsUse LookupCombo ComponentUse LookupComboDlg Component TabOrderOnClickRadioGroup1Click  TwwDBLookupComboDlgwwDBLookupComboDlg1LeftToppWidth� HeightGridOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgPerfectRowFit 	GridColorclWhiteGridTitleAlignmenttaLeftJustifyCaptionLookupMaxWidth 	MaxHeight� Selected.Strings
ZIP	10	ZipCITY	25	Citystate	2	State LookupTableZipQueryLookupFieldZipSeqSearchOptions
ssoEnabledssoCaseSensitive TabOrderVisibleAutoDropDown
ShowButton	AllowClearKey
UseTFields  TwwDBRichEditwwDBRichEdit1LeftTop� WidthHeight� AutoURLDetectPrintJobNameDelphi 3TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
�  �  {\rtf1\ansi\deff0\deflang1033{\fonttbl {\f0\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\uc1\pard\cf1\f0\fs20 InfoPower supports lookups a variety of dataset types to fill a drop-down list, including TQuery, TwwQBE, and TwwClientDataSet.\par
\par
InfoPower supports lookups using\b\i  parameterized queries\b0\i0  to fill your drop-down list.  This gives you automatically filtered lookups based on the current record's data.  For instance in the above example the the drop-down list in the Zip code field is automatically filtered to show only the zip codes that correlate with the "State" value of the current record.\par
}
    	TTabSheet	TabSheet1Caption&Using a Query to Fill a Drop-down List TLabelLabel1LeftTop Width� HeightCaptionLookupCombo from a TQuery  TLabelLabel2LeftTopXWidth� HeightCaptionLookupComboDlg from a TQuery  TwwDBLookupCombowwDBLookupCombo2LeftTop0Width� HeightDropDownAlignmenttaLeftJustifyLookupTablewwQuery1LookupFieldStateTabOrder AutoDropDown
ShowButton	AllowClearKeyShowMatchText	  TwwDBLookupComboDlgwwDBLookupComboDlg2LeftTophWidth� HeightGridOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgPerfectRowFit 	GridColorclWhiteGridTitleAlignmenttaLeftJustifyCaptionLookupMaxWidth 	MaxHeight� LookupTablewwQuery1LookupFieldstateTabOrderAutoDropDown
ShowButton	AllowClearKeyShowMatchText	  TwwDBRichEditwwDBRichEdit2LeftTop� Width�Height� AutoURLDetectPrintJobName
C++BuilderTabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
D  @  {\rtf1\ansi\deff0\deflang1033{\fonttbl {\f0\froman Times New Roman;}{\f1\fmodern Courier New;}}
{\colortbl ;\red0\green0\blue0;}
\uc1\pard\li72\f0\fs20 This example uses an SQL command to fill a lookup list. The following SQL is used in this \par
demo.\par
\par
\f1 Select Distinct State from IP2ZIP\par
\f0\par
Click on the icon in either the wwDBLookupCombo or the TwwDBLookupComboDlg and you will see the list generated by the query.  Also note that incremental searching and Quicken style auto-filling are still supported. even against a TQuery.\par
\cf1\par
}
     TwwDataSourceZipDSDataSetZipQueryLeftPTop@  TwwDataSourceCustDSDataSet	CustQueryLeftPTop   TwwQuery	CustQueryActive	DatabaseName	InfoDemo5RequestLive	SQL.StringsSelect * from ip4cust ControlType.StringsZip;CustomEdit;wwDBLookupCombo1 ValidateWithMask	OnFilterOptions LeftpTop  TIntegerFieldCustQueryCustomerNoDisplayLabelNoDisplayWidth	FieldNameCustomer No  TStringFieldCustQueryCompanyNameDisplayWidth	FieldNameCompany NameSize(  TStringFieldCustQueryStateDisplayWidth	FieldNameStateSize  TStringFieldCustQueryZipDisplayWidth	FieldNameZipSize
  TStringFieldCustQueryBuyerDisplayWidth	FieldNameBuyerSize  TStringFieldCustQueryFirstNameDisplayWidth	FieldName
First NameSize  TStringFieldCustQueryLastNameDisplayWidth	FieldName	Last NameSize  TStringFieldCustQueryStreetDisplayWidth<	FieldNameStreetSize<  
TDateFieldCustQueryFirstContactDateDisplayWidth	FieldNameFirst Contact Date  TStringFieldCustQueryPhoneNumberDisplayWidth	FieldNamePhone Number  
TMemoFieldCustQueryInformationDisplayWidth
	FieldNameInformationBlobTypeftMemoSizeP  
TBlobFieldCustQueryRichEditDisplayWidth
	FieldNameRichEditBlobTypeftBlobSizeP  TStringFieldCustQueryRequestedDemoDisplayWidth	FieldNameRequested DemoSize  TBooleanFieldCustQueryLogicalDisplayWidth	FieldNameLogical  TStringFieldCustQueryCityDisplayWidth	FieldNameCityVisibleSize   TwwQueryZipQueryActive	DatabaseName	InfoDemo5
DataSourceCustDSRequestLive	SQL.StringsSelect * from ip4zipwhere ip4zip."state"=:state ValidateWithMask	OnFilterOptions LeftpTop@	ParamDataDataTypeftStringNameState	ParamType	ptUnknown    TwwQuerywwQuery1Active	DatabaseName	InfoDemo5SQL.Strings!Select distinct state from ip4zip ValidateWithMask	OnFilterOptions LeftTToph   