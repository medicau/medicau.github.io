---
name: joao-roda-o-site
description: O João já roda o site local e aprova visualmente; não subir servidor nem abrir navegador
metadata:
  type: feedback
---
O João mantém o `jekyll serve` rodando e confere o visual ele mesmo. Não subir servidor local, não abrir o Chrome para screenshot e não pedir que ele "rode para ver".

**Why:** ele disse "não precisa rodar, eu já tô rodando o site e aprovando"; o teste que eu fazia era trabalho repetido e demorado.
**How to apply:** depois de mexer em layout ou CSS, só rodar `bundle exec jekyll build` para garantir que compila, commitar e avisar; ele vê pelo livereload. Ver [[como-consultar-a-claudia]] para o ritmo de aprovação da Cláudia.
