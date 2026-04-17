# 이종혁 LLM Wiki

경희대학교 미디어학과 이종혁 교수의 연구·강의 지식 위키.
Quartz v4 기반, GitHub Pages 배포.

- **사이트**: https://jonghhhh.github.io/llm-wiki-site
- **공개 범위**: `domains/`, `courses/`, `glossary.md`

---

## 배포 업데이트 방법

vault(`C:\vscode\llm_wiki`)에서 내용을 수정한 뒤, 사이트에 반영하려면:

### 방법 1: Claude에게 요청

> **"Quartz 배포 업데이트해줘"**

이렇게 말하면 Claude가 아래 과정을 자동으로 처리합니다.

### 방법 2: 수동 실행

```bash
# 1. vault → Quartz content/ 동기화
bash C:/vscode/llm-wiki-site/sync-content.sh

# 2. 커밋 + push (v4 브랜치에 push하면 자동 배포)
cd C:/vscode/llm-wiki-site
git add content/
git commit -m "update content"
git push origin v4
```

push 후 1~2분 내에 사이트가 자동 갱신됩니다.

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
