
GO
CREATE TABLE [dbo].[CON_Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
	[StateID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[ContactCategoryID] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[PhotoPath] [nvarchar](max) NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CON_ContactCategory]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CON_ContactCategory](
	[ContactCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ContactCategory] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_ContactCategory] PRIMARY KEY CLUSTERED 
(
	[ContactCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_City]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
	[StateID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_Country]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[CountryCode] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_State]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEC_User]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEC_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmailAddress] [nchar](50) NULL,
	[PhotoPath] [nvarchar](max) NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_SEC_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CON_Contact] ON 

INSERT [dbo].[CON_Contact] ([ContactID], [Name], [Mobile], [Address], [Email], [CountryID], [StateID], [CityID], [ContactCategoryID], [CreationDate], [ModificationDate], [PhotoPath], [UserID]) VALUES (1, N'Rabadiya Mitesh', N'+91 9999999999', N'abc', N'200540107109@darshan.ac.in', 1, 1, 1, 1, CAST(N'2022-11-16T11:26:04.000' AS DateTime), CAST(N'2023-02-24T17:53:50.080' AS DateTime), N'Yash-Visavadia.jpg', 1)
INSERT [dbo].[CON_Contact] ([ContactID], [Name], [Mobile], [Address], [Email], [CountryID], [StateID], [CityID], [ContactCategoryID], [CreationDate], [ModificationDate], [PhotoPath], [UserID]) VALUES (12, N'Daxini Yash', N'999999999', N'Madhapar', N'200540107113@darshan.ac.in', 3, 10, 34, 2, CAST(N'2022-11-18T00:00:00.000' AS DateTime), CAST(N'2023-02-24T17:54:29.580' AS DateTime), N'Daxini-Yash.jpg', 1)
INSERT [dbo].[CON_Contact] ([ContactID], [Name], [Mobile], [Address], [Email], [CountryID], [StateID], [CityID], [ContactCategoryID], [CreationDate], [ModificationDate], [PhotoPath], [UserID]) VALUES (15, N'Daxini Yash', N'999999999', N'Madhapar', N'200540107113@darshan.ac.in', 1, 1, 1, 0, CAST(N'2022-11-21T00:00:00.000' AS DateTime), CAST(N'2022-11-21T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[CON_Contact] ([ContactID], [Name], [Mobile], [Address], [Email], [CountryID], [StateID], [CityID], [ContactCategoryID], [CreationDate], [ModificationDate], [PhotoPath], [UserID]) VALUES (31, N'Ravi', N'1234567890', N'abcd', N'200540107103@darshan.ac.in', 1, 1, 1, 2, CAST(N'2022-11-23T00:00:00.000' AS DateTime), CAST(N'2023-02-24T17:54:08.900' AS DateTime), N'Ravi.jpg', 1)
INSERT [dbo].[CON_Contact] ([ContactID], [Name], [Mobile], [Address], [Email], [CountryID], [StateID], [CityID], [ContactCategoryID], [CreationDate], [ModificationDate], [PhotoPath], [UserID]) VALUES (32, N'Bhargav', N'9999999999', N'abcdef', N'200540107092@darshan.ac.in', 1, 1, 1, 2, CAST(N'2022-11-23T00:00:00.000' AS DateTime), CAST(N'2023-02-24T17:54:19.360' AS DateTime), N'Bhargav.jpg', 1)
INSERT [dbo].[CON_Contact] ([ContactID], [Name], [Mobile], [Address], [Email], [CountryID], [StateID], [CityID], [ContactCategoryID], [CreationDate], [ModificationDate], [PhotoPath], [UserID]) VALUES (33, N'Uttam', N'1122334455', N'abcd', N'uttam1122@gmail.com', 38, 11, 61, 9, CAST(N'2023-03-06T03:42:17.107' AS DateTime), CAST(N'2023-03-06T03:46:11.490' AS DateTime), N'Uttam.jpg', 2)
SET IDENTITY_INSERT [dbo].[CON_Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[CON_ContactCategory] ON 

INSERT [dbo].[CON_ContactCategory] ([ContactCategoryID], [ContactCategory], [CreationDate], [ModificationDate], [UserID]) VALUES (1, N'FAMILY', CAST(N'2022-11-16T11:16:29.527' AS DateTime), CAST(N'2022-11-21T12:27:54.833' AS DateTime), 1)
INSERT [dbo].[CON_ContactCategory] ([ContactCategoryID], [ContactCategory], [CreationDate], [ModificationDate], [UserID]) VALUES (2, N'Friend', CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[CON_ContactCategory] ([ContactCategoryID], [ContactCategory], [CreationDate], [ModificationDate], [UserID]) VALUES (8, N'FF', CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[CON_ContactCategory] ([ContactCategoryID], [ContactCategory], [CreationDate], [ModificationDate], [UserID]) VALUES (9, N'College Friend', CAST(N'2023-03-06T03:37:21.147' AS DateTime), CAST(N'2023-03-06T03:40:21.633' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[CON_ContactCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[LOC_City] ON 

INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (1, N'Rajkot', 1, 1, CAST(N'2022-11-16T00:00:00.000' AS DateTime), CAST(N'2022-11-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (2, N'Ahmedabad', 1, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (4, N'Surat', 1, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (5, N'Gandhinagar', 1, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (7, N'Jaipur', 2, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (8, N'Udaipur', 2, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (9, N'Jodhpur', 2, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (10, N'Manali', 3, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (11, N'Shimla', 3, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (12, N'Dharamsala', 3, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (13, N'Kochi', 4, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (14, N'Kannur', 4, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (15, N'Thiruvananthapuram', 4, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (16, N'Srinagar', 5, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (17, N'Jammu', 5, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (18, N'Anantnag', 5, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (19, N'Guwahati', 6, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (21, N'Tezpur', 6, 1, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (22, N'Quetta', 7, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (23, N'Turbat', 7, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (24, N'Khuzdar', 7, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (25, N'Hub', 7, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (26, N'Latifabad', 8, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (27, N'Karachi', 8, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (28, N'Dadu', 8, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (29, N'Palmer', 9, 3, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (30, N'St. George', 9, 3, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (31, N'Tanana', 9, 3, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (32, N'San Diego', 10, 3, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (34, N'Woodland', 10, 3, CAST(N'2022-11-11T00:00:00.000' AS DateTime), CAST(N'2022-11-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (56, N'Santa Cruze', 10, 3, CAST(N'2022-11-23T00:00:00.000' AS DateTime), CAST(N'2022-11-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (59, N'Dispur', 8, 2, CAST(N'2022-11-24T00:00:00.000' AS DateTime), CAST(N'2023-03-06T12:02:08.783' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (60, N'Jamnagar', 1, 1, CAST(N'2022-11-24T00:00:00.000' AS DateTime), CAST(N'2022-11-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [StateID], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (61, N'Kensington', 11, 38, CAST(N'2023-03-06T02:36:55.190' AS DateTime), CAST(N'2023-03-06T02:37:09.827' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[LOC_City] OFF
GO
SET IDENTITY_INSERT [dbo].[LOC_Country] ON 

INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationDate], [ModificationDate], [UserID]) VALUES (1, N'India', N'IND', CAST(N'2022-11-16T00:00:00.000' AS DateTime), CAST(N'2022-11-23T18:38:13.120' AS DateTime), 1)
INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationDate], [ModificationDate], [UserID]) VALUES (2, N'Pakistan', N'PAK', CAST(N'2022-11-13T00:00:00.000' AS DateTime), CAST(N'2022-11-24T22:06:38.307' AS DateTime), 1)
INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationDate], [ModificationDate], [UserID]) VALUES (3, N'USA', N'USA', CAST(N'2022-11-13T11:00:32.340' AS DateTime), CAST(N'2022-11-24T22:06:44.423' AS DateTime), 1)
INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationDate], [ModificationDate], [UserID]) VALUES (38, N'England', N'ENG', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2023-03-06T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[LOC_Country] OFF
GO
SET IDENTITY_INSERT [dbo].[LOC_State] ON 

INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (1, N'Gujarat', 1, CAST(N'2022-11-16T00:00:00.000' AS DateTime), CAST(N'2022-11-18T18:20:48.563' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (2, N'Rajasthan', 1, CAST(N'2022-11-13T11:11:41.300' AS DateTime), CAST(N'2022-11-13T11:11:41.300' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (3, N'Himachal Pradesh', 1, CAST(N'2022-11-13T11:12:03.270' AS DateTime), CAST(N'2022-11-13T11:12:03.270' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (4, N'Kerala', 1, CAST(N'2022-11-13T11:12:18.817' AS DateTime), CAST(N'2022-11-13T11:12:18.817' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (5, N'Jammu & Kashmir', 1, CAST(N'2022-11-13T11:12:43.947' AS DateTime), CAST(N'2022-11-13T11:12:43.947' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (6, N'Assam', 1, CAST(N'2022-11-13T11:13:09.790' AS DateTime), CAST(N'2022-11-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (7, N'Baluchistan', 2, CAST(N'2022-11-13T11:16:06.423' AS DateTime), CAST(N'2022-11-13T11:16:06.423' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (8, N'Sindh', 2, CAST(N'2022-11-13T11:16:49.213' AS DateTime), CAST(N'2022-11-13T11:16:49.213' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (9, N'Alaska', 3, CAST(N'2022-11-13T11:17:35.637' AS DateTime), CAST(N'2022-11-13T11:17:35.637' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (10, N'California', 3, CAST(N'2022-11-13T11:17:46.003' AS DateTime), CAST(N'2022-11-13T11:17:46.003' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [CountryID], [CreationDate], [ModificationDate], [UserID]) VALUES (11, N'London', 38, CAST(N'2023-03-06T01:39:52.753' AS DateTime), CAST(N'2023-03-06T01:44:28.080' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[LOC_State] OFF
GO
SET IDENTITY_INSERT [dbo].[SEC_User] ON 

INSERT [dbo].[SEC_User] ([UserID], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [PhotoPath], [Created], [Modified]) VALUES (1, N'Admin', N'Admin', N'Mitesh', N'Rabadiya', N'admin@gmail.com                                   ', N'yash.jpeg', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2023-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[SEC_User] ([UserID], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [PhotoPath], [Created], [Modified]) VALUES (2, N'Mr', N'Mr', N'', N'', N'                                                  ', N'', CAST(N'2023-03-06T00:12:05.230' AS DateTime), CAST(N'2023-03-06T00:12:05.230' AS DateTime))
SET IDENTITY_INSERT [dbo].[SEC_User] OFF
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_CON_Contact_SEC_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[SEC_User] ([UserID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_CON_Contact_SEC_User]
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[LOC_City] ([CityID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contact_City]
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LOC_Country] ([CountryID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contact_Country]
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[LOC_State] ([StateID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contact_State]
GO
ALTER TABLE [dbo].[CON_ContactCategory]  WITH CHECK ADD  CONSTRAINT [FK_CON_ContactCategory_SEC_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[SEC_User] ([UserID])
GO
ALTER TABLE [dbo].[CON_ContactCategory] CHECK CONSTRAINT [FK_CON_ContactCategory_SEC_User]
GO
ALTER TABLE [dbo].[LOC_City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LOC_Country] ([CountryID])
GO
ALTER TABLE [dbo].[LOC_City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[LOC_City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[LOC_State] ([StateID])
GO
ALTER TABLE [dbo].[LOC_City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[LOC_City]  WITH CHECK ADD  CONSTRAINT [FK_LOC_City_SEC_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[SEC_User] ([UserID])
GO
ALTER TABLE [dbo].[LOC_City] CHECK CONSTRAINT [FK_LOC_City_SEC_User]
GO
ALTER TABLE [dbo].[LOC_Country]  WITH CHECK ADD  CONSTRAINT [FK_LOC_Country_SEC_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[SEC_User] ([UserID])
GO
ALTER TABLE [dbo].[LOC_Country] CHECK CONSTRAINT [FK_LOC_Country_SEC_User]
GO
ALTER TABLE [dbo].[LOC_State]  WITH CHECK ADD  CONSTRAINT [FK_LOC_State_SEC_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[SEC_User] ([UserID])
GO
ALTER TABLE [dbo].[LOC_State] CHECK CONSTRAINT [FK_LOC_State_SEC_User]
GO
ALTER TABLE [dbo].[LOC_State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LOC_Country] ([CountryID])
GO
ALTER TABLE [dbo].[LOC_State] CHECK CONSTRAINT [FK_State_Country]
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_DeleteByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --[dbo].[PR_CON_Contact_DeleteByPK] @ContactID=2

CREATE PROCEDURE [dbo].[PR_CON_Contact_DeleteByPK]
			@ContactID			int
			,@UserID			int
AS
DELETE 
FROM 
			[dbo].[CON_Contact]
WHERE 
			[dbo].[CON_Contact].[ContactID] = @ContactID
	AND		[dbo].[CON_Contact].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_Insert]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --[dbo].[PR_CON_Contact_Insert] @Name='Visavadia Yash', @Mobile='+91 9999999999', @Address='xyz', @Email='200540107109@darshan.ac.in', @CountryID=1, @StateID=1, @CityID=1, @ContactCategoryID=1, @CreationDate=NULL, @ModificationDate=NULL


CREATE PROCEDURE [dbo].[PR_CON_Contact_Insert]
	@Name					nvarchar(50)
	,@Mobile				nvarchar(50)
	,@Address				nvarchar(250)
	,@Email					nvarchar(50)
	,@CountryID				int
	,@StateID				int
	,@CityID				int
	,@ContactCategoryID		int
	,@CreationDate			datetime
	,@ModificationDate		datetime
	,@PhotoPath				nvarchar(MAX)
	,@UserID				int
AS
INSERT INTO [dbo].[CON_Contact]
(
	--[dbo].[CON_Contact].[ContactID]
	[dbo].[CON_Contact].[Name]
	,[dbo].[CON_Contact].[Mobile]
	,[dbo].[CON_Contact].[Address]
	,[dbo].[CON_Contact].[Email]
	,[dbo].[CON_Contact].[CountryID]
	,[dbo].[CON_Contact].[StateID]
	,[dbo].[CON_Contact].[CityID]
	,[dbo].[CON_Contact].[ContactCategoryID]
	,[dbo].[CON_Contact].[CreationDate]
	,[dbo].[CON_Contact].[ModificationDate]
	,[dbo].[CON_Contact].[PhotoPath]
	,[dbo].[CON_Contact].[UserID]
)
VALUES
(
	@Name
	,@Mobile
	,@Address 
	,@Email 
	,@CountryID 
	,@StateID 
	,@CityID
	,@ContactCategoryID
	,ISNULL(@CreationDate, GETDATE())
	,ISNULL(@ModificationDate, GETDATE())
	,@PhotoPath
	,@UserID
)
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectAll]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 -- [dbo].[PR_CON_Contact_SelectAll]

CREATE PROCEDURE [dbo].[PR_CON_Contact_SelectAll]
			@UserID			int
AS
SELECT
			[dbo].[CON_Contact].[ContactID]
			,[dbo].[CON_Contact].[Name]
			,[dbo].[CON_Contact].[Mobile]
			,[dbo].[CON_Contact].[Address]
			,[dbo].[CON_Contact].[Email]
			,[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_State].[StateName]
			,[dbo].[LOC_City].[CityName]
			,[dbo].[CON_ContactCategory].[ContactCategory]
			,[dbo].[CON_Contact].[CreationDate]
			,[dbo].[CON_Contact].[ModificationDate]
			,[dbo].[CON_Contact].[PhotoPath]
			,[dbo].[CON_Contact].[UserID]
FROM
			[dbo].[CON_Contact]
INNER JOIN	
			[dbo].[LOC_Country]
ON			
			[dbo].[CON_Contact].[CountryID] = [dbo].[LOC_Country].[CountryID]
INNER JOIN	
			[dbo].[LOC_State]
ON			
			[dbo].[CON_Contact].[StateID] = [dbo].[LOC_State].[StateID]
INNER JOIN	
			[dbo].[LOC_City]
ON			
			[dbo].[CON_Contact].[CityID] = [dbo].[LOC_City].[CityID]
INNER JOIN	
			[dbo].[CON_ContactCategory]
ON			
			[dbo].[CON_Contact].[ContactCategoryID] = [dbo].[CON_ContactCategory].[ContactCategoryID]
WHERE
			[dbo].[CON_Contact].[UserID] = @UserID
ORDER BY
			[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_State].[StateName]
			,[dbo].[LOC_City].[CityName]
			,[dbo].[CON_ContactCategory].[ContactCategory]
			,[dbo].[CON_Contact].[Address]
			,[dbo].[CON_Contact].[Name]
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --[dbo].[PR_CON_Contact_SelectByPK] @ContactID=1

CREATE PROCEDURE [dbo].[PR_CON_Contact_SelectByPK]
			@ContactID			int
			,@UserID			int
AS
SELECT 
			[dbo].[CON_Contact].[ContactID]
			,[dbo].[CON_Contact].[Name]
			,[dbo].[CON_Contact].[Mobile]
			,[dbo].[CON_Contact].[Address]
			,[dbo].[CON_Contact].[Email]
			,[dbo].[CON_Contact].[CountryID]
			,[dbo].[CON_Contact].[StateID]
			,[dbo].[CON_Contact].[CityID]
			,[dbo].[CON_Contact].[ContactCategoryID]
			,[dbo].[CON_Contact].[CreationDate]
			,[dbo].[CON_Contact].[ModificationDate]
			,[dbo].[CON_Contact].[PhotoPath]
			,[dbo].[CON_Contact].[UserID]
FROM	
			[dbo].[CON_Contact]
WHERE
			[dbo].[CON_Contact].[ContactID] = @ContactID
	AND		[dbo].[CON_Contact].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectPage]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --[dbo].[PR_CON_Contact_SelectPage] @CountryName='India', @StateName='Guj' ,@CityName='Raj', @Name='', @ContactCategory='' ,@Email=''

CREATE PROCEDURE [dbo].[PR_CON_Contact_SelectPage]
		@CountryName		nvarchar(50)
		,@StateName			nvarchar(50)
		,@CityName			nvarchar(50)
		,@Name				nvarchar(50)
		,@ContactCategory	nvarchar(50)
		,@Email				nvarchar(50)
		,@Mobile			nvarchar(50)
		,@UserID			int
AS
SELECT 
		[dbo].[CON_Contact].[ContactID]
		,[dbo].[CON_Contact].[Name]
		,[dbo].[CON_Contact].[Mobile]
		,[dbo].[CON_Contact].[Address]
		,[dbo].[CON_Contact].[Email]
		,[dbo].[LOC_Country].[CountryName]
		,[dbo].[LOC_State].[StateName]
		,[dbo].[LOC_City].[CityName]
		,[dbo].[CON_ContactCategory].[ContactCategory]
		,[dbo].[CON_Contact].[CreationDate]
		,[dbo].[CON_Contact].[ModificationDate]
		,[dbo].[CON_Contact].[PhotoPath]
		,[dbo].[CON_Contact].[UserID]
FROM
		[dbo].[CON_Contact]
INNER JOIN 
		[dbo].[LOC_Country]
ON	
		[dbo].[CON_Contact].[CountryID] = [dbo].[LOC_Country].[CountryID]
INNER JOIN		
		[dbo].[LOC_State]
ON 
		[dbo].[CON_Contact].[StateID] = [dbo].[LOC_State].[StateID]
INNER JOIN
		[dbo].[LOC_City]
ON	
		[dbo].[CON_Contact].[CityID] = [dbo].[LOC_City].[CityID]
INNER JOIN
		[dbo].[CON_ContactCategory]
ON 
		[dbo].[CON_Contact].[ContactCategoryID] = [dbo].[CON_ContactCategory].[ContactCategoryID]
WHERE
		[dbo].[CON_Contact].[UserID] = @UserID
AND		( @CountryName is null or [dbo].[LOC_Country].[CountryName] like '%'+@CountryName+'%')
AND		( @StateName is null or [dbo].[LOC_State].[StateName] like '%'+@StateName+'%')
AND		( @CityName is null or [dbo].[LOC_City].[CityName] like '%'+@CityName+'%')
AND		( @Name is null or [dbo].[CON_Contact].[Name] like '%'+@Name+'%')
AND		( @ContactCategory is null or [dbo].[CON_ContactCategory].[ContactCategory] like '%'+@ContactCategory+'%')
AND		( @Email is null or [dbo].[CON_Contact].[Email] like '%'+@Email+'%')
AND		( @Mobile is null or [dbo].[CON_Contact].[Mobile] like '%'+@Mobile+'%')
ORDER BY
		[dbo].[LOC_Country].[CountryName]
		,[dbo].[LOC_State].[StateName]
		,[dbo].[LOC_City].[CityName]
		,[dbo].[CON_Contact].[Name]
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectPhotoPathByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_CON_Contact_SelectPhotoPathByPK]
			@ContactID			int
			,@UserID			int
AS
SELECT 
			[dbo].[CON_Contact].[ContactID]
			,[dbo].[CON_Contact].[PhotoPath]
FROM	
			[dbo].[CON_Contact]
WHERE
			[dbo].[CON_Contact].[ContactID] = @ContactID
	AND		[dbo].[CON_Contact].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_UpdateByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_CON_Contact_UpdateByPK] @ContactID=1, @Name='VISAVADIA YASH', @Mobile='+91 9999999999', @Address='abc', @Email='200540107109@darshan.ac.in', @CityID=1, @StateID=1, @CountryID=1, @ContactCategoryID=1, @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_CON_Contact_UpdateByPK]
			@ContactID				int
			,@Name					nvarchar(50)
			,@Mobile				nvarchar(50)
			,@Address				nvarchar(50)
			,@Email					nvarchar(50)
			,@CountryID				int
			,@StateID				int
			,@CityID				int
			,@ContactCategoryID		int
			,@ModificationDate		datetime
			,@PhotoPath				nvarchar(MAX)
			,@UserID				int
AS
BEGIN
	UPDATE [dbo].[CON_Contact]
	SET
			[dbo].[CON_Contact].[Name] = @Name
			,[dbo].[CON_Contact].[Mobile] = @Mobile
			,[dbo].[CON_Contact].[Address] = @Address
			,[dbo].[CON_Contact].[Email] = @Email
			,[dbo].[CON_Contact].[CityID] = @CityID
			,[dbo].[CON_Contact].[StateID] = @StateID
			,[dbo].[CON_Contact].[CountryID] = @CountryID
			,[dbo].[CON_Contact].[ContactCategoryID] = @ContactCategoryID
			,[dbo].[CON_Contact].[ModificationDate] = ISNULL(@ModificationDate, GETDATE())
			,[dbo].[CON_Contact].[PhotoPath] = @PhotoPath
	WHERE 
			[dbo].[CON_Contact].[ContactID] = @ContactID
	AND		[dbo].[CON_Contact].[UserID] = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_ContactCategory_DeleteByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[dbo].[PR_CON_ContactCategory_DeleteByPK] @ContactCategoryID=3 

CREATE PROCEDURE [dbo].[PR_CON_ContactCategory_DeleteByPK]
		@ContactCategoryID		int
		,@UserID				int
AS
DELETE 
FROM 
		[dbo].[CON_ContactCategory]
WHERE 
		[dbo].[CON_ContactCategory].[ContactCategoryID] = @ContactCategoryID
AND		[dbo].[CON_ContactCategory].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_ContactCategory_Insert]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[dbo].[PR_CON_ContactCategory_Insert] @ContactCategory='FF', @CreationDate=NULL, @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_CON_ContactCategory_Insert]
	@ContactCategory		nvarchar(50)
	,@CreationDate			datetime
	,@ModificationDate		datetime
	,@UserID				int
AS
INSERT INTO [dbo].[CON_ContactCategory]
(
	[dbo].[CON_ContactCategory].[ContactCategory]
	,[dbo].[CON_ContactCategory].[CreationDate]
	,[dbo].[CON_ContactCategory].[ModificationDate]
	,[dbo].[CON_ContactCategory].[UserID]
)
VALUES
(
	@ContactCategory
	,ISNULL(@CreationDate, GETDATE())
	,ISNULL(@ModificationDate, GETDATE())
	,@UserID
)
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_ContactCategory_SelectAll]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[dbo].[PR_CON_ContactCategory_SelectAll] 

CREATE PROCEDURE [dbo].[PR_CON_ContactCategory_SelectAll]
			@UserID		int
AS 
SELECT
			[dbo].[CON_ContactCategory].[ContactCategoryID]
			,[dbo].[CON_ContactCategory].[ContactCategory]
			,[dbo].[CON_ContactCategory].[CreationDate]
			,[dbo].[CON_ContactCategory].[ModificationDate]
			,[dbo].[CON_ContactCategory].[UserID]
FROM
			[dbo].[CON_ContactCategory]
WHERE
			[dbo].[CON_ContactCategory].[UserID] = @UserID
ORDER BY	
			[dbo].[CON_ContactCategory].ContactCategory
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_ContactCategory_SelectByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[dbo].[PR_CON_ContactCategory_SelectByPK] @ContactCategoryID=1

CREATE PROCEDURE [dbo].[PR_CON_ContactCategory_SelectByPK]
			@ContactCategoryID		int
			,@UserID				int
AS
SELECT 
			[dbo].[CON_ContactCategory].[ContactCategoryID]
			,[dbo].[CON_ContactCategory].[ContactCategory]
			,[dbo].[CON_ContactCategory].[CreationDate]
			,[dbo].[CON_ContactCategory].[ModificationDate]
			,[dbo].[CON_ContactCategory].[UserID]
FROM
			[dbo].[CON_ContactCategory]
WHERE 
			[dbo].[CON_ContactCategory].[ContactCategoryID] = @ContactCategoryID 
	AND		[dbo].[CON_ContactCategory].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_ContactCategory_SelectComboBox]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_CON_ContactCategory_SelectComboBox]

CREATE PROCEDURE [dbo].[PR_CON_ContactCategory_SelectComboBox]
		@UserID			int
AS
SELECT 
		[dbo].[CON_ContactCategory].[ContactCategoryID]
		,[dbo].[CON_ContactCategory].[ContactCategory]
FROM
		[dbo].[CON_ContactCategory]
WHERE
		[dbo].[CON_ContactCategory].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_ContactCategory_SelectPage]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --[dbo].[PR_CON_ContactCategory_SelectPage] @ContactCategory='Fa' 

CREATE PROCEDURE [dbo].[PR_CON_ContactCategory_SelectPage]
		@ContactCategory		nvarchar(50)
		,@UserID				int
AS
SELECT 
		[dbo].[CON_ContactCategory].[ContactCategoryID]
		,[dbo].[CON_ContactCategory].[ContactCategory]
		,[dbo].[CON_ContactCategory].[CreationDate]
		,[dbo].[CON_ContactCategory].[ModificationDate]
		,[dbo].[CON_ContactCategory].[UserID]
FROM
		[dbo].[CON_ContactCategory]
WHERE
		[dbo].[CON_ContactCategory].[UserID] = @UserID
AND		
		(@ContactCategory is null 
	OR	[dbo].[CON_ContactCategory].[ContactCategory] like '%'+@ContactCategory+'%')
ORDER BY
		[dbo].[CON_ContactCategory].[ContactCategory]
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_ContactCategory_UpdateByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_CON_ContactCategory_UpdateByPK] @ContactCategoryID=1, @ContactCategory='FAMILY', @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_CON_ContactCategory_UpdateByPK]
		@ContactCategoryID		int
		,@ContactCategory		nvarchar(50)
		,@ModificationDate		datetime
		,@UserID				int
AS
BEGIN
	UPDATE [dbo].[CON_ContactCategory]
	SET
		[dbo].[CON_ContactCategory].[ContactCategory] = @ContactCategory
		,[dbo].[CON_ContactCategory].[ModificationDate] = ISNULL(@ModificationDate, GETDATE())
	WHERE 
		[dbo].[CON_ContactCategory].[ContactCategoryID] = @ContactCategoryID
	AND [dbo].[CON_ContactCategory].[UserID]			= @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_DeleteByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[dbo].[PR_LOC_City_DeleteByPK] @CityID=3 


CREATE PROCEDURE [dbo].[PR_LOC_City_DeleteByPK]
		@CityID		int
		,@UserID	int
AS
DELETE 
FROM 
		[dbo].[LOC_City]
WHERE
		[dbo].[LOC_City].[CityID] = @CityID
AND		[dbo].[LOC_City].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_Insert]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [dbo].[PR_LOC_City_Insert] @CityName='Rajkot', @StateID=1, @CountryID=1, @CreationDate=NULL, @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_LOC_City_Insert]
	@CityName			nvarchar(50)
	,@StateID			int
	,@CountryID			int
	,@CreationDate		datetime
	,@ModificationDate	datetime
	,@UserID			int
AS
INSERT INTO [dbo].[LOC_City]
(
	[dbo].[LOC_City].[CityName]
	,[dbo].[LOC_City].[StateID]
	,[dbo].[LOC_City].[CountryID]
	,[dbo].[LOC_City].[CreationDate]
	,[dbo].[LOC_City].[ModificationDate]
	,[dbo].[LOC_City].[UserID]
)
VALUES
(
	@CityName
	,@StateID
	,@CountryID
	,ISNULL(@CreationDate, GETDATE())
	,ISNULL(@ModificationDate, GETDATE())
	,@UserID
)
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectAll]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[dbo].[PR_LOC_City_SelectAll] 

CREATE PROCEDURE [dbo].[PR_LOC_City_SelectAll]
			@UserID			int
AS
SELECT 
			[dbo].[LOC_City].[CityID]
			,[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_State].[StateName]
			,[dbo].[LOC_City].[CityName]
			,[dbo].[LOC_City].[CreationDate]
			,[dbo].[LOC_City].[ModificationDate]
			,[dbo].[LOC_City].[UserID]
FROM
			[dbo].[LOC_City]
INNER JOIN	
			[dbo].[LOC_Country]
ON			
			[dbo].[LOC_City].[CountryID] = [dbo].[LOC_Country].[CountryID]
INNER JOIN	
			[dbo].[LOC_State]
ON			
			[dbo].[LOC_City].[StateID] = [dbo].[LOC_State].[StateID]
WHERE
			[dbo].[LOC_City].[UserID] = @UserID
ORDER BY	
			[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_State].[StateName]
			,[dbo].[LOC_City].[CityName]
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_City_SelectByPK] @CityID=1

CREATE PROCEDURE [dbo].[PR_LOC_City_SelectByPK]
			@CityID				int
			,@UserID			int
AS
SELECT 
			[dbo].[LOC_City].[CityID]
			,[dbo].[LOC_City].[CityName]
			,[dbo].[LOC_City].[StateID]
			,[dbo].[LOC_City].[CountryID]
			,[dbo].[LOC_City].[CreationDate]
			,[dbo].[LOC_City].[ModificationDate]
			,[dbo].[LOC_City].[UserID]
FROM
			[dbo].[LOC_City]
WHERE 
			[dbo].[LOC_City].[CityID] = @CityID
	AND		[dbo].[LOC_City].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectComboBox]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_City_SelectComboBox]

CREATE PROCEDURE [dbo].[PR_LOC_City_SelectComboBox]
		@UserID			int
AS
SELECT 
		[dbo].[LOC_City].[CityID]
		,[dbo].[LOC_City].[CityName]
FROM
		[dbo].[LOC_City]
WHERE
		[dbo].[LOC_City].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectComboBoxByStateID]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_City_SelectComboBoxByStateID] @StateID=1

CREATE PROCEDURE [dbo].[PR_LOC_City_SelectComboBoxByStateID]
			@StateID			int
			,@UserID			int
AS
SELECT 
			[dbo].[LOC_City].[CityID]
			,[dbo].[LOC_City].[CityName]
FROM
			[dbo].[LOC_City]
WHERE	
			[dbo].[LOC_City].[StateID] = @StateID
	AND		[dbo].[LOC_City].[UserID] = @UserID
ORDER BY	
			[dbo].[LOC_City].[CityName]
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectPage]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --[dbo].[PR_LOC_City_SelectPage] @CountryName='India', @StateName='Guj' ,@CityName='Raj'

CREATE PROCEDURE [dbo].[PR_LOC_City_SelectPage]
		@CountryName		nvarchar(50)
		,@StateName			nvarchar(50)
		,@CityName			nvarchar(50)
		,@UserID			int
AS
SELECT 
		[dbo].[LOC_City].[CityID]
		,[dbo].[LOC_Country].[CountryName]
		,[dbo].[LOC_State].[StateName]
		,[dbo].[LOC_City].[CityName]
		,[dbo].[LOC_City].[CreationDate]
		,[dbo].[LOC_City].[ModificationDate]
		,[dbo].[LOC_City].[UserID]
FROM
		[dbo].[LOC_City]
INNER JOIN 
		[dbo].[LOC_Country]
ON	
		[dbo].[LOC_City].[CountryID] = [dbo].[LOC_Country].[CountryID]
INNER JOIN		
		[dbo].[LOC_State]
ON 
		[dbo].[LOC_City].[StateID] = [dbo].[LOC_State].[StateID]
WHERE
		[dbo].[LOC_City].[UserID] = @UserID
AND		( @CountryName is null or [dbo].[LOC_Country].[CountryName] like '%'+@CountryName+'%')
AND		( @StateName is null or [dbo].[LOC_State].[StateName] like '%'+@StateName+'%')
AND		( @CityName is null or [dbo].[LOC_City].[CityName] like '%'+@CityName+'%')
ORDER BY
		[dbo].[LOC_Country].[CountryName]
		,[dbo].[LOC_State].[StateName]
		,[dbo].[LOC_City].[CityName]
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_UpdateByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_City_UpdateByPK] @CityID=1, @CityName='RAJKOT', @CountryID=1, @StateID=1, @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_LOC_City_UpdateByPK]
			@CityID				int
			,@CityName			nvarchar(50)
			,@StateID			int
			,@CountryID			int
			,@ModificationDate	datetime
			,@UserID			int
AS
BEGIN
	UPDATE [dbo].[LOC_City]
	SET
			[dbo].[LOC_City].[CityName] = @CityName
			,[dbo].[LOC_City].[StateID] = @StateID
			,[dbo].[LOC_City].[CountryID] = @CountryID
			,[dbo].[LOC_City].[ModificationDate] = ISNULL(@ModificationDate, GETDATE())
	WHERE 
			[dbo].[LOC_City].[CityID] = @CityID
	AND		[dbo].[LOC_City].[UserID] = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_DeleteByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [dbo].[PR_LOC_Country_DeleteByPK] @CountryID=21

CREATE PROCEDURE [dbo].[PR_LOC_Country_DeleteByPK]
		
			@CountryID		int
			,@UserID		int
AS

DELETE FROM [dbo].[LOC_Country]

WHERE 
			[dbo].[LOC_Country].[CountryID] = @CountryID
	AND		[dbo].[LOC_Country].[UserID]	= @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_Insert]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [dbo].[PR_LOC_Country_Insert] @CountryName='India', @CountryCode='innnd', @CreationDate=NULL, @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_LOC_Country_Insert]
			@CountryName		nvarchar(50)
			,@CountryCode		nvarchar(10)
			,@CreationDate		datetime
			,@ModificationDate	datetime
			,@UserID			int
AS
INSERT INTO [dbo].[LOC_Country]
(
	[dbo].[LOC_Country].[CountryName]
	,[dbo].[LOC_Country].[CountryCode]
	,[dbo].[LOC_Country].[CreationDate]
	,[dbo].[LOC_Country].[ModificationDate]
	,[dbo].[LOC_Country].[UserID]
)
VALUES
(
	@CountryName
	,@CountryCode
	,ISNULL(@CreationDate, GETDATE())
	,ISNULL(@ModificationDate, GETDATE())
	,@UserID
)
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectAll]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_Country_SelectAll]

CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectAll]
			@UserID		int
AS
SELECT 
			[dbo].[LOC_Country].[CountryID]
			,[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_Country].[CountryCode]
			,[dbo].[LOC_Country].[CreationDate]
			,[dbo].[LOC_Country].[ModificationDate]
			,[dbo].[LOC_Country].[UserID]
FROM
			[dbo].[LOC_Country]
WHERE
			[dbo].[LOC_Country].[UserID] = @UserID
ORDER BY	
			[dbo].[LOC_Country].[CountryName] 
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectByPK]
			@CountryID		int
			,@UserID			int
AS
SELECT 
			[dbo].[LOC_Country].[CountryID]
			,[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_Country].[CountryCode]
			,[dbo].[LOC_Country].[CreationDate]
			,[dbo].[LOC_Country].[ModificationDate]
			,[dbo].[LOC_Country].[UserID]
FROM 
			[dbo].[LOC_Country]
WHERE 
			[dbo].[LOC_Country].[CountryID] = @CountryID
	AND		[dbo].[LOC_Country].[UserID]	= @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectComboBox]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_Country_SelectComboBox]

CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectComboBox]
		@UserID		int
AS
SELECT 
		[dbo].[LOC_Country].[CountryID]
		,[dbo].[LOC_Country].[CountryName]
FROM
		[dbo].[LOC_Country]
WHERE
		[dbo].[LOC_Country].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectPage]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_Country_SelectPage] @CountryName='India', @CountryCode='IND'

CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectPage]
		@CountryName	nvarchar(50)
		,@CountryCode	nvarchar(50)
		,@UserID		int
AS
SELECT 
		[dbo].[LOC_Country].[CountryID]
		,[dbo].[LOC_Country].[CountryName]
		,[dbo].[LOC_Country].[CountryCode]
		,[dbo].[LOC_Country].[CreationDate]
		,[dbo].[LOC_Country].[ModificationDate]
		,[dbo].[LOC_Country].[UserID]
FROM
		[dbo].[LOC_Country]
WHERE
		[dbo].[LOC_Country].[UserID] = @UserID
AND		( @CountryName is null or [dbo].[LOC_Country].[CountryName] like '%'+@CountryName+'%')
AND		( @CountryCode is null or [dbo].[LOC_Country].[CountryCode] like '%'+@CountryCode+'%')
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_UpdateByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_Country_UpdateByPK] @CountryID=1, @CountryName='INDIA', @CountryCode='IND', @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_LOC_Country_UpdateByPK]
			@CountryID			int
			,@CountryName		nvarchar(50)
			,@CountryCode		nvarchar(50)
			,@ModificationDate	datetime
			,@UserID			int
AS
BEGIN
	UPDATE [dbo].[LOC_Country]
	SET
				[dbo].[LOC_Country].[CountryName] = @CountryName
				,[dbo].[LOC_Country].[CountryCode] = @CountryCode
				,[dbo].[LOC_Country].[ModificationDate] = ISNULL(@ModificationDate, GETDATE())
	WHERE 
				[dbo].[LOC_Country].[CountryID] = @CountryID
		 AND    [dbo].[LOC_Country].[UserID]	= @UserID 
END
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_DeleteByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [dbo].[PR_LOC_State_DeleteByPK] @StateID=21

CREATE PROCEDURE [dbo].[PR_LOC_State_DeleteByPK]
	@StateID	int
	,@UserID	int
AS
DELETE 
FROM 
			[dbo].[LOC_State]
WHERE 
			[dbo].[LOC_State].[StateID] = @StateID
	AND		[dbo].[LOC_State].[UserID]	= @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_Insert]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[dbo].[PR_LOC_State_Insert] @StateName='Gauteng', @CountryID=8, @CreationDate=NULL, @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_LOC_State_Insert]
	@StateName			nvarchar(50)
	,@CountryID			int
	,@CreationDate		datetime
	,@ModificationDate	datetime
	,@UserID			int
AS
INSERT INTO [dbo].[LOC_State]
(
	[dbo].[LOC_State].[StateName]
	,[dbo].[LOC_State].[CountryID]
	,[dbo].[LOC_State].[CreationDate]
	,[dbo].[LOC_State].[ModificationDate]
	,[dbo].[LOC_State].[UserID]
)
VALUES
(
	@StateName
	,@CountryID
	,ISNULL(@CreationDate, GETDATE())
	,ISNULL(@ModificationDate, GETDATE())
	,@UserID
)
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectAll]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_State_SelectAll]

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectAll]
			@UserID			int
AS
SELECT 
			[dbo].[LOC_State].[StateID]
			,[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_State].[StateName]
			,[dbo].[LOC_State].[CreationDate]
			,[dbo].[LOC_State].[ModificationDate]
			,[dbo].[LOC_State].[UserID]
FROM 
			[dbo].[LOC_State]
INNER JOIN	
			[dbo].[LOC_Country]
ON			
			[dbo].[LOC_State].[CountryID] = [dbo].[LOC_Country].[CountryID]
WHERE
			[dbo].[LOC_State].[UserID] = @UserID
ORDER BY	
			[dbo].[LOC_Country].[CountryName]
			,[dbo].[LOC_State].[StateName]
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [dbo].[PR_LOC_State_SelectByPK] @StateID=1

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectByPK]
		@StateID	int
		,@UserID	int
AS
SELECT 
		[dbo].[LOC_State].[StateID]
		,[dbo].[LOC_State].[StateName]
		,[dbo].[LOC_State].[CountryID]
		,[dbo].[LOC_State].[CreationDate]
		,[dbo].[LOC_State].[ModificationDate]
		,[dbo].[LOC_State].[UserID]
FROM 
		[dbo].[LOC_State]
WHERE 
		[dbo].[LOC_State].[StateID] = @StateID
AND		[dbo].[LOC_State].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectComboBox]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_State_SelectComboBox]

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectComboBox]
		@UserID		int
AS
SELECT 
		[dbo].[LOC_State].[StateID]
		,[dbo].[LOC_State].[StateName]
FROM
		[dbo].[LOC_State]
WHERE
		[dbo].[LOC_State].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectComboBoxByCountryID]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_State_SelectComboBoxByCountryID] @CountryID=1

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectComboBoxByCountryID]
		@CountryID			int
		,@UserID			int
AS
SELECT 
		[dbo].[LOC_State].[StateID]
		,[dbo].[LOC_State].[StateName]
FROM
		[dbo].[LOC_State]
WHERE	
		[dbo].[LOC_State].[CountryID] = @CountryID
AND		[dbo].[LOC_State].[UserID]	  = @UserID
ORDER BY	
		[dbo].[LOC_State].[StateName]
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectPage]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --[dbo].[PR_LOC_State_SelectPage] @CountryName='India', @StateName=''

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectPage]
		@CountryName		nvarchar(50)
		,@StateName			nvarchar(50)
		,@UserID			int
AS
SELECT 
		[dbo].[LOC_State].[StateID]
		,[dbo].[LOC_Country].[CountryName]
		,[dbo].[LOC_State].[StateName]
		,[dbo].[LOC_State].[CreationDate]
		,[dbo].[LOC_State].[ModificationDate]
		,[dbo].[LOC_State].[UserID]
FROM
		[dbo].[LOC_State]
INNER JOIN 
		[dbo].[LOC_Country]
ON	
		[dbo].[LOC_State].[CountryID] = [dbo].[LOC_Country].[CountryID]
WHERE
		[dbo].[LOC_State].[UserID] = @UserID
AND		( @CountryName is null or [dbo].[LOC_Country].[CountryName] like '%'+@CountryName+'%')
AND		( @StateName is null or [dbo].[LOC_State].[StateName] like '%'+@StateName+'%')
ORDER BY
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_State].[StateName]
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_UpdateByPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [dbo].[PR_LOC_State_UpdateByPK] @StateID=1, @StateName='GUJARAT', @CountryID=1, @ModificationDate=NULL

CREATE PROCEDURE [dbo].[PR_LOC_State_UpdateByPK]
			@StateID			int
			,@StateName			nvarchar(50)
			,@CountryID			int
			,@ModificationDate	datetime
			,@UserID			int
AS
BEGIN
	UPDATE [dbo].[LOC_State]
	SET
			[dbo].[LOC_State].[StateName] = @StateName
			,[dbo].[LOC_State].[CountryID] = @CountryID
			,[dbo].[LOC_State].[ModificationDate] = ISNULL(@ModificationDate, GETDATE())
	WHERE 
			[dbo].[LOC_State].[StateID] = @StateID
		AND [dbo].[LOC_State].[UserID]  = @UserID 
END
GO
/****** Object:  StoredProcedure [dbo].[PR_SEC_User_Insert]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_SEC_User_Insert]
		@UserName		nvarchar(50)
		,@Password		nvarchar(50)
		,@FirstName		nvarchar(50)
		,@LastName		nvarchar(50)
		,@EmailAddress  nvarchar(50)
		,@PhotoPath		nvarchar(max)
		,@Created		datetime
		,@Modified		datetime
AS
INSERT INTO [dbo].[SEC_User]
(
	[dbo].[SEC_User].[UserName]
	,[dbo].[SEC_User].[Password]
	,[dbo].[SEC_User].[FirstName]
	,[dbo].[SEC_User].[LastName]
	,[dbo].[SEC_User].[EmailAddress]
	,[dbo].[SEC_User].[PhotoPath]
	,[dbo].[SEC_User].[Created]
	,[dbo].[SEC_User].[Modified]
)
VALUES
(
	@UserName
	,@Password
	,ISNULL('', @FirstName)
	,ISNULL('', @LastName)
	,ISNULL('', @EmailAddress)
	,ISNULL('', @PhotoPath)
	,ISNULL(GETDATE(), @Created)
	,ISNULL(GETDATE(), @Modified)
)
GO
/****** Object:  StoredProcedure [dbo].[PR_SEC_User_SelectAll]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_SEC_User_SelectAll]
AS
SELECT 
	[dbo].[SEC_User].[UserID]
	,[dbo].[SEC_User].[UserName]
	,[dbo].[SEC_User].[Password]
	,[dbo].[SEC_User].[FirstName]
	,[dbo].[SEC_User].[LastName]
	,[dbo].[SEC_User].[EmailAddress]
	,[dbo].[SEC_User].[PhotoPath]
	,[dbo].[SEC_User].[Created]
	,[dbo].[SEC_User].[Modified]
 FROM 
	[dbo].[SEC_User]
GO
/****** Object:  StoredProcedure [dbo].[PR_SEC_User_SelectByUserNamePassword]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_SEC_User_SelectByUserNamePassword]
	@UserName nvarchar(50)
	,@Password nvarchar(50)
AS 
SELECT
		[dbo].[SEC_User].[UserID]
		,[dbo].[SEC_User].[UserName]
		,[dbo].[SEC_User].[Password]
		,[dbo].[SEC_User].[FirstName]
		,[dbo].[SEC_User].[LastName]
		,[dbo].[SEC_User].[EmailAddress]
		,[dbo].[SEC_User].[PhotoPath]
		,[dbo].[SEC_User].[Created]
		,[dbo].[SEC_User].[Modified]
FROM	
		[dbo].[SEC_User]
WHERE	
		[dbo].[SEC_User].[UserName] = @UserName
AND		[dbo].[SEC_User].[Password] = @Password
GO
/****** Object:  StoredProcedure [dbo].[PR_SEC_User_SelectPK]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_SEC_User_SelectPK]

	@UserID		int
AS 

SELECT
		[dbo].[SEC_User].[UserID]
		,[dbo].[SEC_User].[UserName]
		,[dbo].[SEC_User].[Password]
		,[dbo].[SEC_User].[FirstName]
		,[dbo].[SEC_User].[LastName]
		,[dbo].[SEC_User].[EmailAddress]
		,[dbo].[SEC_User].[PhotoPath]
		,[dbo].[SEC_User].[Created]
		,[dbo].[SEC_User].[Modified]
FROM	
		[dbo].[SEC_User]
WHERE	
		[dbo].[SEC_User].[UserID] = @UserID
GO
/****** Object:  StoredProcedure [dbo].[PR_SEC_User_Update]    Script Date: 3/6/2023 11:58:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_SEC_User_Update]

	@UserID				int
	,@UserName			nvarchar(50)
	,@Password			nvarchar(50)
	,@FirstName			nvarchar(50)
	,@LastName			nvarchar(50)
	,@EmailAddress		nvarchar(50)
	,@PhotoPath			nvarchar(500)
	,@Modified			datetime

AS 

UPDATE [dbo].[SEC_User]

SET	
		[UserName] = @UserName
		,[Password] = @Password
		,[FirstName] = @FirstName
		,[LastName] = @LastName
		,[EmailAddress] = @EmailAddress
		,[PhotoPath] = @PhotoPath
		,[Modified] = ISNULL(@Modified,Getdate())

WHERE	[UserID] = @UserID
GO
USE [master]
GO
ALTER DATABASE [AddressBook_MultiUser] SET  READ_WRITE 
GO
