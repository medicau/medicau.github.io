# Requisitos legais e do portal

Fontes verificadas em 2026-11-11; confirmar a versão vigente antes de publicar.

## Publicidade médica (verificado na fonte primária)
A norma antiga (1.974/2011) era mais restritiva. A **Resolução CFM nº 2.336/2023** (em vigor desde 11/03/2024, segundo a imprensa especializada; revogou a 1.974/2011) mudou isso. Texto lido em `sistemas.cfm.org.br`:
- **Obrigatório em toda peça** (art. 4º): nome, número do CRM acompanhado da palavra MÉDICO; especialidade/área de atuação registrada, seguida do RQE quando houver. Em site ou rede social, esses dados devem estar **na página principal** (art. 6º).
- **Vedado** (art. 11, trechos): garantir, prometer ou insinuar bom resultado (XII); anunciar técnica com "capacidade privilegiada" (IX); divulgar método não reconhecido pelo CFM (VII); prêmios do tipo "médico do ano" (XIII); consultoria a paciente em substituição à consulta presencial, salvo telemedicina regulamentada (XI).
- **Permitido com condições** (art. 14): uso de imagem de paciente com finalidade educativa; depoimentos e autorretratos repostados devem ser "sóbrios, sem adjetivos que denotem superioridade ou induzam a promessa de resultado" (14, II, g); anonimato e autorização quando a imagem for do próprio médico/serviço.
- Aplicável ao CRM do estado: conferir pareceres regionais e o Manual da Codame (CFM). Fonte: [Resolução CFM 2.336/2023](https://sistemas.cfm.org.br/normas/arquivos/resolucoes/BR/2023/2336_2023.pdf). Revisão final por quem entenda de ética médica (a própria médica e, se possível, o CRM) antes de publicar.

## Requisitos do portal do paciente (login e envio de exames)
O que as fontes sustentam e o que ainda é lacuna (**[VERIFICAR]** = confirmar na norma ou com advogado de saúde digital):
- **LGPD:** dado de saúde é dado pessoal **sensível** (art. 5º, II); tratamento sob o art. 11, com consentimento específico e destacado ou outra base, como a tutela da saúde (art. 11, II, "f"); medidas de segurança do art. 46 em diante; incidente com dado sensível exige comunicação à ANPD. Fontes secundárias: [Confidata, LGPD em clínicas](https://confidata.com.br/blog/lgpd-clinicas-medicas-guia-adequacao-2026), [Migalhas](https://www.migalhas.com.br/depeso/392150/lgpd-na-saude). **[VERIFICAR]** controlador, operador, necessidade de encarregado (DPO) e de RIPD para uma médica autônoma.
- **Prontuário e telemedicina:** fontes secundárias dizem que sistemas de registro eletrônico de saúde seguem requisitos de segurança (NGS2, certificados ICP-Brasil, certificação SBIS/CFM) e que a telemedicina (Res. CFM 2.314/2022) exige plataforma segura e responsável técnico. **[VERIFICAR]** se um portal que só recebe exames enviados pelo paciente cai nessas exigências ou fica fora, e se ele integra o prontuário. Fonte: [Confidata, telemedicina e LGPD](https://confidata.com.br/blog/telemedicina-lgpd-guia-completo-plataformas).
- **Técnico mínimo (boa prática, não norma):** cadastro com verificação de e-mail e autenticação forte (2FA); arquivos criptografados em repouso e em trânsito; armazenamento fora da pasta pública; controle de acesso por paciente; trilha de auditoria (quem viu o quê); retenção e exclusão definidas; backup cifrado; limite de tamanho e tipo de arquivo, varredura antivírus; termo de consentimento versionado; hospedagem com contrato adequado (a hospedagem compartilhada da KingHost provavelmente **não** é o lugar para isso).

## Construir ou contratar
| Opção | Prós | Contras |
|---|---|---|
| Construir (Laravel + Jetstream, o stack que o João usa) | controle, custo baixo de licença, aprendizado | o João vira responsável técnico por segurança de dado de saúde; manutenção; risco legal |
| Contratar plataforma de portal/prontuário já adequada à LGPD e ao CFM | segurança e conformidade por contrato | mensalidade; menos personalização; avaliar fornecedores no Brasil |
| Fluxo mínimo sem app (link seguro de envio de terceiros, e-mail cifrado) | rápido e barato | experiência pior; a conformidade continua a ser verificada |

**Decidido em 11/11/2026: o João constrói (Laravel + Jetstream).** O parecer jurídico segue como pré-requisito para dado real. Itens ainda a levantar, para dimensionar o portal: **quantos pacientes**, **que exames**, **se vira prontuário** e o resultado do parecer jurídico.
