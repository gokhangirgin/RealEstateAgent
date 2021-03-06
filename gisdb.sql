USE [GisDB]
GO
/****** Object:  Table [dbo].[RealEstate]    Script Date: 05/10/2012 16:51:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealEstate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Room] [int] NOT NULL,
	[Msquare] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Tel] [nvarchar](11) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_RealEstate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 ise satılık 1 ise kiralık' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RealEstate', @level2type=N'COLUMN',@level2name=N'Status'
GO
SET IDENTITY_INSERT [dbo].[RealEstate] ON
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (2, N'Test 1', 3, 90, 120000.0000, N'01234567890', N'asd@asd.com', 38.4594, 27.1779, N'Aliquam porttitor erat ante, volutpat consequat lectus. Sed interdum ipsum vel libero scelerisque sit amet sagittis sem viverra. Duis magna est, lobortis ac condimentum ut, tincidunt at eros. Aenean eget ultrices est. Suspendisse convallis sem non ipsum tempus congue. Nam scelerisque venenatis massa quis commodo. In in arcu a tellus aliquet condimentum a a nunc. Praesent ac nunc odio, nec elementum ligula. Morbi in tortor erat. ', 0)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (6, N'Test 2', 3, 90, 750.0000, N'01234567890', N'asd@asd.com', 38.4581, 27.175, N'Aliquam porttitor erat ante, volutpat consequat lectus. Sed interdum ipsum vel libero scelerisque sit amet sagittis sem viverra. Duis magna est, lobortis ac condimentum ut, tincidunt at eros. Aenean eget ultrices est. Suspendisse convallis sem non ipsum tempus congue. Nam scelerisque venenatis massa quis commodo. In in arcu a tellus aliquet condimentum a a nunc. Praesent ac nunc odio, nec elementum ligula. Morbi in tortor erat. ', 1)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (7, N'Test 3', 4, 123, 1230.0000, N'01234567890', N'asd@asd.com', 38.390600568845294, 27.058338835449149, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies condimentum faucibus. Pellentesque ac dui nisi, ac aliquet orci. Nam imperdiet gravida dolor, a rutrum tellus fermentum vel. Duis ipsum elit, varius ut bibendum vitae, vestibulum eget diam. Morbi ut sem arcu, ut dignissim massa. Nam tempus dolor et erat tristique ut placerat turpis laoreet. Vestibulum vehicula hendrerit ultricies.', 1)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (8, N'Test 4', 4, 124, 650.0000, N'01234567890', N'asd@asd.com', 38.474240607159693, 27.095417692871024, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies condimentum faucibus. Pellentesque ac dui nisi, ac aliquet orci. Nam imperdiet gravida dolor, a rutrum tellus fermentum vel. Duis ipsum elit, varius ut bibendum vitae, vestibulum eget diam. Morbi ut sem arcu, ut dignissim massa. Nam tempus dolor et erat tristique ut placerat turpis laoreet. Vestibulum vehicula hendrerit ultricies.', 1)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (9, N'Test 5', 4, 124, 550.0000, N'01234567890', N'asd@asd.com', 38.473703038660418, 27.173695280761649, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies condimentum faucibus. Pellentesque ac dui nisi, ac aliquet orci. Nam imperdiet gravida dolor, a rutrum tellus fermentum vel. Duis ipsum elit, varius ut bibendum vitae, vestibulum eget diam. Morbi ut sem arcu, ut dignissim massa. Nam tempus dolor et erat tristique ut placerat turpis laoreet. Vestibulum vehicula hendrerit ultricies.', 1)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (10, N'Test 6', 4, 120, 95000.0000, N'00112233445', N'asd@asd.com', 38.432567168102132, 27.142023756713797, N'Aliquam porttitor erat ante, volutpat consequat lectus. Sed interdum ipsum vel libero scelerisque sit amet sagittis sem viverra. Duis magna est, lobortis ac condimentum ut, tincidunt at eros. Aenean eget ultrices est. Suspendisse convallis sem non ipsum tempus congue. Nam scelerisque venenatis massa quis commodo. In in arcu a tellus aliquet condimentum a a nunc. Praesent ac nunc odio, nec elementum ligula. Morbi in tortor erat. ', 0)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (11, N'Test 6', 4, 120, 95000.0000, N'00112233445', N'asd@asd.com', 38.405399266958177, 27.111897185058524, N'http://tr.lipsum.com/feed/html', 0)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (12, N'Test 7', 4, 120, 105000.0000, N'00112233445', N'asd@asd.com', 38.406744452933587, 27.011303618163993, N'Aliquam porttitor erat ante, volutpat consequat lectus. Sed interdum ipsum vel libero scelerisque sit amet sagittis sem viverra. Duis magna est, lobortis ac condimentum ut, tincidunt at eros. Aenean eget ultrices est. Suspendisse convallis sem non ipsum tempus congue. Nam scelerisque venenatis massa quis commodo. In in arcu a tellus aliquet condimentum a a nunc. Praesent ac nunc odio, nec elementum ligula. Morbi in tortor erat. ', 0)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (13, N'Çaylak', 6, 160, 145000.0000, N'00112233445', N'dsa@rr.com', 38.480019215382328, 27.196955397338797, N'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', 0)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (14, N'asdasd', 5, 150, 750.0000, N'23255577889', N'asd@cs.com', 38.396251338357523, 27.167858793945243, N'asdasd asd', 1)
INSERT [dbo].[RealEstate] ([Id], [Title], [Room], [Msquare], [Price], [Tel], [Email], [Latitude], [Longitude], [Description], [Status]) VALUES (15, N'Test11', 5, 125, 750.0000, N'02125447815', N'test@test.com', 38.398706594615305, 27.081191256256034, N'Aliquam porttitor erat ante, volutpat consequat lectus. Sed interdum ipsum vel libero scelerisque sit amet sagittis sem viverra. Duis magna est, lobortis ac condimentum ut, tincidunt at eros. Aenean eget ultrices est. Suspendisse convallis sem non ipsum tempus congue. Nam scelerisque venenatis massa quis commodo. In in arcu a tellus aliquet condimentum a a nunc. Praesent ac nunc odio, nec elementum ligula. Morbi in tortor erat.', 1)
SET IDENTITY_INSERT [dbo].[RealEstate] OFF
/****** Object:  Table [dbo].[Image]    Script Date: 05/10/2012 16:51:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
	[RealId] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Image] ON
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (3, N'http://image5.sahibinden.com/photos/39/87/97/big_643987977t9.jpg', 2)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (4, N'http://image5.sahibinden.com/photos/39/87/97/big_643987975t9.jpg', 2)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (11, N'http://image5.sahibinden.com/photos/39/87/97/big_753987977t9.jpg', 6)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (12, N'http://image5.sahibinden.com/photos/39/87/97/big_684987975t9.jpg', 6)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (33, N'http://r3.emlak.net:8080/2012/04/21/e247203a5f163184b5650ce28cd8924b.jpg', 11)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (34, N'http://r3.emlak.net:8080/2012/04/21/84bb4897bc8c24324951aceb2504955e.jpg', 11)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (35, N'http://r3.emlak.net:8080/2011/08/21/03194566db546670d253064c799ae1f2.jpg', 12)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (36, N'http://r3.emlak.net:8080/2011/08/21/1c691f1c6e6b28a91b909bbc1874e2fe.jpg', 12)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (37, N'http://r3.emlak.net:8080/2012/04/16/09cae33e6d60ac128c337e46e40fa2df.jpg', 13)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (38, N'http://r3.emlak.net:8080/2012/04/16/5bf362c61cfa43ad66a42bf19bd7dd3c.jpg', 13)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (39, N'http://r3.emlak.net:8080/2012/04/16/d18ac17b6529ae6de7a1eb42315f1536.jpg', 13)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (40, N'http://pressbox.co.uk/images/logos/220205_r9144%20VILLA%20YALIKAVAK.jpg', 15)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (41, N'http://mrsbc.com/uploads.00139661/00144251.jpg', 15)
INSERT [dbo].[Image] ([Id], [URL], [RealId]) VALUES (42, N'http://4.bp.blogspot.com/--_IzgnNPjTQ/TcEwGt8VsPI/AAAAAAAAACk/ga2NPHO9nR0/s1600/House-in-hand1.jpg', 15)
SET IDENTITY_INSERT [dbo].[Image] OFF
/****** Object:  Default [DF_RealEstate_Status]    Script Date: 05/10/2012 16:51:19 ******/
ALTER TABLE [dbo].[RealEstate] ADD  CONSTRAINT [DF_RealEstate_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  ForeignKey [FK_Images_Images]    Script Date: 05/10/2012 16:51:19 ******/
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Images_Images] FOREIGN KEY([RealId])
REFERENCES [dbo].[RealEstate] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Images_Images]
GO
