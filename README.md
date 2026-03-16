# Docker React Multi-Stage Lab

This project is a small lab to practice **Dockerfile multi-stage builds**.

The React application is built with **Node.js**, and the final files are served with **Nginx**.

## Build the image

```bash
docker build -t react-multistage-lab .
```

## Run the container

```bash
docker run -d -p 8080:80 --name react-lab react-multistage-lab
```

## Open the app

Go to:

http://localhost:8080

## What I practiced

* Dockerfile basics
* Multi-stage build
* Copy files between stages
* Serve a React build with Nginx
