# 🐳 Docker Containers Project: Flask + Redis + NGINX

![Docker](https://img.shields.io/badge/Docker-Container-blue)
![Python](https://img.shields.io/badge/Python-Flask-green)
![Redis](https://img.shields.io/badge/Redis-Database-red)
![NGINX](https://img.shields.io/badge/NGINX-Reverse%20Proxy-brightgreen)

# Overview

This project was built as part of my **DevOps learning journey** to gain hands-on experience designing and managing a multi-container application using Docker.

Instead of running every component inside a single application, the system is separated into multiple containers. Each container has a specific responsibility, making the application easier to manage, scale, and maintain.

Docker Compose is used to create, configure, and connect all services automatically with a single command.

The goal of this project was to understand how real-world applications are built using containerized services that communicate over a Docker network.

---

# 🏗️ What I Built

A containerized web application consisting of four services:

## 🐍 Flask Application

The Flask application is responsible for:

- Serving the web pages
- Handling user requests
- Communicating with Redis
- Displaying the visitor counter

---

## 🔴 Redis Database

Redis is used for:

- Storing visitor count data
- Providing fast in-memory storage
- Maintaining application state

A Docker volume is used so Redis data can persist even if the container is restarted.

---

## 🌐 NGINX Reverse Proxy

NGINX acts as the entry point for the application.

It handles:

- Receiving incoming requests
- Forwarding requests to Flask containers
- Load balancing traffic between multiple Flask instances

---

## 🐳 Docker Compose

Docker Compose manages the entire application stack.

It is responsible for:

- Creating containers
- Creating networks
- Managing dependencies
- Connecting services together
- Scaling Flask containers

---

# 🏗️ Application Architecture

```
                    Browser
                       |
                       |
                       ▼
                 +-----------+
                 |   NGINX   |
                 | Reverse   |
                 |   Proxy   |
                 +-----------+
                  /    |    \
                 /     |     \
                ▼      ▼      ▼

          +--------+ +--------+ +--------+
          | Flask  | | Flask  | | Flask  |
          | Web 1  | | Web 2  | | Web 3  |
          +--------+ +--------+ +--------+

                 \      |      /
                  \     |     /

                       ▼

                 +-----------+
                 |   Redis   |
                 |  Storage  |
                 +-----------+
```

---

# ⚙️ How It Works

1. A user opens the application in their browser.

2. The request first reaches the NGINX reverse proxy.

3. NGINX forwards the request to one of the available Flask containers.

4. Flask processes the request.

5. When the visitor counter page is accessed:
   - Flask connects to Redis.
   - Redis retrieves the current visitor count.
   - Flask increases the count.
   - The updated number is displayed.

6. Multiple Flask containers can run simultaneously, allowing NGINX to distribute requests between them.

---

# 🚀 Features

✅ Multi-container Docker application  
✅ Docker Compose orchestration  
✅ Flask web application  
✅ Redis visitor counter  
✅ Persistent Docker volume  
✅ Environment variable configuration  
✅ NGINX reverse proxy  
✅ Multiple Flask replicas  
✅ Container networking  
✅ Service-to-service communication  
✅ Scalable application architecture  

---

# 📂 Project Structure

```
redis-flask-app/
│
├── screenshots/
│   ├── homepage.png
│   ├── counter.png
│   ├── containers.png
│   └── logs.png
│
├── app.py
├── counter.py
├── Dockerfile
├── docker-compose.yml
├── nginx.conf
├── requirements.txt
├── static/
│   └── style.css
└── README.md
```

---

# 📸 Screenshots

## Homepage

--- ![alt text](image.png)
---

## Visitor Counter Dashboard

--- ![alt text](image-1.png)

---

## Application Logs

--- ![alt text](image-2.png)
---

Clone the repository:

```bash
git clone <repository-url>
```

Navigate into the project:

```bash
cd redis-flask-app
```

Build and start the application:

```bash
docker compose up --build --scale web=3
```

Open the application:

```
http://localhost:5002
```

Visitor counter:

```
http://localhost:5002/count
```

---

# 🔧 Useful Docker Commands

View running containers:

```bash
docker ps
```

View application logs:

```bash
docker compose logs
```

View specific service logs:

```bash
docker compose logs web
```

Stop the application:

```bash
docker compose down
```

Rebuild containers:

```bash
docker compose up --build
```

View Docker networks:

```bash
docker network ls
```

---

# 🧠 What I Learned

This project gave me practical experience with:

- Building Docker images
- Running and managing containers
- Creating multi-container applications
- Writing Docker Compose configurations
- Understanding Docker networking
- Connecting services through container networks
- Using environment variables for configuration
- Managing persistent storage with Docker volumes
- Configuring NGINX as a reverse proxy
- Scaling application containers
- Understanding how production-style applications communicate

---

# 🔮 Next Steps

Future improvements:

- Deploy the application to AWS
- Create a CI/CD pipeline using GitHub Actions
- Add monitoring and logging
- Add health checks
- Add application metrics
- Explore Kubernetes deployment
- Automate infrastructure using Terraform

---

# 🛠️ Skills Demonstrated

```
Docker
Docker Compose
Python
Flask
Redis
NGINX
Linux
Networking
Containerization
Reverse Proxy
Load Balancing
```

---

# 📌 Project Goal

The purpose of this project was to move beyond running simple containers and gain practical experience building a complete containerized application similar to a real-world DevOps environment.