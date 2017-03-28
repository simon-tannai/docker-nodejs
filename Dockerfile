# Image based on debian
FROM library/debian

# Run commands on building
RUN \
  apt-get -y update && apt-get upgrade -y && \
  apt-get install wget xz-utils -y && \
  mkdir /nodejs && \
  cd nodejs && \
  wget https://nodejs.org/dist/v6.10.1/node-v6.10.1-linux-x64.tar.xz && \
  tar xJf node-v6.10.1-linux-x64.tar.xz && \
  rm node-v6.10.1-linux-x64.tar.xz

# Add Node.js and NPM into environment
ENV PATH $PATH:/nodejs/node-v6.10.1-linux-x64/bin

# Default command
CMD bash
