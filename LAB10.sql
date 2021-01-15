CREATE FUNCTION MaxAndMinPriceSum()
RETURNS INT
AS 
BEGIN
    DECLARE @maxPrice int;
    DECLARE @minPrice int;
    SELECT @maxPrice = MAX(ֳ����_�����.ֳ��)
    FROM ֳ����_�����
    SELECT @minPrice = MIN(ֳ����_�����.ֳ��)
    FROM ֳ����_�����
    RETURN (@maxPrice + @minPrice)
    END

GO

SELECT dbo.MaxAndMinPriceSum()



IF OBJECT_ID (N'dbo.AddAsset', N'FN') IS NOT NULL  
    DROP PROC dbo.AddAsset;  
GO
CREATE PROC AddAsset
    @id int OUTPUT,
    @name CHAR(30),
    @type CHAR(30),
    @tiker CHAR(15),
    @desc CHAR(50),
    @price MONEY
AS	
IF @price > 0
BEGIN
    DECLARE @currentDate DATETIME;
    SET @currentDate = GetDate();
    INSERT INTO [dbo].[ֳ����_�����]
        (�����, ���, �����, ����, ֳ��, Date)
    VALUES
        (@name, @type, @tiker, @desc, @price, @currentDate)
    SET @id = @@IDENTITY
END
ELSE
BEGIN
    PRINT 'Price cannot be less or equal 0'
END

GO

DECLARE @id INT
EXEC AddAsset @id OUTPUT, 'Test Proc', 'Test type proc', '123-123-43', 'Some desc from proc', 54100
PRINT @id

GO
