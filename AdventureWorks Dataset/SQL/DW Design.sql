USE [AdventureWorks-DW]
GO

CREATE TABLE [DimCustomer](
	[CustomerKey] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[CustomerAltKey] [int] NOT NULL,
	[CompanyName] [nvarchar](128) NULL,
	[Name] [nvarchar](50) NULL,
	[Title] [nvarchar](8) NULL,
	[Phone] [nvarchar](25) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
)
GO

CREATE TABLE [DimProduct](
	[ProductKey] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[ProductAltKey] [int] NOT NULL,
	[Model] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[SubCategory] [nvarchar](50) NULL,
	[Description] [nvarchar](400) NULL,
	[Size] [nvarchar](20) NULL,
	[Color] [nvarchar](20) NULL,
	[Cost] [money] NULL,
	[Price] [money] NULL
)
GO

CREATE TABLE [FactSales](
	[DateKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [money] NULL,
	[Discount] [money] NULL,
	[LineTotal] [money] NULL,
)
GO