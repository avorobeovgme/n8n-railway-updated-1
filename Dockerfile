FROM n8nio/n8n:latest

# Установите системные зависимости для tdlib
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    libssl-dev \
    libffi-dev \
    && rm -rf /var/lib/apt/lists/*

# Установите пакет
RUN npm install -g @telepilotco/tdlib-binaries-prebuilt

EXPOSE 5678

CMD ["n8n"]
