# Parecer jurídico do portal

Documento escrito por advogado (direito digital, LGPD e saúde) que diz se o portal de exames e consultas pode receber dados de pacientes e quais regras cumprir. Não é aprovação de órgão público: é orientação profissional que protege a Cláudia e o João se algo der errado. Tarefa do orquestrador: `medica-juridico`. Não é aconselhamento jurídico; as respostas abaixo vêm de `docs/requisitos.md` e de conhecimento geral, e dependem do caso.

## Por que é pré-requisito
- Exame e consulta são **dados de saúde**: dado pessoal sensível na LGPD (Lei 13.709/2018), com regras mais duras.
- O João constrói a ferramenta e responde pela segurança técnica; a Cláudia responde perante o paciente e o conselho de medicina.
- A ANPD pode aplicar sanções por falha ou vazamento, e dado de saúde exposto não volta atrás.
- Por isso: **sem parecer, nenhum código com dado real** (ver `docs/plano.md`). Antes, só protótipo com dado fictício.

## Perguntas que ele deve responder
(correspondem aos itens `[VERIFICAR]` de `docs/requisitos.md`)
1. **Controlador e operador:** provavelmente a Cláudia é controladora e o João (ou a hospedagem) é operador; confirmar e dizer o que cada um assina.
2. **Encarregado (DPO):** é necessário para uma médica autônoma?
3. **RIPD** (relatório de impacto à proteção de dados): é necessário?
4. **Base legal:** consentimento específico e destacado, ou tutela da saúde (art. 11, II, "f")?
5. **Prontuário e telemedicina:** um portal que só recebe exames enviados pelo paciente cai na Res. CFM 2.314/2022 e nas exigências de sistemas de registro de saúde (NGS2, ICP-Brasil, SBIS/CFM), ou fica fora? Vira prontuário?
6. **Agenda:** nome e contato do paciente também são dado pessoal; o parecer cobre o agendamento.
7. **Documentos necessários:** termo de consentimento versionado, política de privacidade, prazos de retenção e exclusão, plano de resposta a incidente (vazamento de dado sensível exige comunicação à ANPD).

## O que levar ao advogado
Resumo do que o portal faz: cadastro, envio de PDF e foto de exames, agenda, quem acessa o quê, onde e por quanto tempo os dados ficam guardados. O ideal é anexar o desenho de arquitetura (a escrever em `docs/`).

## Quem faz
Advogado ou escritório de direito digital, LGPD ou saúde; a assessoria jurídica de entidades médicas pode atender médicos associados. Prazo e preço: **[a levantar]**, pedir orçamento a mais de um.

## O que ele não substitui
- O código e a segurança técnica (criptografia, controle de acesso, trilha de auditoria, backup): trabalho do João.
- A revisão final da Cláudia e, se possível, a consulta ao CRM sobre publicidade.

## Resultado
Quando o parecer chegar, registrar aqui só a conclusão (sem dado pessoal) e atualizar `docs/requisitos.md` e `docs/checklist.md`.
