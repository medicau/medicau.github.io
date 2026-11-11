#!/bin/sh
# Ativa os hooks versionados neste clone.
cd "$(dirname "$0")/.." && git config core.hooksPath .githooks && chmod +x .githooks/* bin/*.sh && echo "hooks ativos (.githooks)"
