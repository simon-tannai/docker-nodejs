# Build the images
docker build -t nodejs .

# List images
docker images

# Create a container
docker run -it --name "testnodejs" nodejs

# List all containers
docker ps --all

# Start stopped container
docker start 1527affd604c
