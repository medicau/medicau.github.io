# Checklist

## Agora (protótipo)
- [x] Cláudia aprova as 5 decisões da proposta, sujeita a revisão (11/11/2026; a página saiu do site e ficou no histórico do git)
- [ ] Mostrar o site Jekyll à Cláudia e colher a revisão dela
- [ ] Foto, mini-bio, domínio e cores (liberados pela aprovação da proposta)
- [ ] Logo definitivo (o atual é provisório: um "C" em quadrado arredondado) e conferir os textos do menu com a Cláudia
- [ ] Definir o destino do "Agende sua consulta": WhatsApp ou ferramenta de agenda (e quais horários e locais)
- [ ] Avisar a Cláudia de que o rodapé publicado é provisório (residente, sem RQE) e por quê
- [ ] Ela responde: "o que o paciente mais pergunta antes da cirurgia?"
- [ ] Conferir o CRM-CE (carteira ou site do CRM-CE) e decidir se entra
- [ ] Decidir o destino do protótipo antigo (`johnylab/site-medica`) depois que este estiver no ar

## Antes de escrever conteúdo clínico
- [ ] Conferir a resolução CFM vigente (tarefa `medica-cfm`)
- [ ] Textos de jejum, exames e "no dia" escritos ou aprovados pela médica

## Fase 2 (portal de exames)
- [ ] Parecer jurídico (LGPD, controlador, DPO, RIPD) (`medica-juridico`)
- [x] Decisão construir ou contratar: o João constrói (ver `docs/plano.md`) (`medica-arquitetura`)
- [ ] Hospedagem adequada a dado de saúde (não é o GitHub Pages)

## Lançamento definitivo (a partir de mar/2027)
- [ ] R3 concluída (28/02/2027) e RQE emitido; números reais conferidos na fonte (CRM, RQE)
- [ ] Marcadores `[CRM-*]`, `[RQE]`, `[título]` trocados pelos valores reais; nenhum `XZzXX`/`HGSEH`
- [ ] Rodapé na redação definitiva dela; nome + CRM + MÉDICO + especialidade + RQE na página principal
- [ ] Nenhuma promessa de resultado, superlativo ou prêmio
- [ ] Revisão final pela médica (e, se possível, pelo CRM)
- [ ] Política de privacidade se houver qualquer coleta de dados
- [ ] Em `_config.yml`: `noindex: false` (a faixa de protótipo já foi desligada); conferir mobile, modo claro/escuro e links
