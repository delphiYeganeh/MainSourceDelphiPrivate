�
 TFILTEREVENTFORM 0  TPF0TFilterEventFormFilterEventFormLeft� Top� BorderStylebsDialogCaptionCallback Filter Event DemoClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight 	TwwDBGrid	wwDBGrid1LeftTop Width�Height|Selected.StringsFirst Name	14	FirstLast Name	16	LastCompany Name	28	Company Name IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameFilterEventFormwwDBGrid1IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourcewwDataSource1Options	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit TabOrderTitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack  	TGroupBox	GroupBox1Left� Top� WidthHeightfCaptionFilter records by ValueTabOrder  TLabelLabel1LeftTopWidthHeightCaptionFirst  TLabelLabel2Left� TopWidthHeightCaptionLast  TLabelLabel3LeftTop9Width,HeightCaptionCompany  TEditFilterFirstNameLeftTop!WidthqHeightTabOrder   TEditFilterLastNameLeft� Top!WidthqHeightTabOrder  TEditFilterCompanyNameLeftTopIWidth� HeightTabOrder   	TGroupBox	GroupBox2LeftTop� Width� HeightfCaption&Filter TypeTabOrder 	TCheckBoxCaseSensitiveCheckboxLeftTopWidth� HeightHintSearching is case-sensitiveCaption&Case-sensitiveColor	clBtnFaceParentColorParentShowHintShowHint	TabOrder  TRadioButton
ExactMatchLeftTop,WidthyHeightHint,Match occurs only if there is an exact matchCaption&Exact MatchParentShowHintShowHint	TabOrder   TRadioButtonPartialMatchBeginningLeftTop@Width� HeightHint6Match occurs if the start of the field's value matchesCaption&Partial Match at BeginningChecked	ParentShowHintShowHint	TabOrderTabStop	  TRadioButtonPartialMatchAnywhereLeftTopPWidth� HeightHint-Match occurs if any part of the field matchesCaptionPartial Match &AnywhereParentShowHintShowHint	TabOrder   TPanelPanel1LeftTop� Width� Height
BevelOuter	bvLoweredTabOrder  TBitBtnBitBtn2Left�Top8WidthdHeightCaptionExitModalResultTabOrder
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphs  TBitBtnBitBtn1Left�TopWidthdHeightCaptionE&xec. FilterDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtn1Click
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333�3333330 ?����37w 0  330 w�ww?37w���333ws3?33?࿿ 33 w�3ws�3w�����33 w�3?���w࿿   33w�3www??�������w�?���sw�    3�w�wwww3w �3333ws�s333?30 3333 37w3333w3333333 3333333w333333333333333�3333330 3333337w3333330 3333337w3333333333333333	NumGlyphs  TButtonButton1Left� Top�Width=HeightCancel	CaptionCancelModalResultTabOrder  TwwDBRichEditwwDBRichEdit1LeftTop� Width�Height� AutoURLDetectPrintJobNameDelphi 5TabOrderWantTabs	EditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ��?PrintMargins.Bottom       ��?PrintMargins.Left       ��?PrintMargins.Right       ��?RichEditVersionData
%  !  {\rtf1\ansi\deff0\deflang1033{\fonttbl {\f0\fswiss MS Sans Serif;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\uc1\pard\cf1\b\f0\fs16 P\cf0\f1\fs20 ractically Unlimited Filtering Capabilities!\b0\par
InfoPower allows you practically unlimited filtering capabilities by also providing you with a programmable callback filter function.  Delphi also has this functionality.  However InfoPower's callback filtering gives you the following additional functionality.\par
\pard\fi-360\li360 1.\tab Filter on lookupfields or InfoPower's linked fields.  This allows you to filter on data in a related table!\par
2.\tab Automatically display of the hourglass when you are scrolling filtered data.\par
3.\tab End-user can cancel a filter using the Escape key.\par
\pard\cf1\b\par
}
   TwwDataSourcewwDataSource1DataSetwwTable1Left�Top`  TwwTablewwTable1Active	DatabaseName	InfoDemo5	TableName
IP4CUST.DBSyncSQLByRange	NarrowSearchValidateWithMask	OnFilterwwTable1FilterLeft�Top`   