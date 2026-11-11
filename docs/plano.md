# Plano do site

## Objetivo
Site da Dra. Cláudia para pacientes: entender a anestesia, preparar-se para o procedimento e falar com ela. Renda indireta, sem prazo externo.

## Decisões (confirmadas)
- **Lançamento definitivo só depois de concluir a especialização** (R3 termina em 28/02/2027). Até lá o site é protótipo, `noindex`.
- **Currículo = uma linha só**, no rodapé, na redação dela (ver `CLAUDE.md`). O que importa é o conteúdo.
- Layout é decidido depois do propósito.
- **Portal: o João constrói** (decisão de 11/11/2026, stack Laravel + Jetstream). Como é ele o responsável técnico por dado de saúde, o parecer jurídico (LGPD) passa a ser **pré-requisito** para escrever código com dado real; antes dele, só protótipo com dado fictício.
- **Exames e consultas = uma ferramenta própria** (decisão prévia de 11/11/2026): o portal que o João constrói cobre o envio de exames **e** o agendamento de consultas. Agendar coleta nome e contato do paciente, então o parecer jurídico (LGPD) precisa cobrir também a agenda. Detalhes de desenho (cadastro, horários, locais, confirmação) ainda por definir.
- **Stack do site:** Jekyll no GitHub Pages (fase 1). O portal (Laravel) roda em hospedagem própria, em subdomínio; o domínio ainda é decisão em aberto.
- Duas fases: **1) institucional** (sem dado de paciente); **2) portal do paciente** para enviar exames (login), só depois de parecer jurídico (LGPD).

## Proposta enviada à Cláudia (aprovada por ela em 11/11/2026, sujeita a revisão)
1. Público: pacientes primeiro; cirurgiões e clínicas depois, em página curta.
2. Conteúdo: entender a anestesia, preparo (jejum, remédios, exames), dúvidas comuns, contato.
3. Exames: ela manda link, o paciente envia PDF/foto antes da pré-anestésica, ela confere. Só exames, sem prontuário. Fase 1 usa WhatsApp; app na fase 2.
4. Atuação: espaço "local de atendimento" a preencher (R4 em aberto).
5. Contatos: WhatsApp e e-mail. **Ajuste dela (11/11/2026):** quer um lugar de "Agende sua consulta" já na fase 1; o protótipo tem a página `/agendar/` e o botão no topo. **Decisão prévia (11/11/2026): exames e consultas serão uma ferramenta desenvolvida pelo João** (o portal), não um serviço de terceiros. Até ela existir, as páginas `/exames/` e `/agendar/` combinam tudo pelo WhatsApp.
Foto, mini-bio, domínio e cores só depois das cinco aprovadas (liberados em 11/11/2026).

## Ordem
1. Nov/2026: protótipo em Jekyll e proposta aprovada pela Cláudia (feito). A página `proposta.html` foi removida do site; permanece no histórico do git.
2. Até fev/2027: conteúdo de paciente escrito/aprovado por ela; domínio; parecer jurídico do portal e arquitetura dele.
3. Mar/2027: RQE e título confirmados, trocar marcadores, revisão final (ela e, se possível, o CRM), remover `noindex`, publicar.
4. Depois: portal com exames e consultas (MVP: cadastro, envio de exames, agendamento, consentimento, trilha de auditoria).

## Hospedagem
Este repositório em `medicau.github.io`.
