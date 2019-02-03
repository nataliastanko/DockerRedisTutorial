## Docker Redis Tutorial

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

***

***

***

* Based on [udemy course](https://www.udemy.com/docker-and-kubernetes-the-complete-guide/).
