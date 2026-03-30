FROM ghcr.io/openclaw/openclaw:latest

ENV OPENCLAW_HOME=/home/node/.openclaw
ENV PORT=18789

EXPOSE 18789

CMD ["sh", "-c", "openclaw config set gateway.mode local && openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true && exec openclaw gateway run --bind lan --port 18789"]
