FROM postgres:12.0-alpine

# The official PostgreSQL Docker image allows you to place SQL files in the 
# docker-entrypoint-initdb.d folder, and the first time it starts it will 
# import those SQL files.
COPY scripts/* /docker-entrypoint-initdb.d/

# The ENV PGDATA=/data environment variable instructs the PostgreSQL image 
# to use /data instead of /var/lib/postgresql/data as its data directory.
# This is necessary because PostgreSQL sets VOLUME /var/lib/postgresql/data 
# in its Dockerfile which means it will be empty every time the container 
# starts if you don’t persist it to the Docker host. We’re using a custom 
# data path instead to avoid it being empty.
ENV PGDATA=/data