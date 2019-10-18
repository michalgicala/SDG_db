use SDG_db;
go

--- unpivot year columns----
select CountryName, CountryCode, IndicatorName, IndicatorCode, Years, YearlyValues
from 
	(select
	CountryName, CountryCode, IndicatorName, IndicatorCode, 
	Year1990, Year1991,Year1992,Year1993,Year1994,Year1995,Year1996,
	Year1997, Year1998,Year1999,Year2000,Year2001,Year2002,Year2003,
	Year2004, Year2005,Year2006,Year2007,Year2008,Year2009,Year2010,
	Year2011, Year2012,Year2013,Year2014,Year2015,Year2016,Year2017,
	Year2018
	from stg.SDGData) src
unpivot
	(YearlyValues for Years in (Year1990, Year1991,Year1992,Year1993,
	Year1994,Year1995,Year1996,Year1997, Year1998,Year1999,Year2000,
	Year2001,Year2002,Year2003,Year2004, Year2005,Year2006,Year2007,
	Year2008,Year2009,Year2010,Year2011, Year2012,Year2013,Year2014,
	Year2015,Year2016,Year2017,Year2018)
		) unpvt;


--select top 100 * from stg.SDGData;