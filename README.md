# TaskTrack-API

A lightweight, production-ready RESTful API built for managing tasks in Python, fully containerized using Docker. Developed as part of the Operating Systems (Practical) course assignment.

## Tech Stack
- **Language:** Python 3.11
- **Framework:** Flask
- **Containerization:** Docker & Docker Compose (Multi-stage builds)
- **Automation:** GNU Make

---

## Getting Started & Running via Docker

### 1. Build and Run Using Docker (Manual Method)
```bash
# Build the Docker image
docker build -t tasktrack-api .

# Run the container mapping port 5000
docker run -d -p 5000:5000 --name tasktrack_container tasktrack-api