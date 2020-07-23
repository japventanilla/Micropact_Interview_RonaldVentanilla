USE [Interview_RonaldVentanilla]
GO

IF EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dbo.FileSystem')
)
    BEGIN
        DROP TABLE [dbo].[FileSystem]
	END

CREATE TABLE [dbo].[FileSystem](
			[FileId] [int] IDENTITY(1,1) NOT NULL,
			[FileName] text NOT NULL,
			[FullPath] text NOT NULL,
			[Size] [int] NOT NULL,
			[DateCreated] [datetime] NOT NULL,
			[ReadOnly] bit NOT NULL,
		 CONSTRAINT [PK_FileSystem] PRIMARY KEY CLUSTERED 
		(
			[FileId] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]

GO

INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text1.txt','C:\text1.txt',161,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text2.txt','C:\test1\text2.txt',172,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text3.txt','C:\test1\text3.txt',263,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text4.txt','C:\test1\text4.txt',116,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text5.txt','C:\test2\text5.txt',136,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text6.txt','C:\test2\text6.txt',146,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text7.txt','C:\test2\text7.txt',116,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text8.txt','D:\test1\text8.txt',16,'7/23/2020',0)
INSERT INTO [dbo]. [FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text9.txt','D:\test1\text9.txt',161,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text10.txt','D:\test2\text10.txt',15,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text11.txt','D:\txt11.txt',161,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text12.txt','C:\test1\txt12.txt',172,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text13.txt','C:\test1\txt13.txt',263,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text14.txt','C:\test1\txt14.txt',116,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text15.txt','C:\test2\txt15.txt',136,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text16.txt','C:\test2\txt16.txt',146,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text17.txt','C:\test2\txt17.txt',116,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text18.txt','D:\test1\txt18.txt',16,'7/23/2020',0)
INSERT INTO [dbo]. [FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text19.txt','D:\test1\txt19.txt',161,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text20.txt','D:\test2\txt20.txt',15,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('txt21.txt','C:\test2\txt21.txt',146,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text22.txt','C:\test2\txt22.txt',116,'7/23/2020',1)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text23.txt','D:\test1\txt23.txt',16,'7/23/2020',0)
INSERT INTO [dbo]. [FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text24.txt','D:\test1\txt24.txt',161,'7/23/2020',0)
INSERT INTO [dbo].[FileSystem]
           ([FileName],[FullPath],[Size],[DateCreated],[ReadOnly])
     VALUES('text25.txt','D:\test2\txt25.txt',15,'7/23/2020',1)
GO


