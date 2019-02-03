## Docker Redis Tutorial

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

***

***

***

* Based on [udemy course](https://www.udemy.com/docker-and-kubernetes-the-complete-guide/).
