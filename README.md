# cpp-docker-project
C++ project with docker and ubuntu for system programming
220304149- Aisha Abba (Docker/Dev Ops Engineer))
220304139- Bello Olanrenwaju Maleek(Project Manager/Team Lead)
220304144 - Aminata Kone (C++ Developer)

## Week 3: Database logic and Docker drivers updated by Student 3.

One command deploys the whole system BY STUDENT 2 

The goal of this project is to build a Dockerized C++ application that interacts with a PostgreSQL database, fully managed through Docker Compose. The system is designed so that all services can be deployed together using a single command, ensuring consistency across development and deployment environments.

Key objectives include:

Containerizing a C++ application

Running PostgreSQL in a separate container

Enabling inter-container communication

Automating deployment using Docker Compose
Publishing final images to Docker Hub

System Architecture

The system consists of two main services:

C++ Application Service

Built using a Dockerfile

Compiled inside a container using GCC

Executes a system-level C++ program

PostgreSQL Database Service

Uses the official PostgreSQL Docker image

Configured using environment variables

Runs on the same Docker network as the C++ application



Docker & Deployment (Handled by Student 2)

The entire system is deployed using Docker Compose, allowing all services to be started with a single command.

One-Command Deployment
docker-compose up --build


This command:

Builds the C++ application image

Pulls and configures the PostgreSQL image

Creates a shared Docker network

Starts all containers together



Week 3: Database Logic & Docker Drivers

Updated by Student 3

During Week 3, the project was extended to include:

PostgreSQL database integration

Database configuration using Docker environment variables

Docker driver updates to support database communication

Multi-container coordination via Docker Compose

These updates ensured that the application could reliably interact with the database in a containerized environment.



Week 4: Testing, Documentation, and Final Deployment

Week 4 focused on finalizing the project through testing, documentation, and release preparation.

✅ Integrated System Testing

Verified that all containers start successfully

Confirmed inter-container communication

Ensured clean startup and shutdown using Docker Compose

✅ Full Deployment with Docker Compose

Multi-container deployment validated

Network and service dependencies confirmed

✅ Performance & Runtime Validation

Application execution tested inside containers

PostgreSQL stability verified during runtime


