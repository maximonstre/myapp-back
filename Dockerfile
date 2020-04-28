FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD password
# Add a database
ENV MYSQL_DATABASE mydb
# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./scripts/ /docker-entrypoint-initdb.d/

