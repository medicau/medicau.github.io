# Site da Dra. Cláudia (medicau.github.io): instruções para o Claude Code

Site em **Jekyll** (HTML/CSS/JS puro nas páginas, sem JS de terceiros), compilado pelo GitHub Pages a partir de `main`. Conteúdo em `_data/`, `_guias/` e páginas da raiz; layouts em `_layouts/` e `_includes/`. Local: `bundle install` e `bundle exec jekyll serve --livereload` (não use `bundle update`). Quem decide é o João (marido da médica) com a Cláudia; ela aprova o conteúdo. O Claude prepara, o João publica.

## Regra nº 1: este repositório é PÚBLICO
- **Nunca commitar dado pessoal:** número de CRM, RQE, CPF, RG, telefone, e-mail, endereço, filiação, documento. No lugar, marcadores: `[CRM-SP]`, `[CRM-CE]`, `[RQE]`, `[título]`, `[WhatsApp]`, `[e-mail]`, `[endereço]`. Os valores reais ficam fora do git (`privado/`, ignorado) ou na pasta local de documentos da Cláudia.
- O hook `.githooks/pre-commit` bloqueia padrões óbvios (CPF, número de CRM, telefone, `privado/`). Ative em cada clone: `sh bin/setup.sh`. Se bloquear, mova o valor, nunca force.
- Conversas, frases dela, notas da família e detalhes da residência além do que já está no rodapé: só em `privado/`.

## Regras de publicidade médica (Res. CFM 2.336/2023; detalhes em `docs/requisitos.md`)
- Na página principal: nome, **CRM com a palavra MÉDICO**, e a especialidade **com RQE** quando houver.
- **Enquanto ela for residente (até 28/02/2027): não escrever "anestesista", "especialista" nem RQE/título SBA.** Usar "Médica residente em Anestesiologia". A redação definitiva dela, só depois da R3 e do RQE real: "Anestesista formada pela Santa Casa de Santos, RQE [RQE] / SBA [título]".
- Proibido prometer ou insinuar resultado, "antes e depois" sem as condições do art. 14, superlativos e prêmios do tipo "melhor médica".
- Conteúdo clínico (jejum, medicamentos, riscos): **não inventar**. Só marcador `[A revisar pela médica]` até ela escrever ou aprovar.
- Confirmar a resolução vigente na fonte (cfm.org.br) antes de escrever texto novo.

## Estado e rotina
- **Plano:** `docs/plano.md` (fases, decisões, ordem). **Checklist de publicação:** `docs/checklist.md`. **Requisitos legais e do portal:** `docs/requisitos.md`. **Memórias do projeto:** `.claude/memory/MEMORY.md` (uma por arquivo, índice de uma linha).
- Ao iniciar, o hook SessionStart roda `bin/status.sh` (pendências do checklist, git sujo, último commit). Responda com o resumo em poucas linhas.
- **Uma só fonte por fato:** decisão no `plano.md`, pendência no `checklist.md`, aprendizado duradouro em memória. Não copie entre eles; aponte.
- **Tarefas do orquestrador do João** (`~/.claude`, ids `medica-*`) são a fila dele; ao concluir algo que muda uma delas, avise o João para atualizar (`tarefas.py done`), pois este repo é independente.

## Git e publicação
- Commit automático do que o João pediu ou aprovou, mensagem descritiva, nunca `--force`.
- **Push publica o site** (Pages, ~1 min). Faça push só com o OK do João para mudança visível; mudanças só em docs/memória podem ir direto. Após o push, confira com `curl -sI https://medicau.github.io/` (esperado 200).
- Mantém `noindex` (chave `noindex` do `_config.yml`, aplicada pelo layout em todas as páginas) até o lançamento definitivo; remover só por decisão explícita do João e da Cláudia.

## Convenções do site
- Português do Brasil, tom acolhedor e sóbrio, frases curtas, sem jargão. Mobile primeiro (16px de margem lateral), modo claro e escuro via variáveis CSS com botão de tema (sistema, claro, escuro), sem dependências externas. Texto voltado ao paciente não cita LGPD, fase nem termo técnico.
- Chaves `noindex` e `prototipo` em `_config.yml` controlam o robots e o aviso de protótipo; só mudar no lançamento.
- Navegação: menu principal em `_data/navegacao.yml` (até 5 itens); "Agendar" é o botão fixo no topo; Contato fica no rodapé. No celular o menu recolhe atrás do botão "Menu" e o nome vira "Dra. Cláudia" (`nome_curto`).
- Acessibilidade: contraste, `lang="pt-BR"`, rótulos em formulários, foco visível.
