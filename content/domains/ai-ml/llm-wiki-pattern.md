---
type: Concept
created: 2026-04-17
updated: 2026-04-17
status: active
aliases: [LLM Wiki, LLM 위키, LLM Knowledge Base, Karpathy Wiki Pattern]
related: [[domains/ai-ml/claude-code]], [[domains/ai-ml/obsidian]], [[domains/ai-ml/andrej-karpathy]]
tags: [knowledge-management, llm, wiki, architecture]
primary_source: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
---

# LLM 위키 패턴(LLM Wiki Pattern)

## 핵심 정의

LLM 위키 패턴은 대규모 언어모델(LLM)이 마크다운 기반 지식 위키를 **주도적으로 생성·유지·관리**하는 개인 지식관리 아키텍처이다. Andrej Karpathy가 GitHub Gist로 공개한 설계 문서("idea file")에서 비롯되었으며, 기존 검색증강생성(RAG)의 "지식 비축적" 한계를 보완한다. 핵심은 질의 시점이 아닌 **수집(ingest) 시점**에 지식을 구조화·교차참조하여 누적적 성장을 가능케 하는 것이다.

## 맥락

이 vault(`llm_wiki`)가 바로 LLM 위키 패턴의 구현체이다. `CLAUDE.md`가 schema 역할을 하고, `raw/`가 원문 저장소, `sources/`·`domains/`가 LLM 소유 위키에 해당한다.

- **프로젝트 연관**: 교수의 도구 생태계 탐색(§12 항목 6)의 핵심 참조점
- **강의 활용**: [[courses/ai-media-coding]], [[courses/computational-methods]]에서 "LLM 기반 지식관리" 주제로 활용 가능

## 3계층 아키텍처

| 계층 | 역할 | 이 vault 대응 |
|------|------|--------------|
| **Raw Sources** | 불변 원문 (PDF, 기사, 트랜스크립트) | `raw/` |
| **Wiki** | LLM이 소유·유지하는 마크다운 페이지 | `sources/`, `domains/`, `courses/` |
| **Schema** | 구조·규칙·워크플로우 정의 | `CLAUDE.md` |

## 핵심 워크플로우

- **Ingest**: 새 source 읽기 → 요약·entity 추출 → 위키 페이지 생성/업데이트 → 인덱스·로그 갱신
- **Query**: 위키 페이지 기반 답변 합성 → 가치 있는 탐색 결과를 새 페이지로 저장
- **Lint**: 모순 검출, stale 정보 갱신, orphan 페이지 정리, 누락 cross-reference 보완

## RAG와의 비교

| 차원 | 검색증강생성(RAG) | LLM 위키 |
|------|------------------|----------|
| 처리 시점 | 질의 시 매번 검색 | 수집 시 1회 구조화 |
| 교차참조 | 즉석 또는 누락 | 사전 구축·유지 |
| 모순 검출 | 대부분 간과 | ingest/lint 시 감지 |
| 지식 성장 | 없음 — 매번 리셋 | 누적적 축적 |
| 출력 형태 | 일회성 채팅 응답 | 영속적 마크다운 파일 |
| 데이터 소유 | 제공자 종속 가능 | 로컬, 사용자 소유 |

## 관련 개념

- [[domains/ai-ml/obsidian]] — 위키 프론트엔드 에디터
- [[domains/ai-ml/claude-code]] — 에이전트 인터페이스
- 검색증강생성(RAG) — 비교 대상 (glossary 참조)
- 지식그래프(knowledge graph) — 구조화 지식 표현의 또 다른 접근

## 참고

- **1차 자료**: Karpathy, A. (2026). *LLM Wiki* [GitHub Gist]. https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
- **해설**: [[sources/medium/2026-04-17-karpathy-llm-wiki]] (Medium, evoailabs)
