---
type: Tool
created: 2026-04-17
updated: 2026-04-17
status: active
aliases: [Claude Code CLI]
related: [[domains/ai-ml/llm-wiki-pattern]], [[domains/ai-ml/obsidian]], [[domains/ai-ml/andrej-karpathy]]
tags: [llm-agent, cli, anthropic, claude]
---

# Claude Code

## 핵심 정의

Anthropic이 제공하는 CLI 기반 LLM 에이전트. 로컬 파일시스템에 직접 접근하여 파일 읽기·쓰기·검색이 가능하며, LLM 위키 패턴에서 **에이전트 인터페이스** 역할을 담당한다.

## 맥락

- 이 vault의 실제 운영 에이전트 — `CLAUDE.md`를 schema로 읽고 ingest·query·lint 수행
- [[llm-wiki-pattern]]에서 권장하는 도구 조합: [[domains/ai-ml/obsidian]](편집) + Claude Code(에이전트)
- 교수의 도구 생태계 탐색(§12 항목 6) 대상

## LLM 위키에서의 역할

- **로컬 파일 접근**: 사용자 파일시스템의 마크다운 파일을 직접 읽고 쓸 수 있음
- **Schema 기반 동작**: `CLAUDE.md` 같은 규칙 파일을 세션 시작 시 읽어 행동 규범 준수
- **Multi-file 동시 편집**: 한 번의 ingest에서 여러 페이지를 생성·업데이트

## 관련 개념

- [[llm-wiki-pattern]] — Claude Code를 에이전트로 사용하는 아키텍처
- [[domains/ai-ml/obsidian]] — 함께 쓰이는 프론트엔드 에디터

## 참고

- [[sources/medium/2026-04-17-karpathy-llm-wiki]] — 도구 언급
