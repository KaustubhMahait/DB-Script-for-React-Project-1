
-- 1.

-- CREATE DATABASE Work365;
-- GO
   
-- USE Work365;
-- GO

-- 2



--CREATE TABLE tbl_RPR_Roles
--(
--    RoleId          INT IDENTITY(1,1) PRIMARY KEY,
--    RoleName        NVARCHAR(50) NOT NULL,
--    Description     NVARCHAR(200) NULL,
--    IsActive        BIT NOT NULL DEFAULT(1),
--    CreatedOn       DATETIME NOT NULL DEFAULT(GETDATE())
--);
--GO

--INSERT INTO tbl_RPR_Roles
--(
--    RoleName,
--    Description
--)
--VALUES
--('Admin','System Administrator'),
--('Manager','Department Manager'),
--('Employee','Normal Employee');
--GO

-- select * from tbl_RPR_Roles


-- 2

--CREATE TABLE tbl_RPR_Users
--(
--    UserId              INT IDENTITY(1,1) PRIMARY KEY,

--    UserName            NVARCHAR(50) NOT NULL UNIQUE,

--    PasswordHash        NVARCHAR(500) NOT NULL,

--    FirstName           NVARCHAR(100) NOT NULL,

--    LastName            NVARCHAR(100) NULL,

--    Email               NVARCHAR(150) NOT NULL UNIQUE,

--    MobileNumber        NVARCHAR(15) NULL,

--    RoleId              INT NOT NULL,

--    IsActive            BIT NOT NULL DEFAULT(1),

--    CreatedOn           DATETIME NOT NULL DEFAULT(GETDATE()),

--    ModifiedOn          DATETIME NULL
--);
--GO

--- 3 

--INSERT INTO tbl_RPR_Users
--(
--    UserName,
--    PasswordHash,
--    FirstName,
--    LastName,
--    Email,
--    MobileNumber,
--    RoleId
--)
--VALUES
--(
--    'admin',
--    'Pass@123',
--    'Kaustubh',
--    'Bhosale',
--    'admin@test.com',
--    '9876543210',
--    1
--);
--GO



-- 4 
--CREATE TABLE tbl_RPR_RefreshTokens
--(
--    RefreshTokenId      INT IDENTITY(1,1) PRIMARY KEY,

--    UserId              INT NOT NULL,

--    Token               NVARCHAR(500) NOT NULL,

--    ExpiryDate          DATETIME NOT NULL,

--    CreatedOn           DATETIME NOT NULL DEFAULT(GETDATE()),

--    RevokedOn           DATETIME NULL,

--    IsRevoked           BIT NOT NULL DEFAULT(0),

--    CreatedByIP         NVARCHAR(100) NULL,

--    RevokedByIP         NVARCHAR(100) NULL,

--    ReplacedByToken     NVARCHAR(500) NULL,

--    CONSTRAINT FK_RefreshTokens_Users
--        FOREIGN KEY(UserId)
--        REFERENCES tbl_RPR_Users(UserId)
--);
--GO


select * from tbl_RPR_Users

select * from tbl_RPR_RefreshTokens

--CREATE TABLE tbl_RPR_Employees
--(
--    EmployeeId      INT IDENTITY(1,1) PRIMARY KEY,

--    EmployeeName    NVARCHAR(100) NOT NULL,

--    Email           NVARCHAR(150) NOT NULL,

--    Department      NVARCHAR(100) NOT NULL,

--    Salary          DECIMAL(18,2) NOT NULL,

--    IsActive        BIT NOT NULL DEFAULT(1),

--    CreatedOn       DATETIME NOT NULL DEFAULT(GETDATE())
--);

--INSERT INTO tbl_RPR_Employees
--(EmployeeName, Email, Department, Salary, IsActive)

--VALUES

--('Rahul Sharma','rahul@test.com','IT',50000,1),

--('Amit Patil','amit@test.com','HR',42000,1),

--('Sneha Joshi','sneha@test.com','Finance',65000,1),

--('Priya Kulkarni','priya@test.com','Sales',47000,1),

--('Rohit Deshmukh','rohit@test.com','IT',70000,1);

select * from tbl_RPR_Users
select * from tbl_RPR_Employees



--GO
--/****** Object:  Table [dbo].[tbl_PreOptionsMaster]    Script Date: 9/28/2026 11:27:21 AM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[tbl_PreOptionsMaster](
--	[OptionID] [int] IDENTITY(1,1) NOT NULL,
--	[QuestionID] [int] NULL,
--	[OptionNo] [int] NULL,
--	[OptionName] [nvarchar](2000) NULL,
--	[IsSubOption] [int] NULL,
--	[SubMenuFlag] [int] NULL,
--	[ToolTip] [nvarchar](1000) NULL,
--	[CreatedOn] [datetime] NULL,
--)
--GO
--/****** Object:  Table [dbo].[tbl_PreQuestionsMaster]    Script Date: 9/28/2026 11:27:21 AM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[tbl_PreQuestionsMaster](
--	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
--	[QuestionName] [nvarchar](max) NULL,
--	[Question] [nvarchar](max) NULL,
--	[IsActive] [int] NULL,
--	[CreateOn] [datetime] NULL,
--	[PageNo] [int] NULL
--)
--GO
--SET IDENTITY_INSERT [dbo].[tbl_PreOptionsMaster] ON 
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (1, 1, 1, N'होय, सर्व सेवा ऑनलाईन उपलब्ध करून देण्यात आलेल्या आहे', 1, 1, NULL, CAST(N'2025-10-03T19:19:11.207' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (2, 1, 2, N'काही सेवा ऑनलाईन उपलब्ध करून देण्यात आल्या आहेत', 1, 1, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (3, 1, 3, N'नियोजनाधीन आहे परंतु अंमलबजावणी झालेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (4, 1, 4, N'उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (5, 2, 1, N'होय, उपलब्ध व कार्यरत देखील आहे', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (6, 2, 2, N'होय, उपलब्ध आहे परंतु कार्यरत नाही', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (7, 2, 3, N'उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (8, 3, 1, N'होय, तक्रार पेटी व ऑनलाईन पोर्टल दोन्ही उपलब्ध व कार्यरत आहेत', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (9, 3, 2, N'फक्त तक्रार पेटी उपलब्ध आहे', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (10, 3, 3, N'फक्त तक्रार ऑनलाईन पोर्टल उपलब्ध आहे', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (11, 3, 4, N'दोन्ही उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (12, 4, 1, N'होय, वेबसाईट नियमित अद्ययावत आहे', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (13, 4, 2, N'वेबसाईट आहे परंतु नियमित अद्ययावत केलेली नाही', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (14, 4, 3, N'वेबसाईट आहे परंतु कार्यरत नाही', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (15, 4, 4, N'वेबसाईट उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (16, 5, 1, N'होय, पुरेशा प्रमाणात बसविण्यात आलेले व कार्यरत आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (17, 5, 2, N'बसविलेले आहेत पण पूर्णपणे कार्यरत नाहीत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (18, 5, 3, N'बसविलेले आहेत परंतु अत्यंत मर्यादित स्वरूपात', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (19, 5, 4, N'बसविलेले नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.223' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (20, 6, 1, N'होय, सर्व सभा नियमितपणे घेण्यात येतात व कार्यवृत्त अद्ययावत ठेवले जाते', 1, 2, N'जर आपल्याकडे एका सभेच्या एका पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल merge करून उपलोड कराव्यात', CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (21, 6, 2, N'सभा घेण्यात येतात परंतु कार्यवृत्त अद्ययावत ठेवले जात नाही', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (22, 6, 3, N'सभा अनियमितपणे घेण्यात येतात', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (23, 6, 4, N'सभा घेण्यात येत नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (24, 7, 1, N'होय, सर्व ग्रामस्थ/नागरिकांनी एक किंवा अधिक ॲप्स डाऊनलोड केले आहेत', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (25, 7, 2, N'होय, ॲप्सबाबत प्रचार केला आहे परंतु डाऊनलोड मर्यादित प्रमाणात झाले आहेत', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (26, 7, 3, N'प्रचार व प्रसिद्धी केली परंतु डाऊनलोड झालेले नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (27, 7, 4, N'प्रचार व प्रसिद्धी केलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (28, 8, 1, N'होय, सर्व पात्र लाभार्थ्यांना आयुष्मान भारत कार्ड वितरित केलेले आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (29, 8, 2, N'होय, प्रक्रिया सुरू आहे परंतु काही लाभार्थ्यांना अद्याप कार्ड मिळालेले नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (30, 8, 3, N'प्रयत्न केले परंतु वितरण झालेले नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (31, 8, 4, N'या योजनेअंतर्गत कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (32, 9, 1, N'होय, कार्यक्षेत्रातील १००% पात्र दिव्यांग लाभार्थ्यांना ओळखपत्र वितरित करण्यात आलेले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (33, 9, 2, N'होय, परंतु काही दिव्यांग लाभार्थ्यांना अद्याप ओळखपत्र मिळालेले नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (34, 9, 3, N'प्रक्रिया सुरू आहे परंतु वितरण पूर्ण झालेले नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (35, 9, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (36, 10, 1, N'होय, सर्व करांची थकबाकी वसूल करण्यात आलेली आहे.', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (37, 10, 2, N'होय,वसुली अंशतः करण्यात आलेली आहे.', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (38, 10, 3, N'होय, वसुली करण्यात आलेली आहे, परंतु काही प्रकरणे प्रलंबित आहेत.', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (39, 10, 4, N'वसुली प्रलंबित आहे / पूर्ण करण्यात आलेली नाही.', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (40, 10, 5, N'माहिती उपलब्ध नाही.', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.240' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (41, 11, 1, N'होय,सर्व घरांना शाश्वत नळजोडणीद्वारे शुद्ध पिण्याचे पाणी उपलब्ध केले', 1, 4, N'फोटो (जास्तीत जास्त २० फोटो) - एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत', CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (42, 11, 2, N'होय, बहुसंख्य घरांना उपलब्ध आहे परंतु काही घरांना अद्याप उपलब्ध नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (43, 11, 3, N'प्रक्रिया सुरू आहे परंतु बहुसंख्य घरांना अद्याप सेवा उपलब्ध नाही.', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (44, 11, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (45, 12, 1, N'होय, सर्व उपाययोजना पूर्णपणे राबविण्यात आल्या आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (46, 12, 2, N'होय, काही उपाययोजना राबविण्यात आल्या आहेत परंतु सर्व नाहीत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (47, 12, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (48, 12, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (49, 13, 1, N'होय, सर्व शासकीय व निमशासकीय संस्थांमध्ये युनिट्स स्थापित करून कार्यरत आहेत', 1, 5, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (50, 13, 2, N'होय, काही संस्थांमध्ये युनिट्स स्थापित केलेले आहेत परंतु सर्वत्र नाहीत', 1, 5, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (51, 13, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (52, 13, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (53, 13, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.253' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (54, 14, 1, N'होय, सर्व संबंधित क्षेत्रात सूक्ष्म सिंचनाची अंमलबजावणी करून क्षेत्र वाढविण्यात आले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (55, 14, 2, N'होय, काही ठिकाणी सूक्ष्म सिंचन राबविण्यात आले आहे परंतु सर्वत्र नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (56, 14, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (57, 14, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (58, 14, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (59, 15, 1, N'होय, ग्रामपंचायत इमारतीतील १००% वीज सौरऊर्जेद्वारे पुरविली जाते', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (60, 15, 2, N'होय, सौरऊर्जा युनिट बसविले आहे परंतु अंशतः वीजपुरवठा सौरऊर्जेद्वारे केला जातो', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (61, 15, 3, N'सौरऊर्जा युनिट बसविण्याचे नियोजन केले आहे परंतु अंमलबजावणी झालेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (62, 15, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (63, 15, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (64, 16, 1, N'होय, सर्व पात्र शेतकऱ्यांना सौरऊर्जा पंप उपलब्ध करून देण्यात आलेले आहेत', 1, 5, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (65, 16, 2, N'होय, काही शेतकऱ्यांना सौरऊर्जा पंप उपलब्ध करून देण्यात आलेले आहेत', 1, 5, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (66, 16, 3, N'प्रकल्पाचे नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (67, 16, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (68, 16, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (69, 17, 1, N'होय, प्लास्टिक बंदी प्रभावीपणे अंमलात असून दंडात्मक कारवाई नियमितपणे केली जाते', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (70, 17, 2, N'होय, प्लास्टिक बंदी अंमलात आहे परंतु दंडात्मक कारवाई मर्यादित स्वरूपात केली जाते', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (71, 17, 3, N'प्लास्टिक बंदीची कार्यवाही सुरू आहे परंतु प्रभावी अंमलबजावणी नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (72, 17, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (73, 17, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.270' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (74, 18, 1, N'होय, घनकचरा व्यवस्थापन पूर्णपणे शास्त्रशुद्ध पद्धतीने करण्यात येत आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (75, 18, 2, N'होय, काही प्रमाणात व्यवस्थापन करण्यात येते परंतु पूर्णपणे नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (76, 18, 3, N'प्रक्रिया सुरू आहे परंतु प्रभावी अंमलबजावणी नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (77, 18, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (78, 18, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (79, 19, 1, N'होय, सांडपाणी व्यवस्थापन शास्त्रशुद्ध पद्धतीने पूर्णपणे करण्यात आले आहे', 1, 2, N'अपलोड करा: सांडपाणी व्यवस्थापनाचे फोटो (जास्तीत जास्त २० फोटो)', CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (80, 19, 2, N'होय, काही प्रमाणात उपाययोजना करण्यात आल्या आहेत परंतु संपूर्ण अंमलबजावणी नाही', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (81, 19, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (82, 19, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (83, 19, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (84, 20, 1, N'सर्व सेवा उपलब्ध आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (85, 20, 2, N'काही सेवा उपलब्ध आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (89, 21, 1, N'होय, सर्व शाळांमध्ये मुला व मुलींसाठी स्वतंत्र स्वच्छता गृह उपलब्ध आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (90, 21, 2, N'होय, काही शाळांमध्येच स्वतंत्र स्वच्छता गृह उपलब्ध आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (91, 21, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (92, 21, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (93, 21, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.287' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (94, 22, 1, N'सर्व सेवा उपलब्ध आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (95, 22, 2, N'काही सेवा उपलब्ध आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (99, 24, 1, N'सर्व सेवा उपलब्ध आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (100, 24, 2, N'काही सेवा उपलब्ध आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (104, 23, 1, N'होय, सर्व अंगणवाडी केंद्रांमध्ये बालस्नेही स्वच्छता गृह व पिण्याचे पाणी दोन्ही सुविधा उपलब्ध आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (105, 23, 2, N'होय, काही अंगणवाडी केंद्रांमध्ये सुविधा उपलब्ध आहेत परंतु सर्वत्र नाहीत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (106, 23, 3, N'सुविधा उपलब्ध आहेत परंतु अपूर्ण स्वरूपात कार्यरत आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (107, 23, 4, N'नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (108, 23, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (109, 25, 1, N'होय, पशुवैद्यकीय उपचार केंद्र उपलब्ध आहे', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (110, 25, 2, N'उपचार केंद्र नाही, परंतु खोडा व उपचार सेवा सुविधा उपलब्ध आहेत', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (111, 25, 3, N'उपचार केंद्र नाही आणि खोडा / इतर सुविधा देखील उपलब्ध नाहीत', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.300' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (112, 25, 4, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (113, 25, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (114, 26, 1, N'होय, सर्व सुविधा उपलब्ध करून देण्यात आलेल्या आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (115, 26, 2, N'होय, काही सुविधा उपलब्ध आहेत परंतु सर्व नाहीत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (116, 26, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (117, 26, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (118, 26, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (119, 27, 1, N'होय, व्यायामशाळा / खुली व्यायामशाळा सुविधा पूर्णपणे उपलब्ध आहे', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (120, 27, 2, N'होय, सुविधा उपलब्ध आहे परंतु अपूर्ण / मर्यादित स्वरूपात', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (121, 27, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (122, 27, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (123, 27, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (124, 28, 1, N'होय, सर्व धार्मिक स्थळांचे सुशोभीकरण पूर्णपणे करण्यात आले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (125, 28, 2, N'होय, काही धार्मिक स्थळांचे सुशोभीकरण करण्यात आले आहे परंतु सर्व नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (126, 28, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (127, 28, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.317' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (128, 28, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (129, 29, 1, N'होय, सर्व अपूर्ण व नवीन मंजूर कामे पूर्ण करण्यात आलेली आहेत', 1, 8, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (130, 29, 2, N'होय, काही अपूर्ण व नवीन मंजूर कामे पूर्ण झाली आहेत परंतु सर्व नाहीत', 1, 8, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (131, 29, 3, N'कामे मंजूर झाली आहेत परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (132, 29, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (133, 29, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (134, 30, 1, N'होय, मंजूर घरकुलांच्या 100% कामे अभिसरणाद्वारे पूर्ण करण्यात आलेली आहेत', 1, 5, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (135, 30, 2, N'होय, काही घरकुलांची कामे पूर्ण झाली आहेत परंतु सर्व नाहीत', 1, 5, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (136, 30, 3, N'कामे मंजूर झाली आहेत परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (137, 30, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (138, 30, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (139, 31, 1, N'होय, महिला सहभाग मतदार लोकसंख्येच्या प्रमाणात आहे', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (140, 31, 2, N'होय, महिला सहभाग आहे परंतु आवश्यक प्रमाणात नाही', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (141, 31, 3, N'महिला सहभाग अत्यल्प आहे', 1, 5, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (142, 31, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (143, 31, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (144, 32, 1, N'होय, सर्व पात्र बचत गटांना कर्ज वितरण झाले आहे', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (145, 32, 2, N'होय, काही पात्र बचत गटांना कर्ज वितरण झाले आहे परंतु सर्वांना नाही', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (146, 32, 3, N'कर्ज वितरण प्रक्रियेचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (147, 32, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.333' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (148, 32, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (149, 33, 1, N'होय, सर्व बचत गटातील महिलांसाठी उपक्रम राबवून त्या ‘लखपती दिदी’ झालेल्या आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (150, 33, 2, N'होय, काही महिलांसाठी उपक्रम राबविले गेले आहेत परंतु सर्वांसाठी नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (151, 33, 3, N'उपक्रमाचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (152, 33, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (153, 33, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (154, 34, 1, N'होय, सर्व पात्र उमेदवारांना कौशल्य प्रशिक्षण देण्यात आले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (155, 34, 2, N'होय, काही पात्र उमेदवारांना कौशल्य प्रशिक्षण देण्यात आले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (156, 34, 3, N'कौशल्य प्रशिक्षणाचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (157, 34, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (158, 34, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (159, 35, 1, N'होय,सर्व पात्र उमेदवारांना बँकेमार्फत कर्ज वितरण झाले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (160, 35, 2, N'होय, काही पात्र उमेदवारांना कर्ज वितरण झाले आहे परंतु सर्वांना नाही', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (161, 35, 3, N'कर्ज वितरण प्रक्रियेचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (162, 35, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (163, 35, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (164, 36, 1, N'होय, बहुसंख्य शेतकरी गटशेतीत सहभागी झाले आहेत', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (165, 36, 2, N'होय, काही शेतकरी गटशेतीत सहभागी झाले आहेत परंतु सर्व नाहीत', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (166, 36, 3, N'गटशेतीबाबत नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (167, 36, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.350' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (168, 36, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (169, 37, 1, N'होय, FPO स्थापन करून गटाद्वारे व्यवसाय नियमितपणे केला जात आहे', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (170, 37, 2, N'होय, FPO स्थापन करण्यात आले आहे परंतु व्यवसाय मर्यादित स्वरूपात आहे', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (171, 37, 3, N'FPO स्थापन करण्याचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (172, 37, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (173, 37, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (174, 38, 1, N'होय, सर्व महिलांची तपासणी करून ॲनिमिया मुक्त गाव संकल्पना प्रभावीपणे राबविण्यात आलेली आहे', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (175, 38, 2, N'होय, काही महिलांची तपासणी करण्यात आलेली आहे परंतु संकल्पना पूर्णपणे राबविण्यात आलेली नाही', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (176, 38, 3, N'तपासणी व संकल्पना राबविण्याचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (177, 38, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (178, 38, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (179, 39, 1, N'होय, आठवड्यातून नियमितपणे श्रमदान उपक्रम राबवून स्वच्छता राखली जाते', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (180, 39, 2, N'होय, श्रमदान उपक्रम राबविला जातो परंतु अनियमित स्वरूपात', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (181, 39, 3, N'श्रमदान उपक्रम राबविण्याचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (182, 39, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (183, 39, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (184, 40, 1, N'होय, सर्व मुख्य रस्त्यांची नवीन कामे व दुरुस्तीची कामे पूर्ण करण्यात आलेली आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (185, 40, 2, N'होय, काही मुख्य रस्त्यांची कामे पूर्ण झाली आहेत परंतु सर्व नाहीत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (186, 40, 3, N'नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (187, 40, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (188, 40, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.363' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (189, 41, 1, N'होय, सर्व पाणंद रस्त्यांची दुरुस्ती व कामे प्राधान्याने पूर्ण करण्यात आलेली आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (190, 41, 2, N'होय, काही पाणंद रस्त्यांची कामे व दुरुस्ती पूर्ण झाली आहेत परंतु सर्व नाहीत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (191, 41, 3, N'नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (192, 41, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (193, 41, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (194, 42, 1, N'होय, वृक्ष लागवड व वृक्ष संवर्धन प्रभावीपणे करण्यात आले आहे', 1, 4, N'उपलोड फोटो (जास्तीत जास्त २० फोटो', CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (195, 42, 2, N'होय, वृक्ष लागवड करण्यात आली आहे परंतु संवर्धन कार्य अपूर्ण आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (196, 42, 3, N'होय, वृक्ष लागवड सुरू आहे परंतु संवर्धनाबाबत कोणतीही कार्यवाही नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (197, 42, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (198, 42, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (200, 43, 2, N'होय, देयके नियमित भरली जातात परंतु काही प्रमाणात थकबाकी आहे', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (201, 43, 3, N'देयके अनियमित भरली जातात व थकबाकी जास्त आहे', 1, 3, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (202, 43, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (203, 43, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (204, 44, 1, N'होय, बैठक खोली व प्रतीक्षालय दोन्ही सुविधा उपलब्ध आहेत.', 1, 2, N'उपलोड फोटो (जास्तीत जास्त २० फोटो)', CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (205, 44, 2, N'होय, केवळ बैठक खोली उपलब्ध आहे.', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (206, 44, 3, N'होय, केवळ प्रतीक्षालय उपलब्ध आहे', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (207, 44, 4, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (208, 44, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (209, 45, 1, N'होय, सरपंच, उपसरपंच व ग्रामपंचायत अधिकारी यांच्यासाठी स्वतंत्र बैठक व्यवस्था उपलब्ध आहे', 1, 2, N'उपलोड फोटो (जास्तीत जास्त २० फोटो)', CAST(N'2025-10-03T19:19:11.380' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (210, 45, 2, N'होय, काही पदाधिकारी यांच्यासाठी स्वतंत्र बैठक व्यवस्था उपलब्ध आहे परंतु सर्वांसाठी नाही', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (211, 45, 3, N'नियोजन केले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (212, 45, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (213, 45, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (214, 46, 1, N'होय, अभियान प्रभावीपणे राबवून त्याचे परिणाम दिसून येत आहेत', 1, 2, N'उपलोड फोटो (जास्तीत जास्त २० फोटो)', CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (215, 46, 2, N'होय, अभियान राबविण्यात आले आहे परंतु मर्यादित परिणामकारकता आहे', 1, 2, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (216, 46, 3, N'अभियान राबविण्याचे नियोजन झाले आहे परंतु अंमलबजावणी सुरू नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (217, 46, 4, N'कोणतीही कार्यवाही करण्यात आलेली नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (218, 46, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (219, 47, 1, N'होय – सर्व घरकुले पूर्ण केली आहेत', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (220, 47, 2, N'होय – काही घरकुले पूर्ण केली आहेत', 1, 7, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (221, 47, 3, N'नाही – एकही घरकुल पूर्ण केलेले नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (222, 47, 4, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (223, 48, 1, N'होय, सर्व कामे पूर्ण झाली आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (224, 48, 2, N'होय, काही कामे पूर्ण झाली आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (225, 48, 3, N'नाही, कामे सुरु आहेत पण पूर्ण नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (226, 48, 4, N'नाही, अजिबात पूर्ण झालेली नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (227, 48, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (228, 49, 1, N'होय, सर्व कामे पूर्ण झाली आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (229, 49, 2, N'होय, काही कामे पूर्ण झाली आहेत', 1, 6, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (230, 49, 3, N'नाही, कामे सुरु आहेत पण पूर्ण नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (231, 49, 4, N'नाही, अजिबात पूर्ण झालेली नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (232, 49, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.397' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (233, 50, 1, N'होय, सर्व कामे पूर्ण झाली आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (234, 50, 2, N'होय, काही कामे पूर्ण झाली आहेत', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (235, 50, 3, N'नाही, कामे सुरु आहेत पण पूर्ण नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (236, 50, 4, N'नाही, अजिबात पूर्ण झालेली नाहीत', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (237, 50, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (238, 51, 1, N'होय, पूर्णपणे साध्य झाले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (239, 51, 2, N'होय, आंशिक साध्य झाले आहे', 1, 4, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (240, 51, 3, N'नाही, अजून प्रगती सुरू आहे', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (241, 51, 4, N'नाही, अजिबात साध्य झाले नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (242, 51, 5, N'माहिती उपलब्ध नाही', 0, 0, NULL, CAST(N'2025-10-03T19:19:11.410' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (243, 20, 3, N'कुठल्याही सेवा उपलब्ध नाहीत', 0, 0, NULL, CAST(N'2025-11-17T11:42:21.560' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (244, 20, 4, N'शाळा नाहीत', 0, 0, NULL, CAST(N'2025-11-17T11:42:22.940' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (247, 22, 3, N'कुठल्याही सेवा उपलब्ध नाहीत', 0, 0, NULL, CAST(N'2025-11-17T11:51:39.250' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (248, 22, 4, N'अंगणवाडी नाहीत', 0, 0, NULL, CAST(N'2025-11-17T11:51:40.660' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (249, 24, 3, N'कुठल्याही सेवा उपलब्ध नाहीत', 0, 0, NULL, CAST(N'2025-11-17T11:52:24.337' AS DateTime))
--GO
--INSERT [dbo].[tbl_PreOptionsMaster] ([OptionID], [QuestionID], [OptionNo], [OptionName], [IsSubOption], [SubMenuFlag], [ToolTip], [CreatedOn]) VALUES (250, 24, 4, N'पशुवैद्यकीय उपचार केंद्र नाही.', 0, 0, NULL, CAST(N'2025-11-17T11:52:25.717' AS DateTime))
--GO
--SET IDENTITY_INSERT [dbo].[tbl_PreOptionsMaster] OFF
--GO
--SET IDENTITY_INSERT [dbo].[tbl_PreQuestionsMaster] ON 
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (1, N'आरटीएस व ऑनलाईन सेवा उपलब्धता', N'आपल्या ग्रामपंचायतीमार्फत लोकसेवा हक्क अधिनियम २०१५ अंतर्गत सर्व मूलभूत नागरिक सेवा (७ प्रकारचे दाखले, जन्म व मृत्यू दाखले तसेच अन्य ऑनलाईन सेवा) उपलब्ध करून देण्यात आलेल्या आहेत का?', 0, CAST(N'2025-10-03T19:19:11.207' AS DateTime), NULL)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (2, N'‘आपले सरकार सेवा केंद्र’ / नागरी सुविधा केंद्र (CSC)', N'आपल्या ग्रामपंचायतीमध्ये ‘आपले सरकार सेवा केंद्र’ किंवा नागरी सेवा सुविधा केंद्र (CSC) उपलब्ध आहे का?', 1, CAST(N'2025-10-03T19:19:11.223' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (3, N'तक्रार निवारण व्यवस्था', N'आपल्या ग्रामपंचायतीमध्ये नागरिकांच्या तक्रारी नोंदविण्यासाठी तक्रार पेटी किंवा तक्रार निवारण ऑनलाईन पोर्टल उपलब्ध आहे का?', 1, CAST(N'2025-10-03T19:19:11.223' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (4, N'आपल्या ग्रामपंचायतीची स्वतःची वेबसाईट अद्ययावत स्वरूपात उपलब्ध आहे का?', N'आपल्या ग्रामपंचायतीची स्वतःची वेबसाईट स्वरूपात उपलब्ध आहे का?', 1, CAST(N'2025-10-03T19:19:11.223' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (5, N'सीसीटीव्ही बसविणे', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात सुरक्षा व देखरेखीसाठी CCTV बसविण्यात आलेले आहेत का?', 1, CAST(N'2025-10-03T19:19:11.223' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (6, N'बैठका व कार्यवृत्त नोंद', N'आपल्या ग्रामपंचायतीमध्ये नियमांनुसार मासिक सभा, महिला सभा, वॉर्डसभा व ग्रामसभा नियमितपणे घेऊन त्यांची नोंद व कार्यवृत्त अद्ययावत ठेवली जातात का?', 0, CAST(N'2025-10-03T19:19:11.240' AS DateTime), NULL)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (7, N'मोबाईल ॲप डाऊनलोड व वापर', N'आपल्या ग्रामपंचायतीमार्फत पारदर्शकतेसाठी शासनाच्या वतीने प्रसारित करण्यात आलेल्या मोबाईल ॲप्सपैकी (अ) मेरी पंचायत, (ब) पंचायत निर्णय व (क) ग्रामसंवाद या ॲप्सबाबत प्रचार व प्रसिद्धी करून किमान एक तरी ॲप ग्रामस्थ/नागरिकांनी डाऊनलोड केले आहे का?', 1, CAST(N'2025-10-03T19:19:11.240' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (8, N'आयुष्मान भारत कार्ड वितरण', N'आपल्या ग्रामपंचायतीने केंद्र व राज्य शासनाच्या आयुष्मान भारत कार्ड या योजनेअंतर्गत सर्व पात्र लाभार्थ्यांची नाव नोंदणी करून कार्ड वितरित करण्यासाठी पुढाकार घेतला आहे का?', 1, CAST(N'2025-10-03T19:19:11.240' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (9, N'दिव्यांग ओळखपत्र वितरण', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व पात्र दिव्यांग लाभार्थ्यांना ओळखपत्र मिळवून देण्यासाठी कार्यवाही करण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.240' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (10, N'कर व पाणीपट्टी वसुली', N'आपल्या ग्रामपंचायतीमार्फत मोहीम कालावधीत घरपट्टी, पाणीपट्टी व इतर करांची थकबाकी वसूल करण्यासाठी कार्यवाही करण्यात आली आहे का तसेच ऑगस्ट २०२५ पर्यंत किती वसुल करण्यात आली आहे?', 1, CAST(N'2025-10-03T19:19:11.240' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (11, N'शुद्ध पिण्याच्या पाण्याचा पुरवठा (FHTC)', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व घरांना नळाद्वारे शाश्वत शुद्ध पिण्याच्या पाण्याचा पुरवठा (FHTC – Functional Household Tap Connection) करण्यात आलेला आहे का?', 1, CAST(N'2025-10-03T19:19:11.240' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (12, N'पिण्याच्या पाण्याचे स्त्रोत बळकटीकरण', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात पिण्याच्या पाण्याच्या स्त्रोतांचे बळकटीकरण करण्यासाठी तलाव, नदी, नाले पुनर्जिवित करणे व संवर्धन करणे, जलस्रोत संवर्धनासाठी वनराई बंधारे तयार करणे, सिमेंट बंधारे बांधणे तसेच केटी वेअरवर गेट बसविणे अश्या उपाययोजना राबविण्यात आल्या आहेत का?', 1, CAST(N'2025-10-03T19:19:11.253' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (13, N'रेन वॉटर हार्वेस्टिंग युनिट', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व शासकीय व निमशासकीय संस्थांमध्ये रेन वॉटर हार्वेस्टिंग युनिट स्थापित करण्यात आलेले आहे का?', 1, CAST(N'2025-10-03T19:19:11.253' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (14, N'सूक्ष्म सिंचनाखालील क्षेत्र वाढविणे', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील शासकीय / निमशासकीय कार्यालयाच्या क्षेत्रात झाडे, बगीचा व फळबाग याकरिता सूक्ष्म सिंचन पद्धतीचा वापर करून क्षेत्र वाढविण्यात आले आहे का?', 1, CAST(N'2025-10-03T19:19:11.270' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (15, N'सौरऊर्जा वापर – ग्रामपंचायत इमारत', N'आपल्या ग्रामपंचायतीच्या इमारतीमध्ये सौरऊर्जा युनिट बसवून १००% वीजपुरवठा सौरऊर्जेवरून घेण्यात आलेला आहे का?', 1, CAST(N'2025-10-03T19:19:11.270' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (16, N'सौरऊर्जा पंप प्रकल्प – शेतकरी', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील शेतकऱ्यांना पारंपरिक वीजपंपाऐवजी “मागेल त्याला सौरऊर्जा पंप” हा प्रकल्प कार्यान्वित करण्यात आलेला आहे का?', 1, CAST(N'2025-10-03T19:19:11.270' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (17, N'प्लास्टिक बंदी', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात प्लास्टिक बंदी प्रभावीपणे अंमलात आणून एकल वापराच्या प्लास्टिकवर पूर्ण बंदी घालण्यात आलेली आहे का तसेच त्याबाबत दंडात्मक कारवाई करण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.270' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (18, N'घनकचरा व्यवस्थापन', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात घनकचरा व्यवस्थापन शास्त्रोक्‍त पद्धतीने (सुका व ओला कचरा विलगीकरण करून संकलन करणे, ओल्या कचऱ्यापासून खत निर्मिती करणे तसेच सुक्या कचऱ्याचे योग्य व्यवस्थापन करणे) करण्यात येते का?', 1, CAST(N'2025-10-03T19:19:11.270' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (19, N'सांडपाणी व्यवस्थापन', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात सांडपाणी व्यवस्थापन शास्त्रशुद्ध पद्धतीने (शोषखड्डे, एस.टी.पी. तसेच इतर उपाययोजना) करून अंमलबजावणी करण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.287' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (20, N'शाळा सुविधा सक्षमीकरण', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व शाळांमध्ये डिजिटल सुविधा उपलब्ध करून देऊन त्या सक्षमीकरणाच्या दृष्टीने डिजिटल करण्यात आल्या आहेत का?', 1, CAST(N'2025-10-03T19:19:11.287' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (21, N'शाळा सुविधा सक्षमीकरण – स्वच्छता गृह', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व शाळांमध्ये मुला व मुलींसाठी स्वतंत्र स्वच्छता गृह उपलब्ध करून देण्यात आलेले आहे का?', 0, CAST(N'2025-10-03T19:19:11.287' AS DateTime), NULL)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (22, N'अंगणवाडी सुविधा सक्षमीकरण', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व अंगणवाडी केंद्रे डिजिटल (संगणक, इंटरनेट, स्मार्ट डिव्हाइस व डिजिटल शिक्षण साधने) करण्यात आलेली आहेत का?', 1, CAST(N'2025-10-03T19:19:11.300' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (23, N'अंगणवाडी सुविधा सक्षमीकरण – बालस्नेही स्वच्छता गृह व पिण्याचे पाणी', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व अंगणवाडी केंद्रांमध्ये बालस्नेही स्वच्छता गृह व पिण्याच्या पाण्याची सुविधा उपलब्ध करून देण्यात आलेली आहे का?', 0, CAST(N'2025-10-03T19:19:11.300' AS DateTime), NULL)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (24, N'पशुवैद्यकीय उपचार केंद्र सुविधा', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील पशुवैद्यकीय उपचार केंद्रात स्वच्छता गृह व पिण्याच्या पाण्याची सुविधा उपलब्ध करून देण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.300' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (25, N'पशुवैद्यकीय उपचार केंद्र / सेवा सुविधा', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात पशुवैद्यकीय उपचार केंद्र उपलब्ध आहे का? उपचार केंद्र उपलब्ध नसेल तर खोडा (मोबाईल युनिट) व इतर उपचार सेवा सुविधा उपलब्ध करून देण्यात आलेल्या आहेत का?', 0, CAST(N'2025-10-03T19:19:11.300' AS DateTime), NULL)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (26, N'स्मशानभूमी सुविधा', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील स्मशानभूमीत शेड, पिण्याच्या पाण्याची सोय, सौर दिवे, पोहोच रस्ता, वृक्षारोपण इत्यादी आवश्यक सुविधा उपलब्ध करून देण्यात आलेल्या आहेत का?', 1, CAST(N'2025-10-03T19:19:11.317' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (27, N'व्यायामशाळा / खुली व्यायामशाळा सुविधा', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात व्यायामशाळा किंवा खुली व्यायामशाळा (Open Gym) सुविधा उपलब्ध करून देण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.317' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (28, N'धार्मिक स्थळांचे सुशोभीकरण', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील धार्मिक स्थळांचे सुशोभीकरण (स्वच्छता, पायाभूत सुविधा, प्रकाश व्यवस्था, वृक्षारोपण इत्यादी) करून देण्यात आलेले आहे का?', 1, CAST(N'2025-10-03T19:19:11.317' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (29, N'प्रधानमंत्री आवास योजना व राज्यस्तरीय घरकुल योजना', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात सर्व घरकुल योजनेअंतर्गत मागील अपूर्ण तसेच नव्याने मंजूर सर्व घरकुल कामे पूर्ण करण्यात आलेली आहेत का?', 0, CAST(N'2025-10-03T19:19:11.333' AS DateTime), NULL)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (30, N'घरकुल योजना – कामांची पूर्णता (अभिसरणाद्वारे)', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील एकूण मंजूर घरकुलांच्या संख्येच्या 100% कामे अभिसरणाद्वारे पूर्ण करण्यात आलेली आहेत का?', 0, CAST(N'2025-10-03T19:19:11.333' AS DateTime), NULL)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (31, N'बचत गटातील महिला सहभाग', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील बचत गटामध्ये महिला मतदार लोकसंख्येच्या प्रमाणात महिला सहभाग सुनिश्चित करण्यात आलेला आहे का?', 1, CAST(N'2025-10-03T19:19:11.333' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (32, N'उमेद (MSRLM) अंतर्गत कर्ज वितरण', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील पात्र बचत गटांना उमेद (MSRLM) योजनेअंतर्गत बँकेमार्फत कर्ज वितरण करण्यात आलेले आहे का?', 1, CAST(N'2025-10-03T19:19:11.333' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (33, N'बचत गटातील महिलांना ‘लखपती दिदी’ करणे', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील बचत गटातील महिलांना ‘लखपती दिदी’ बनविण्याकरिता आवश्यक उपक्रम (कौशल्य प्रशिक्षण, रोजगारनिर्मिती, आर्थिक मदत इ.) राबविण्यात आलेले आहेत का?', 1, CAST(N'2025-10-03T19:19:11.350' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (34, N'कौशल्य प्रशिक्षण (Skill Training)', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील सर्व पात्र सुशिक्षित उमेदवारांना स्वयंरोजगारासाठी कौशल्य प्रशिक्षण उपलब्ध करून देण्यात आलेले आहे का?', 1, CAST(N'2025-10-03T19:19:11.350' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (35, N'बँक कर्ज वितरण (Bank Credit Support)', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील पात्र उमेदवारांना स्वयंरोजगारासाठी बँकेमार्फत कर्ज मिळाले आहे का?', 1, CAST(N'2025-10-03T19:19:11.350' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (36, N'गटशेतीत सहभाग', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील शेतकऱ्यांनी गटशेतीत सहभागी होऊन सामूहिक शेती करण्यास सुरुवात केलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.350' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (37, N'शेतकरी उत्पादक संस्था (FPO) स्थापना व व्यवसाय', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात शेतकरी उत्पादक संस्था (FPO) स्थापन करून त्या गटांद्वारे व्यवसाय सुरू करण्यात आलेला आहे का?', 1, CAST(N'2025-10-03T19:19:11.363' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (38, N'ॲनिमिया मुक्त गाव – महिलांची तपासणी', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात महिलांची तपासणी करून “ॲनिमिया मुक्त गाव” ही संकल्पना राबविण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.363' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (39, N'लोकसहभाग व श्रमदान', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात लोकसहभाग व श्रमदानातून चळवळ उभी करून आठवड्यातून किमान एक दिवस श्रमदान करणे व गावात स्वच्छता राखणे अश्या उपक्रमाची अंमलबजावणी करण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.363' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (40, N'रस्त्यांची कामे व दुरुस्ती', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील मुख्य रस्त्यांची आवश्यक कामे व दुरुस्तीची कामे नियमितपणे करण्यात आलेली आहेत का?', 1, CAST(N'2025-10-03T19:19:11.363' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (41, N'पाणंद रस्ते प्राधान्याने दुरुस्ती', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील पाणंद रस्त्यांची कामे प्राधान्याने करून त्यांची दुरुस्ती करण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.363' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (42, N'वृक्ष लागवड व वृक्ष संवर्धन', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात वृक्ष लागवड व वृक्ष संवर्धन करण्यासाठी आवश्यक उपक्रम राबविण्यात आलेले आहेत का?', 1, CAST(N'2025-10-03T19:19:11.380' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (43, N'नळ पाणी पुरवठा योजना – देयक भरणा', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात नळ पाणी पुरवठा योजनेअंतर्गत नियमित वीज भरण्यात येते का तसेच ऑगस्ट २०२५ पर्यंत किती थकबाकी आहे?', 1, CAST(N'2025-10-03T19:19:11.380' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (44, N'ग्रामपंचायत सक्षमीकरण – बैठक खोली व प्रतीक्षालय', N'आपल्या ग्रामपंचायतीच्या इमारतीत बैठक खोली व प्रतीक्षालयाची सुविधा उपलब्ध करून देण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.380' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (45, N'ग्रामपंचायत सक्षमीकरण – स्वतंत्र बैठक व्यवस्था', N'आपल्या ग्रामपंचायतीच्या इमारतीमध्ये सरपंच, उपसरपंच व ग्रामपंचायत अधिकारी यांच्यासाठी स्वतंत्र बैठक व्यवस्था उपलब्ध करून देण्यात आलेली आहे का?', 1, CAST(N'2025-10-03T19:19:11.380' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (46, N'संत गाडगेबाबा ग्राम स्वच्छता अभियान', N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रात संत गाडगेबाबा ग्राम स्वच्छता अभियान प्रभावीपणे राबविण्यात आलेले आहे का?', 1, CAST(N'2025-10-03T19:19:11.397' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (47, N'घरकुल व मनरेगा अभिसरण', N'घरकुल व मनरेगा अभिसरणानुसार एकूण मंजूर घरकुलांच्या संख्येपैकी मनरेगासोबत अभिसरण करुन एकूण किती घरकुले पूर्ण केलेली आहेत?', 1, CAST(N'2025-10-03T19:19:11.397' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (48, N'शेतीशी निगडित/शेतीपूरक कामे', N'शेतीशी निगडित / शेतीपूरक कामे पूर्ण झालेली आहेत का ..?', 1, CAST(N'2025-10-03T19:19:11.397' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (49, N'जलसंधारण कामे', N'जलसंधारण निगडित कामे पूर्ण झालेली आहेत का ..?', 1, CAST(N'2025-10-03T19:19:11.397' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (50, N'जलतारा शोषखड्डे संबंधित कामांबाबत', N'जलतारा शोषखड्डे निगडित कामे पूर्ण झालेली आहेत का ..?', 1, CAST(N'2025-10-03T19:19:11.397' AS DateTime), 1)
--GO
--INSERT [dbo].[tbl_PreQuestionsMaster] ([QuestionID], [QuestionName], [Question], [IsActive], [CreateOn], [PageNo]) VALUES (51, N'महात्मा गांधी ग्रामीण रोजगार हमी योजना', N'महात्मा गांधी ग्रामीण रोजगार हमी योजनेची प्रभावी अंमलबजावणी करून गावामध्ये रोजगार निर्माण करणे व स्थावर मालमत्ता निर्माण करण्याचे उद्दिष्ट साध्य झाले आहे का?', 1, CAST(N'2025-10-03T19:19:11.410' AS DateTime), 1)
--GO
--SET IDENTITY_INSERT [dbo].[tbl_PreQuestionsMaster] OFF
--GO
--ALTER TABLE [dbo].[tbl_PreOptionsMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
--GO
--ALTER TABLE [dbo].[tbl_PreQuestionsMaster] ADD  DEFAULT (getdate()) FOR [CreateOn]
--GO


select * from tbl_PreOptionsMaster where QuestionID in (2,3,4,5,7)

select * from tbl_PreQuestionsMaster where IsActive = 1 and QuestionID in (2,3,4,5,7)

select * from tbl_PreQuestionsMaster where IsActive = 1 and QuestionID not in (2,3,4,5,7)
-- delete from tbl_PreQuestionsMaster where IsActive = 1 and QuestionID not in (2,3,4,5,7)

select * from tbl_PreOptionsMaster where QuestionID not in (2,3,4,5,7)
-- delete from tbl_PreOptionsMaster where QuestionID not in (2,3,4,5,7)


select * from tbl_RPR_Users

select * from tbl_RPR_Employees

select QuestionID,QuestionName,Question,IsActive from tbl_PreQuestionsMaster where IsActive = 1 and QuestionID in (2,3,4,5,7)

select OptionID,QuestionID,OptionNo,OptionName,IsSubOption,SubMenuFlag from tbl_PreOptionsMaster where QuestionID in (2,3,4,5,7)






