USE [master]
GO
/****** Object:  Database [SMS_ASP_Identity]    Script Date: 3/28/2019 1:55:20 PM ******/
CREATE DATABASE [SMS_ASP_Identity]
GO
ALTER DATABASE [SMS_ASP_Identity] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SMS_ASP_Identity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SMS_ASP_Identity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET ARITHABORT OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SMS_ASP_Identity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SMS_ASP_Identity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SMS_ASP_Identity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SMS_ASP_Identity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SMS_ASP_Identity] SET  MULTI_USER 
GO
ALTER DATABASE [SMS_ASP_Identity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SMS_ASP_Identity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SMS_ASP_Identity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SMS_ASP_Identity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SMS_ASP_Identity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SMS_ASP_Identity] SET QUERY_STORE = OFF
GO
USE [SMS_ASP_Identity]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/28/2019 1:55:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/28/2019 1:55:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/28/2019 1:55:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/28/2019 1:55:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/28/2019 1:55:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9189ff15-ab5c-430d-9db8-2d08e46e69f0', N'123test@xyz.com', 0, N'ADo6ECz2IpH401TkcjeuH9/nZEo6WEPrDTdMHZOBDiBFxiFuqNXho3F7yVDQ6ePXHQ==', N'79284a2a-d64d-4137-9593-8ca859f934bc', NULL, 0, 0, NULL, 1, 0, N'123test@xyz.com')
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [SMS_ASP_Identity] SET  READ_WRITE 
GO
