---
type: Tool
created: 2026-04-17
updated: 2026-04-17
status: active
aliases: [옵시디언]
related: [[domains/ai-ml/llm-wiki-pattern]], [[domains/ai-ml/claude-code]]
tags: [knowledge-management, markdown, editor]
---

# Obsidian

## 핵심 정의

로컬 파일 기반 마크다운 지식관리 도구. `[[wiki links]]`로 페이지 간 연결, 그래프 뷰로 지식 구조 시각화를 지원한다. LLM 위키 패턴에서 **프론트엔드 에디터** 역할을 담당한다.

## 맥락

- 이 vault(`llm_wiki`)의 편집·탐색 인터페이스
- [[llm-wiki-pattern]]에서 권장하는 도구 조합: Obsidian(편집) + [[domains/ai-ml/claude-code]](에이전트)

## LLM 위키에서의 역할

- **로컬 우선**: 모든 파일이 사용자 로컬 파일시스템에 plain text로 저장 → 벤더 종속 없음
- **그래프 뷰**: 페이지 간 연결 밀도·고립 페이지 시각적 확인 (lint에 유용)
- **Dataview 플러그인**: frontmatter 메타데이터 기반 SQL-like 쿼리
- **Web Clipper**: 웹 기사를 마크다운으로 변환·저장

## 관련 개념

- [[llm-wiki-pattern]] — Obsidian을 프론트엔드로 사용하는 아키텍처
- [[domains/ai-ml/claude-code]] — 함께 쓰이는 에이전트 CLI

## 참고

- 공식 사이트: https://obsidian.md
- [[sources/medium/2026-04-17-karpathy-llm-wiki]] — 도구 언급
