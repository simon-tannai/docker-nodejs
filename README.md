# Simple Docker image with Node.js

## Build image
`docker build -t nodejs .`

## List images
`docker images`

## Create a container
`docker run -it --name "nodejsboilerplate" nodejs`

### Create a container with a shared volume
`docker run --name "nodejsboilerplate" -it -p 3000:8080 -v /PATH/IN/HOST:/WORK nodejs`

## List all containers
`docker ps --all`

## Start stopped container
`docker start 1527affd604c`
