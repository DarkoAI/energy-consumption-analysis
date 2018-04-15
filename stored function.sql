CREATE FUNCTION CountryandClimate
	(@CountryName Varchar(50),
	@Capital Varchar(50),
	@Climate Varchar(50))
RETURNS Varchar(100)
AS BEGIN
	DECLARE @Country_Capital_Climate  Varchar(100)
	SELECT @Country_Capital_Climate = RTRIM(@CountryName) + ' - ' + RTRIM(@Capital) + ' - ' + RTRIM(@Climate);
	RETURN @Country_Capital_Climate
END;

SELECT dbo.CountryandClimate(CountryName, Capital, Climate) AS 'Country - Capital - Climate'
FROM COUNTRY;