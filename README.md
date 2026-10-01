# Modelo de memorial personalizado

Modelo simplificado de memorial técnico com **cabeçalho e rodapé automáticos** em todas as páginas.

## 📁 Estrutura

```
relatorio-latex/
├── main.tex              # Arquivo único com todo o conteúdo
├── classes/
│   └── relatorio.cls     # Classe com cabeçalho/rodapé automático
├── img/                  # Imagens
├── cod/                  # Códigos-fonte
│   └── exemplo.py
├── referencias.bib       # Referências bibliográficas
└── README.md
```

## 🎯 Características

✅ **Texto em arquivo único** - Todo conteúdo em `main.tex`  
✅ **Cabeçalho automático** - Repetido em todas as páginas  
✅ **Rodapé automático** - Com nome, data e numeração  
✅ **Formatação ABNT completa**  
✅ **Referências automáticas**
✅ **Opção de Minuta** - Para remover, comente a linha `\\minutatrue` no `relatorio.cls`



## 📋 Cabeçalho (em todas as páginas)

```
┌───────┌──────────────────────────────────────────┐
│       |      UNOESC - Campus Maravilha           │
│  LOGO |         CIÊNCIA DA COMPUTAÇÃO            │
│       |              NATAN OGLIARI               │
├───────├──────────────────────────────────────────┤
```

## 📋 Rodapé (em todas as páginas)

```
├─────────────────────────────────────────────────┤
│ AUTOR    23 de janeiro de 2026       Pág. 1 de 5│
└─────────────────────────────────────────────────┘
```

## 🚀 Como Usar

### 1\. Edite as informações no `main.tex`

```latex
\\superior{UNOESC - Campus Maravilha}
\\curso{CIÊNCIA DA COMPUTAÇÃO}
\\nome{Nome}
\\titulo{Título do Relatório}
```

### 2\. Escreva o conteúdo

Todo o texto fica em `main.tex` - seções, parágrafos, figuras, tabelas, códigos.

### 3\. Compile

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## ✏️ Personalizações

### Adicionar Figuras

```latex
\\begin{figure}\[htbp]
    \\centering
    \\caption{Descrição da figura}
    \\includegraphics\[width=0.6\\textwidth]{img/figura.png}
    {\\fontsize{10pt}{\\baselineskip}\\selectfont
   Fonte: O autor (2026)}
    \\label{fig:minha-figura}
\\end{figure}
```

### Adicionar Tabelas

```latex
\\begin{table}\[H]
    \\centering
    \\caption{Título da tabela}
    \\label{tab:minha-tabela}
    \\begin{tabular}{lcc}
        \\hline
        Coluna 1 \& Coluna 2 \& Coluna 3 \\\\
        \\hline
        Dado 1 \& Dado 2 \& Dado 3 \\\\
        \\hline
    \\end{tabular}
    {\\fontsize{10pt}{\\baselineskip}\\selectfont
   Fonte: O autor (2026)}
\\end{table}
```

### Incluir Códigos

```latex
% De arquivo externo
\\lstinputlisting\[language=Python, caption=Descrição, label=cod:codigo]{cod/arquivo.py}

% Inline
\\begin{lstlisting}\[language=Python, caption=Código inline]
def exemplo():
    return "Hello World"
\\end{lstlisting}
```

### Citações

```latex
% Autor no texto
\\citeonline{knuth1984texbook} afirma que...

% Citação entre parênteses
Conforme literatura (\\cite{lamport1994latex}).
```

## 📊 Formatação ABNT

* ✅ Margens: 3cm (superior/esquerda), 2cm (inferior/direita)
* ✅ Fonte: Times New Roman 12pt
* ✅ Espaçamento: 1,5 linhas
* ✅ Recuo de parágrafo: 1,25cm
* ✅ Cabeçalho e rodapé com linhas de separação
* ✅ Numeração: "Pág. X de Y"
* ✅ Referências: NBR 6023:2018

## 🔧 Requisitos

* LaTeX completo (TeX Live, MiKTeX ou MacTeX)
* Pacote `abntex2cite`
* Pacote `fancyhdr`
* Pacote `lastpage`
* Pacote `enumitem`
* Pacote `float`



## 📄 Licença

Uso livre.

\---

**Última atualização:** Fevereiro/2026

