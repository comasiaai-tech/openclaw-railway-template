FROM node:24-bookworm

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

USER node
WORKDIR /home/node

RUN npm install -g openclaw@latest

ENV OPENCLAW_HOME=/home/node/.openclaw

EXPOSE 18789

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:18789/healthz || exit 1

CMD ["openclaw", "gateway", "start", "--host", "0.0.0.0", "--port", "18789"]
