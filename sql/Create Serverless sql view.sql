USE gold_db
GO

CREATE OR ALTER PROC CreateSQLServerlessView_gold @ViewName nvarchar(100)
AS 
BEGIN
    DECLARE @statement VARCHAR(MAX)

    -- Ensure @ViewName does not contain the full URL, just the folder name
    IF CHARINDEX('https://', @ViewName) > 0
    BEGIN
        SET @ViewName = REPLACE(@ViewName, 'https://asadsa.dfs.core.windows.net/', '')
    END

    SET @statement = N'CREATE OR ALTER VIEW ' + @ViewName + ' AS
        SELECT
            *
        FROM
            OPENROWSET(
                BULK ''/gold/SalesLT/' + @ViewName + '/'',
                DATA_SOURCE = ''GoldStorage'',
                FORMAT = ''DELTA''
            ) AS [result]'

    EXEC (@statement)
END
GO
