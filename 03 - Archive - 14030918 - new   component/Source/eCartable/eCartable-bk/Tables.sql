/****** Object:  Table [dbo].[Users]    Script Date: 02/25/2008 19:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
Alter TABLE [dbo].[Users]
	Add [eCartableGridInfo] [varchar](500) NULL
Alter TABLE [dbo].[Users]
	Add [eCartableTheme] [varchar](50) NULL

GO
SET ANSI_PADDING OFF
