FROM ghcr.io/openclaw/openclaw:latest@sha256:5900559f795ef15ea2f0b1fc488726d9b27bb2de398424c14d13c9b1f1ff0d66

ENV OPENCLAW_HOME=/home/node/.openclaw
ENV PORT=18789

EXPOSE 18789

CMD ["sh", "-c", "openclaw config set gateway.mode local && openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true && openclaw config set gateway.controlUi.dangerouslyDisableDeviceAuth true && exec openclaw gateway run --bind lan --port 18789 --token \"$OPENCLAW_GATEWAY_TOKEN\""]
