# medicau.github.io

Site da Dra. Cláudia (médica, em formação em anestesiologia). **Em construção; publicação definitiva só após concluir a especialização (mar/2027).**

Site em **Jekyll**, compilado pelo próprio GitHub Pages a partir da `main`. Conteúdo editável em `_data/` (dados), nas collections `_anestesia/` (tipos de anestesia) e `_guias/` (guias de preparo; um `.md` por item, ordenado por `ordem`) e nas páginas da raiz; layouts em `_layouts/` e `_includes/`; estilo em **Sass** (`_sass/`, entrada `assets/css/main.scss`, compilado e minificado pelo Jekyll para `/assets/css/main.css`). Instruções para o Claude Code: `CLAUDE.md`; plano e pendências em `docs/`.

## Rodar localmente
```
sh bin/setup.sh                      # uma vez por clone: ativa o hook de dados pessoais
bundle install                       # não use bundle update (puxa openssl 4, que não compila)
bundle exec jekyll serve --livereload   # http://localhost:4000
```
CSS legível para depurar (o padrão sai minificado): `bundle exec jekyll serve --livereload --config _config.yml,_config.dev.yml`.

## Estrutura do CSS (`_sass/`)
- `main.scss`: ordem dos imports (a cascata depende dela).
- `base/`: `variables` (breakpoints, medidas, paletas clara e escura), `tokens` (temas como variáveis CSS), `mixins`, `reset`, `typography`.
- `layout/`: `page`, `header`, `footer`.
- `components/`: `buttons`, `cards`, `details`, `tags`, `theme-toggle`, `sidebar`.
- Estilo de escrita: uma declaração por linha, indentação de 2 espaços, seletores de uma lista em linhas separadas, comentário curto no topo de cada arquivo e de cada bloco não óbvio. O CSS publicado continua minificado.
- Para mudar uma cor, edite as paletas em `base/_variables.scss`; um componente novo vira um arquivo em `components/` e uma linha no `main.scss`.
