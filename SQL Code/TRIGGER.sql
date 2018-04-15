CREATE TRIGGER CountryRegionCheck
ON COUNTRY AFTER INSERT
AS
BEGIN
UPDATE COUNTRY
	SET Region = 'RUSSIAN GROUP'
	WHERE CountryName IN  ('Latvia', 'Lithuania', 'Moldova', 'Tajikistan', 'Ukraine', 'Uzbekistan')
END;

INSERT INTO COUNTRY VALUES (
	'Moldova', 'MD', 'Chisinau', 'SUB-SAHARAN AFRICA', 3100540, '6.15°C', 74350170153, NULL, 6);

SELECT *
FROM COUNTRY;