# Java Docker Web Application

A simple Spring Boot 3 application with an HTML home page and a `/hello` endpoint.

## Requirements
- Docker

## Build the Docker image
```bash
docker build -t java-webapp:1.0 .
```

## Run the container
```bash
docker run -d --name java-webapp -p 8082:8080 --restart unless-stopped java-webapp:1.0
```

Open http://localhost:8082 in your browser.
The API endpoint is http://localhost:8082/hello.

## Useful commands
```bash
docker ps
docker logs java-webapp
docker stop java-webapp
docker start java-webapp
```

For AWS EC2, allow inbound TCP port 8082 in the instance security group, preferably only from your IP address, then browse to:
`http://YOUR_EC2_PUBLIC_IP:8082`
