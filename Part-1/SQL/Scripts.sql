
--DROp TABLE [dbo].[Player];
--DROp TABLE [dbo].[Club];
--DROp TABLE [Security].[UserClaim] ;
--DROp TABLE [Security].[User] ;
/****** Object:  Schema [Security]    Script Date: 3/11/2018 1:41:13 PM ******/
CREATE SCHEMA [Security]
GO
/****** Object:  Table [dbo].[Club]    Script Date: 3/11/2018 1:41:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 3/11/2018 1:41:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NULL,
	[JoinedDate] [datetime] NULL,
	[Price] [money] NULL,
	[Nationality] [nvarchar](255) NULL,
	[ClubId] [int] NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Security].[User]    Script Date: 3/11/2018 1:41:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Security].[User](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Security].[UserClaim]    Script Date: 3/11/2018 1:41:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Security].[UserClaim](
	[ClaimId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [varchar](100) NOT NULL,
	[ClaimValue] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Club] ON 
GO
INSERT [dbo].[Club] ([Id], [Name]) VALUES (1, N'FC Barcelona')
GO
INSERT [dbo].[Club] ([Id], [Name]) VALUES (2, N'Real Madrid')
GO
INSERT [dbo].[Club] ([Id], [Name]) VALUES (3, N'Atletico Madrid')
GO
SET IDENTITY_INSERT [dbo].[Club] OFF
GO
SET IDENTITY_INSERT [dbo].[Player] ON 
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (1, N'Lionel Messi', CAST(N'2015-02-01T00:00:00.000' AS DateTime), 1.0000, N'ARGENTINA', 1)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (3, N'Busquets', CAST(N'2015-04-01T00:00:00.000' AS DateTime), 22.0000, N'SPAIN', 1)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (5, N'Ivan Rakitić', CAST(N'2015-06-01T00:00:00.000' AS DateTime), 22.0000, N'CROATIA', 1)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (6, N'Luis Suárez', CAST(N'2015-07-01T00:00:00.000' AS DateTime), 2000.0000, N'URUGUAY', 1)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (7, N'COURTOIS', CAST(N'2015-08-01T00:00:00.000' AS DateTime), 2000.0000, N'BELGIUM', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (8, N'SERGIO RAMOS', CAST(N'2015-09-01T00:00:00.000' AS DateTime), 200.0000, N'SPAIN', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (9, N'MARCELO', CAST(N'2015-10-01T00:00:00.000' AS DateTime), 2000.0000, N'BRAZIL', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (10, N'ISCO', CAST(N'2016-11-05T00:00:00.000' AS DateTime), 49.0000, N'SPAIN', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (11, N'TONI KROOS', CAST(N'2015-10-09T00:00:00.000' AS DateTime), 499.0000, N'GERMANY', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (12, N'KARIM BENZEMA', CAST(N'2015-06-11T00:00:00.000' AS DateTime), 499.0000, N'FRANCE', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (13, N'Gareth Bale', CAST(N'2015-01-29T00:00:00.000' AS DateTime), 499.0000, N'Wales', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (14, N'ASENSIO', CAST(N'2014-08-28T00:00:00.000' AS DateTime), 499.0000, N'SPAIN', 2)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (15, N'Ousmane Dembélé', CAST(N'2013-09-12T00:00:00.000' AS DateTime), 499.0000, N'FRANCE', 1)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (16, N'Clément Lenglet', CAST(N'2013-07-22T00:00:00.000' AS DateTime), 499.0000, N'FRANCE', 1)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (17, N'Antoine Griezmann', CAST(N'2009-06-12T00:00:00.000' AS DateTime), 499.0000, N'FRANCE', 3)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (18, N'Diego Costa', CAST(N'2013-12-16T00:00:00.000' AS DateTime), 499.0000, N'SPAIN', 3)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (19, N'Diego Godín', CAST(N'2014-02-18T00:00:00.000' AS DateTime), 499.0000, N'URUGUAY', 3)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (20, N'Jan Oblak', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 2000.0000, N'SLOVENIA', 3)
GO
INSERT [dbo].[Player] ([Id], [Name], [JoinedDate], [Price], [Nationality], [ClubId]) VALUES (39, N'Filipe Luís', CAST(N'2016-07-22T00:00:00.000' AS DateTime), 10.0000, N'BRAZIL', 3)
GO
SET IDENTITY_INSERT [dbo].[Player] OFF
GO
INSERT [Security].[User] ([UserId], [UserName], [Password]) VALUES (N'4a1947ec-099c-4532-8105-64cf8c8b4b94', N'Rupom', N'P@ssw0rd')
GO
INSERT [Security].[User] ([UserId], [UserName], [Password]) VALUES (N'898c9784-e31f-4f37-927f-a157eb7ca215', N'Ahsan', N'P@ssw0rd')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'a3530e23-bea8-4e68-807e-86db9e80db11', N'898c9784-e31f-4f37-927f-a157eb7ca215', N'CanAddPlayer', N'false')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'cbb1b376-e315-400f-8457-6d0753c24f0f', N'4a1947ec-099c-4532-8105-64cf8c8b4b94', N'CanAccessPlayers', N'true')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'408b006c-e76e-4503-aee9-1985a4a3786a', N'4a1947ec-099c-4532-8105-64cf8c8b4b94', N'CanAddPlayer', N'true')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'ec624240-6a3a-4557-bbed-4aca1dddbc6b', N'4a1947ec-099c-4532-8105-64cf8c8b4b94', N'CanSavePlayer', N'true')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'4eb3c52b-1fd3-4f6e-8631-d99a4be7f3ae', N'4a1947ec-099c-4532-8105-64cf8c8b4b94', N'CanAccessClubs', N'true')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'dea74b80-defb-4a73-9100-53ecd98b0b88', N'4a1947ec-099c-4532-8105-64cf8c8b4b94', N'CanAddClub', N'true')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'71baa2ad-e169-42d1-b913-10123ac68074', N'898c9784-e31f-4f37-927f-a157eb7ca215', N'CanAccessPlayers', N'true')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'057f4ecc-8245-4234-8a9d-5a63bb3df02c', N'898c9784-e31f-4f37-927f-a157eb7ca215', N'CanAddClub', N'true')
GO
INSERT [Security].[UserClaim] ([ClaimId], [UserId], [ClaimType], [ClaimValue]) VALUES (N'0d8004ca-a9e1-4f25-b9d9-e7d1e2ec3283', N'898c9784-e31f-4f37-927f-a157eb7ca215', N'CanAccessClubs', N'true')
GO
/****** Object:  Index [PK__User__1788CC4D72609948]    Script Date: 3/11/2018 1:41:13 PM ******/
ALTER TABLE [Security].[User] ADD  CONSTRAINT [PK__User__1788CC4D72609948] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__UserClai__EF2E139A0133A934]    Script Date: 3/11/2018 1:41:13 PM ******/
ALTER TABLE [Security].[UserClaim] ADD  CONSTRAINT [PK__UserClai__EF2E139A0133A934] PRIMARY KEY NONCLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Security].[User] ADD  CONSTRAINT [DF__User__UserId__31B762FC]  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [Security].[UserClaim] ADD  CONSTRAINT [DF__UserClaim__Claim__3493CFA7]  DEFAULT (newid()) FOR [ClaimId]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Club] FOREIGN KEY([ClubId])
REFERENCES [dbo].[Club] ([Id])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Club]
GO
ALTER TABLE [Security].[UserClaim]  WITH CHECK ADD  CONSTRAINT [FK_UserClaim_User] FOREIGN KEY([UserId])
REFERENCES [Security].[User] ([UserId])
GO
ALTER TABLE [Security].[UserClaim] CHECK CONSTRAINT [FK_UserClaim_User]
GO