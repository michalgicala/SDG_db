use SDG_db;

-- check if table already exists and remove
drop table if exists stg.SDGData;

-- create new table
create table stg.SDGData
(
CountryName varchar(200) not null,
CountryCode varchar(200) not null,
IndicatorName varchar(1200) null,
IndicatorCode varchar(150) null,
Year1990 varchar(200) null,
Year1991 varchar(200) null,
Year1992 varchar(200) null,
Year1993 varchar(200) null,
Year1994 varchar(200) null,
Year1995 varchar(200) null,
Year1996 varchar(200) null,
Year1997 varchar(200) null,
Year1998 varchar(200) null,
Year1999 varchar(200) null,
Year2000 varchar(200) null,
Year2001 varchar(200) null,
Year2002 varchar(200) null,
Year2003 varchar(200) null,
Year2004 varchar(200) null,
Year2005 varchar(200) null,
Year2006 varchar(200) null,
Year2007 varchar(200) null,
Year2008 varchar(200) null,
Year2009 varchar(200) null,
Year2010 varchar(200) null,
Year2011 varchar(200) null,
Year2012 varchar(200) null,
Year2013 varchar(200) null,
Year2014 varchar(200) null,
Year2015 varchar(200) null,
Year2016 varchar(200) null,
Year2017 varchar(200) null,
Year2018 varchar(200) null
);

-- select all columns from newly created table
select * from stg.SDGData;
