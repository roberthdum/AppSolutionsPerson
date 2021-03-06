USE [DBPeople]
GO
/****** Object:  ForeignKey [FK_DTPeople_DTCountries]    Script Date: 09/05/2018 10:09:43 ******/
ALTER TABLE [dbo].[DTPeople] DROP CONSTRAINT [FK_DTPeople_DTCountries]
GO
/****** Object:  ForeignKey [FK_DTPeople_DTDocumentsType]    Script Date: 09/05/2018 10:09:43 ******/
ALTER TABLE [dbo].[DTPeople] DROP CONSTRAINT [FK_DTPeople_DTDocumentsType]
GO
/****** Object:  View [dbo].[VWInfoPeople]    Script Date: 09/05/2018 10:09:44 ******/
DROP VIEW [dbo].[VWInfoPeople]
GO
/****** Object:  View [dbo].[VWPeopleGeneral]    Script Date: 09/05/2018 10:09:44 ******/
DROP VIEW [dbo].[VWPeopleGeneral]
GO
/****** Object:  Table [dbo].[DTPeople]    Script Date: 09/05/2018 10:09:43 ******/
ALTER TABLE [dbo].[DTPeople] DROP CONSTRAINT [FK_DTPeople_DTCountries]
GO
ALTER TABLE [dbo].[DTPeople] DROP CONSTRAINT [FK_DTPeople_DTDocumentsType]
GO
ALTER TABLE [dbo].[DTPeople] DROP CONSTRAINT [DF_DTPeople_CreateDate]
GO
DROP TABLE [dbo].[DTPeople]
GO
/****** Object:  Table [dbo].[DTCountries]    Script Date: 09/05/2018 10:09:43 ******/
DROP TABLE [dbo].[DTCountries]
GO
/****** Object:  Table [dbo].[DTDocumentsType]    Script Date: 09/05/2018 10:09:43 ******/
DROP TABLE [dbo].[DTDocumentsType]
GO
/****** Object:  Table [dbo].[DTDocumentsType]    Script Date: 09/05/2018 10:09:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DTDocumentsType](
	[TypeDocumentID] [int] IDENTITY(1,1) NOT NULL,
	[TypeDocument] [varchar](50) NULL,
 CONSTRAINT [PK_DTDocumentsType] PRIMARY KEY CLUSTERED 
(
	[TypeDocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DTDocumentsType] ON
INSERT [dbo].[DTDocumentsType] ([TypeDocumentID], [TypeDocument]) VALUES (1, N'Cedula')
INSERT [dbo].[DTDocumentsType] ([TypeDocumentID], [TypeDocument]) VALUES (2, N'DNI')
INSERT [dbo].[DTDocumentsType] ([TypeDocumentID], [TypeDocument]) VALUES (3, N'RUC')
INSERT [dbo].[DTDocumentsType] ([TypeDocumentID], [TypeDocument]) VALUES (4, N'Pasaporte')
SET IDENTITY_INSERT [dbo].[DTDocumentsType] OFF
/****** Object:  Table [dbo].[DTCountries]    Script Date: 09/05/2018 10:09:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DTCountries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NULL,
 CONSTRAINT [PK_DTCountries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DTCountries] ON
INSERT [dbo].[DTCountries] ([CountryID], [Country]) VALUES (1, N'Venezuela')
INSERT [dbo].[DTCountries] ([CountryID], [Country]) VALUES (2, N'Argentina')
INSERT [dbo].[DTCountries] ([CountryID], [Country]) VALUES (3, N'Colombia')
SET IDENTITY_INSERT [dbo].[DTCountries] OFF
/****** Object:  Table [dbo].[DTPeople]    Script Date: 09/05/2018 10:09:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DTPeople](
	[IDPeople] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SecondName] [varchar](50) NOT NULL,
	[DocumentID] [varchar](50) NULL,
	[TypeDocumentID] [int] NULL,
	[BirthDate] [date] NULL,
	[CountryID] [int] NULL,
	[Addres] [varchar](500) NULL,
	[PrincipalPhone] [varchar](10) NULL,
	[UpdateUpd] [datetime] NULL,
	[CreateDate] [date] NULL CONSTRAINT [DF_DTPeople_CreateDate]  DEFAULT (getdate()),
	[Sex] [int] NULL,
 CONSTRAINT [PK_DTPeople] PRIMARY KEY CLUSTERED 
(
	[IDPeople] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DTPeople] ON
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (5, N'Yuaney', N'Aray', N'11122', 2, CAST(0x1E1C0B00 AS Date), 2, N'Una direccion', N'21212', CAST(0x0000A9520014564C AS DateTime), NULL, 0)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (8, N'Roberth', N'Dudiver', N'16684582', 1, CAST(0xD10D0B00 AS Date), 1, N'un dos tres 6', N'66666', CAST(0x0000A9520017B229 AS DateTime), NULL, 1)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (10, N'Anita', N'Milo', NULL, NULL, CAST(0x330D0B00 AS Date), NULL, NULL, NULL, CAST(0x0000A9520094418D AS DateTime), NULL, -1)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (11, N'Luis Peña', N'Del monto', NULL, NULL, CAST(0x7B110B00 AS Date), NULL, NULL, NULL, CAST(0x0000A95200920606 AS DateTime), NULL, 0)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (12, N'Andres Jose', N'MEndez', N'16684582', 3, CAST(0x0E100B00 AS Date), 2, N'un dos tres 6', N'66666', CAST(0x0000A95200A6D59B AS DateTime), NULL, 1)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (13, N'Luis Eduardo', N'Jimenes', NULL, NULL, CAST(0x330D0B00 AS Date), NULL, NULL, NULL, CAST(0x0000A9520093811B AS DateTime), NULL, 0)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (14, N'Emiliano', N'Camacho', N'0', NULL, CAST(0x330D0B00 AS Date), NULL, NULL, NULL, CAST(0x0000A9520093D942 AS DateTime), NULL, 0)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (15, N'Felipe', N'Gonzalez', NULL, NULL, CAST(0x330D0B00 AS Date), NULL, NULL, NULL, CAST(0x0000A95200940DDC AS DateTime), NULL, 0)
INSERT [dbo].[DTPeople] ([IDPeople], [Name], [SecondName], [DocumentID], [TypeDocumentID], [BirthDate], [CountryID], [Addres], [PrincipalPhone], [UpdateUpd], [CreateDate], [Sex]) VALUES (16, N'Leandro', N'Camacho', NULL, NULL, CAST(0xD10D0B00 AS Date), NULL, NULL, NULL, CAST(0x0000A95200A62141 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[DTPeople] OFF
/****** Object:  View [dbo].[VWPeopleGeneral]    Script Date: 09/05/2018 10:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWPeopleGeneral]
AS
SELECT     Name + ' ' + SecondName AS FullName, IDPeople, CAST(DATEDIFF(dd, BirthDate, GETDATE()) / 365.25 AS int) AS Age, 
                      CASE sex WHEN 1 THEN 'Femenino' WHEN 0 THEN 'Masculino' ELSE 'Femenino' END AS Sex, BirthDate
FROM         dbo.DTPeople
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DTPeople"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 174
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VWPeopleGeneral'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VWPeopleGeneral'
GO
/****** Object:  View [dbo].[VWInfoPeople]    Script Date: 09/05/2018 10:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWInfoPeople]
AS
SELECT     dbo.DTPeople.IDPeople, dbo.DTPeople.Name, dbo.DTPeople.SecondName, dbo.DTPeople.DocumentID, dbo.DTPeople.TypeDocumentID, dbo.DTPeople.BirthDate, dbo.DTPeople.CountryID, 
                      dbo.DTPeople.Addres, dbo.DTPeople.PrincipalPhone, dbo.DTPeople.UpdateUpd, dbo.DTPeople.CreateDate, dbo.DTDocumentsType.TypeDocument, dbo.DTCountries.Country, dbo.DTPeople.Sex, 
                      CAST(DATEDIFF(dd, dbo.DTPeople.BirthDate, GETDATE()) / 365.25 AS int) AS Age
FROM         dbo.DTCountries RIGHT OUTER JOIN
                      dbo.DTPeople ON dbo.DTCountries.CountryID = dbo.DTPeople.CountryID LEFT OUTER JOIN
                      dbo.DTDocumentsType ON dbo.DTPeople.TypeDocumentID = dbo.DTDocumentsType.TypeDocumentID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DTCountries"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 174
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DTPeople"
            Begin Extent = 
               Top = 10
               Left = 526
               Bottom = 130
               Right = 698
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "DTDocumentsType"
            Begin Extent = 
               Top = 79
               Left = 232
               Bottom = 247
               Right = 404
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VWInfoPeople'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VWInfoPeople'
GO
/****** Object:  ForeignKey [FK_DTPeople_DTCountries]    Script Date: 09/05/2018 10:09:43 ******/
ALTER TABLE [dbo].[DTPeople]  WITH CHECK ADD  CONSTRAINT [FK_DTPeople_DTCountries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[DTCountries] ([CountryID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[DTPeople] CHECK CONSTRAINT [FK_DTPeople_DTCountries]
GO
/****** Object:  ForeignKey [FK_DTPeople_DTDocumentsType]    Script Date: 09/05/2018 10:09:43 ******/
ALTER TABLE [dbo].[DTPeople]  WITH CHECK ADD  CONSTRAINT [FK_DTPeople_DTDocumentsType] FOREIGN KEY([TypeDocumentID])
REFERENCES [dbo].[DTDocumentsType] ([TypeDocumentID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[DTPeople] CHECK CONSTRAINT [FK_DTPeople_DTDocumentsType]
GO
