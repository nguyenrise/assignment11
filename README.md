# Docker Configuration Guide

This project uses Docker for containerization, ensuring consistent development and deployment environments. Below is an explanation of our Docker setup.

## Dockerfile Breakdown

Our Dockerfile is configured to create a lightweight container for a Node.js application:

```dockerfile
FROM node:20.17.0-alpine
```

- Uses Node.js 20.17.0 with Alpine Linux as the base image for minimal size

```dockerfile
WORKDIR /nguyen_sunrise_coding_assignment11
```

- Sets the working directory in the container

```dockerfile
COPY package*.json ./
RUN npm install
```

- Copies package.json and package-lock.json
- Installs all dependencies

```dockerfile
COPY . .
```

- Copies all project files into the container

```dockerfile
EXPOSE 7775
```

- Exposes port 7775 for the application

```dockerfile
CMD ["npm", "run", "dev"]
```

- Starts the development server using `npm run dev`

## Getting Started

To build and run the container:

1. Build the Docker image:

   ```bash
   docker build -t my-node-app .
   ```

2. Run the container:
   ```bash
   docker run -p 7775:7775 my-node-app
   ```

This will start the application and make it accessible on port 7775 of your host machine.

## Requirements

- Docker installed on your system
- Node.js (for local development outside Docker)

## Notes

- The application runs in development mode inside the container
- The container uses Alpine Linux for a smaller footprint
- Port 7775 must be available on your host machine
