use SDG_db;

bulk insert stg.SDGData
	from 'E:\MS SQL Server\database project\raw data\SDGData.csv'
	with
		(
			--datafiletype ='char',
			fieldterminator = '","',
			rowterminator ='\n',
			firstrow = 2
		);

go
