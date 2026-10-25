#!/usr/bin/env bash
# Usage: ./run.sh     (serves on :8020; set PORT to change). The key comes from .env (GROQ_API_KEY).
cd "$(dirname "$0")"
set -a; [ -f .env ] && . ./.env; set +a
export LLM_KEY="${LLM_KEY:-$GROQ_API_KEY}"
export PORT="${PORT:-8020}"
echo "incident-v2 on :$PORT"
exec node server.mjs
