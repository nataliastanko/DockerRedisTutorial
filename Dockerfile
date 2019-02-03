# Instructions (FROM, RUN, CMD) telling Docker Server what to do
# Arguments to the instructions (alpine, apk add --update redis, ["redis-server"])

# use an existing docker image as a base
# base image is usually an OS system
# create File System Snapshop
FROM alpine

# download and install a dependency
# eunning commands installs additional software
# apk is package manager for alpine linux
RUN apk add --update redis

# tell the image what to do when it starts as a container
# command to run on startup
CMD ["redis-server"]
