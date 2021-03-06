USE [яхты]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[Accessory_ID] [float] NOT NULL,
	[AccName] [nvarchar](255) NULL,
	[DescriptionOfAccessory] [nvarchar](255) NULL,
	[Price] [money] NULL,
	[VAT] [float] NULL,
	[Inventory] [float] NULL,
	[OrderLevel] [float] NULL,
	[OrderBatch] [float] NULL,
	[Partner_ID] [float] NULL,
 CONSTRAINT [PK_Accessory$] PRIMARY KEY CLUSTERED 
(
	[Accessory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boat]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boat](
	[boat_ID] [float] NOT NULL,
	[Model] [nvarchar](255) NULL,
	[BoatType] [nvarchar](255) NULL,
	[NumberOfRowers] [float] NULL,
	[Mast] [bit] NOT NULL,
	[Colour] [nvarchar](255) NULL,
	[Wood] [nvarchar](255) NULL,
	[BasePrice] [float] NULL,
	[VAT] [float] NULL,
	[F10] [nvarchar](255) NULL,
	[F11] [float] NULL,
 CONSTRAINT [PK_Boat$] PRIMARY KEY CLUSTERED 
(
	[boat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Contract_ID] [float] NOT NULL,
	[Date] [datetime] NULL,
	[DepositPayed] [float] NULL,
	[Order_ID] [float] NULL,
	[ContractTotalPrice] [float] NULL,
	[ContracTotalPrice_inclVAT] [float] NULL,
	[ProductionProcess] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL,
	[F9] [float] NULL,
 CONSTRAINT [PK_Contract$] PRIMARY KEY CLUSTERED 
(
	[Contract_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [float] NOT NULL,
	[FistName] [nvarchar](255) NULL,
	[FamilyName] [nvarchar](255) NULL,
	[DateOfBirth] [datetime] NULL,
	[OrganisationName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[IDNumber] [nvarchar](255) NULL,
	[IDDocumentName] [nvarchar](255) NULL,
 CONSTRAINT [PK_Customer$] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_ID] [float] NOT NULL,
	[Contract_ID] [float] NULL,
	[Settled] [bit] NOT NULL,
	[Sum] [money] NULL,
	[Sum_inclVAT] [float] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Invoice$] PRIMARY KEY CLUSTERED 
(
	[Invoice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_ID] [float] NOT NULL,
	[Date] [datetime] NULL,
	[Salesperson_ID] [float] NULL,
	[Customer_ID] [float] NULL,
	[Boat_ID] [float] NULL,
	[DeliveryAddress] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
 CONSTRAINT [PK_Order$] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Detail_ID] [float] NOT NULL,
	[Accessory_ID] [float] NULL,
	[Order_ID] [float] NULL,
 CONSTRAINT [PK_OrderDetails$] PRIMARY KEY CLUSTERED 
(
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Partner_ID] [float] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
 CONSTRAINT [PK_Partner$] PRIMARY KEY CLUSTERED 
(
	[Partner_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registr]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registr](
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Born] [nvarchar](50) NULL,
	[E-mail] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Registr] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPerson]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson](
	[SalesPerson_ID] [float] NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[FamilyName] [nvarchar](255) NULL,
 CONSTRAINT [PK_SalesPerson$] PRIMARY KEY CLUSTERED 
(
	[SalesPerson_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Аксессуары_лодочные]    Script Date: 03.12.2021 21:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Аксессуары_лодочные](
	[Fit_ID] [float] NOT NULL,
	[Accessory_ID] [float] NULL,
	[Boat_ID] [float] NULL,
 CONSTRAINT [PK_'Аксессуары лодочные$'] PRIMARY KEY CLUSTERED 
(
	[Fit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory$_Partner$] FOREIGN KEY([Partner_ID])
REFERENCES [dbo].[Partner] ([Partner_ID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory$_Partner$]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice$_Contract$] FOREIGN KEY([Contract_ID])
REFERENCES [dbo].[Contract] ([Contract_ID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice$_Contract$]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order$_Boat$] FOREIGN KEY([Boat_ID])
REFERENCES [dbo].[Boat] ([boat_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order$_Boat$]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order$_Customer$] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order$_Customer$]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order$_SalesPerson$] FOREIGN KEY([Salesperson_ID])
REFERENCES [dbo].[SalesPerson] ([SalesPerson_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order$_SalesPerson$]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails$_Accessory$] FOREIGN KEY([Accessory_ID])
REFERENCES [dbo].[Accessory] ([Accessory_ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails$_Accessory$]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails$_Order$] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Order] ([Order_ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails$_Order$]
GO
ALTER TABLE [dbo].[Аксессуары_лодочные]  WITH CHECK ADD  CONSTRAINT [FK_'Аксессуары лодочные$'_Accessory$] FOREIGN KEY([Accessory_ID])
REFERENCES [dbo].[Accessory] ([Accessory_ID])
GO
ALTER TABLE [dbo].[Аксессуары_лодочные] CHECK CONSTRAINT [FK_'Аксессуары лодочные$'_Accessory$]
GO
ALTER TABLE [dbo].[Аксессуары_лодочные]  WITH CHECK ADD  CONSTRAINT [FK_'Аксессуары лодочные$'_Boat$] FOREIGN KEY([Boat_ID])
REFERENCES [dbo].[Boat] ([boat_ID])
GO
ALTER TABLE [dbo].[Аксессуары_лодочные] CHECK CONSTRAINT [FK_'Аксессуары лодочные$'_Boat$]
GO
