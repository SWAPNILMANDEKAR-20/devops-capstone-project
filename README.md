## Project Overview

The **DevOps Capstone Project** demonstrates the development and delivery of a RESTful Accounts microservice using software engineering and DevOps practices. The project is intended to cover account management, automated testing, continuous integration, security configuration, containerization, and deployment.

## Core Features

- Create an account
- Read an account by ID
- List all accounts
- Update an existing account
- Delete an account
- Run automated tests and code-quality checks
- Use GitHub Actions for continuous integration
- Configure security headers and Cross-Origin Resource Sharing (CORS)
- Containerize the microservice with Docker
- Deploy and manage the service in a Kubernetes-compatible environment

## Technology Stack

- Python and Flask
- REST APIs
- Nose test runner and flake8
- Git and GitHub
- GitHub Actions
- Docker
- Kubernetes
- Tekton / OpenShift (for the course's later pipeline tasks)

## REST API

| Method | Endpoint | Purpose |
|---|---|---|
| `POST` | `/accounts` | Create an account |
| `GET` | `/accounts` | List accounts |
| `GET` | `/accounts/{id}` | Read one account |
| `PUT` | `/accounts/{id}` | Update an account |
| `DELETE` | `/accounts/{id}` | Delete an account |

The exact request fields and response formats are defined by the service implementation.

## Local Setup

Use the IBM Skills Network lab environment for the course project. From the project directory, initialize the environment as directed by the lab:

```bash
source bin/setup.sh
```

If dependencies need to be installed again, use the repository's supported install command (for the template this is commonly `make install`).

## Quality Checks

The CI workflow runs these checks:

```bash
flake8 .
nosetests
```

Run these commands in the project environment and fix any reported errors before relying on the build badge.

## Continuous Integration

GitHub Actions runs code-quality and test checks on pushes and pull requests to `main`. The build badge at the top links to the workflow's run history.

A passing badge indicates that the configured workflow completed successfully; it does not by itself prove that deployment to Kubernetes or OpenShift has succeeded.
