DECLARE @k varchar(50) = '* ', @i int = 1

WHILE @i < 21
BEGIN
    SELECT REPLICATE(@k, @i)
    SET @i = @i +1
END
