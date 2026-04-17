#!/bin/bash
# sync-content.sh — vault → Quartz content/ 단방향 동기화
# 공개 대상: domains/, courses/, glossary.md만 복사
# 사용법: bash sync-content.sh

VAULT="C:/vscode/llm_wiki"
SITE="C:/vscode/llm-wiki-site/content"

echo "=== Syncing vault → Quartz content ==="

# domains/
rsync -av --delete \
  --exclude='.gitkeep' \
  "$VAULT/domains/" "$SITE/domains/"

# courses/
rsync -av --delete \
  --exclude='.gitkeep' \
  "$VAULT/courses/" "$SITE/courses/"

# glossary.md
cp "$VAULT/glossary.md" "$SITE/glossary.md"

echo "=== Sync complete ==="
echo "다음 단계: cd C:/vscode/llm-wiki-site && npx quartz build"
