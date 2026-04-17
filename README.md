# 이종혁 LLM Wiki

경희대학교 미디어학과 이종혁 교수의 연구·강의 지식 위키.
Quartz v4 기반, GitHub Pages 배포.

- **사이트**: https://jonghhhh.github.io/llm-wiki-site
- **공개 범위**: `domains/`, `courses/`, `glossary.md`

---

## 작업 흐름

```
Obsidian (llm_wiki)  →  Claude가 sync  →  llm-wiki-site  →  GitHub Pages
   ✏️ 여기서 작업         "배포해줘"         자동 빌드·push       사이트 반영
```

### 핵심 포인트

- **Obsidian에서 `C:\vscode\llm_wiki`에 평소처럼 작업**하면 됩니다.
- Obsidian 저장만으로는 사이트에 반영되지 않습니다.
- 사이트 업데이트가 필요할 때 Claude에게 한 마디만 하세요:

> **"Quartz 배포 업데이트해줘"**

- Claude가 알아서 처리합니다:
  1. `llm_wiki` → `llm-wiki-site/content/` 복사 (domains, courses, glossary만)
  2. 커밋 + push
  3. GitHub Actions가 자동 빌드·배포 (1~2분)

### 수동으로 하려면

```bash
# 1. vault → Quartz content/ 동기화
bash C:/vscode/llm-wiki-site/sync-content.sh

# 2. 커밋 + push (v4 브랜치에 push하면 자동 배포)
cd C:/vscode/llm-wiki-site
git add content/
git commit -m "update content"
git push origin v4
```

### 주의사항

- `C:\vscode\llm-wiki-site` 폴더는 **삭제하지 마세요** (배포 파이프라인).
- 이 폴더를 직접 열거나 수정할 필요는 없습니다. Claude가 사용합니다.
- `raw/`, `sources/`, `projects/`, `_unverified/`는 복사되지 않습니다 (비공개).

---

## 구조

```
llm-wiki-site/
├── content/          ← 공개 콘텐츠 (vault에서 복사)
│   ├── index.md      ← 랜딩 페이지
│   ├── glossary.md
│   ├── domains/
│   └── courses/
├── sync-content.sh   ← vault → content 동기화 스크립트
└── quartz.config.ts  ← Quartz 설정 (ko-KR, GitHub Pages)
```

## Built with

[Quartz v4](https://quartz.jzhao.xyz/) by Jacky Zhao
