use SDG_db;
go

-- highlight duplicated rows
select CountryName, CountryCode, IndicatorName, IndicatorCode
from stg.SDGData
group by CountryName, CountryCode, IndicatorName, IndicatorCode
having count(*) > 1;

-- if any rows appeared, execute the query and remove duplicated rows
if @@ROWCOUNT > 1
begin
	with Dedupe_CTE (RowNo, CountryName, CountryCode, IndicatorName, IndicatorCode)
	as
	(
		select ROW_NUMBER() over (partition by CountryCode order by CountryCode desc) as RowNo,
		CountryName, CountryCode, IndicatorName, IndicatorCode
		from stg.SDGData
	)
	delete from Dedupe_CTE where RowNo > 1;
end;

go

-- check if duplicates removed
select CountryName, CountryCode, IndicatorName, IndicatorCode
from stg.SDGData
group by CountryName, CountryCode, IndicatorName, IndicatorCode
having count(*) > 1 ;