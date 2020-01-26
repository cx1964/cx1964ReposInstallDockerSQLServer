# http://www.centinosystems.com/blog/sql/persisting-sql-server-data-in-docker-containers-part-1/
# remark: run script with command:
#         sudo ./0060_runSQLServerDockerContainer.sh


# for avaiable SQL Server Docker containers see
# https://hub.docker.com/_/microsoft-mssql-server

# Run Docker conrainer met Docker volume
# /var/opt/mssql
docker run \
       --name 'sql19' \
       -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD='$PASSWORD \
       -p 1433:1433 \
       -v sqldata1:/var/opt/mssql \
       -d mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04