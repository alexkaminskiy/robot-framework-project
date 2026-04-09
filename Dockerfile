FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    chromium \
    chromium-driver \
    xvfb \
    curl \
    unzip \
    build-essential \
    ca-certificates \
    libnss3 \
    libasound2 \
    libxss1 \
    libxshmfence1 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libgbm1 \
    && rm -rf /var/lib/apt/lists/*

# Symlink Chrome so SeleniumLibrary recognizes it
RUN ln -s /usr/bin/chromium /usr/bin/google-chrome

ENV POETRY_VERSION=1.8.2
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:${PATH}"
RUN poetry config virtualenvs.create false

WORKDIR /tests

COPY pyproject.toml poetry.lock ./
RUN poetry install --no-root --no-ansi --no-interaction

COPY . .
RUN chmod +x run.sh

CMD ["./run.sh"]