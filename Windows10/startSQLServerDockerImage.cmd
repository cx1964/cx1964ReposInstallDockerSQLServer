rem File: startSQLServerDockerImage.cmd 
rem Functie: starten van een Docker image met SQL server
rem          en een Docker volumne in windows
rem doc: https://hub.docker.com/_/microsoft-mssql-server

set PASSWORD="Welkom01"
docker run --name "sql19latest" --memory "1G" -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD='%PASSWORD% -p 1433:1433 -v mssqlserverdata1:/var/opt/mssql -d mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04

