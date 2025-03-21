�
 TDETAILCOMBOFORM 0y  TPF0TDetailComboFormDetailComboFormLeft!TopzBorderStylebsDialogCaption.Fill the drop-down list from a detail TwwTableClientHeight� ClientWidthxColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidthMHeightCaptionSelect Customer  TLabelLabel2Left� TopWidthsHeightCaptionSelect Customer Invoice  TwwDBLookupComboInvoiceComboLeft� TopWidth� HeightDropDownAlignmenttaLeftJustifySelected.StringsInvoice No	3	NoPurchase Date	10	Purchase DateTotal Invoice	6	Total LookupTablewwTable2LookupField
Invoice NoOptions
loColLinesloTitles TabOrder AutoDropDown
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKey  TwwDBLookupComboCustomerComboLeftTopWidth� HeightDropDownAlignmenttaLeftJustifySelected.StringsCompany Name	20	Company Name LookupTablewwTable1LookupFieldCustomer NoTabOrderAutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKey
OnDropDownCustomerComboDropDown	OnCloseUpCustomerComboCloseUp  TButtonButton1Left� Top� Width=HeightCancel	CaptionCancelFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold ModalResult
ParentFontTabOrder  TwwDBRichEditwwDBRichEdit1LeftTop@WidthiHeight� AutoURLDetectPrintJobNameDelphi 3TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
�  �  {\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\sa43\f0\fs20 Cick on the drop-down icon to select an invoice for the given customer.  The 2nd lookupCombo will show only invoices for the customer you selected.\par
\pard The following example demonstrates how you can attach a LookupCombo directly to a detail table.  By attaching to a detail table, the drop-down list will only show records related to the current record of the master table. This example uses 2 unbound LookupCombos: one looking up a master table (IP4CUST.DB), and the other looking up the detail table (IP4INV.DB). \par
\cf1\b\par
}
   TwwDataSourcewwDataSource1DataSetwwTable1LeftpTop@  TwwTablewwTable1Active	DatabaseName	InfoDemo5	FieldDefsNameCustomer NoDataType	ftInteger NameBuyerDataTypeftStringSize NameCompany NameDataTypeftStringSize( Name
First NameDataTypeftStringSize Name	Last NameDataTypeftStringSize NameStreetDataTypeftStringSize< NameCityDataTypeftStringSize NameStateDataTypeftStringSize NameZipDataTypeftStringSize
 NameFirst Contact DateDataTypeftDate NamePhone NumberDataTypeftStringSize NameInformationDataTypeftMemoSizeP NameRichEditDataTypeftBlobSizeP NameRequested DemoDataTypeftStringSize NameLogicalDataType	ftBoolean  	IndexDefsNamewwTable1Index1FieldsCustomer NoOptions	ixPrimaryixUnique  NameiBuyerFieldsBuyerOptionsixCaseInsensitive  NameiContactDateFieldsFirst Contact DateOptionsixCaseInsensitive  Name	iLastNameFields Last Name;First Name;Customer NoOptionsixCaseInsensitive  NameiCompanyNameFieldsCompany NameOptionsixCaseInsensitive  Name
iFirstNameFieldsFirst Name;Last NameOptionsixCaseInsensitive  NameiCityFieldsCityOptionsixCaseInsensitive   	StoreDefs		TableName
Ip4cust.DBSyncSQLByRange	NarrowSearchValidateWithMask	LeftpTop`  TwwTablewwTable2Active	DatabaseName	InfoDemo5	FieldDefsNameCustomer NoDataType	ftInteger Name
Invoice NoDataTypeftFloat NamePayment MethodDataTypeftFloat NameTotal InvoiceDataType
ftCurrency NamePurchase DateDataTypeftDate NameBalance DueDataType
ftCurrency  	IndexDefsFieldsCustomer No;Invoice NoOptions	ixPrimaryixUnique   IndexFieldNamesCustomer No;Invoice NoMasterFieldsCustomer NoMasterSourcewwDataSource1	StoreDefs		TableName	Ip4inv.DBSyncSQLByRange	NarrowSearchValidateWithMask	LeftpTop�    