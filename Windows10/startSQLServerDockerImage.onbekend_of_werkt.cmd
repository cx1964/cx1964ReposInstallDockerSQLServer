rem Functie: starten van een Docker image met SQL server en een Docker volumne in windows
set PASSWORD="Welkom01"
docker run --name "sql19latest" --memory "1G" -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD='%PASSWORD% -p 1433:1433 -v mssqlserverdata1:/var/opt/mssql -d mcr.microsoft.com/mssql/server:latest
rem    -d mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04
