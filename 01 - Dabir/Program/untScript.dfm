object frmScript: TfrmScript
  Left = 433
  Top = 186
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
  object Report_UserLog: TMemo
    Tag = 1
    Left = 8
    Top = 8
    Width = 17
    Height = 17
    Hint = '3'
    Lines.Strings = (
      'CREATE PROCEDURE [dbo].[Report_UserLog]'
      '@Secretariatid INT,'
      '@myear TINYINT,'
      '@where NVARCHAR(2000),'
      '@Count NVARCHAR(5)'
      'AS'
      ' '
      'DECLARE @sqlCommand NVARCHAR(4000)'
      ''
      'SET @sqlCommand='#39
      'SELECT     top '#39'+@Count+'#39'  '
      ' ApplicationForms.Title AS FormTitle,'
      ' Users.Title AS UserTitle,Users.UserName,'
      ' Actions.Title AS ActionTitle,'
      
        ' (CASE  WHEN letterformat=3 THEN (isnull((SELECT IndicatorID FRO' +
        'M deletedletters WHERE LetterID=letter.letterid),letter.indicato' +
        'rid)) ELSE letter.IndicatorID END)AS indicatorid ,'
      ' LetterTypes.Title AS LetterType,'
      ' Letter.IncommingNO,'
      ' Letter.Incommingdate,'
      ' Letter.RegistrationDate,'
      ' Letter.Memo,'
      ' dbo.Shamsi(UserLog.Time1) AS Date,'
      ' right(cast(UserLog.Time1 as varchar(50)),7) as Time'
      ''
      'FROM       UserLog'
      'INNER JOIN Users            ON Users.Id = UserLog.UserID'
      
        'INNER JOIN Actions          ON UserLog.ActionID = Actions.ID AND' +
        ' UserLog.FormID=Actions.FormTag'
      
        'INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.For' +
        'mTag'
      
        'LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterI' +
        'D'
      
        'LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.' +
        'ID '#39
      ''
      ''
      'SET @where=ISNULL(LTRIM(RTRIM(@where)),'#39#39')'
      'IF @where <>'#39#39' SET @where ='#39' and '#39'+@where'
      ''
      'IF @Secretariatid<>0'
      
        '  SET @where=@where+'#39' and (Secretariatid = '#39'+CAST(@Secretariatid' +
        ' AS VARCHAR(5))+'#39')'#39
      ''
      'IF @Myear<>0'
      
        '  SET @where=@where+'#39' and (myear = '#39'+CAST(@myear AS VARCHAR(5))+' +
        #39')'#39
      ''
      
        'IF SUBSTRING(@where,1,4)='#39' and'#39' SET @where='#39' where '#39'+SUBSTRING(@' +
        'where,5,4000)'
      ''
      ' SET @sqlCommand=@sqlCommand+@where + '#39' order by time1  '#39
      'EXEC(@sqlCommand)'
      ''
      '')
    TabOrder = 0
    WordWrap = False
  end
  object ADOQueryScript: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 64
    Top = 88
  end
  object ADOQueryAux: TADOQuery
    Connection = Dm.YeganehConnection
    CommandTimeout = 0
    Parameters = <>
    Left = 104
    Top = 88
  end
end
