# Image based on debian
FROM library/debian

# Run commands on building
RUN \
  # Update packages
  apt-get -y update && apt-get upgrade -y && \

  # Install wget, xz-utils (to uncompress) and git
  apt-get install wget xz-utils git -y && \

  # Create nodejs folder
  mkdir /nodejs && \
  cd nodejs && \

  # Download node.js v6.10.1
  wget https://nodejs.org/dist/v6.10.1/node-v6.10.1-linux-x64.tar.xz && \

  # Uncompress node.js sources
  tar xJf node-v6.10.1-linux-x64.tar.xz && \

  # Delete compressed sources
  rm node-v6.10.1-linux-x64.tar.xz

# Add Node.js and NPM into environment
ENV PATH $PATH:/nodejs/node-v6.10.1-linux-x64/bin

# Install Yarn
RUN npm i -g yarn

# Default command
CMD bash
