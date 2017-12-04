# belgianbeerexplorerdb:v1
FROM postgres:latest
ADD beers.sql /docker-entrypoint-initdb.d/