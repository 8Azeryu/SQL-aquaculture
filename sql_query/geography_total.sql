with total as 
(
SELECT
	SUM(AMOUNT) as total_kg_imported
FROM import
)
SELECT 
	YEAR_ID 
	,SUM(AMOUNT) as total_kg_imported
	,ROUND(SUM(AMOUNT) * 100 / (SELECT total_kg_imported from total), 4) as prc_from_overall
FROM import
group by 1
