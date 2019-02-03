## Docker Redis Tutorial

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
