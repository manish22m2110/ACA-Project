# Use Ubuntu as the base image
FROM ubuntu:latest

# Update Ubuntu and install necessary dependencies
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    libaio1 
    # && rm -rf /var/lib/apt/lists/*
RUN apt-get install -y tk8.6
RUN apt-get install -y libpangocairo-1.0-0

# Set the working directory
WORKDIR /opt

# Download HammerDB
RUN wget https://github.com/TPC-Council/HammerDB/releases/download/v4.9/HammerDB-4.9-Linux.tar.gz
# Extract HammerDB
RUN tar -xzf HammerDB-4.9-Linux.tar.gz && rm HammerDB-4.9-Linux.tar.gz

RUN ls

# Move HammerDB to the working directory and grant execution permissions
RUN chmod +x /opt/HammerDB-4.9/hammerdb

# Set the entrypoint to HammerDB CLI
# ENTRYPOINT ["/opt/HammerDB-4.9/hammerdb"]
ENTRYPOINT bash

