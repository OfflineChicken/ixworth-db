CREATE DATABASE nest;
\connect nest;

CREATE USER docker WITH ENCRYPTED PASSWORD 'TODOtemporary';
GRANT ALL PRIVILEGES ON DATABASE nest TO docker;