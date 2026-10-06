

GO
/****** Object:  Table [dbo].[tbl_DocumentMaster]    Script Date: 10/6/2026 3:54:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DocumentMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QueId] [int] NULL,
	[FormId] [int] NULL,
	[DocName] [nvarchar](100) NULL,
	[PreQueId] [int] NULL,
	[DocNameToolTp] [nvarchar](200) NULL,
	[PreQueIdOptionNo] [int] NULL,
	[ElementMstId] [int] NULL,	
) 
GO
/****** Object:  Table [dbo].[tbl_TextboxMaster]    Script Date: 10/6/2026 3:54:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TextboxMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[Queid] [int] NULL,
	[FormId] [int] NULL,
	[PreQueId] [int] NULL,
	[TextValidationType] [int] NULL,
)
GO
SET IDENTITY_INSERT [dbo].[tbl_DocumentMaster] ON 
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (1, 1, 1, N'सरपंच आणि ग्रामसेवक यांचे संयुक्त स्वाक्षरीचे प्रमाणपत्र', NULL, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, 5)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (2, 2, 1, N'CSC मंजुरी प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (3, 2, 1, N'सरपंच आणि ग्रामसेवक यांचे संयुक्त स्वाक्षरीचे प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (4, 3, 1, N'ग्रामपंचायतच्या कार्यालयात तक्रार पेटी लावली असल्यास तिचे छायाचित्र अपलोड करा', 3, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (5, 3, 1, N'सरपंच आणि ग्रामसेवक यांचे संयुक्त स्वाक्षरीचे प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (6, 6, 1, N'सरपंच आणि ग्रामसेवक यांचे संयुक्त स्वाक्षरीचे प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (7, 7, 1, N'सरपंच आणि ग्रामसेवक यांचे संयुक्त स्वाक्षरीचे प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (8, 8, 1, N'इतिवृत्त नोंदवही पुरावा (एकत्रित नोंदवही फाइल) उपलोड करा', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (9, 9, 1, N'सरपंच आणि ग्रामसेवक यांचे संयुक्त स्वाक्षरीचे प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (10, 10, 1, N'सरपंच आणि ग्रामसेवक यांचे संयुक्त स्वाक्षरीचे प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (11, 11, 1, N'दिव्यांग तरतूद पुरावा जोडणे', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (12, 11, 1, N'महिला व बालकल्याण पुरावा जोडणे', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (13, 11, 1, N'मागासवर्ग कल्याण पुरावा जोडणे', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (14, 11, 1, N'सरपंच आणि ग्रामसेवक यांचे स्वाक्षरीचे संयुक्त स्वाक्षरीचे.प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (15, 12, 1, N'सरपंच आणि ग्रामसेवक यांचे स्वाक्षरीचे संयुक्त स्वाक्षरीचे.प्रमाणपत्र', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (17, 5, 1, N'CCTV नियंत्रण कक्ष/लाइव्ह फीडमधील स्क्रीन फोटो अपलोड करा', 5, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (18, 0, 0, N'बैठक रजिस्टर/अहवाल अपलोड करा', 6, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (19, 0, 0, N'पात्र लाभार्थ्यांची यादी अपलोड करा.', 8, N'टीप : (अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (20, 0, 0, N'पात्र लाभार्थ्यांयांची यादी अपलोड करा', 9, N'टीप : (अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (21, 0, 0, N'अपलोड : नळ कनेक्शन तपशीलांसह घरांची यादी', 11, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (22, 0, 0, N'पूर्ण झालेल्या उपाययोजना कामांचे फोटो', 12, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (23, 0, 0, N'RWH स्थापनेचा अहवाल', 13, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (24, 0, 0, N'फोटो', 13, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (25, 0, 0, N'सूक्ष्म सिंचन कामांचे फोटो', 14, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (26, 0, 0, N'सौरऊर्जा युनिट बसवले याचे फोटो अपलोड करा', 15, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (27, 0, 0, N'लाभार्थी यादी', 16, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (28, 0, 0, N'फोटो', 16, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (29, 0, 0, N'दंड पावती रजिस्टर', 17, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (30, 0, 0, N'फोटो', 18, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (31, 0, 0, N'सांडपाणी व्यवस्थापनाचे फोटो', 19, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (32, 0, 0, N'अपलोड फोटो', 20, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (33, 0, 0, N'अपलोड फोटोस', 21, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (34, 0, 0, N'अपलोड फोटो', 22, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (35, 0, 0, N'अपलोड फोटोस', 23, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (36, 0, 0, N'अपलोड फोटो', 24, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (37, 0, 0, N'अपलोड फोटोस', 25, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (38, 0, 0, N'अपलोड फोटो', 26, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (39, 0, 0, N'अपलोड फोटो', 27, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (40, 0, 0, N'अपलोड फोटो', 28, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (41, 0, 0, N'यादी अपलोड करा', 29, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (42, 0, 0, N'अपलोड फोटो', 29, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (43, 0, 0, N'लाभार्थीनिहाय पुरावा', 30, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (44, 0, 0, N'फोटो पुरावा', 30, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (45, 0, 0, N'सदस्य यादीसह SHG रेकॉर्ड', 31, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (46, 0, 0, N'बँक मंजुरी पत्रे / MSRLM अहवाल', 32, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (47, 0, 0, N'बचत गटातील महिलां उपक्रम राबवून लखपती दिदी’ यादी', 33, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (48, 0, 0, N'प्रशिक्षण उपस्थिती यादी/प्रमाणपत्रे', 34, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (49, 0, 0, N'बँक मंजुरी/वितरण रेकॉर्ड', 35, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (50, 0, 0, N'सरकार-मान्यताप्राप्त नोंदणी प्रमाणपत्र', 36, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (51, 0, 0, N'गट व्यवसायाचा पुरावा', 37, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (52, 0, 0, N'आरोग्य विभागाकडून पडताळणी प्रमाणपत्र', 38, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (53, 0, 0, N'विविध कामाचे फोटो', 39, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (54, 0, 0, N'रस्त्याची कामे झाल्याचे फोटो अपलोड करा', 40, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (55, 0, 0, N'अपलोड फोटो', 41, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (56, 0, 0, N'अपलोड फोटो', 42, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (57, 0, 0, N'अपलोड फोटो', 44, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (58, 0, 0, N'अपलोड फोटो', 45, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (59, 0, 0, N'अपलोड फोटो', 46, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (60, 0, 0, N'आपले सरकार सेवा केंद्रचा फोटो अपलोड करा', 2, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (61, 0, 0, N'यादी अपलोड करा', 47, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (63, 0, 0, N'अपलोड फोटो', 48, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (64, 0, 0, N'अपलोड फोटो', 49, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (65, 0, 0, N'अपलोड फोटो', 50, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (66, 0, 0, N'उद्दिष्ट यादी अपलोड करा', 51, N'टीप: जर आपल्याकडे एका  पेक्षा जास्त PDF फ़ाइल असतील तर त्या फ़ाइल विलीन  करून अपलोड करा.(अपलोड फाईल Size:15 MB)', NULL, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (67, NULL, NULL, N'ग्रामपंचायतच्या कार्यालयात तक्रार पेटी व ऑनलाईन पोर्टल असल्यास छायाचित्र अपलोड करा', 3, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', 1, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (68, NULL, NULL, N'ग्रामपंचायतच्या कार्यालयात तक्रार पेटी असल्यास छायाचित्र अपलोड करा', 3, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', 2, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (69, NULL, NULL, N'ग्रामपंचायतच्या कार्यालयात ऑनलाईन पोर्टल असल्यास छायाचित्र अपलोड करा', 3, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', 3, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (70, NULL, NULL, N'बैठक खोली व प्रतीक्षालय दोघांचे छायाचित्र अपलोड करा', 44, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', 1, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (71, NULL, NULL, N'बैठक खोली छायाचित्र अपलोड करा', 44, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', 2, NULL)
GO
INSERT [dbo].[tbl_DocumentMaster] ([Id], [QueId], [FormId], [DocName], [PreQueId], [DocNameToolTp], [PreQueIdOptionNo], [ElementMstId]) VALUES (72, NULL, NULL, N'प्रतीक्षालय चे छायाचित्र अपलोड करा', 44, N'टीप : एकापेक्षा अधिक छायाचित्रे अपलोड करावयाची असल्यास, ती छायाचित्रे एकत्र एका (PDF) फ़ाइल मध्ये करून अपलोड करावीत.(अपलोड फाईल Size:15 MB)', 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_DocumentMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TextboxMaster] ON 
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (1, N'वेबसाईट लिंक टाका', 1, 0, 0, 4, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (2, N'किती CCTV बसविण्यात आले', 1, 0, 0, 5, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (3, N'कमीत कमी एका ऍप डाउनलोड केलेल्या एकूण नागरिकांची संख्या', 1, 0, 0, 7, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (4, N'किती पात्र लाभार्थ्यांना आयुष्मान भारत कार्ड वितरित केलेले आहे', 1, 0, 0, 8, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (5, N'एकूण किती पात्र दिव्यांग लाभार्थ्यांना ओळखपत्र वितरित करण्यात आलेले आहे', 1, 0, 0, 9, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (6, N'एकूण ऑगस्ट २०२५ पर्यंत किती (रु.) करांची थकबाकी वसुल करण्यात आली आहे?', 1, 0, 0, 10, 4)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (7, N'किती घरांना नळाद्वारे शाश्वत शुद्ध पिण्याच्या पाण्याचा पुरवठा संख्या', 1, 0, 0, 11, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (8, N'पाण्याचे स्त्रोत बळकटीकरण करण्यासाठी किती उपाययोजना राबविण्यात आल्या', 1, 0, 0, 12, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (9, N'किती शासकीय व निमशासकीय संस्थांमध्ये रेन वॉटर हार्वेस्टिंग युनिट केले आहेत', 1, 0, 0, 13, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (10, N'झाडे, बगीचा व फळबाग याकरिता सूक्ष्म सिंचन पद्धतीचा वापर करून किती क्षेत्र वाढविण्यात आले आहे (हेक्टर)', 1, 0, 0, 14, 4)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (11, N'ग्रामपंचायतीच्या इमारतीमध्ये किती सौरऊर्जा युनिट बसवले आहेत', 1, 0, 0, 15, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (12, N'सौरऊर्जा पंप उपलब्ध करून देण्यात आलेले शेतकऱ्यांची संख्या', 1, 0, 0, 16, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (13, N'एकूण किती लोकांवर दंडात्मक कारवाई केली', 1, 0, 0, 17, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (14, N'आपल्या ग्रामपंचायतीच्या कार्यक्षेत्रातील किती कुटुंबांकडे ओला कचरा व सुका कचरा यासाठी स्वतंत्र कचरा पेटी (Dustbins) आहेत', 1, 0, 0, 18, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (15, N'किती शाळांना डिजिटल सुविधा उपलब्ध करून देण्यात आल्या', 1, 0, 0, 20, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (16, N'किती शाळांमध्ये मुला व मुलींसाठी स्वतंत्र स्वच्छता गृह उपलब्ध आहे', 1, 0, 0, 21, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (17, N'किती अंगणवाडी केंद्रे डिजिटल करण्यात आले', 1, 0, 0, 22, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (18, N'किती अंगणवाडी केंद्रांमध्ये बालस्नेही स्वच्छता गृह व पिण्याच्या पाण्याची सुविधा उपलब्ध आहे', 1, 0, 0, 23, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (19, N'किती धार्मिक स्थळांमध्ये सुशोभीकरण पूर्णपणे करण्यात आले आहे', 1, 0, 0, 28, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (20, N'एकूण मंजूर कामांची संख्या', 1, 0, 0, 29, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (21, N'किती घरकुलांची कामे अभिसरणाद्वारे पूर्ण करण्यात आलेली आहे', 1, 0, 0, 30, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (22, N'एकूण बचत गट संख्या किती', 1, 0, 0, 31, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (23, N'किती सहभागी महिला संख्या', 1, 0, 0, 31, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (24, N'एकूण बचत गटांची संख्या', 1, 0, 0, 32, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (25, N'किती बचत गटातील महिलां उपक्रम राबवून लखपती दिदी’ झालेल्या आहेत', 1, 0, 0, 33, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (26, N'किती पात्र उमेदवारांना स्वयंरोजगारासाठी कौशल्य प्रशिक्षण देण्यात आले आहे', 1, 0, 0, 34, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (27, N'किती पात्र उमेदवारांना बँकेमार्फत कर्ज वितरण केले आहे', 1, 0, 0, 35, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (28, N'एकूण किती गटशेती आहेत', 1, 0, 0, 36, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (29, N'किती शेतकरी गटशेतीत सहभागी झाले आहेत', 1, 0, 0, 36, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (30, N'एकूण महिला संख्या', 1, 0, 0, 38, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (31, N'एकूण किती किलोमीटर रस्त्यांची नवीन कामे व दुरुस्तीची कामे पूर्ण करण्यात आलेली आहेत', 1, 0, 0, 40, 4)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (32, N'किती पाणंद किलोमीटर रस्त्यांची दुरुस्ती व कामे प्राधान्याने पूर्ण करण्यात आलेली आहेत', 1, 0, 0, 41, 4)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (33, N'किती वृक्ष लागवड व वृक्ष संवर्धन प्रभावीपणे करण्यात आले आहे', 1, 0, 0, 42, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (34, N'ऑगस्ट २०२५ पर्यंत  एकूण  किती थकबाकी आहे (थकबाकी नसल्यास ० भरावे)', 1, 0, 0, 43, 4)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (35, N'घरकुल व मनरेगा अभिसरणानुसार मंजूर घरकुलांची संख्या', 1, 0, 0, 47, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (36, N'मंजूर घरकुलांच्या संख्येपैकी पूर्ण केलेली घरकुलांची संख्या', 1, 0, 0, 47, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (37, N'पूर्ण झालेले कामांची संख्या', 1, 0, 0, 50, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (38, N'एकूण किती उद्दिष्ट साध्य झाले आहे', 1, 0, 0, 51, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (40, N'एकूण किती दंड आकारण्यात आला आहे', 1, 0, 0, 17, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (41, N'MSRLM द्वारे किती पात्र गटांना कर्ज वितरण करण्यात आले', 1, 0, 0, 32, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (42, N'एकूण मंजूर कामांपैकी किती कामे पूर्ण करण्यात आलेली आहेत', 1, 0, 0, 29, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (43, N'एकूण FPO गट संख्या', 1, 0, 0, 37, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (44, N'किती गटांद्वारे व्यवसाय सुरू करण्यात आलेला आहे', 1, 0, 0, 37, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (45, N'एकूण किती महिलांची तपासणी करण्यात आलेली आहे', 1, 0, 0, 38, 2)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (47, N'एकूण प्राप्त अर्जांची संख्या', 1, 1, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (48, N'एकूण निर्गत अर्जांची संख्या', 1, 1, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (49, N'एकूण प्राप्त B2C अर्जांची संख्या किती (१ जानेवारी २०२५ ते ३१ डिसेंबर २०२५ या कालावधी मधील)', 1, 2, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (50, N'एकूण निर्गत B2C अर्जांची संख्या किती', 1, 2, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (51, N'एकूण प्राप्त अर्जांची संख्या (दिनांक १ एप्रिल ते मोहिमेच्या कालावधीपर्यंत प्राप्त झालेले अर्ज)', 1, 3, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (52, N'एकूण निर्गत अर्जांची संख्या (दिनांक १ एप्रिल ते मोहिमेच्या कालावधीपर्यंत प्राप्त झालेले अर्ज)', 1, 3, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (53, N'वेबसाईट लिंक', 1, 4, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (54, N'स्थापित केलेल्या कॅमेऱ्यांद्वारे कव्हर केलेल्या रस्त्यांची आणि चौकांची संख्या', 1, 5, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (55, N'स्थापित केलेल्या कॅमेऱ्यांची संख्या', 1, 5, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (56, N'एकूण शक संख्या', 1, 6, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (57, N'मंजूर शक संख्या', 1, 6, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (58, N'मतदार संख्या', 1, 9, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (59, N'मतदार संख्या पैकी किमान १ ॲप डाउनलोड करणारे मतदाराची संख्या (डाउनलोड केलेले ॲप : मेरी पंचायत / पंचायत निर्णय / ग्रामसंवाद)', 1, 9, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (60, N'एकूण पात्र लाभार्थी', 1, 10, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (61, N'कार्ड मिळालेले लाभार्थी', 1, 10, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (62, N'लाभ मिळालेले लाभार्थी', 1, 10, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (63, N'दिव्यांग तरतूद 5% - बजेट तरतूद रक्कम', 1, 11, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (64, N'खर्च केलेली रक्कम', 1, 11, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (65, N'महिला व बालकल्याण 10% - बजेट तरतूद रक्कम', 1, 11, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (66, N'खर्च केलेली रक्कम', 1, 11, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (67, N'मागासवर्ग कल्याण 15% - बजेट तरतूद रक्कम', 1, 11, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (68, N'खर्च केलेली रक्कम', 1, 11, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (69, N'एकूण पात्र दिव्यांग लाभार्थी संख्या', 1, 12, 1, 0, 1)
GO
INSERT [dbo].[tbl_TextboxMaster] ([Id], [Name], [IsActive], [Queid], [FormId], [PreQueId], [TextValidationType]) VALUES (70, N'कार्ड वितरीत केलेले दिव्यांग लाभार्थी संख्या', 1, 12, 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_TextboxMaster] OFF
GO

