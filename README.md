## Docker Redis Tutorial

## Step 1.

Run

    docker build .

## Step 2.

The build should end with printing

    Successfully built some-ID

Run

    docker run some-ID

## Step 3.

The run should print

    Ready to accept connections

Writing a docker file is like being given a computer with no OS
and being told to install some software.

    Running in some-ID

means temporary in-memory in-between-steps created container
created using sourced image from a previous step.

## Step 4.

Abort running process with ctr/cmd C

Run

    docker build .

rebuilding an image with cache
after adding additional instruction ```RUN apk add --update gcc```.

New instruction will use container from step 2/3 from cache
to create a new File System Snapshop.

New snapshots will be created from the point of added/edited line of intruction.

Build will use cached images to reduce time of processing
and that is one of the reasons why docker is so popular.

Run again

    docker build .

to see how quickly it went this time.

## Step 5.

Tag an image running

    docker build -t dockerusername/reponame:version .

replacing ```dockerusername``` with your docker username,
```reponame``` with a new project name
and ```version``` with a new version number (in fact it is a  tag) or just ```latest```.

Example:

    docker build -t nataliastanko/redis-tutorial:latest .

Run

    docker run -t nataliastanko/redis-tutorial

to run latest version.

## Step 6.

### Commit the ready running image

Run

    docker ps

to get IDofRunningContainer,
the run

    docker commit IDofRunningContainer

You will get a new IDimage as a result.

**or**

### Generate an image manually and commit

Run

    docker run -it alpine sh

to create a new image.

Within a running container run

    RUN apk add --update redis

Open second terminal window and execute

    docker ps

to get IDofRunningContainer,
then execute

    docker commit -c 'CMD["redis-server"]' IDofRunningContainer

-c sets a default startup command.

You will get a new IDimage as a result.

Run

    docker run IDimage

to start a new container out of the image just created
and get redy redis instance.

***

***

***

* Based on [udemy course](https://www.udemy.com/docker-and-kubernetes-the-complete-guide/).
