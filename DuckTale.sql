USE [DuckTale]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/12/2020 5:06:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentInfoLink]    Script Date: 15/12/2020 5:06:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInfoLink](
	[Id] [uniqueidentifier] NOT NULL,
	[StudentInfoFk] [uniqueidentifier] NOT NULL,
	[StudentMarksFk] [uniqueidentifier] NOT NULL,
	[Marks] [decimal](18, 2) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifyOn] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StudentInfoLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Studentinfos]    Script Date: 15/12/2020 5:06:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studentinfos](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Class] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifyOn] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Studentinfos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentSubject]    Script Date: 15/12/2020 5:06:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSubject](
	[Id] [uniqueidentifier] NOT NULL,
	[SubjectName] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifyOn] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StudentSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201214142529_add newtables', N'5.0.1')
GO
INSERT [dbo].[StudentInfoLink] ([Id], [StudentInfoFk], [StudentMarksFk], [Marks], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'63d1a037-bf82-4ffd-8759-08d8a0d6fd4d', N'8f667946-7913-4a4e-9381-578a72ae79d3', N'c1400624-1fc8-4196-1d57-08d8a06c0747', CAST(35.00 AS Decimal(18, 2)), CAST(N'2020-12-15 14:24:06.1429055' AS DateTime2), CAST(N'2020-12-15 14:24:06.1429261' AS DateTime2), 1)
GO
INSERT [dbo].[StudentInfoLink] ([Id], [StudentInfoFk], [StudentMarksFk], [Marks], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'3d67b39d-143a-41fa-875a-08d8a0d6fd4d', N'8f667946-7913-4a4e-9381-578a72ae79d3', N'8474d4ea-4af8-474d-474f-08d8a06ee2a4', CAST(45.00 AS Decimal(18, 2)), CAST(N'2020-12-15 14:24:06.1435363' AS DateTime2), CAST(N'2020-12-15 14:24:06.1435374' AS DateTime2), 1)
GO
INSERT [dbo].[StudentInfoLink] ([Id], [StudentInfoFk], [StudentMarksFk], [Marks], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'7f30090f-af53-43d6-875b-08d8a0d6fd4d', N'8f667946-7913-4a4e-9381-578a72ae79d3', N'564f5260-dce2-4d3f-4750-08d8a06ee2a4', CAST(68.00 AS Decimal(18, 2)), CAST(N'2020-12-15 14:24:06.1435387' AS DateTime2), CAST(N'2020-12-15 14:24:06.1435389' AS DateTime2), 1)
GO
INSERT [dbo].[StudentInfoLink] ([Id], [StudentInfoFk], [StudentMarksFk], [Marks], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'a2e99463-8202-447f-93e1-08d8a0e1b82e', N'299013f8-6355-4412-a4c3-423cbc4b6a9a', N'c1400624-1fc8-4196-1d57-08d8a06c0747', CAST(35.00 AS Decimal(18, 2)), CAST(N'2020-12-15 15:40:58.9656947' AS DateTime2), CAST(N'2020-12-15 15:40:58.9656990' AS DateTime2), 1)
GO
INSERT [dbo].[StudentInfoLink] ([Id], [StudentInfoFk], [StudentMarksFk], [Marks], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'84620c97-68ed-444c-93e2-08d8a0e1b82e', N'299013f8-6355-4412-a4c3-423cbc4b6a9a', N'8474d4ea-4af8-474d-474f-08d8a06ee2a4', CAST(41.00 AS Decimal(18, 2)), CAST(N'2020-12-15 15:40:58.9662976' AS DateTime2), CAST(N'2020-12-15 15:40:58.9662986' AS DateTime2), 1)
GO
INSERT [dbo].[StudentInfoLink] ([Id], [StudentInfoFk], [StudentMarksFk], [Marks], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'70d88cc8-caf1-42a5-93e3-08d8a0e1b82e', N'299013f8-6355-4412-a4c3-423cbc4b6a9a', N'564f5260-dce2-4d3f-4750-08d8a06ee2a4', CAST(43.00 AS Decimal(18, 2)), CAST(N'2020-12-15 15:40:58.9662999' AS DateTime2), CAST(N'2020-12-15 15:40:58.9663001' AS DateTime2), 1)
GO
INSERT [dbo].[Studentinfos] ([Id], [FirstName], [LastName], [Class], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'299013f8-6355-4412-a4c3-423cbc4b6a9a', N'kumar', N'sharma', N'12', CAST(N'2020-12-15 15:40:58.9729605' AS DateTime2), CAST(N'2020-12-15 15:40:58.9729644' AS DateTime2), 1)
GO
INSERT [dbo].[Studentinfos] ([Id], [FirstName], [LastName], [Class], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'8f667946-7913-4a4e-9381-578a72ae79d3', N'Manish', N'sharma', N'10', CAST(N'2020-12-15 14:24:08.9182244' AS DateTime2), CAST(N'2020-12-15 14:24:09.3438267' AS DateTime2), 1)
GO
INSERT [dbo].[StudentSubject] ([Id], [SubjectName], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'c1400624-1fc8-4196-1d57-08d8a06c0747', N'English', CAST(N'2020-12-15 01:38:09.9097949' AS DateTime2), CAST(N'2020-12-15 01:38:09.9103149' AS DateTime2), 1)
GO
INSERT [dbo].[StudentSubject] ([Id], [SubjectName], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'8474d4ea-4af8-474d-474f-08d8a06ee2a4', N'Hindi', CAST(N'2020-12-15 01:58:58.0751993' AS DateTime2), CAST(N'2020-12-15 01:58:58.0752428' AS DateTime2), 1)
GO
INSERT [dbo].[StudentSubject] ([Id], [SubjectName], [CreatedOn], [ModifyOn], [IsActive]) VALUES (N'564f5260-dce2-4d3f-4750-08d8a06ee2a4', N'Science', CAST(N'2020-12-15 02:00:32.0092923' AS DateTime2), CAST(N'2020-12-15 02:00:32.0092976' AS DateTime2), 1)
GO
ALTER TABLE [dbo].[StudentInfoLink]  WITH CHECK ADD  CONSTRAINT [FK_StudentInfoLink_Studentinfos_StudentInfoFk] FOREIGN KEY([StudentInfoFk])
REFERENCES [dbo].[Studentinfos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentInfoLink] CHECK CONSTRAINT [FK_StudentInfoLink_Studentinfos_StudentInfoFk]
GO
ALTER TABLE [dbo].[StudentInfoLink]  WITH CHECK ADD  CONSTRAINT [FK_StudentInfoLink_StudentSubject_StudentMarksFk] FOREIGN KEY([StudentMarksFk])
REFERENCES [dbo].[StudentSubject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentInfoLink] CHECK CONSTRAINT [FK_StudentInfoLink_StudentSubject_StudentMarksFk]
GO
