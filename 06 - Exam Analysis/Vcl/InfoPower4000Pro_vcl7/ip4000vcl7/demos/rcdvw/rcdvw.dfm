�
 TRECORDVIEWDEMOFORM 0�  TPF0TRecordViewDemoFormRecordViewDemoFormLeft� TopCBorderStylebsDialogCaptionRecord View DemonstrationClientHeight�ClientWidthcColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight TLabelLabel1Left	TopWidth(HeightCaptionaChange the record view options below, and then click the hand icon in the grid to see the resultsFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  	TwwDBGrid	wwDBGrid1LeftTopWidthQHeight� Selected.StringsCustomer No	10	Customer No	FBuyer	7	Buyer	FCompany Name	25	Company Name	FZip	10	Zip	FFirst Name	21	First Name	FLast Name	25	Last Name	FStreet	60	Street	FCity	25	City	FState	25	State	F*First Contact Date	14	First Contact Date	FPhone Number	20	Phone Number	FInformation	10	Information	F"Requested Demo	14	Requested Demo	FLogical	6	Logical	F IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameRecordViewDemoFormwwDBGrid1IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourcewwDataSource1TabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack 
TwwIButtonwwDBGrid1IButtonLeft Top WidthHeight
AllowAllUp	
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333333333333?�333333 333333w�?��33   33wwws�3  ���33ww33��3 �� 33w37w?3 ���3w33�� ��  w37wws �����w3���� �   w�wwws   ��333www?�333333 333333ws3333333333333333333333333333333333333333333333333333333333333333333	NumGlyphsOnClickwwDBGrid1IButtonClick   	TGroupBox	GroupBox1LeftTop� WidthQHeight� CaptionRecord View OptionsTabOrder TRadioGroupRecordViewStyleLeftTopWidth� Height)CaptionShow FieldsColumns	ItemIndex Items.StringsHorizontally
Vertically TabOrder   TRadioGroupDialogStyleLeftTopPWidth� Height)HintWNon-modal allows you to simultaneously show the record view and access the calling formCaptionDialog StyleColumns	ItemIndex Items.StringsModal	Non-Modal ParentShowHintShowHint	TabOrder  	TCheckBoxEmbedControlsLeftTop Width� HeightCaptionShow Embedded ControlsChecked	State	cbCheckedTabOrder  	TCheckBoxCustomMainMenuLeftTop8Width� HeightCaptionShow Custom Main MenuChecked	State	cbCheckedTabOrder  	TCheckBoxShowNavigatorLeftTopPWidth� HeightCaptionShow NavigatorChecked	State	cbCheckedTabOrder  	TCheckBoxShowOKCancelLeftTophWidth� HeightCaptionShow OK and Cancel ButtonsChecked	State	cbCheckedTabOrder   TwwDBComboBoxwwDBComboBox1LeftTopPWidthyHeight
ShowButton	Style
csDropDownMapListAllowClearKey	DataFieldBuyer
DataSourcewwDataSource1DropDownCount
ItemHeight Items.StringsNoYes 	ItemIndex SortedTabOrderUnboundDataType	wwDefaultVisible  TwwDBLookupCombowwDBLookupCombo1LeftTop0WidthyHeightDropDownAlignmenttaLeftJustify	DataFieldZip
DataSourcewwDataSource1LookupTablewwTable2LookupFieldZIPTabOrderVisibleAutoDropDown
ShowButton	AllowClearKeyShowMatchText	  TwwDBRichEditwwDBRichEdit1LeftTophWidth� HeightYAutoURLDetect	DataFieldRichEdit
DataSourcewwDataSource1PrintJobNameDelphi 3TabOrderVisibleEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersion  TwwDataSourcewwDataSource1DataSetwwTable1Left8Top0  TwwTablewwTable1Active	DatabaseName	InfoDemo5	TableName
IP4CUST.DBControlType.StringsZip;CustomEdit;wwDBLookupCombo1Buyer;CustomEdit;wwDBComboBox1RichEdit;RichEdit;wwDBRichEdit1 PictureMasks.StringsBuyer	{Yes,No}	T	T SyncSQLByRange	NarrowSearchValidateWithMask	LeftXTop0  TwwRecordViewDialogwwRecordViewDialog1
DataSourcewwDataSource1FormPosition.Left FormPosition.Top FormPosition.Width FormPosition.Height NavigatorButtonsnbsFirstnbsPriornbsNextnbsLast	nbsInsert	nbsDeletenbsEditnbsPost	nbsCancel
nbsRefreshnbsPriorPagenbsNextPagenbsSaveBookmarknbsRestoreBookmark StylervsHorizontalOptionsrvoUseCustomControlsrvoShortenEditBoxrvoModalFormrvoStayOnTopFormrvoConfirmCancelrvoCloseIsCancelrvoMaximizeMemoWidthrvoUseDateTimePicker ControlOptions LabelFont.CharsetDEFAULT_CHARSETLabelFont.ColorclWindowTextLabelFont.Height�LabelFont.NameMS Sans SerifLabelFont.StylefsBold Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style CaptionRecord ViewMenuRecordViewMenuSelected.StringsCustomer No	10	Customer NoBuyer	7	Buyer	NoCompany Name	25	Company Name	No
<New Line>First Name	21	First NameLast Name	25	Last Name	No
<New Line>Street	60	Street
<New Line>
Zip	10	ZipCity	25	City	NoState	25	State	No
<New Line>*First Contact Date	10	First Contact Date	FPhone Number	20	Phone Number	NoRichEdit	10	RichEditInformation	10	Information	No#Requested Demo	14	Requested Demo	NoLogical	6	Logical	No NavigatorFlat	LeftxTop0  TwwTablewwTable2Active	DatabaseName	InfoDemo5	TableName	IP4ZIP.DBSyncSQLByRange	NarrowSearchValidateWithMask	Left� Top0  	TMainMenuRecordViewMenuLeft�Top0 	TMenuItemFirst1CaptionFile 	TMenuItemExit1CaptionEx&itOnClick
Exit1Click   	TMenuItemEdit1CaptionEditOnClick
Edit1Click 	TMenuItemInsert1CaptionInsertOnClickInsert1Click  	TMenuItemCancel1CaptionCancelOnClickCancel1Click  	TMenuItemPost1CaptionPostOnClick
Post1Click   	TMenuItemRecord1CaptionRecord 	TMenuItemFirst2CaptionFirstOnClickFirst2Click  	TMenuItemPrior1CaptionPriorOnClickPrior1Click  	TMenuItemNext1CaptionNextOnClick
Next1Click  	TMenuItemLast1CaptionLastOnClick
Last1Click     