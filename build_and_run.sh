docker build -t nest-postgres .
docker run -d --name nest-db-postgres -p 9999:5432 -it nest-postgres