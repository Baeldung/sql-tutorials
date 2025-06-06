SELECT @@VERSION;

sqlcmd -S localhost -U sa -Q 'select @@VERSION'

SELECT SERVERPROPERTY('productversion') AS productversion, SERVERPROPERTY ('productlevel') as productlevel, SERVERPROPERTY ('edition') as edition
