�
 TDETAILCOMBOFORM 0=  TPF0TDetailComboFormDetailComboFormLeft!TopzActiveControlCustomerComboBorderStylebsDialogCaption.Fill the drop-down list from a detail TwwTableClientHeight� ClientWidthwColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidth]HeightCaptionSelect Customer  TLabelLabel2Left� TopWidth� HeightCaptionSelect Customer Invoice  TwwDBLookupComboInvoiceComboLeft� TopWidth� HeightDropDownAlignmenttaLeftJustifySelected.StringsInvoice No	3	NoPurchase Date	10	Purchase DateTotal Invoice	6	Total LookupTablewwTable2LookupField
Invoice NoOptions
loColLinesloTitles TabOrderAutoDropDown
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKey  TwwDBLookupComboCustomerComboLeftTopWidth� HeightDropDownAlignmenttaLeftJustifySelected.StringsCompany Name	20	Company Name LookupTablewwTable1LookupFieldCustomer NoTabOrder AutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKey
OnDropDownCustomerComboDropDown	OnCloseUpCustomerComboCloseUp  TButtonButton1Left� TopWidth=HeightCancel	CaptionCancelModalResultTabOrder  TwwDBRichEditwwDBRichEdit1LeftTop@WidthiHeight� AutoURLDetectPrintJobNameDelphi 5TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
�  �  {\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl {\f0\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\uc1\pard\sa43\f0\fs20 Cick on the drop-down icon to select an invoice for the given customer.  The 2nd lookupCombo will show only invoices for the customer you selected.\par
\pard The following example demonstrates how you can attach a LookupCombo directly to a detail table.  By attaching to a detail table, the drop-down list will only show records related to the current record of the master table. This example uses 2 unbound LookupCombos: one looking up a master table (IP4CUST.DB), and the other looking up the detail table (IP4INV.DB). \par
\cf1\b\par
}
   TwwDataSourcewwDataSource1DataSetwwTable1LeftpTop@  TwwTablewwTable1Active	DatabaseName	InfoDemo5	TableName
IP4CUST.DBSyncSQLByRange	NarrowSearchValidateWithMask	LeftpTop`  TwwTablewwTable2Active	DatabaseName	InfoDemo5IndexFieldNamesCustomer No;Invoice NoMasterFieldsCustomer NoMasterSourcewwDataSource1	TableName	Ip4inv.DBSyncSQLByRange	NarrowSearchValidateWithMask	LeftpTop�    