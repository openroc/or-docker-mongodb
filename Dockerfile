#
# Dockerizing MongoDB: mongos
#

# Use Ubuntu LTS as Base
FROM ubuntu:14.04

MAINTAINER openroc <openroc@gmail.com>

# Add MongoDB public GPG key
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

# Add MongoDB to source list
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# Update source list
RUN apt-get update

# Install MongoDB #TODO: add mongos only here
RUN apt-get install -y mongodb-org=2.6.1

# Create direcotries for MongoDB
RUN mkdir -p /data/db
RUN mkdir -p /data/log

# Expose port
EXPOSE 27017
