---
type: Glossary
created: 2026-04-16
updated: 2026-04-16
---

# Glossary — 용어집

> 한·영 병기, 한국 학술 관례 반영.
> AI는 글을 쓸 때 여기의 표준 표기를 따른다.
> 새 용어는 ingest 시 AI가 추가, 사용자가 승인·수정.

---

## 규칙

1. **표준 표기**를 정함 — 같은 개념에 여러 번역이 있을 때 wiki 내부에서 통일
2. 한글 주, 영문 괄호 병기: `소급추론(retroductive inference)`
3. 한국어 특화 개념(번역 불가)은 별도 섹션
4. 저자명 한·영 매핑 포함

---

## A. 핵심 학술 용어

### AI / LLM
- **검색증강생성(RAG, Retrieval-Augmented Generation)** — 질의 시 외부 문서에서 관련 부분 검색 후 LLM 응답 생성하는 방식
- **에이전트(agent)** — 목표를 가지고 도구를 호출하며 행동하는 LLM 시스템
- **지식그래프(knowledge graph)** — 개체·관계로 구성된 구조화 지식 표현
- **파인튜닝(fine-tuning)** — 사전학습 모델을 특정 과제에 맞게 추가 학습
- **대규모 언어모델(LLM, Large Language Model)**
- **벡터 임베딩(vector embedding)**
- **프롬프트 엔지니어링(prompt engineering)**
- **LLM 위키 패턴(LLM Wiki Pattern)** — LLM이 마크다운 위키를 주도적으로 유지·관리하는 개인 지식관리 아키텍처. Andrej Karpathy 제안
- **지식 축적(knowledge accumulation)** — RAG에 없는 LLM 위키의 핵심 장점. 수집 시 구조화하여 누적 성장

### 저널리즘 이론
- **뉴스 가치 평가 지표(NEI, News Evaluation Index)** — 박재영·이완수(2010) 및 박재영·안수찬·김창숙(2023) 연구 기반
- **프레이밍(framing)** — 뉴스가 이슈를 구성·해석하는 방식
- **의제 설정(agenda-setting)**
- **게이트키핑(gatekeeping)**
- **뉴스 품질(news quality)** — 다차원 개념. 정확성·공정성·다양성·심층성 포함
- **심의 민주주의(deliberative democracy)**
- **숙의(deliberation)**

### 매체철학 / 방법론
- **비판적 실재론(critical realism)** — Roy Bhaskar 기원
- **소급추론 / 역행추론(retroductive inference, abduction)** — C. S. Peirce 기원. **표준 표기: 소급추론**
- **생성 기제(generative mechanism)** — 비판적 실재론 핵심 개념
- **실재(the real) / 현실(the actual) / 경험(the empirical)** — Bhaskar의 3층위 존재론

### 컴퓨테이셔널 방법
- **근거이론(grounded theory)** — Glaser & Strauss(1967) 기원, 귀납적 이론 구성
- **일반화 선형 혼합 모형(GLMM, Generalized Linear Mixed Model)**
- **에이전트 기반 모델(ABM, Agent-Based Model)**
- **자연어처리(NLP, Natural Language Processing)**

---

## B. 도구·라이브러리 (원어 유지)

- `KcELECTRA` — 한국어 ELECTRA 모델
- `Gemini 2.5`, `Claude Opus 4.6`, `Claude Sonnet 4.6` — LLM
- `LangGraph`, `LangChain` — 에이전트 프레임워크
- `ChromaDB` — 벡터 데이터베이스
- `FastAPI` — Python 웹 프레임워크
- `Mesa` — Python ABM 프레임워크
- `kss` — 한국어 문장 분리기
- `Gradio` — ML 데모 UI
- `NetworkX` — Python 그래프 라이브러리
- `multilingual-e5-large` — 다국어 임베딩 모델
- `MTCNN` — 얼굴 검출 모델
- `Gemma-3` — Google 오픈 LLM
- `Obsidian` — 로컬 마크다운 지식관리 도구, 그래프 뷰 지원
- `Claude Code` — Anthropic CLI 기반 LLM 에이전트, 로컬 파일 접근 가능
- `qmd` — 로컬 시맨틱 검색 도구 (BM25 + 시맨틱 + LLM 리랭킹)

---

## C. 한국 언론학계 주요 인물 (한·영 매핑)

| 한글 | 영문 표기 | 소속·분야 (알려진 경우) |
|------|----------|------------------------|
| 박재영 | Park, Jae-Young | 고려대, 저널리즘 연구 |
| 이완수 | Lee, Wan-Soo | — |
| 안수찬 | Ahn, Soo-Chan | — |
| 김창숙 | Kim, Chang-Sook | — |
| 이재경 | Lee, Jae-Kyoung | — |

| Andrej Karpathy | Karpathy, Andrej | OpenAI 공동창업자, 전 Tesla AI Director |

> **주의**: 확인되지 않은 인물의 영문 표기 임의 추측 금지. 필요 시 `[영문표기 확인필요]` 태그 사용.

---

## D. 한국어 특화 개념 (KoreanTerm)

번역 시 손실이 큰 개념은 한글 원어로 유지:

- **편집국 독립성** — newsroom independence에 완전 대응하지 않는 한국 언론의 역사적 맥락 포함
- **촌지** — 한국 언론 윤리 맥락의 부정한 금품 수수
- **출입처** — 기자 출입 부서 제도, 한국 언론의 독특한 구조
- **받아쓰기 저널리즘** — 정부·기업 보도자료 무비판 전재
- **낙종** — 타 매체에 특종 빼앗기는 것

---

## E. 금지 표현 / 권장 표현

- ❌ "RAG를 한다" → ✅ "RAG 방식으로 구현한다" 또는 "검색증강생성을 적용한다"
- ❌ "챗봇" (모호함) → ✅ "LLM 기반 대화 에이전트" 또는 구체적 이름
- ❌ "AI가 학습한다" (사전학습·파인튜닝·인컨텍스트 러닝 구분) → ✅ 맥락 명시

---

## F. 표기 통일 메모

- **데이터셋** (띄어쓰기 없음, 표준)
- **파이썬** (한글 표기 시) / `Python` (영문 표기 시)
- **자바스크립트** / `JavaScript`
- **코드**: 영문 그대로
- **저널리즘** (저널리스트 아님, 저널 아님)

---

## 용어 추가 이력

- 2026-04-16: 초기 시드 용어 입력
- 2026-04-17: LLM 위키 패턴, 지식 축적, Obsidian, Claude Code, qmd, Andrej Karpathy 추가
