object frmScript: TfrmScript
  Left = 573
  Top = 236
  Width = 1038
  Height = 675
  Caption = 'frmScript'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 216
    Width = 44
    Height = 13
    Caption = '1 : '#1601#1610#1604#1583#1607#1575
  end
  object Label2: TLabel
    Left = 16
    Top = 240
    Width = 43
    Height = 13
    Caption = '2 : '#1580#1583#1575#1608#1604
  end
  object Label3: TLabel
    Left = 16
    Top = 264
    Width = 50
    Height = 13
    Caption = '3 : '#1585#1608#1575#1604' '#1607#1575
  end
  object Label4: TLabel
    Left = 16
    Top = 288
    Width = 39
    Height = 13
    Caption = '4 : '#1578#1608#1575#1576#1593
  end
  object Report_DelayedLoanPayment: TMemo
    Tag = 1
    Left = 8
    Top = 8
    Width = 17
    Height = 17
    Hint = '3'
    Lines.Strings = (
      '--Create With Cash Exe File '
      'Create PROCEDURE  [dbo].[Report_DelayedLoanPayment]   '
      '                 @LoanTypeID      AS SmallInt,   '
      '                 @LoanNO          AS Varchar(10),   '
      '                 @AccountID       AS INT,  '
      '                 @ShowDetail      AS SMALLINT ,  '
      '                 @GROUPBY         AS SMALLINT,  '
      '                 @TODate          AS CHAR(10),  '
      '                 @dELAY           AS INT  ,  '
      '                 @JustDelayedDocs AS INT , '
      
        '                 @REMAINOFLOAN    AS INT,--Tasviyeh Shodeh=0 Nas' +
        'hodeh=1 all=2'
      '                 @Paid AS INT --NOT PAID=0 , PAID=1 , ALL=2'
      '   '
      'AS    '
      ' /*'
      '  '
      'DECLARE @LoanTypeID      AS smallint,  '
      '        @LoanNO          AS varchar(10),  '
      '        @AccountID       AS INT,  '
      '        @ShowDetail      AS SMALLINT,  '
      '        @GROUPBY         AS SMALLINT,  '
      '        @TODate          AS CHAR(10),  '
      '        @dELAY           AS INT ,  '
      '        @JustDelayedDocs AS INT,'
      
        '        @REMAINOFLOAN    AS INT,--Tasviyeh Shodeh=0 Nashodeh=1 a' +
        'll=2'
      '        @Paid AS INT --NOT PAID=0 , PAID=1 , ALL=2'
      '  '
      '  '
      'SET @LoanTypeID =0    '
      'SET @LoanNO=0    '
      'SET @TODate='#39'1390/07/19'#39'    '
      'SET @AccountID=8    '
      'SET @ShowDetail=1  '
      'SET @GROUPBY=0  '
      'SET @Delay=0  '
      'SET @JustDelayedDocs=0 '
      'SET @REMAINOFLOAN=2 '
      'SET @Paid=2 '
      '  '
      '  */'
      'SELECT     Account.AccountID      ,     '
      '           Account.AccountNO      ,     '
      '           Account.AccountTitle   ,     '
      
        '           dbo.ShamsiDateDiff(ForcePayment.MatureDate,ISNULL(Pay' +
        'ment.[Date],@TODate )) AS DELAY,   '
      '           Loan.AMOUNT,  '
      
        '           (Select SUM(AMOUNT)        FROM FORCEPAYMENT WHERE PA' +
        'RENTID=LOAN.LOANID AND FORCETYPEID=1               AND PAID=1)  ' +
        '  JamAghsatPardakhti ,               '
      
        '           (Select COUNT(1)           FROM FORCEPAYMENT WHERE PA' +
        'RENTID=LOAN.LOANID AND FORCETYPEID=1                         )  ' +
        '  TedadAghsat,                '
      
        '           (Select COUNT(1)           FROM FORCEPAYMENT WHERE PA' +
        'RENTID=LOAN.LOANID AND FORCETYPEID=1               AND PAID=1)  ' +
        '  TedadAghsatPardakhti,                '
      
        '           ISNULL((Select SUM(AMOUNT) FROM FORCEPAYMENT WHERE FO' +
        'RCETYPEID=2        AND PARENTID=Account.AccountID  AND PAID=0),0' +
        ') REMAINOF_MahiyanehPerAccountId,  '
      
        '           isnull((Select SUM(AMOUNT) FROM FORCEPAYMENT WHERE PA' +
        'RENTID=LOAN.LOANID AND FORCETYPEID=1               AND PAID=0),0' +
        ') REMAINOF_Ghest,                '
      
        '           ISNULL((Select SUM(AMOUNT) FROM FORCEPAYMENT WHERE FO' +
        'RCETYPEID=1        AND PARENTID=LOAN.LOANID        AND PAID=0),0' +
        ') REMAINOFLOAN,  '
      
        '           (SELECT SUM(F .Amount)     FROM ForcePayment F       ' +
        '                   INNER JOIN   '
      
        '                                           Loan         L ON F.P' +
        'arentID = L.LoanID INNER JOIN  '
      
        '                                           Account      A ON L.A' +
        'ccountID= A.AccountID    '
      
        '                                                        WHERE (F' +
        ' .Paid =0)                      AND   '
      
        '                                                              (A' +
        '.AccountID = Account.AccountID) AND   '
      
        '                                                              (F' +
        '.ForceTypeID = 1) ) RemainOfLoanPerAccountId ,               '
      '           Loan.LoanNO            ,     '
      '           ForcePayment.OrderNo   ,     '
      '           ForcePayment.MatureDate,    '
      '           Loan.LoanTypeID        ,    '
      '           LoanType.LoanTypeTitle ,      '
      
        '           '#39' '#1602#1587#1591' '#1588#1605#1575#1585#1607'  '#39'+CAST( ForcePayment.OrderNo AS VARCHAR(' +
        '5)) AS COMMENT ,  '
      '           ForcePayment.Paid,  '
      '           ForceType.FoceTypeID   '
      'INTO #C    '
      
        'FROM            ForcePayment                                    ' +
        '              INNER JOIN    '
      
        '                      Loan           ON ForcePayment.ParentID = ' +
        'Loan.LoanID             INNER JOIN    '
      
        '                      Account      ON Loan.AccountID = Account.A' +
        'ccountID              INNER JOIN    '
      
        '                      LoanType   ON Loan.LoanTypeID = LoanType.L' +
        'oanTypeID           INNER JOIN    '
      
        '                      ForceType  ON ForcePayment.ForceTypeID = F' +
        'orceType.FoceTypeID LEFT OUTER JOIN    '
      
        '                      Payment     ON ForcePayment.PaymentID = Pa' +
        'yment.PaymentID    '
      '    '
      'WHERE    --(ForcePayment.Paid = 1)    AND     '
      '          (ForceType.FoceTypeID = 1) AND     '
      
        '          (dbo.ShamsiDateDiff(ForcePayment.MatureDate, ISNULL(Pa' +
        'yment.[Date],'#39#39')) >0) AND    '
      
        '          (Account.AccountID=@AccountID OR @AccountID=0 ) AND   ' +
        '  '
      
        '          (Loan.LoanNO=@LoanNO          OR @LoanNO=0    ) AND   ' +
        ' '
      '(Loan.LoanTypeID=@LoanTypeID  OR @LoanTypeID=0)   '
      '--          (ForcePayment.MatureDate <=Payment.[Date]     )  '
      ''
      '             '
      'ORDER BY Loan.LoanNO ,Loan.AMOUNT   '
      '  '
      ''
      'IF @ShowDetail=1     '
      'BEGIN'
      #9' IF @REMAINOFLOAN=1 '
      #9' BEGIN'
      #9#9'  SELECT *    '
      #9#9'  FROM  #C     '
      '   '#9#9'  WHERE   (Paid=@Paid OR @Paid=2) and'
      #9#9'          '
      #9#9'          (REMAINOFLOAN >0 ) '
      #9#9'  ORDER BY AccountTitle '
      #9' '
      #9' END'
      #9' ELSE  '
      #9' BEGIN'
      #9#9'  SELECT *    '
      #9#9'  FROM  #C     '
      '   '#9#9'  WHERE   (Paid=@Paid OR @Paid=2) and'
      #9#9'         '
      #9#9'        (REMAINOFLOAN =0 or @REMAINOFLOAN=2) '
      #9#9'  ORDER BY AccountTitle '
      #9' END'
      '         '
      'END'
      'ELSE    '
      'BEGIN    '
      ' IF @GROUPBY=1 -- LOANNo    '
      ' BEGIN  '
      #9' IF @REMAINOFLOAN=1 '
      #9' BEGIN'
      
        #9#9'  SELECT   ACCOUNTID,AccountTitle,ACCOUNTNo,COUNT(OrderNo) Ord' +
        'erNoCount,LoanNo,REMAINOFLOAN,0 AS REMAINOfLoanPerAccountId     ' +
        '      '
      #9#9'  FROM #C     '
      #9#9'  WHERE   (Paid=@Paid OR @Paid=2) '
      
        #9#9'  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,LoanNO,REMAINOFLOA' +
        'N  '
      
        #9#9'  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0)AND (REMAINOFLOAN ' +
        '>0 ) '
      #9#9'  ORDER BY LoanNo    '
      #9' '
      #9' END'
      #9' ELSE  '
      #9' BEGIN'
      
        #9#9'  SELECT   ACCOUNTID,AccountTitle,ACCOUNTNo,COUNT(OrderNo) Ord' +
        'erNoCount,LoanNo,REMAINOFLOAN,0 AS REMAINOfLoanPerAccountId     ' +
        '      '
      #9#9'  FROM #C     '
      #9#9'  WHERE   (Paid=@Paid OR @Paid=2) '
      
        #9#9'  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,LoanNO,REMAINOFLOA' +
        'N  '
      
        #9#9'  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0)AND (REMAINOFLOAN=' +
        '0  OR @REMAINOFLOAN=2 ) '
      #9#9'  ORDER BY LoanNo    '
      #9' END'
      ' END  '
      ' IF @GROUPBY=2 -- ACCOUNTNo'
      ' BEGIN'
      '    IF @REMAINOFLOAN=1 '
      
        #9#9'  SELECT ACCOUNTID,AccountTitle,ACCOUNTNo, COUNT(OrderNo)  Ord' +
        'erNoCount ,'#39#39' AS  LoanNo ,0 AS REMAINOFLOAN, REMAINOfLoanPerAcco' +
        'untId  '
      #9#9'  FROM #C  '
      #9#9'  WHERE   (Paid=@Paid OR @Paid=2)  '
      
        #9#9'  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,REMAINOfLoanPerAcc' +
        'ountId    '
      
        #9#9'  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0 ) AND (REMAINOfLoa' +
        'nPerAccountId>0)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'  '
      '    ELSE --IF @REMAINOFLOAN>0'
      
        #9#9'  SELECT ACCOUNTID,AccountTitle,ACCOUNTNo, COUNT(OrderNo)  Ord' +
        'erNoCount ,'#39#39' AS  LoanNo ,0 AS REMAINOFLOAN, REMAINOfLoanPerAcco' +
        'untId  '
      #9#9'  FROM #C  '
      #9#9'  WHERE   (Paid=@Paid OR @Paid=2)  '
      
        #9#9'  GROUP BY ACCOUNTID,AccountTitle,ACCOUNTNo,REMAINOfLoanPerAcc' +
        'ountId    '
      
        #9#9'  HAVING (COUNT(OrderNo)=@dELAY OR @dELAY=0 ) AND (REMAINOfLoa' +
        'nPerAccountId=0 OR @REMAINOFLOAN=2)'
      ' END    '
      '      '
      '      '
      '      '
      '      '
      
        '       /*AND( case when @REMAINOFLOAN=0 AND REMAINOfLoanPerAccou' +
        'ntId=0    THEN  1 '
      
        '                                                             WHE' +
        'N @REMAINOFLOAN=1 AND REMAINOfLoanPerAccountId>0   THEN 1 '
      
        '                                                             ELS' +
        'E  0 END=1) */   '
      ''
      'END    '
      '  '
      '  '
      'DROP TABLE #C  ')
    TabOrder = 0
    WordWrap = False
  end
  object CreateSmsTextForSumPayment: TMemo
    Tag = 1
    Left = 29
    Top = 8
    Width = 17
    Height = 17
    Hint = '3'
    Lines.Strings = (
      
        'Create PROCEDURE [dbo].[CreateSmsTextForSumPayment] ( @ForcePaym' +
        'entIds VARCHAR(MAX) )'
      'AS'
      'BEGIN'
      '      DECLARE @sql VARCHAR(MAX)'
      
        '      SET @sql = '#39'  SELECT  s.* , ac.accountTitle , c.Phones , D' +
        'BO.EXIST(ac.ACCOUNTID , '#39#39'9'#39#39') exist'
      
        '                    FROM    ( SELECT    ParentID , ForceTypeID ,' +
        ' MIN(MatureDate) _date , SUM(Amount + InterestAmount) _sum , dbo' +
        '.GetListOrderNo(Parentid , ForceTypeID , '#39#39#39' + @ForcePaymentIds ' +
        '+ '#39#39#39') OrderNos , ( SELECT ISNULL(SUM(Amount + InterestAmount) ,' +
        ' 0)'
      
        '                                                                ' +
        '                                                                ' +
        '                                                     FROM   dbo.' +
        'ForcePayment fp'
      
        '                                                                ' +
        '                                                                ' +
        '                                                     WHERE  fp.P' +
        'arentID = ff.ParentID AND fp.paid = 0 ) BM'
      '                              FROM      dbo.ForcePayment ff'
      
        '                              WHERE     ForcePaymentID IN ('#39' + S' +
        'UBSTRING(@ForcePaymentIds , 1 , LEN(@ForcePaymentIds) - 1) + '#39')'
      
        '                              GROUP BY  ParentID , ForceTypeID )' +
        ' s'
      
        '                            INNER JOIN Loan l ON l.LoanId = s.pa' +
        'rentid AND s.ForceTypeID = 1'
      
        '                            INNER JOIN account ac ON ac.accounti' +
        'd = l.AccountId'
      
        '                            INNER JOIN dbo.Contact c ON c.Contac' +
        'tID = ac.ContactID'
      '                            '
      '                    UNION ALL'
      ''
      
        '                    SELECT  s.* , ac.accountTitle , c.Phones , D' +
        'BO.EXIST(ac.ACCOUNTID , '#39#39'9'#39#39') EXIST'
      
        '                    FROM    ( SELECT    ParentID , ForceTypeID ,' +
        ' MIN(MatureDate) _date , SUM(Amount + InterestAmount) _sum , dbo' +
        '.GetListOrderNo(Parentid , ForceTypeID , '#39#39#39' + @ForcePaymentIds ' +
        '+ '#39#39#39') OrderNos , ( SELECT ISNULL(SUM(Amount + InterestAmount) ,' +
        ' 0)'
      
        '                                                                ' +
        '                                                                ' +
        '                                                     FROM   dbo.' +
        'ForcePayment fp'
      
        '                                                                ' +
        '                                                                ' +
        '                                                     WHERE  fp.P' +
        'arentID = ff.ParentID AND fp.paid = 0 ) BM'
      '                              FROM      dbo.ForcePayment ff'
      
        '                              WHERE     ForcePaymentID IN ('#39' + S' +
        'UBSTRING(@ForcePaymentIds , 1 , LEN(@ForcePaymentIds) - 1) + '#39')'
      
        '                              GROUP BY  ParentID , ForceTypeID )' +
        ' s'
      
        '                            INNER JOIN account ac ON ac.accounti' +
        'd = s.ParentID AND s.ForceTypeID = 2'
      
        '                            INNER JOIN dbo.Contact c ON c.Contac' +
        'tID = ac.ContactID'
      '                '#39'      '
      '      EXEC(@sql)    '
      'END'
      '')
    TabOrder = 1
    WordWrap = False
  end
  object GET_NEWACCOUNTNO_New: TMemo
    Tag = 1
    Left = 53
    Top = 8
    Width = 17
    Height = 17
    Hint = '3'
    Lines.Strings = (
      'Create PROCEDURE [dbo].[GET_NEWACCOUNTNO_New]           '
      
        '                   @ACCOUNTTYPEID TINYINT,@NEWACCOUNTNO VARCHAR(' +
        '20) OUTPUT              '
      'AS              '
      ' '
      '-- DECLARE @ACCOUNTTYPEID TINYINT,@NEWACCOUNTNO VARCHAR(20) '
      '-- '
      '-- SET @ACCOUNTTYPEID=1'
      ''
      '          '
      '               '
      
        'DECLARE @PREACCOUNTNO VARCHAR(2),@ACCOUNTLENGTH TINYINT,@LoanLen' +
        'gth TINYINT ,@OLDCODE INT              '
      '              '
      '     '
      '             '
      'EXEC GET_SYSTEMSETTING '#39'ACCOUNTLENGTH'#39',@ACCOUNTLENGTH OUTPUT   '
      'EXEC GET_SYSTEMSETTING '#39'LoanLength'#39',@LoanLength OUTPUT   '
      '             '
      '           '
      
        'SELECT     @PREACCOUNTNO=CASE PREACCOUNTNO WHEN '#39#39'   THEN 0     ' +
        '      '
      
        '                                           WHEN NULL THEN 0     ' +
        '      '
      
        '                                           ELSE PREACCOUNTNO    ' +
        '       '
      '                                           END            '
      'FROM       ACCOUNTTYPE              '
      'WHERE     (ACCOUNTTYPEID = @ACCOUNTTYPEID)              '
      '              '
      ''
      
        'SET @PREACCOUNTNO=ISNULL(LTRIM(RTRIM(@PREACCOUNTNO)),'#39#39')        ' +
        '      '
      'IF @ACCOUNTTYPEID<>7              '
      
        '   SELECT @OLDCODE=MAX(CAST(SUBSTRING(ACCOUNTNO,LEN(@PREACCOUNTN' +
        'O)+1,10)AS BIGINT))              '
      '   FROM ACCOUNT              '
      '   WHERE '
      '   --Hamed_Ansari_990313_S'
      '    AccountNo NOT LIKE '#39'%/%'#39' And'
      '   --Hamed_Ansari_990313_E'
      
        '   ACCOUNTNO LIKE @PREACCOUNTNO+'#39'%'#39' AND ACCOUNTTYPEID=@ACCOUNTTY' +
        'PEID              '
      'ELSE              '
      
        '   SELECT @OLDCODE=MAX(CAST(SUBSTRING(LOANNO,LEN(@PREACCOUNTNO)+' +
        '1,10) AS BIGINT))              '
      '   FROM LOAN              '
      '   WHERE LOANNO LIKE @PREACCOUNTNO+'#39'%'#39
      '   --Hamed_Ansari_990626_S             '
      '    And LoanNO NOT LIKE '#39'%/%'#39
      '   --Hamed_Ansari_990626_S                         '
      '              '
      'SET @OLDCODE=ISNULL(@OLDCODE,0)              '
      'SET @NEWACCOUNTNO=CAST(@OLDCODE+1 AS VARCHAR(10))              '
      
        '--SELECT @NEWACCOUNTNO AS   NEWACCOUNTNO  ,@OLDCODE  AS OLDCODE,' +
        '@PREACCOUNTNO AS PREACCOUNTNO'
      ''
      'IF @ACCOUNTTYPEID<>7      '
      
        ' WHILE LEN(@NEWACCOUNTNO)<@ACCOUNTLENGTH-LEN(@PREACCOUNTNO)     ' +
        '          '
      '       SET @NEWACCOUNTNO='#39'0'#39'+@NEWACCOUNTNO   '
      '  '
      'Else IF @ACCOUNTTYPEID=7      '
      
        ' WHILE LEN(@NEWACCOUNTNO)<@LoanLENGTH-LEN(@PREACCOUNTNO)        ' +
        '       '
      '       SET @NEWACCOUNTNO='#39'0'#39'+@NEWACCOUNTNO   '
      '             '
      '      '
      '      '
      'SET @NEWACCOUNTNO=@PREACCOUNTNO+ISNULL(@NEWACCOUNTNO,0)    '
      '--SELECT   @NEWACCOUNTNO'
      '')
    TabOrder = 2
    WordWrap = False
  end
  object ADOQueryScript: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 64
    Top = 88
  end
  object ADOQueryAux: TADOQuery
    Connection = dm.YeganehConnection
    CommandTimeout = 0
    Parameters = <>
    Left = 104
    Top = 88
  end
end
