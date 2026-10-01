\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{relatorio}[2026/01 Classe para Memorial personalizado]

% Baseado na classe article
\LoadClass[12pt, a4paper]{article}

% ==================================================
% PACOTES ESSENCIAIS
% ==================================================
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[brazil]{babel}
\RequirePackage{times}
\RequirePackage{enumitem} % Para customizar itemize, enumerate, description

% Margens ABNT: 3cm superior, 2cm direita, 2cm inferior, 3cm esquerda
\RequirePackage[top=3cm, right=2cm, bottom=2cm, left=3cm, headheight=50pt]{geometry}
%\addtolength{\topmargin}{-21.13188pt}


% Espaçamento 1.5
\RequirePackage{setspace}
\onehalfspacing

% Parágrafos
\RequirePackage{indentfirst}
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0pt}

% ==================================================
% HYPERLINKS
% ==================================================
\RequirePackage[hidelinks]{hyperref}


% ==================================================
% SEÇÕES
% ==================================================
\RequirePackage{titlesec}
\titleformat{\section}{\normalfont\fontsize{12}{15}\bfseries\uppercase}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\fontsize{12}{15}\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalfont\fontsize{12}{15}\bfseries\itshape}{\thesubsubsection}{2em}{}

% ==================================================
% CITAÇÕES E REFERÊNCIAS ABNT
% ==================================================
\RequirePackage[alf, abnt-emphasize=bf, bibjustif]{abntex2cite}
%\providecommand{\abntnextkey}{}

\RequirePackage{quoting}

%\usepackage[alf, abnt-emphasize=bf]{abntex2cite}
%\usepackage{quoting}

% ==================================================
% FIGURAS E TABELAS
% ==================================================
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{caption}
\captionsetup{font=small, labelfont=bf, justification=centering}

% ==================================================
% LISTAGENS DE CÓDIGO
% ==================================================
\RequirePackage{listings}
\RequirePackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{estilo-codigo}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

\lstset{
    style=estilo-codigo,
    inputencoding=utf8,
    extendedchars=true,
    literate=
        {á}{{\'a}}1 {à}{{\`a}}1 {ã}{{\~a}}1 {â}{{\^a}}1
        {é}{{\'e}}1 {ê}{{\^e}}1
        {í}{{\'i}}1
        {ó}{{\'o}}1 {ô}{{\^o}}1 {õ}{{\~o}}1
        {ú}{{\'u}}1
        {ç}{{\c{c}}}1
        {Á}{{\'A}}1 {À}{{\`A}}1 {Ã}{{\~A}}1 {Â}{{\^A}}1
        {É}{{\'E}}1 {Ê}{{\^E}}1
        {Í}{{\'I}}1
        {Ó}{{\'O}}1 {Ô}{{\^O}}1 {Õ}{{\~O}}1
        {Ú}{{\'U}}1
        {Ç}{{\c{C}}}1
}

% Tradução para português
\renewcommand{\lstlistingname}{Código}
\renewcommand{\lstlistlistingname}{Lista de Códigos}


% ==================================================
% MARCA D'ÁGUA (MINUTA)
% ==================================================
\providecommand{\ifminuta}{\iffalse} % se main.tex não definir, fica desligado

\ifminuta
  \RequirePackage{draftwatermark}
  \SetWatermarkText{MINUTA}
  \SetWatermarkScale{1}
  \SetWatermarkAngle{45}
  \SetWatermarkLightness{0.90} % 0 = escuro, 1 = bem claro
\fi




% ==================================================
% CABEÇALHO E RODAPÉ
% ==================================================
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

% Comandos personalizados para informações
\newcommand{\superior}[1]{\def\@superior{#1}}
\newcommand{\curso}[1]{\def\@curso{#1}}
\newcommand{\nome}[1]{\def\@nome{#1}}
\newcommand{\titulo}[1]{\def\@titulo{#1}}
\newcommand{\logo}[1]{\def\@logo{#1}}

% Configuração do estilo de página
\pagestyle{fancy}
\fancyhf{} % Limpa cabeçalho e rodapé

% Cabeçalho com logo
\fancyhead[L]{%
    \begin{minipage}[c]{0.15\textwidth}
        \ifdefined\@logo
            \includegraphics[height=2.6cm]{\@logo}
        \fi
    \end{minipage}%
    %\hspace{0.5cm}%
    % \begin{minipage}[c]{0.45\textwidth}
    %     \small
    %     \textbf{\@superior} \\
    %     \textbf{\@curso} \\
    %     \textbf{\@nome}
    % \end{minipage}%
}
\fancyhead[C]{
    \begin{minipage}[c]{0.5\textwidth}
        \small
        \centering
        \textbf{\@superior} \\
        \textbf{\@curso} \\
        \textbf{\@nome}
    \end{minipage}%
}

\fancyhead[R]{%
    \begin{minipage}[c]{0.3\textwidth}
        \raggedleft
        \small
        %adiciona a lateral direita informacoes do cabecalho
    \end{minipage}%
}

% Rodapé
\fancyfoot[L]{\small \href{https://github.com/OgliariNatan}{https://github.com/OgliariNatan}}
%\fancyfoot[L]{\small \@nome}
\fancyfoot[C]{\small \today}
\fancyfoot[R]{\small Pág. \thepage\ de \pageref{LastPage}}

% Linhas de separação
\renewcommand{\headrulewidth}{0.1pt}
\renewcommand{\footrulewidth}{0.1pt}
% Adiciona figurta como linha de rodapé
% \renewcommand{\footrule}{%
%     \vspace{-0.3\baselineskip}%
%     \noindent\includegraphics[width=\textwidth, height=4pt]{img/logo.png}%
% }



\AtBeginDocument{%
    \thispagestyle{fancy}%
    %\rightline{\small{\today}}%
    \vspace*{1pt}%
    \begin{center}%
        \textbf{\@titulo}%
    \end{center}%
}
% Aplicar estilo fancy em todas as páginas
%\AtBeginDocument{\thispagestyle{fancy}}
