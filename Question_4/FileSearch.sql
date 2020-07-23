USE [Interview_RonaldVentanilla]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.usp_FileSearch'))
DROP PROCEDURE dbo.usp_FileSearch
GO

-- =============================================
-- Author:		<Ventanilla,,Ronald>
-- Create date: <7/23/2020,,>
-- Description:	<File Search,,>
-- =============================================
CREATE PROCEDURE dbo.usp_FileSearch
	@criteria varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

SELECT f.[FileId], f.[FullPath], f.[FileName], f.[ReadOnly], f.[Size], f.[DateCreated]
FROM dbo.FileSystem f
	WHERE f.[FileName] like '%' + @criteria + '%'
END
GO
