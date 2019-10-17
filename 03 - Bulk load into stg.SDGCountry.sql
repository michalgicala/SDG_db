use SDG_db;

bulk insert stg.SDGCountry
	from 'E:\MS SQL Server\database project\raw data\SDGCountry.csv'
	with
		(
			--datafiletype ='char',
			fieldterminator = '","',
			rowterminator ='\n',
			firstrow = 2
		);

go
