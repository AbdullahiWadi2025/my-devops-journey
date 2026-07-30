# CI/CD Pipeline with GitHub Actions

## Overview

In this module, I built a complete CI/CD pipeline using GitHub Actions. The goal was to automate code validation, testing, Docker image creation, and Docker image publishing.

This project demonstrates how Continuous Integration (CI) and Continuous Deployment (CD) work together to improve software delivery.

---

# Project Structure

```text
08-CICD/
├── README.md
├── task-1/
│   ├── app.py
│   ├── requirements.txt
│   └── tests/
│       └── test_app.py
├── task-2/
│   ├── Dockerfile
│   ├── app.py
│   └── requirements.txt
└── screenshots/
    ├── ci-pipeline-passed.png
    └── cd-pipeline-passed.png
```

GitHub Actions workflows:

```text
.github/workflows/
├── ci.yaml
└── cd.yaml
```

---

# Task 1: Continuous Integration (CI)

## What I Built

I created a CI pipeline using GitHub Actions that automatically checks my Python application whenever code is pushed or a pull request is opened.

The CI pipeline performs:

* Repository checkout
* Python environment setup
* Dependency installation
* Code quality checks using Flake8
* Automated unit testing

---

## CI Workflow

File:

```text
.github/workflows/ci.yaml
```

Pipeline flow:

```text
Push / Pull Request
        |
        v
Checkout Repository
        |
        v
Setup Python
        |
        v
Install Dependencies
        |
        v
Run Flake8
        |
        v
Run Unit Tests
        |
        v
CI Passed
```

The purpose of CI is to catch problems early by automatically validating code before it moves further in the development process.

---

# Task 2: Continuous Deployment (CD)

## What I Built

I created a CD pipeline that automatically builds and pushes a Docker image to Docker Hub whenever changes are pushed to the main branch.

The CD pipeline performs:

* Repository checkout
* Docker Hub authentication using GitHub Secrets
* Docker image build
* Docker image push to Docker Hub

---

## CD Workflow

File:

```text
.github/workflows/cd.yaml
```

Pipeline flow:

```text
Push to Main Branch
        |
        v
Checkout Repository
        |
        v
Login to Docker Hub
        |
        v
Build Docker Image
        |
        v
Push Docker Image
        |
        v
Image Published
```

---

# Pipeline YAML Files

## CI Pipeline

Location:

```text
.github/workflows/ci.yaml
```

Purpose:

* Automates testing
* Checks code quality
* Ensures application changes do not break existing functionality

---

## CD Pipeline

Location:

```text
.github/workflows/cd.yaml
```

Purpose:

* Builds Docker images automatically
* Authenticates with Docker Hub
* Publishes the Docker image

---

# Screenshots

## CI Pipeline Passing

![CI Pipeline Passed](screenshots/ci-pipeline-passed.png)

---

## CD Pipeline Passing

![CD Pipeline Passed](screenshots/cd-pipeline-passed.png)

---

# What I Learned

Through this project, I learned:

* How GitHub Actions automates development workflows.
* The difference between Continuous Integration and Continuous Deployment.
* How to create workflow files using YAML.
* How to automate Python testing.
* How to use Flake8 for code quality checks.
* How Docker images are built inside CI/CD pipelines.
* How to securely use GitHub Secrets.
* How to automatically publish Docker images to Docker Hub.

---

# Issues I Solved

During this project, I solved several issues:

## GitHub Actions Workflow Location

Problem:

GitHub Actions was not detecting workflows because they were placed in the wrong directory.

Solution:

Moved workflow files into:

```text
.github/workflows/
```

---

## YAML Syntax Errors

Problem:

The workflow failed because of incorrect YAML indentation and duplicate workflow definitions.

Solution:

Fixed YAML formatting and removed duplicate workflow configurations.

---

## Docker Build Path Issues

Problem:

Docker could not find the Dockerfile during the build process.

Solution:

Updated the Docker build path to point to the correct Task 2 directory.

---

## Docker Hub Authentication

Problem:

Docker push failed because GitHub Actions could not authenticate with Docker Hub.

Solution:

Configured Docker Hub access tokens and stored credentials securely using GitHub Secrets.

---

# Technologies Used

* GitHub Actions
* Docker
* Docker Hub
* Python
* Flake8
* unittest
* YAML
* GitHub Secrets

---

# Summary

This project demonstrates a complete CI/CD workflow.

CI automatically validates application code through linting and testing.

CD automatically packages the application into a Docker image and publishes it to Docker Hub.

This automation reduces manual steps, improves reliability, and represents a real-world DevOps workflow.
