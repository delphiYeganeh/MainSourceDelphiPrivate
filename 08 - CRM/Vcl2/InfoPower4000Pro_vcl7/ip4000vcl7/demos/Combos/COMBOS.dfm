�
 TLOOKUPFORM 0m  TPF0TLookupForm
LookupFormLeft� Top}BorderStylebsDialogCaptionInfoPower - Lookup ControlsClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivateOnClose	FormClosePixelsPerInch`
TextHeight 	TGroupBox	GroupBox1LeftTop� Width�Height� CaptionwwDBLookupComboDlgTabOrder 	TCheckBoxOKCancelCheckBoxLeftTopWidth� HeightCaptionShow OK/CancelTabOrder   	TCheckBoxFixFirstColumnCheckBoxLeftTop,Width� HeightCaptionFix First ColumnTabOrder  	TCheckBoxShowStatusBarCheckBoxLeftTopTWidth� HeightCaptionShow Status BarTabOrder  	TCheckBoxShowUserButtonCheckBoxLeftTophWidth� HeightCaptionShow User Defined ButtonTabOrder  	TCheckBoxShowSearchByCheckboxLeftTop|Width� HeightCaptionShow Search-By ControlTabOrder  	TCheckBoxGroupControlsCheckBoxLeftTop@Width� HeightCaptionGroup ControlsTabOrder  	TGroupBox	GroupBox2Left� TopWidth� Height� TabOrder TLabelLabel1LeftTopWidth� HeightAAutoSizeCaptionjSelect the options on the left to customize the lookup dialog that appears when you click on the ... icon.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style 
ParentFontWordWrap	  TwwDBLookupComboDlgwwDBLookupComboDlg1LeftTopdWidth� HeightGridOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDelete 	GridColorclWhiteGridTitleAlignmenttaLeftJustifyCaption	Zip CodesMaxWidth,	MaxHeight� OnUserButton1Click#wwDBLookupComboDlg1UserButton1ClickOnInitDialogwwDBLookupComboDlg1InitDialogSelected.StringsCITY	15	CITY	ZIP	5	ZIPSTATE	2	STATE 	DataFieldZip
DataSourcewwDataSource1LookupTablewwTable1LookupFieldZIPSeqSearchOptions
ssoEnabledssoCaseSensitive TabOrder AutoDropDown
ShowButton	AllowClearKeyShowMatchText	
OnDropDownwwDBLookupComboDlg1DropDown   	TCheckBoxQuickenStyle2LeftTop� WidthaHeightCaptionQuicken StyleChecked	State	cbCheckedTabOrderOnClickQuickenStyle2Click   	TGroupBox	GroupBox3LeftTopWidth�Height� CaptionwwDBLookupComboTabOrder  	TCheckBoxAlignRightCheckBoxLeftTopWidthaHeightCaptionAlign RightTabOrder   	TCheckBoxFillCheckBoxLeftTop(WidthyHeightHint2Use values from the selected lookup record to fillCaptionLookup and FillParentShowHintShowHint	TabOrder  	TGroupBox	GroupBox4LeftTop� Width}Height1CaptionFilled ValuesTabOrder TEditZipLeftTopWidthUHeightTabStopAutoSizeTabOrder TextZip  TEditCityLeftpTopWidthqHeightTabStopAutoSizeTabOrderTextCity  TEditStateLeft� TopWidth9HeightTabStopAutoSizeTabOrderTextState   	TGroupBox	GroupBox5Left� TopWidth� HeightiTabOrder TLabelLabel2LeftTopWidth� Height!AutoSizeCaptionFSelect the options on the left to customize the LookupCombo component.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style 
ParentFontWordWrap	  TLabelLabel3LeftTop8WidthDHeightCaptionDisplay by City  TLabelLabel4Left� Top8WidthBHeightCaptionDisplay by Zip  TwwDBLookupCombowwDBLookupCombo1LeftTopHWidthqHeightDropDownAlignmenttaLeftJustifySelected.StringsCITY	13	CitySTATE	5	State	ZIP	5	Zip 	DataFieldZip
DataSourcewwDataSource1LookupTablewwTable1LookupFieldZIPOptions
loColLinesloTitles StylecsDropDownListTabOrder AutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKey	ShowMatchText	
OnDropDownwwDBLookupCombo1DropDown	OnCloseUpwwDBLookupCombo1CloseUp  TwwDBLookupCombowwDBLookupCombo2Left� TopHWidthqHeightDropDownAlignmenttaLeftJustifySelected.Strings	ZIP	5	ZipCITY	13	CitySTATE	5	State 	DataFieldZip
DataSourcewwDataSource1LookupTablewwTable1LookupFieldZIPOptions
loColLinesloTitles StylecsDropDownListTabOrderAutoDropDown	
ShowButton	SeqSearchOptions
ssoEnabledssoCaseSensitive AllowClearKey	ShowMatchText	
OnDropDownwwDBLookupCombo2DropDown	OnCloseUpwwDBLookupCombo1CloseUp   	TCheckBoxAutoDropDownCheckBoxLeftTop;WidthvHeightCaptionAuto Drop-DownTabOrderOnClickAutoDropDownCheckBoxClick  	TCheckBox
ShowButtonLeftTopNWidth|HeightCaptionShow ButtonTabOrderOnClickShowButtonClick  	TCheckBoxQuickenStyle1LeftTopaWidthaHeightCaptionQuicken StyleChecked	State	cbCheckedTabOrderOnClickQuickenStyle1Click   TButtonButton1Left� Top�Width=HeightCancel	CaptionCancelModalResultTabOrder  TwwTablewwTable1Active	DatabaseName	InfoDemo5	TableName	IP4ZIP.DBSyncSQLByRange	NarrowSearchValidateWithMask	Left(Top  TwwDataSourcewwDataSource1DataSetCustomerTableLeftTTop  TwwTableCustomerTableActive	DatabaseName	InfoDemo5	TableName
IP4CUST.DBSyncSQLByRange	NarrowSearchValidateWithMask	LefttTop   