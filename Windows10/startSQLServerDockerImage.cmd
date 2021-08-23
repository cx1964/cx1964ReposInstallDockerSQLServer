rem File: startSQLServerDockerImage.cmd 
rem Functie: starten van een Docker image met SQL server
rem          en een Docker volumne in windows
rem
rem Opm: Zie beschikbare images https://hub.docker.com/_/microsoft-mssql-server
rem doc: https://hub.docker.com/_/microsoft-mssql-server

set PASSWORD="Welkom01"
docker run --name "sql2019-CU12" --memory "4G" -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD='%PASSWORD% -p 1433:1433 -v mssqlserverdata1:/var/opt/mssql -d mcr.microsoft.com/mssql/server:2019-CU12-ubuntu-20.04

