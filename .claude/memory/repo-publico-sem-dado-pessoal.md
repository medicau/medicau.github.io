---
name: repo-publico-sem-dado-pessoal
description: O repo é público; nunca commitar CRM, RQE, CPF, contatos; usar marcadores
metadata:
  type: feedback
---
Este repositório é público (exigência do GitHub Pages grátis). Número de CRM, RQE, CPF, telefone, e-mail, endereço e documentos nunca entram no git; no lugar vão marcadores (`[CRM-SP]`, `[RQE]`...). Valores reais ficam em `privado/` (ignorado) ou na pasta local de documentos da Cláudia.

**Why:** dado pessoal e de saúde publicado não se desfaz; o histórico do git guarda para sempre.
**How to apply:** antes de todo commit, o hook `.githooks/pre-commit` confere; se bloquear, mova o valor. Ver [[lancamento-apos-r3]].
