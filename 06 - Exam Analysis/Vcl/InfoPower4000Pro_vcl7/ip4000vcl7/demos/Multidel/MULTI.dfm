’
 TMULTISELECTFORM 0ņ  TPF0TMultiSelectFormMultiSelectFormLeft Top BorderStylebsDialogCaption#Multi-selection in InfoPower's GridClientHeightŖClientWidthźColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Heightõ	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnShowFormShowPixelsPerInch`
TextHeight 	TwwDBGrid	wwDBGrid1Left	Topč Width Height IniAttributes.FileNamedelphi32.iniIniAttributes.SectionNameMultiSelectFormwwDBGrid1IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	EditControlOptionsecoCheckboxSingleClickecoSearchOwnerForm 
DataSourcewwDataSource1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Heightõ	Font.NameMS Sans Serif
Font.Style 
KeyOptionsdgAllowDelete OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFitdgMultiSelect 
ParentFontRowHeightPercentnTabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.HeightõTitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtonsOnCalcCellColorswwDBGrid1CalcCellColorsIndicatorColoricBlack  TButtonDeleteButtonLeft  TopWidth HeightCaptionDelete SelectedTabOrderOnClickDeleteButtonClick  TButtonButton1LeftRTopWidthJHeightCaption
Select AllTabOrderOnClickButton1Click  TButtonButton2LeftTopWidthJHeightCaptionUnselect AllTabOrderOnClickButton2Click  	TGroupBox	GroupBox1Left8Topč Width© Height CaptionMulti-select optionsTabOrder 	TCheckBox	CheckBox1LeftTopWidth HeightHintFSupport selecting a range of records using the shift key and the mouseCaptionEnable Shift SelectParentShowHintShowHint	TabOrder OnClickCheckBox1Click  	TCheckBox	CheckBox2LeftTop0Width HeightHint8Automatically select the current record on a mouse clickCaptionAutomatic select/unselectParentShowHintShowHint	TabOrderOnClickCheckBox2Click  	TCheckBox	CheckBox3LeftTopHWidth HeightHint$Use a checkbox for selecting recordsCaptionUse checkbox for selectionChecked	ParentShowHintShowHint	State	cbCheckedTabOrderOnClickCheckBox3Click   TBitBtnBitBtn2LeftTopWidthAHeightCaptionExitTabOrderOnClickBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                                     æææ   ’  ’   ’’ ’   ’ ’ ’’  ’’’ 3     33wwwww33333333333333333333333333333333333333333333333?33±33333s3333333333333’’ó33īī337wwó33īī337’÷ó33īī337ww3333333333333’’’’33     33wwwwws3	NumGlyphs  TwwDBRichEditwwDBRichEdit1LeftTop WidthŁHeightį AutoURLDetectPrintJobNameDelphi 5TabOrderEditorCaptionEdit Rich TextEditorPosition.Left EditorPosition.Top EditorPosition.Width EditorPosition.Height MeasurementUnitsmuInchesPrintMargins.Top       ’?PrintMargins.Bottom       ’?PrintMargins.Left       ’?PrintMargins.Right       ’?RichEditVersionData
S  O  {\rtf1\ansi\deff0\deflang1033{\fonttbl {\f0\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\uc1\pard\f0\fs20 InfoPower supports consistent and flexible multi-selection capabilities in its data-aware grid.\par
To select a record,  you can either click on the checkbox or simultaneously press the\par
\pard\sa43 CTRL key and click on the selected record.\par
\pard The multi-select checkboxes to the right allow you to...\par
\pard\fi-360\li360\sa43 1. \tab Support selecting a range of records by holding down the shift key and clicking on the last record you want selected.\par
2.\tab Click on a new column without using the CTRL or the Shift keys, and all records except the current record become unselected.\par
3. \tab Display a checkbox which the end-user can click on to select records.\par
\pard\sa43\par
\cf1\par
}
   TwwDataSourcewwDataSource1DataSetwwTable1Left Top  TwwTablewwTable1DatabaseName	InfoDemo5	TableNameMULTITST.DBControlType.StringsSelected;CheckBox;Yes;No SyncSQLByRange	NarrowSearchValidateWithMask	Left@Top TBooleanFieldwwTable1SelectedDisplayLabelDelete?DisplayWidth	FieldKindfkCalculated	FieldNameSelected
Calculated	  TStringFieldwwTable1CodeDisplayWidth	FieldNameCodeSize  TStringFieldwwTable1DescriptionDisplayWidth	FieldNameDescriptionSize    