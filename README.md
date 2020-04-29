# myapp-back

docker build -t myapp-back .
docker create -v /tmp/db --name mysqldata myapp-back
docker run -d --name my_myapp-back -v mysqldata:/var/lib/mysql -p 3306:3306 myapp-back

docker run -d --link my_myapp-back:db -p 8080:8080 adminer
