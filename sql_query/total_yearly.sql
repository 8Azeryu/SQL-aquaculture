SELECT 
	YEAR_ID 
	,SUM(AMOUNT) as total_kg_imported
FROM import
group by 1
