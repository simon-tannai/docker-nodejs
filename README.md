# Simple Docker image with Node.js

## Build image
`docker build -t nodejs .`

## List images
`docker images`

## Create a container
`docker run -it --name "testnodejs" nodejs`

### Create a container with a shared volume
`docker run --name "testnodejs" -it -v /PATH/IN/HOST:/PATH/IN/CONTAINER nodejs`

## List all containers
`docker ps --all`

## Start stopped container
`docker start 1527affd604c`
