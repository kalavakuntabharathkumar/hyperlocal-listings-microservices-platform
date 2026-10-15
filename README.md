# Hyperlocal Listings Microservices Platform

Portfolio-ready reference implementation using Java 17, Spring Boot 3, Python 3.11, PostgreSQL 15, Kafka, Docker, AWS deployment notes, GitHub Actions and JUnit.

Services: listing-service plus a Python spam-detection worker. The Docker Compose setup demonstrates the core service/data/event flow; additional Spring services can be split from the same contracts.

Run: set `POSTGRES_PASSWORD` in your environment, then run `docker compose up --build`.
