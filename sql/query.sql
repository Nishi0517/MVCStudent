USE [Test]
GO

/****** Object:  Table [dbo].[batch]    Script Date: 24-05-2023 15:57:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[batch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](50) NULL,
	[year] [varchar](50) NULL,
 CONSTRAINT [PK_batch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


---------------------------


USE [Test]
GO

/****** Object:  Table [dbo].[course]    Script Date: 24-05-2023 15:57:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course] [varchar](50) NULL,
	[duration] [int] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO





----------------------

USE [Test]
GO

/****** Object:  Table [dbo].[registration]    Script Date: 24-05-2023 15:58:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[registration](
	[id] [int] NOT NULL,
	[firstnaame] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[nic] [varchar](50) NULL,
	[course_id] [int] NULL,
	[batch_id] [int] NULL,
	[telno] [int] NULL,
 CONSTRAINT [PK_registration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[registration]  WITH CHECK ADD  CONSTRAINT [FK_registration_batch] FOREIGN KEY([batch_id])
REFERENCES [dbo].[batch] ([id])
GO

ALTER TABLE [dbo].[registration] CHECK CONSTRAINT [FK_registration_batch]
GO

ALTER TABLE [dbo].[registration]  WITH CHECK ADD  CONSTRAINT [FK_registration_course] FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([id])
GO

ALTER TABLE [dbo].[registration] CHECK CONSTRAINT [FK_registration_course]
GO




-------------------------

USE [Test]
GO

/****** Object:  Table [dbo].[user]    Script Date: 24-05-2023 15:58:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


