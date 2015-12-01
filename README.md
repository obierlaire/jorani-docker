# jorani-docker
Docker for [Jorani](https://github.com/bbalet/jorani) (Leave Management System)

You can either:
- run Jorani and mysql altogether with docker-compose: `make`
- run Jorani by itself and point to an existing database `docker build -t jorani:latest . && docker run -d -p 8080:80 -e MYSQL_HOST=localhost -e MYSQL_USER=root -e MYSQL_PASSWORD=password -e MYSQL_DATABASE=lms jorani:latest`
