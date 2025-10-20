FROM python:3.13-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Copy only requirements to cache them in docker layer
COPY --chown=app:app pyproject.toml uv.lock .python-version /app/

# Install the application dependencies.
WORKDIR /app
RUN uv sync --frozen --no-cache

# Copy the application code
COPY --chown=app:app ./app /app/app

# Run the application.
CMD ["/app/.venv/bin/fastapi", "run", "app/main.py", "--port", "80", "--host", "0.0.0.0"]