# OpenClaw Railway Template

One-click deploy [OpenClaw AI](https://openclaw.ai) gateway on [Railway](https://railway.com).

## What is OpenClaw?

OpenClaw is an AI gateway platform that lets you deploy and manage AI assistants across multiple communication channels (WhatsApp, Telegram, Discord, iMessage) with support for multiple model providers (Anthropic, OpenAI, Google).

## Deploy

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/template/YOUR-TEMPLATE-ID?referralCode=YOUR-CODE)

## Environment Variables

| Variable | Required | Description |
|----------|----------|-------------|
| `ANTHROPIC_API_KEY` | Yes* | API key for Anthropic models |
| `OPENAI_API_KEY` | Yes* | API key for OpenAI models |
| `GOOGLE_AI_API_KEY` | Yes* | API key for Google models |
| `OPENCLAW_SANDBOX` | No | Enable agent sandboxing (`true`/`false`) |

*At least one model provider API key is required.

## Features

- Multi-channel AI assistant gateway
- Control UI dashboard at your Railway public URL
- Health check endpoints (`/healthz`, `/readyz`)
- Persistent state via Railway volumes

## Post-Deployment

1. Visit your Railway-assigned public URL to access the Control UI
2. Configure your AI model provider and API key
3. Connect your messaging channels (WhatsApp, Telegram, Discord, etc.)
4. Manage conversations and safety controls from the dashboard

## Storage

Attach a Railway volume mounted at `/home/node/.openclaw` to persist configuration, sessions, and media files.

## Resources

- [OpenClaw Documentation](https://docs.openclaw.ai)
- [Railway Documentation](https://docs.railway.com)
