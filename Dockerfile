# --- Stage 1: Build & Install dependencies ---
FROM python:3.11-slim AS builder

WORKDIR /app

COPY src/requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

# --- Stage 2: Runtime Image ---
FROM python:3.11-slim AS runner

WORKDIR /app

# Copy installed dependencies from builder
COPY --from=builder /root/.local /root/.local
COPY src/ ./src/

ENV PATH=/root/.local/bin:$PATH
ENV PYTHONUNBUFFERED=1

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:5000/health')"

CMD ["python", "src/app.py"]