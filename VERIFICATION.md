# Verification: This Template Uses Unmodified OpenClaw

## How to verify this template is authentic

This Railway template uses the **official OpenClaw Docker image** directly from GitHub Container Registry (GHCR), published by the OpenClaw project. No application code is modified — only runtime configuration is applied at startup.

### 1. Docker Image Source

The Dockerfile pulls directly from OpenClaw's official registry:

```
ghcr.io/openclaw/openclaw:latest@sha256:5900559f795ef15ea2f0b1fc488726d9b27bb2de398424c14d13c9b1f1ff0d66
```

**Verify yourself:**
```bash
docker pull ghcr.io/openclaw/openclaw:latest
docker inspect ghcr.io/openclaw/openclaw:latest --format='{{index .RepoDigests 0}}'
```

The digest must match what's pinned in the Dockerfile.

### 2. What this template adds (zero application code changes)

The only modifications are **runtime configuration commands** executed at container startup:

| Config | Purpose |
|--------|---------|
| `gateway.mode local` | Sets gateway to local mode |
| `gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true` | Allows Railway's reverse proxy to serve the Control UI |
| `gateway.controlUi.dangerouslyDisableDeviceAuth true` | Disables device pairing for remote cloud access |
| `--bind lan` | Binds to 0.0.0.0 so Railway can route traffic |
| `--token` | Sets auth token from environment variable |

These are standard OpenClaw config options documented at: https://docs.openclaw.ai/gateway/configuration-reference

### 3. No compiled code, no patches, no forks

- This template does NOT fork or rebuild OpenClaw
- This template does NOT add any custom application code
- This template does NOT modify any OpenClaw source files
- The entire Dockerfile is under 10 lines and fully auditable

### 4. Verify the image matches OpenClaw's official release

```bash
# Pull the image used in this template
docker pull ghcr.io/openclaw/openclaw:latest@sha256:5900559f795ef15ea2f0b1fc488726d9b27bb2de398424c14d13c9b1f1ff0d66

# Compare with latest official release
docker pull ghcr.io/openclaw/openclaw:latest
docker images --digests ghcr.io/openclaw/openclaw
```

### 5. Official OpenClaw resources

- Source code: https://github.com/openclaw/openclaw
- Docker images: https://ghcr.io/openclaw/openclaw
- Documentation: https://docs.openclaw.ai
