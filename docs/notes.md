# Technical Notes - OS Assignment 2

## 1. Biggest Docker Problem & Solution
- **The Problem:** Initially, when building the Docker image using a standard single-stage Python base image, the image size was relatively large, and managing file permissions inside the container caused minor configuration warnings.
- **The Solution:** I implemented a **Multi-stage build** (Bonus C). The first stage (`builder`) installs dependencies, and the second lightweight stage (`runner`) copies *only* the compiled dependencies. This reduced the final image size and kept the runtime environment secure.

## 2. Most Important Git/GitHub Lesson Learned
- **Professional Workflow & Semantic Commits:** I learned the importance of atomic commits using standardized prefixes (`feat:`, `docker:`, `docs:`, `fix:`). Separating infrastructure setup from application code makes reviews transparent and reflects a true professional workflow.