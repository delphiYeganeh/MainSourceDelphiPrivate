�
 TFILTERDIALOGFORM 0eE  TPF0TFilterDialogFormFilterDialogFormLeft� Top� ActiveControlBitBtn1BorderStylebsDialogCaption#InfoPower's Visual Filtering DialogClientHeight�ClientWidthvColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
PrintScalepoNonePixelsPerInch`
TextHeight TLabelLabel1Left`Top WidthDHeightCaptionVisual Query 2Visible  TLabelLabel2LeftxTopPWidthbHeightCaptionVisual Filter on TableVisible  TLabelLabel3Left`Top� WidthDHeightCaptionVisual Query 1Visible  TBitBtnBitBtn1Left�Top_Width� HeightCaptionSpecify CriteriaTabOrder OnClickBitBtn1Click
Glyph.Data
�  �  BM�      v   (                                      �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� wwwwwwwwwwwwwwwwwwwwwwwwx          x����������x����������x����� ��x�������x�������x� � ��x��������p� ����� ��������� ���������p���������x   ������x��w������x� �x����x�ww������x�wwp����x��wp    x����w���x���wx�����www��wwwwwwwwwx �wwwwww  	TGroupBox	GroupBox1Left�TopWidth� Height� CaptionDisplay OptionsTabOrder 	TCheckBoxSearchTypeCheckboxLeftTopWidth� HeightCaptionSearch Type Tab ControlChecked	State	cbCheckedTabOrder OnClickSearchTypeCheckboxClick  	TCheckBoxShowFieldOrderCheckboxLeftTop(Width� HeightCaptionField Order Radio ButtonChecked	State	cbCheckedTabOrderOnClickShowFieldOrderCheckboxClick  	TCheckBoxViewSummaryCheckboxLeftTop<Width� HeightCaptionView Summary ButtonChecked	State	cbCheckedTabOrderOnClickViewSummaryCheckboxClick  	TCheckBox	CheckBox1LeftTopPWidth� HeightCaptionOK and Cancel ButtonsChecked	State	cbCheckedTabOrderOnClickCheckBox1Click  	TCheckBox	CheckBox2LeftTopdWidth� HeightCaptionShow Nonmatching RecordsTabOrderOnClickCheckBox2Click  	TCheckBox	CheckBox3LeftTopxWidth� HeightCaptionResizable (NEW!)Checked	State	cbCheckedTabOrderOnClickCheckBox3Click   TTabbedNotebookTabbedNotebook1Left�Top Width�Height�
TabsPerRowTabFont.CharsetDEFAULT_CHARSETTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style TabOrderOnChangeTabbedNotebook1Change TTabPage LeftTopCaptionLocal Filtering 	TwwDBGrid	wwDBGrid1LeftTopWidth�Height� Selected.StringsCustomer No	6	Cust~NoBuyer	5	BuyerCompany Name	9	Company~NameFirst Name	10	First NameLast Name	10	Last NameStreet	15	StreetCity	11	CityState	25	State
Zip	15	Zip(First Contact Date	15	First Contact DatePhone Number	20	Phone NumberInformation	10	Information Requested Demo	14	Requested DemoLogical	6	Logical IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameFilterDialogFormwwDBGrid1IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSource
CustomerDSOptions	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit RowHeightPercent� TabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtons  TwwDBRichEditwwDBRichEdit3LeftTop� Width�Height� AutoURLDetectPrintJobNameDelphi 3TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
K  G  {\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\froman Times New Roman;}}
{\colortbl ;\red8\green0\blue0;}
\viewkind4\uc1\pard\sa43\cf1\f0\fs20 InfoPower allows your end-users to visually perform a local filter on any InfoPower compatible DataSet. Filter criteria can be specified as a value, a substring, or a range. When using local filtering on a query result, the query is not re-executed, but simply re-filtered.  This means that the back-end does not need to do any additional processing. \par
Local filtering on tables also guarantees a live editable view of the data.\par
}
    TTabPage LeftTopCaptionVisual Querying 1 	TwwDBGrid	wwDBGrid4LeftTop Width�Height� Selected.StringsCustomer No	9	Customer NoBuyer	4	BuyerCompany Name	14	Company NameFirst Name	8	First NameLast Name	9	Last NameStreet	60	StreetCity	25	CityState	25	State
Zip	10	Zip(First Contact Date	13	First Contact DatePhone Number	20	Phone NumberInformation	10	Information Requested Demo	12	Requested DemoLogical	5	Logical IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameFilterDialogFormwwDBGrid4IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourceCustomer1QueryDSOptions	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit TabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtons  TwwDBRichEditwwDBRichEdit2LeftTop� Width�Height� AutoURLDetectPrintJobNameDelphi 3TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
�  �  {\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\f0\fs20 InfoPower's visual query mechanism performs remote filtering by utilizing existing SQL queries, and modifying them according to a user defined search criteria. Though functionally very similar to local filtering, the actual mechanism of filteriing is not performed locally, but instead at the back-end. \par
\par
The back-end can then efficiently perform the search by utilizing available indexes.  Visual Querying also has the advantage of reducing network traffic since the filtering is performed on the same machine that contains \par
the data.\par
\par
\cf1\par
}
    TTabPage LeftTopCaptionVisual Querying 2 	TGroupBox	GroupBox2LeftTop� Width�HeightaCaptionOrders for CustomerTabOrder  	TwwDBGrid	wwDBGrid3LeftTopWidth�HeightHSelected.StringsInvoice No	10	Invoice NoPayment Method	14	Pay MethodTotal Invoice	12	Total InvoicePurchase Date	12	DateBalance Due	12	Balance Due IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameFilterDialogFormwwDBGrid3IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSource	CustInvDSOptions	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit TabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsOnCalcCellColorswwDBGrid3CalcCellColors   	TGroupBox	GroupBox3LeftTopWidth�Height}Caption	CustomersTabOrder 	TwwDBGrid	wwDBGrid2LeftTopWidth�HeightYSelected.StringsCustomer No	9	Customer NoBuyer	4	BuyerCity	8	CityCompany Name	14	Company Name(First Contact Date	13	First Contact DateFirst Name	25	First NameInformation	10	InformationLast Name	25	Last NameLogical	5	LogicalPhone Number	20	Phone Number Requested Demo	12	Requested DemoState	25	StateStreet	60	Street
Zip	10	Zip IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameFilterDialogFormwwDBGrid2IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourceCustomer2QueryDSOptions	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit TabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtons   TMemoMemo3LeftTop� Width�Height~Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style Lines.StringsFInfoPower performs remote filtering with multi-table sql queries, and Lmodifies them according to a user defined search criteria.  As a result you 2can even specify search criteria in joined tables. MFor instance click on the "Specify Criteria" button to the right and enter a G"Starting Range" of 25 for the "Balance Due" field.  Then click the OK Ebutton. You will then see only customers who have at least one order -where the balance due field is more than $25. 
ParentFontTabOrder   TTabPage LeftTopCaptionAnd, Or, Not, Null 	TwwDBGrid	wwDBGrid5LeftTopWidth�Height� Selected.StringsCustomer No	6	Cust~NoBuyer	5	BuyerCompany Name	9	Company~NameFirst Name	10	First NameLast Name	10	Last NameStreet	15	StreetCity	11	CityState	25	State
Zip	15	Zip(First Contact Date	15	First Contact DatePhone Number	20	Phone NumberInformation	10	Information Requested Demo	14	Requested DemoLogical	6	Logical IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameFilterDialogFormwwDBGrid5IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSource
CustomerDSTabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtons  TwwDBRichEditwwDBRichEdit1LeftTop� Width�Height� AutoURLDetectPrintJobNameDelphi 3TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
$     {\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\f0\fs20 Programmable keywords for AND, OR, and NULL support.  This allows you to specify multiple filter values for each field, such as John OR Paul.\par
\par
A new option has been added to handle NOT support.  \par
When fdShowNonMatching is set to True, a checkbox appears in the Filterdialog which, when enabled, will show all the records that do \b\i not\b0\i0  fit the entered condition.\par
\par
\cf1\par
}
     TwwFilterDialogwwFilterDialog1
DataSource
CustomerDSOptionsfdShowCaseSensitivefdShowOKCancelfdShowViewSummaryfdShowFieldOrderfdShowValueRangeTab
fdSizeable SortByfdSortByFieldNoCaptionSearch using local filteringFilterMethod
fdByFilterDefaultMatchTypefdMatchStartDefaultFilterByfdSmartFilterFieldOperators.OrCharorFieldOperators.AndCharandFieldOperators.NullCharnull&FilterPropertyOptions.LikeWildcardChar%FilterOptimizationfdNoneQueryFormatDateModeqfdMonthDayYear	SQLTables OnSelectFieldwwFilterDialog1SelectFieldLeftxTop`  TwwDataSource
CustomerDSDataSetCustomerTblLeftxTop�   TwwTableCustomerTblActive	DatabaseName	InfoDemo5	TableName
IP4CUST.DBSyncSQLByRange	NarrowSearchValidateWithMask	Left�Top�  TIntegerFieldCustomerTblCustomerNoDisplayLabelCust~NoDisplayWidth	FieldNameCustomer No  TStringFieldCustomerTblBuyerDisplayWidth	FieldNameBuyerSize  TStringFieldCustomerTblCompanyNameDisplayLabelCompany~NameDisplayWidth		FieldNameCompany NameSize(  TStringFieldCustomerTblFirstNameDisplayWidth
	FieldName
First NameSize  TStringFieldCustomerTblLastNameDisplayWidth
	FieldName	Last NameSize  TStringFieldCustomerTblStreetDisplayWidth	FieldNameStreetSize<  TStringFieldCustomerTblCityDisplayWidth	FieldNameCitySize  TStringFieldCustomerTblStateDisplayWidth	FieldNameStateSize  TStringFieldCustomerTblZipDisplayWidth	FieldNameZipSize
  
TDateFieldCustomerTblFirstContactDateDisplayWidth	FieldNameFirst Contact Date  TStringFieldCustomerTblPhoneNumberDisplayWidth	FieldNamePhone Number  
TMemoFieldCustomerTblInformationDisplayWidth
	FieldNameInformationBlobTypeftMemoSizeP  TStringFieldCustomerTblRequestedDemoDisplayWidth	FieldNameRequested DemoSize  TBooleanFieldCustomerTblLogicalDisplayWidth	FieldNameLogical  
TBlobFieldCustomerTblRichEdit	FieldNameRichEditVisibleBlobTypeftBlobSizeP   TwwDataSourceCustomer2QueryDSDataSetCustomer2QueryLeft`Top0  TwwQueryCustomer2QueryActive	DatabaseName	InfoDemo5SQL.StringsSELECT  DISTINCT  IP4CUST."Customer No", IP4CUST."Buyer" ,  IP4CUST."Company Name" ,  IP4CUST."First Name" , * IP4CUST."Last Name" , IP4CUST."Street" , $ IP4CUST."City" , IP4CUST."State" ,  IP4CUST."Zip" ,   IP4CUST."First Contact Date" ,  IP4CUST."Phone Number" ,  IP4CUST."Information" ,  IP4CUST."Requested Demo" ,  IP4CUST."Logical".FROM "IP4CUST.DB" IP4CUST , "IP4INV.DB" IP4INV2WHERE (IP4CUST."CUSTOMER NO"=IP4INV."CUSTOMER NO") ValidateWithMask	OnFilterOptions Left�Top0 TIntegerFieldCustomer2QueryCUSTOMERNODisplayLabelCustomer NoDisplayWidth		FieldNameCUSTOMER NO  TStringFieldCustomer2QueryBuyerDisplayWidth	FieldNameBuyerSize  TStringFieldCustomer2QueryCityDisplayWidth	FieldNameCitySize  TStringFieldCustomer2QueryCompanyNameDisplayWidth	FieldNameCompany NameSize(  
TDateFieldCustomer2QueryFirstContactDateDisplayWidth	FieldNameFirst Contact Date  TStringFieldCustomer2QueryFirstNameDisplayWidth	FieldName
First NameSize  
TMemoFieldCustomer2QueryInformationDisplayWidth
	FieldNameInformationBlobTypeftMemoSizeP  TStringFieldCustomer2QueryLastNameDisplayWidth	FieldName	Last NameSize  TBooleanFieldCustomer2QueryLogicalDisplayWidth	FieldNameLogical  TStringFieldCustomer2QueryPhoneNumberDisplayWidth	FieldNamePhone Number  TStringFieldCustomer2QueryRequestedDemoDisplayWidth	FieldNameRequested DemoSize  TStringFieldCustomer2QueryStateDisplayWidth	FieldNameStateSize  TStringFieldCustomer2QueryStreetDisplayWidth<	FieldNameStreetSize<  TStringFieldCustomer2QueryZipDisplayWidth
	FieldNameZipSize
   TwwFilterDialogwwFilterDialog3
DataSourceCustomer2QueryDSOptionsfdShowCaseSensitivefdShowOKCancelfdShowViewSummaryfdShowFieldOrderfdShowValueRangeTab
fdSizeable SortByfdSortByFieldNoCaption.Search on multiple tables using a visual queryFilterMethodfdByQueryModifyDefaultMatchTypefdMatchStartDefaultFilterByfdSmartFilterFieldOperators.OrCharorFieldOperators.AndCharandFieldOperators.NullCharnull&FilterPropertyOptions.LikeWildcardChar%SelectedFields.StringsBalance Due;Balance DueBuyer;Buyer?CityCompany NameCustomer NoFirst Contact Date
First NameInformation
Invoice No	Last NameLogicalPayment MethodPhone NumberPurchase DateRequested DemoStateStreetTotal InvoiceZip FilterOptimizationfdNoneQueryFormatDateModeqfdMonthDayYear	SQLTables Left`Top  TwwDataSource	CustInvDSDataSetCustInvoiceTableLeft`TopR  TwwTableCustInvoiceTableActive	DatabaseName	InfoDemo5IndexFieldNamesCustomer NoMasterFieldsCustomer NoMasterSourceCustomer2QueryDS	TableName	Ip4inv.DBSyncSQLByRange	NarrowSearchValidateWithMask	Left�TopR  TwwFilterDialogwwFilterDialog2
DataSourceCustomer1QueryDSOptionsfdShowCaseSensitivefdShowOKCancelfdShowViewSummaryfdShowFieldOrderfdShowValueRangeTab
fdSizeable SortByfdSortByFieldNoCaption#Search query using remote filteringFilterMethodfdByQueryModifyDefaultMatchTypefdMatchStartDefaultFilterByfdSmartFilterFieldOperators.OrCharorFieldOperators.AndCharandFieldOperators.NullCharnull&FilterPropertyOptions.LikeWildcardChar%FilterOptimizationfdNoneQueryFormatDateModeqfdMonthDayYear	SQLTables Left`Top�   TwwDataSourceCustomer1QueryDSDataSetCustomer1QueryLeft`Top�   TwwQueryCustomer1QueryDatabaseName	InfoDemo5SQL.StringsSelect * from IP4CUST ValidateWithMask	OnFilterOptions Left�Top�  TIntegerFieldCustomer1QueryCustomerNoDisplayWidth		FieldNameCustomer No  TStringFieldCustomer1QueryBuyerDisplayWidth	FieldNameBuyerSize  TStringFieldCustomer1QueryCompanyNameDisplayWidth	FieldNameCompany NameSize(  TStringFieldCustomer1QueryFirstNameDisplayWidth	FieldName
First NameSize  TStringFieldCustomer1QueryLastNameDisplayWidth		FieldName	Last NameSize  TStringFieldCustomer1QueryStreetDisplayWidth<	FieldNameStreetSize<  TStringFieldCustomer1QueryCityDisplayWidth	FieldNameCitySize  TStringFieldCustomer1QueryStateDisplayWidth	FieldNameStateSize  TStringFieldCustomer1QueryZipDisplayWidth
	FieldNameZipSize
  
TDateFieldCustomer1QueryFirstContactDateDisplayWidth	FieldNameFirst Contact Date  TStringFieldCustomer1QueryPhoneNumberDisplayWidth	FieldNamePhone Number  
TMemoFieldCustomer1QueryInformationDisplayWidth
	FieldNameInformationBlobTypeftMemoSizeP  TStringFieldCustomer1QueryRequestedDemoDisplayWidth	FieldNameRequested DemoSize  TBooleanFieldCustomer1QueryLogicalDisplayWidth	FieldNameLogical    