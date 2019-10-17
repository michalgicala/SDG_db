use SDG_db;
go

-- highlight duplicated rows
select CountryCode
from stg.SDGCountry
group by CountryCode
having count(*) > 1;

-- if any rows appeared, execute the query and remove duplicated rows
if @@ROWCOUNT > 1
begin
	with Dedupe_CTE (RowNo, CountryCode)
	as
	(
		select ROW_NUMBER() over (partition by CountryCode order by CountryCode desc) as RowNo,
		CountryCode
		from stg.SDGCountry
	)
	delete from Dedupe_CTE where RowNo > 1;
end;

go

-- check if duplicates removed
select CountryCode
from stg.SDGCountry
group by CountryCode
having count(*) > 1 ;
