use SDG_db;

-- check if table already exists and remove
drop table if exists stg.SDGCountry;

-- create new table
create table stg.SDGCountry
(
CountryCode varchar(100) not null,
ShortName varchar(100) not null,
TableName varchar(200) not null,
LongName varchar(200) not null,
TwoAlphaCode varchar(500) null,
CurrencyUnit varchar(1500) null,
SpecialNotes varchar(1300) null,
Region varchar(100) null,
IncomeGroup varchar(100) null,
WB2Code varchar(200) null,
NationalAccountsBaseYear varchar(50) null,
NationalAccountsReferenceYear varchar(50) null,
SNAPriceEvaluation varchar(100) null,
LendingCategory varchar(150) null,
OtherGroups varchar(200) null,
SystemOfNationalAccounts varchar(200) null,
AlternativeConversionFactor varchar(200) null,
PPPSurveyYear varchar(50) null,
BalanceOfPaymentsManualInUse varchar(50) null,
ExternalDebtReportingStatus varchar(500) null,
SystemOfTrade varchar(500) null,
GovernmentAccountingConcept varchar(500) null,
IMFDataDisseminationStandard varchar(500) null,
LatestPopulationCensus varchar(200) null,
LatestHouseholdSurvey varchar(200) null,
SourceOfMostRecentIncomeAndExpenditureData varchar(200) null,
VitalRegistrationComplete varchar(200) null,
LatestAgriculturalCensus varchar(200) null,
LatestIndustrialData varchar(200) null,
LatestTradeData varchar(200) null
);

go

-- select all columns from newly created table
select * from stg.SDGCountry;
