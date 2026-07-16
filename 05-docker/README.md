# 05 - Docker

Docker introduced me to **containerization** and building applications that run consistently across different environments. This module focuses on creating, managing, and deploying containerized applications while understanding how services communicate and work together.

Through hands-on labs and projects, I learned how to package applications into containers, manage multi-container environments, and use Docker Compose to automate deployments.

## What I Covered

- Docker fundamentals
- Images and containers
- Dockerfiles
- Building custom Docker images
- Running and managing containers
- Docker Compose
- Multi-container applications
- Container networking
- Environment variables
- Docker volumes and persistent storage
- Container logs and troubleshooting
- Scaling containers
- NGINX reverse proxy with Docker
- Service communication between containers

## Folder Structure

```
05-docker/
├── notes/
├── labs/
├── projects/
│   └── redis-flask-app/
└── screenshots/
```

## Projects

### Flask + Redis + NGINX Multi-Container Application

Built a containerized web application using:

- Flask as the application server
- Redis for storing visitor count data
- NGINX as a reverse proxy and load balancer
- Docker Compose for managing multiple services

The project includes:

- Multi-container architecture
- Docker Compose deployment
- Container networking
- Persistent Redis storage
- Environment variable configuration
- Multiple Flask containers behind NGINX

## Status

Completed