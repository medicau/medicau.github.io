# medicau.github.io

Site da Dra. Cláudia (médica, em formação em anestesiologia). **Em construção; publicação definitiva só após concluir a especialização (mar/2027).**

Site em **Jekyll**, compilado pelo próprio GitHub Pages a partir da `main`. Conteúdo editável em `_data/` (dados), `_guias/` (guias de preparo) e nas páginas da raiz; layouts em `_layouts/` e `_includes/`; estilo em `assets/css/main.css`. Instruções para o Claude Code: `CLAUDE.md`; plano e pendências em `docs/`.

## Rodar localmente
```
sh bin/setup.sh                      # uma vez por clone: ativa o hook de dados pessoais
bundle install                       # não use bundle update (puxa openssl 4, que não compila)
bundle exec jekyll serve --livereload   # http://localhost:4000
```
