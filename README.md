# Avaliação do Impacto do ChatGPT na Aprendizagem de Heap e Tabelas Hash em Algoritmos e Estruturas de Dados

**Trabalho de Conclusão de Curso**  
**Curso:** Bacharelado em Engenharia da Computação  
**Instituição:** Universidade Federal Rural de Pernambuco (UFRPE)  
**Unidade:** Unidade Acadêmica de Belo Jardim (UABJ)  
**Autor:** Elias Vitor da Silva  
**Orientador:** Prof. Dr. Waldemar Neto  
**Local / data:** Belo Jardim, julho de 2026  

**Repositório:** [https://github.com/hellyaxs/MW-CL-pesquisa-tcc](https://github.com/hellyaxs/MW-CL-pesquisa-tcc)

---

## 1. Resumo da pesquisa

Este Trabalho de Conclusão de Curso investiga se o uso do ChatGPT durante atividades práticas de **Algoritmos e Estruturas de Dados** altera o **desempenho** dos estudantes, medido pela **pontuação** em questionários objetivos sobre **Heap** e **Tabelas Hash**.

O estudo adotou um desenho experimental com **grupos cruzados (crossover)**: o Grupo 1 utilizou o ChatGPT em Heap e não o utilizou em Tabelas Hash; o Grupo 2 inverteu as condições. Ao final de cada atividade prática, todos responderam a um questionário de múltipla escolha **sem** apoio da ferramenta.

Foram distribuídos **25** estudantes nos grupos; **20** concluíram todas as etapas e integraram a análise comparativa. A análise estatística empregou Shapiro–Wilk, Mann–Whitney U e Cliff’s Delta. **Não** foi identificada diferença estatisticamente significativa entre as condições com e sem ChatGPT ($p = 1{,}000$), e o tamanho de efeito foi **negligível** ($\delta = -0{,}003$). Assim, a hipótese nula não foi rejeitada no contexto analisado.

---

## 2. Objetivos

| Tipo | Descrição |
|------|-----------|
| **Geral** | Analisar se o uso do ChatGPT nas práticas influencia o desempenho medido pela pontuação nos questionários de Heap e Tabelas Hash. |
| **Específicos** | Caracterizar participação e perfil de uso prévio de IA; comparar desempenho com e sem ChatGPT; discutir resultados à luz da literatura e das limitações. |

**Hipótese nula ($H_0$):** não há diferença significativa no desempenho (pontuação nos questionários) entre as condições com e sem uso do ChatGPT.

---

## 3. Estrutura deste repositório

```text
.
├── principal.tex                 # Documento mestre LaTeX (TCC)
├── tccufrpe.cls                  # Classe / template UFRPE–UABJ
├── referencias.bib               # Bibliografia (ABNT)
├── Textos/
│   ├── pre-textuais/             # Resumo, abstract, dedicatória etc.
│   ├── textuais/                 # Capítulos 1 a 5
│   └── pos-textuais/             # Apêndices / anexos (se usados)
├── Figuras/                      # Figuras do PDF (fluxo, gráficos, estruturas)
├── codigos/                      # Notebooks de análise e geração de gráficos
├── questionarios/                # Links dos formulários aplicados
├── apresentacao-tcc/             # Slides HTML/CSS da defesa
└── correções-pos-apresentação/   # Notas internas de revisão (não fazem parte do PDF)
```

### Capítulos do texto (`Textos/textuais/`)

| Arquivo | Conteúdo |
|---------|----------|
| `1-Introducao.tex` | Contextualização, problema, objetivos e pergunta de pesquisa |
| `2-ReferencialTeórico.tex` | Heap, Tabelas Hash, ChatGPT na educação e instrumentos estatísticos |
| `3-Metodologia.tex` | Contexto, amostra, desenho crossover, instrumentos e análise |
| `4-ResultadosDiscussões.tex` | Descritivas, testes, figuras, discussão e ameaças à validade |
| `5-Conclusões.tex` | Síntese dos achados e trabalhos futuros |

---

## 4. Como compilar o TCC (LaTeX)

1. Abra `principal.tex` no Overleaf ou em distribuição local (TeX Live / MiKTeX) com suporte a **abnTeX2**.
2. Compile na ordem usual: LaTeX → BibTeX → LaTeX → LaTeX (ou o equivalente do editor).
3. Confira se as figuras em `Figuras/` estão acessíveis a partir da raiz do projeto.

Dependências principais: classe `tccufrpe`, pacotes do template UFRPE/UABJ e bibliografia `referencias.bib` no estilo `abntex2-alf`.

---

## 5. Análise estatística e gráficos

Os procedimentos descritos na Metodologia estão nos notebooks em `codigos/`:

| Arquivo | Função |
|---------|--------|
| `codigos/analise_estatistica.ipynb` | Descritivas, Shapiro–Wilk, Mann–Whitney U e Cliff’s Delta |
| `codigos/gerar_graficos_estatisticos.ipynb` | Figuras usadas na apresentação e no capítulo de Resultados |

**Requisitos típicos:** Python 3, `openpyxl`, `scipy`, `numpy`, `matplotlib` (conforme células dos notebooks).

As figuras finais do PDF incluem, entre outras:

- `Figuras/fluxo-metodologia.png`
- `Figuras/grafico-mann-whitney.png`
- `Figuras/grafico-cliffs-delta.png`

---

## 6. Questionários

Os instrumentos pós-atividade (múltipla escolha, sem ChatGPT) estão listados em:

- [`questionarios/form.md`](questionarios/form.md)

| Conteúdo | Questões |
|----------|----------|
| Heap | 20 |
| Tabelas Hash | 21 |

Pontuação: número de acertos (mesmo peso por questão). As questões foram selecionadas a partir de bancos públicos da plataforma Sanfoundry (detalhes no texto da Metodologia).


---

## 7. Resultados principais (síntese)

| Indicador | Valor |
|-----------|--------|
| Amostra na análise completa | $n = 20$ |
| Mann–Whitney U (agregado) | $p = 1{,}000$ (não rejeita $H_0$) |
| Cliff’s Delta | $\delta = -0{,}003$ (efeito negligível) |
| Perfil de IA (formulário inicial, $n = 28$) | 100% conheciam IA generativa; 89,3% usam “quase sempre” em programação |

---

## 8. Licença e uso acadêmico

Material produzido no âmbito de Trabalho de Conclusão de Curso da UFRPE/UABJ. Para citação, utilize os dados bibliográficos do PDF final e a referência ao orientador quando aplicável. Dados de participantes foram tratados de forma agregada ou anonimizada, conforme o TCLE.

---

## 9. Contato

- **Autor:** Elias Vitor da Silva  
- **Orientador:** Prof. Dr. Waldemar Neto  
- **Instituição:** UFRPE — Unidade Acadêmica de Belo Jardim  
