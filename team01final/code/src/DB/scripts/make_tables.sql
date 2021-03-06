USE [DVA]
GO
/****** Object:  Table [dbo].[Aspects]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aspects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noun] [nvarchar](max) NULL,
	[adjective] [nvarchar](max) NULL,
	[polarity] [float] NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clusters]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clusters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jack]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jack](
	[a] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductClusters]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductClusters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[productId] [int] NULL,
	[clusterId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [nvarchar](255) NOT NULL,
	[productParent] [nvarchar](max) NULL,
	[productTitle] [nvarchar](max) NULL,
	[productCategory] [nvarchar](max) NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsFull]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsFull](
	[productId] [nvarchar](max) NULL,
	[productParent] [nvarchar](max) NULL,
	[productTitle] [nvarchar](max) NULL,
	[productCategory] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReviewAspects]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewAspects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[reviewId] [char](36) NULL,
	[aspectId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[id] [char](36) NOT NULL,
	[marketplace] [nvarchar](max) NULL,
	[customerId] [nvarchar](max) NULL,
	[reviewId] [nvarchar](max) NULL,
	[starRatin] [nvarchar](max) NULL,
	[helpfulVotes] [nvarchar](max) NULL,
	[totalVotes] [nvarchar](max) NULL,
	[vine] [nvarchar](max) NULL,
	[verifiedPurchase] [nvarchar](max) NULL,
	[reviewHeadline] [nvarchar](max) NULL,
	[reviewBody] [nvarchar](max) NULL,
	[reviewDate] [nvarchar](max) NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[productId] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReviewsFull]    Script Date: 11/25/2018 4:43:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewsFull](
	[marketplace] [nvarchar](max) NULL,
	[customer_id] [nvarchar](max) NULL,
	[review_id] [nvarchar](max) NULL,
	[product_id] [nvarchar](max) NULL,
	[product_parent] [nvarchar](max) NULL,
	[product_title] [nvarchar](max) NULL,
	[product_category] [nvarchar](max) NULL,
	[star_rating] [nvarchar](max) NULL,
	[helpful_votes] [nvarchar](max) NULL,
	[total_votes] [nvarchar](max) NULL,
	[vine] [nvarchar](max) NULL,
	[verified_purchase] [nvarchar](max) NULL,
	[review_headline] [nvarchar](max) NULL,
	[review_body] [nvarchar](max) NULL,
	[review_date] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductClusters]  WITH CHECK ADD FOREIGN KEY([clusterId])
REFERENCES [dbo].[Clusters] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ProductClusters]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ReviewAspects]  WITH CHECK ADD FOREIGN KEY([aspectId])
REFERENCES [dbo].[Aspects] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ReviewAspects]  WITH CHECK ADD FOREIGN KEY([reviewId])
REFERENCES [dbo].[Reviews] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([productId])
ON DELETE SET NULL
GO
