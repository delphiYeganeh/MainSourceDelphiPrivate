�
 TGRIDMEMOAPP 0�  TPF0TGridMemoAppGridMemoAppLeft� Top� BorderStylebsDialogCaption InfoPower - Memo fields in gridsClientHeight5ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight 	TwwDBGrid	wwDBGrid1Left Top Width�Height� Selected.StringsCustomer No	6	Cust. NoLast Name	9	Last NameFirst Name	8	First NameInformation	30	InformationCity	25	CityCompany Name	40	Company NamePhone Number	20	Phone Number MemoAttributes	mSizeable	mWordWrap	mGridShow IniAttributes.Delimiter;;
TitleColor	clBtnFace
OnMemoOpenwwDBGrid1MemoOpen	FixedColsShowHorzScrollBar	Ctl3D	
DataSourceCustomerSourceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold Options	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit ParentCtl3D
ParentFontRowHeightPercentTabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtonsIndicatorColoricBlack  TBitBtn	CancelBtnLeft�Top?WidthMHeightCaption	CancelBtnFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderTabStopKindbkCancelMarginSpacing�	IsControl	  TBitBtnBitBtn2Left�TopWidthYHeightCaptionExitTabOrderOnClickBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphs  TwwDBRichEditwwDBRichEdit1Left Top� Width�Height� AutoURLDetectPrintJobNameDelphi 5TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
e  a  {\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl {\f0\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red255\green0\blue0;\red0\green0\blue0;}
\uc1\pard\f0\fs20 This example shows that memo fields in InfoPower's grid can be viewed and edited.  Just doubleclick the "Information" field to edit or view the entire contents.\par
\par
\cf1\b New \cf0\b0 - InfoPower 2000 automatically displays the full text of a cell as a tool tip when the mouse is moved over a cell that is not large enough to display all of the text.  The tool tips also support memo fields and multiple lines.\par
\par
\cf2\b\par
}
   TwwTableCustomerTableActive	DatabaseName	InfoDemo5	FieldDefsNameCustomer NoDataType	ftInteger NameBuyerDataTypeftStringSize NameCompany NameDataTypeftStringSize( Name
First NameDataTypeftStringSize Name	Last NameDataTypeftStringSize NameStreetDataTypeftStringSize< NameCityDataTypeftStringSize NameStateDataTypeftStringSize NameZipDataTypeftStringSize
 NameFirst Contact DateDataTypeftDate NamePhone NumberDataTypeftStringSize NameInformationDataTypeftMemoSizeP NameRichEditDataTypeftBlobSizeP NameRequested DemoDataTypeftStringSize NameLogicalDataType	ftBoolean  	IndexDefsFieldsCustomer NoOptions	ixPrimaryixUnique  NameiBuyerFieldsBuyerOptionsixCaseInsensitive  NameiContactDateFieldsFirst Contact DateOptionsixCaseInsensitive  Name	iLastNameFields Last Name;First Name;Customer NoOptionsixCaseInsensitive  NameiCompanyNameFieldsCompany NameOptionsixCaseInsensitive  Name
iFirstNameFieldsFirst Name;Last NameOptionsixCaseInsensitive  NameiCityFieldsCityOptionsixCaseInsensitive   	IndexName	iLastName	StoreDefs		TableName
Ip4cust.DBControlType.StringsBuyer;CheckBox;Yes;NoRequested Demo;CheckBox;Yes;No SyncSQLByRange	NarrowSearchValidateWithMask	Left$Top�   TwwDataSourceCustomerSourceDataSetCustomerTableLeftTop�    