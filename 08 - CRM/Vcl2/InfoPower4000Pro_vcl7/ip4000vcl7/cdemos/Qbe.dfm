�
 TQBEFORM 0�  TPF0TQBEFormQBEFormLeft� ToplBorderStylebsDialogCaptionInfoPower - QBEClientHeightClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivatePixelsPerInch`
TextHeight 	TwwDBGrid	wwDBGrid1Left TopEWidth�Height� Selected.StringsSYMBOL	7	SymbolIND_NAME	6	IndustryCO_NAME	20	NameEXCHANGE	8	ExchangeCUR_PRICE	10	PriceYRL_HIGH	10	Year HighYRL_LOW	10	Year LowP_E_RATIO	10	P/E RatioBETA	10	BetaPROJ_GRTH	10	Proj GrowthINDUSTRY	10	IndustryPRICE_CHG	10	PriceSAFETY	5	SafetyRATING	5	RatingRANK	4	RankOUTLOOK	6	OutlookRCMNDATION	12	RecommendationRISK	6	Risk IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedColsShowHorzScrollBar	
DataSourcewwDataSource1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold Options	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit 
ParentFontTabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtonsIndicatorColoricBlack  TMemoMemo1LeftTopWidth�Height=Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.Style Lines.StringsJThe following grid displays the results of running a QBE that was created Dwith Paradox for Windows. For those of you who are not yet ready to Dtake the SQL plunge, you can continue to use the familiar QBE query syntax. 
ParentFontReadOnly	TabOrder  TButtonButton1LeftTTop0WidthAHeightCancel	CaptionCancelModalResultTabOrder  TwwDataSourcewwDataSource1DataSetwwQBE1LeftTop�   TwwQBEwwQBE1Active	DatabaseName	InfoDemo5QBE.StringsQueryANSWER: :PRIV:ANSWER.DB $INDUSTRY.DB | IND_CODE | IND_NAME | $            | _join1   | Check    |  KMASTER.DB | SYMBOL | CO_NAME | EXCHANGE | CUR_PRICE | YRL_HIGH | YRL_LOW | K          | Check  | Check   | Check    | Check     | Check    | Check   |  HMASTER.DB | P_E_RATIO | BETA   | PROJ_GRTH | INDUSTRY     | PRICE_CHG | H          | Check     | Check  | Check     | Check _join1 | Check     |  GMASTER.DB | SAFETY | RATING | RANK   | OUTLOOK | RCMNDATION | RISK   | G          | Check  | Check  | Check  | Check   | Check      | Check  |  EndQuery AuxiliaryTables	BlankAsZero	Left$Top�  TStringFieldwwQBE1SYMBOLDisplayLabelSymbolDisplayWidth	FieldNameSYMBOLSize  TStringFieldwwQBE1IND_NAMEDisplayLabelIndustryDisplayWidth	FieldNameIND_NAMESize  TStringFieldwwQBE1CO_NAMEDisplayLabelNameDisplayWidth	FieldNameCO_NAME  TStringFieldwwQBE1EXCHANGEDisplayLabelExchangeDisplayWidth	FieldNameEXCHANGESize  TFloatFieldwwQBE1CUR_PRICEDisplayLabelPriceDisplayWidth
	FieldName	CUR_PRICEcurrency	  TFloatFieldwwQBE1YRL_HIGHDisplayLabel	Year HighDisplayWidth
	FieldNameYRL_HIGHcurrency	  TFloatFieldwwQBE1YRL_LOWDisplayLabelYear LowDisplayWidth
	FieldNameYRL_LOWcurrency	  TFloatFieldwwQBE1P_E_RATIODisplayLabel	P/E RatioDisplayWidth
	FieldName	P_E_RATIO  TFloatField
wwQBE1BETADisplayLabelBetaDisplayWidth
	FieldNameBETA  TFloatFieldwwQBE1PROJ_GRTHDisplayLabelProj GrowthDisplayWidth
	FieldName	PROJ_GRTH  TSmallintFieldwwQBE1INDUSTRYDisplayLabelIndustryDisplayWidth
	FieldNameINDUSTRY  TSmallintFieldwwQBE1PRICE_CHGDisplayLabelPriceDisplayWidth
	FieldName	PRICE_CHG  TSmallintFieldwwQBE1SAFETYDisplayLabelSafetyDisplayWidth	FieldNameSAFETY  TStringFieldwwQBE1RATINGDisplayLabelRatingDisplayWidth	FieldNameRATINGSize  TFloatField
wwQBE1RANKDisplayLabelRankDisplayWidth	FieldNameRANK  TSmallintFieldwwQBE1OUTLOOKDisplayLabelOutlookDisplayWidth	FieldNameOUTLOOK  TStringFieldwwQBE1RCMNDATIONDisplayLabelRecommendationDisplayWidth	FieldName
RCMNDATIONSize  TStringField
wwQBE1RISKDisplayLabelRiskDisplayWidth	FieldNameRISKSize    