FROM python:3.12-slim

# ------------------------------------------------------------
# System dependencies for UI tests + Python builds
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y --no-install-recommends \
    chromium \
    chromium-driver \
    xvfb \
    curl \
    unzip \
    build-essential \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# Install Poetry
# ------------------------------------------------------------
ENV POETRY_VERSION=1.8.2
RUN curl -sSL https://install.python-poetry.org | python -

# Add Poetry to PATH
ENV PATH="/root/.local/bin:${PATH}"

# Disable virtualenv creation inside container
RUN poetry config virtualenvs.create false

# ------------------------------------------------------------
# Set working directory
# ------------------------------------------------------------
WORKDIR /tests

# Copy Poetry files first (for Docker layer caching)
COPY pyproject.toml poetry.lock ./

# Install dependencies (Robot Framework, SeleniumLibrary, Requests, etc)
RUN poetry install --no-root --no-ansi --no-interaction

# Copy entire project (keywords, robot tests, Python libs, run.sh)
COPY . .

# Ensure script is executable
RUN chmod +x run.sh

# ------------------------------------------------------------
# Default command to run tests
# ------------------------------------------------------------
CMD ["./run.sh"]