#!/bin/sh
# Resumo para o início da sessão: pendências do checklist, git e último commit.
cd "$(dirname "$0")/.." || exit 0
ab=$(grep -c '^- \[ \]' docs/checklist.md); fe=$(grep -c '^- \[x\]' docs/checklist.md)
echo "[site da Cláudia] checklist: $ab abertas, $fe feitas. Lançamento definitivo só após a R3 (28/02/2027)."
grep '^- \[ \]' docs/checklist.md | head -5
n=$(git status --porcelain | wc -l | tr -d ' '); echo "git: $n alteração(ões) sem commit · último: $(git log -1 --format='%h %s' 2>/dev/null)"
[ "$(git config core.hooksPath)" = ".githooks" ] || echo "AVISO: hooks inativos; rode: sh bin/setup.sh"
