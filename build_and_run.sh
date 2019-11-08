docker build -t nest .
docker run -d --name nest_test -p 9999:5432 -it nest