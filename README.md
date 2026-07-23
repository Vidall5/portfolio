# Portfólio — vidall7x.com

Portfólio pessoal deployado na Vercel com auto-deploy via GitHub.

## Estrutura

- `index.html` — landing pública
- `admin.html` — painel de edição (não linkado publicamente)
- `data.js` — **fonte da verdade** dos dados (bio, cards, domínio)
- `vidal.jpg` — foto do hero
- `deploy.ps1` — script pra `git add + commit + push` num comando

## Fluxo pra editar

1. Abre `admin.html` no navegador
2. Edita bio, adiciona/remove/reordena projetos
3. Clica **Baixar data.js** → salva o arquivo baixado por cima do `data.js` da pasta
4. Roda no terminal:
   ```powershell
   .\deploy.ps1
   ```
5. Vercel detecta o push e deploya sozinha em ~30s
