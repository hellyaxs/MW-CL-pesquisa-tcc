%%--------------------------------------------------------------------
%% The LaTeX Project Public License 
%%--------------------------------------------------------------------
%% This work may be distributed and/or modified under the conditions 
%% of the LaTeX Project Public License, either version 1.3 of this 
%% license or (at your option) any later version.
%% The latest version of this license is in 
%% http://www.latex-project.org/lppl.txt and version 1.3 or later is 
%% part of all distributions of LaTeX version 2005/12/01 or later.
%% Further information about abnTeX2 are available on 
%% http://www.abntex.net.br/
%%---------------------------------------------------------------------
%
%
% Customização da classe abnTeX2 (http://www.abntex.net.br/) 
% para as normas dos cursos de especialização 
%
% TEMPLATE PARA TCC 
% Unidade Acadêmcia de Belo Jardim (UABJ) - UFRPE
% Belo Jardim - 2025
% Moisés Tavares
%
% Baseado nos projetos: 
% http://tcc.tsi.gp.utfpr.edu.br/paginas/modelos-latex-da-utfpr
% De: Diego Marczal e Michael Vornes
% Template para TCC - Universidade Federal do Pará
% De: Sérgio Custódio e Kelvin Pinheiro
%
%-----------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccufrpe}[12/10/2025 v1.0]

% Repassa os parâmetros ao abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

% \PassOptionsToClass{
%     12pt,                     % Tamanho da fonte
%     a4paper,                  % Tamanho do papel
%     %sumario=tradicional,      % Seleciona o sumário tradicional
%     brazil,                   % Idioma do documento
% }{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[brazilian, hyperpageref]{backref} % Produzir índice nas referências
\hypersetup{linkcolor=black}
\RequirePackage{makeidx} % Produzir índice remissivo de palavras
\RequirePackage{chngcntr}

%------------------------------------------------------------------------
% Configurações gerais
% -----------------------------------------------------------------------
\frenchspacing % Retira o espaço extra desnecessário nas frases
\renewcommand{\backrefpagesname}{Citado na(s) p\'agina(s):~} % Configurações do pacote backref usado sem a opção hyperpageref de backref
\renewcommand{\backref}{} % Texto padrão antes do número das páginas
\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt} % Define as listas de item compactas (sem espaçamento entre os itens)
\renewcommand*{\backrefalt}[4]{% % Define os textos da citação
    \ifcase #1
        Nenhuma cita\c{c}\~ao no texto.
    \or
        Citado na p\'agina #2.
    \else
        Citado #1 vezes nas p\'aginas #2.
    \fi
}
\counterwithout{equation}{chapter} % Define a numeração de forma sequencial

%------------------------------------------------------------------------
% Comandos de dados
%------------------------------------------------------------------------
% Data da defesa
\renewcommand\data[2]{%
  \month=#1
  \year=#2
}
\newcommand{\diadefesa}[1]{\global\def\local@diadefesa{#1}}
\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}

% Subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% Tipo de trabalho acadêmico (trabalho de conclusão de curso, tese, dissertação ou projeto de qualificação)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

% Grau acadêmico a ser obtido (ex.: Bacharelado em Engenharia da Computação)
% Usado no preâmbulo: "obtenção do título de ..."
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Título do trabalho (TCC) — distinto do grau acadêmico
\providecommand{\imprimirtituloTCC}{}
\newcommand{\tituloTCC}[1]{\renewcommand{\imprimirtituloTCC}{#1}}

% Dados do orientador
\providecommand{\imprimirtituloabrevOrientador}{}
\newcommand{\tituloabrevOrientador}[1]{\renewcommand{\imprimirtituloabrevOrientador}{#1}}
\providecommand{\imprimirtituloOrientador}{}
\newcommand{\tituloOrientador}[1]{\renewcommand{\imprimirtituloOrientador}{#1}}
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}
\newcommand{\imprimirOrientadorBanca}{\imprimirinstOrientador}

% Dados do coorientador
\providecommand{\imprimirtituloabrevCoorientador}{}
\newcommand{\tituloabrevCoorientador}[1]{\renewcommand{\imprimirtituloabrevCoorientador}{#1}}
\providecommand{\imprimirtituloCoorientador}{}
\newcommand{\tituloCoorientador}[1]{\renewcommand{\imprimirtituloCoorientador}{#1}}
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}
\newcommand{\imprimirCoorientadorBanca}{Coorientador(a) \imprimirinstCoorientador}

% Membros da banca
\providecommand{\imprimirnomePrimeiromembro}{}
\newcommand{\nomePrimeiromembro}[1]{\renewcommand{\imprimirnomePrimeiromembro}{#1}}
\providecommand{\imprimirtituloPrimeiromembro}{}
\newcommand{\tituloPrimeiromembro}[1]{\renewcommand{\imprimirtituloPrimeiromembro}{#1}}
\providecommand{\imprimirinstPrimeiromembro}{}
\newcommand{\instPrimeiromembro}[1]{\renewcommand{\imprimirinstPrimeiromembro}{#1}}
\newcommand{\imprimirPrimeiromembroBanca}{\imprimirinstPrimeiromembro}

\providecommand{\imprimirnomeSegundomembro}{}
\newcommand{\nomeSegundomembro}[1]{\renewcommand{\imprimirnomeSegundomembro}{#1}}
\providecommand{\imprimirtituloSegundomembro}{}
\newcommand{\tituloSegundomembro}[1]{\renewcommand{\imprimirtituloSegundomembro}{#1}}
\providecommand{\imprimirinstSegundomembro}{}
\newcommand{\instSegundomembro}[1]{\renewcommand{\imprimirinstSegundomembro}{#1}}
\newcommand{\imprimirSegundomembroBanca}{\imprimirinstSegundomembro}

\providecommand{\imprimirnomeTerceiromembro}{}
\newcommand{\nomeTerceiromembro}[1]{\renewcommand{\imprimirnomeTerceiromembro}{#1}}
\providecommand{\imprimirtituloTerceiromembro}{}
\newcommand{\tituloTerceiromembro}[1]{\renewcommand{\imprimirtituloTerceiromembro}{#1}}
\providecommand{\imprimirinstTerceiromembro}{}
\newcommand{\instTerceiromembro}[1]{\renewcommand{\imprimirinstTerceiromembro}{#1}}
\newcommand{\imprimirTerceiromembroBanca}{Membro Externo - \imprimirtituloTerceiromembro \ - \imprimirinstTerceiromembro}

%------------------------------------------------------------------------
% Estilo de elementos
%------------------------------------------------------------------------
% Elementos pré-textuais
\renewcommand{\pretextual}{%
    \pagenumbering{arabic}
    \aliaspagestyle{chapter}{empty}
    \pagestyle{empty}
    \aliaspagestyle{cleared}{empty}
    \aliaspagestyle{part}{empty}
}

% Elementos textuais
\renewcommand{\textual}{%
    %\pagenumbering{arabic} % A numeração das páginas é em algarismos arábicos, inciando em 1
    \pagestyle{simple}
	%\pagestyle{abntheadings}
    \aliaspagestyle{chapter}{abntchapfirst}
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

% Elementos pós-textuais
\renewcommand{\postextual}{%
    \chapterstyle{abnt}
    \phantompart
}

%------------------------------------------------------------------------
% Objetos flutuantes
%------------------------------------------------------------------------
% Fonte nos objetos flutuantes
\renewcommand{\fonte}[1]{%
    \begin{onehalfspacing}\par\end{onehalfspacing}
    \centering\footnotesize{Fonte: #1}
}

% Notas nos objetos flutuantes
\renewcommand{\nota}[1]{%
    \begin{onehalfspacing}\par\end{onehalfspacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

%------------------------------------------------------------------------
% Parágrafos
%------------------------------------------------------------------------
% Tamanho da indentação
\setlength{\parindent}{1.5cm}

% Espaçamento entre um parágrafo e outro
%\setlength{\parskip}{0.0cm}

%------------------------------------------------------------------------
% Fontes
%------------------------------------------------------------------------
% Redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize\bfseries}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize\bfseries}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

%------------------------------------------------------------------------
% Sumário
%------------------------------------------------------------------------
% Travessão no sumário para apêndices e anexos
%\renewcommand{\cftchapteraftersnum}{\hfill\textendash\hfill}

% Insere espaço entre os itens do sumário de diferentes capítulos
\setlength{\cftbeforechapterskip}{0.5em \@plus\p@}

%------------------------------------------------------------------------
% Listas
%------------------------------------------------------------------------
% Define os títulos das listas
\addto\captionsbrazil{%
    \renewcommand{\listfigurename}{LISTA DE ILUSTRAÇÕES}
    \renewcommand{\listtablename}{LISTA DE TABELAS (OPCIONAL)}
    \renewcommand{\contentsname}{SUMÁRIO (OBRIGATÓRIO)}
    \renewcommand{\indexname}{\'{I}NDICE REMISSIVO}
	\renewcommand{\bibname}{REFER\^{E}NCIAS}
    \renewcommand{\listalgorithmcfname}{LISTA DE ALGORITMOS}
% Ajusta nomes usados com a macro \autoref
    \renewcommand{\pageautorefname}{p\'agina}
    \renewcommand{\sectionautorefname}{Se\c{c}\~ao}
    \renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
    \renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
    \renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

%------------------------------------------------------------------------
% Criação dos elementos
%------------------------------------------------------------------------
% CAPA
\makeatletter
\renewcommand{\imprimircapa}{
    \begin{capa}
    \begin{center}
        \makebox[30mm][c]{\includegraphics[scale=0.3]{UFRPE.png}}
        \vspace{0.5cm}

        
        UNIVERSIDADE FEDERAL RURAL DE PERNAMBUCO\\
        UNIDADE ACADÊMICA DE BELO JARDIM\\
        CURSO DE BACHARELADO EM ENGENHARIA DA COMPUTAÇÃO

        \vspace{4cm}
		  {\large\MakeUppercase{\imprimirautor}}\\
            \vspace{3cm}
            \ABNTEXchapterfont\textbf{\large\MakeUppercase{\imprimirtitulo}}\abntex@ifnotempty{\imprimirsubtitulo}{{\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}}
            
            \vfill
            {\large{\imprimirlocal}} \\ 
            {\large{\number\year}}
    	\end{center}
    \end{capa}
}
\makeatother

\preambulo{{\imprimirprojeto} apresentado ao Curso de Engenharia da Computação da Universidade Federal Rural de Pernambuco, como requisito parcial para obtenção do título de \imprimircurso.}

% FOLHA DE ROSTO
\makeatletter
\renewcommand{\folhaderostocontent}{
    \begin{center}
        \vspace{1.25cm}
        {\large\MakeUppercase{\imprimirautor}}\\
        \vspace{8cm}
        \ABNTEXchapterfont\textbf{\large\MakeUppercase{\imprimirtitulo}}\abntex@ifnotempty{\imprimirsubtitulo}{{\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}}
        \vspace{2cm}
    \end{center}

    % \singlespacing
    \begin{tabular}{p{.3\textwidth}p{.1\textwidth}p{.4\textwidth}} 
        & \multicolumn{2}{p{.52\textwidth}}{\hyphenpenalty=10000{\imprimirpreambulo}}
        \\
        & & \\     
        & 
        \multicolumn{2}{p{.52\textwidth}}{\hyphenpenalty=10000{\imprimirorientadorRotulo \ \imprimirorientador, \imprimirtituloabrevOrientador}}\\
        & \multicolumn{2}{p{.52\textwidth}}{\hyphenpenalty=10000{\imprimircoorientadorRotulo \ \imprimircoorientador \imprimirtituloabrevCoorientador}}\\
    \end{tabular}

    \begin{center}
        \vfill
        {\large{\imprimirlocal}} \\ 
        {\large{\number\year}}
        %\textbf{\large{\imprimirdata}}
    \end{center}
}
\makeatother

% FOLHA DE APROVAÇÃO
\makeatletter
\newcommand{\imprimirfolhadeaprovacao}{%
    \begin{center}
        \large{\imprimirautor}\\
        \vspace{1.5cm}
        \ABNTEXchapterfont\textbf{\large\MakeUppercase{\imprimirtitulo}}\abntex@ifnotempty{\imprimirsubtitulo}{{\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}}
    \end{center}
    \vspace{0.5cm}
    
    \begin{Spacing}{0.9}

    \begin{tabular}{p{.3\textwidth}p{.1\textwidth}p{.4\textwidth}} 
        & \multicolumn{2}{p{.52\textwidth}}{\hyphenpenalty=10000{\imprimirpreambulo}}
    \end{tabular}
    \vspace*{\fill}
    \end{Spacing}
    
    \noindent Aprovado em: \local@diadefesa \ de \local@monthname \ de \number\year
    %\noindent Data de Aprovação: \local@diadefesa/\number\month/\number\year
    \vspace*{\fill}

    \begin{center}
    \textbf{\large\MakeUppercase{Banca Examinadora}}
    \end{center}
    \vspace*{\fill}
    
    \begin{center}
        \assinatura{\imprimirorientador}
        \vspace{0.1cm}
        \imprimirOrientadorBanca 
        
        % \assinatura{\imprimircoorientador}
        % \vspace{0.1cm}
        % \imprimirCoorientadorBanca 
        
        \assinatura{\imprimirnomePrimeiromembro}
        \vspace{0.1cm}
        \imprimirPrimeiromembroBanca
    
        \assinatura{\imprimirnomeSegundomembro}
        \vspace{0.1cm}
        \imprimirSegundomembroBanca

        %\assinatura{\imprimirnomeTerceiromembro}
        %\vspace{0.1cm}
        %\imprimirTerceiromembroBanca

        \vspace*{\fill}
    \end{center}
}
\makeatother

% DEDICATÓRIA
\renewenvironment{dedicatoria}[1][]{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}
    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            % \begin{onehalfspacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}{%
            % \end{onehalfspacing}
        \end{minipage}
    \end{flushright}
}

% EPÍGRAFE
\renewenvironment{epigrafe}[1][]{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}
    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            % \begin{onehalfspacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}{%
            % \end{onehalfspacing}
        \end{minipage}
    \end{flushright}
}

% LISTA DE ALGORTIMOS
%\newcommand{\algoritmoname}{Algoritmo}

%\floatname{algocf}{\algoritmoname}
%\newlistof{listofalgoritmos}{loa}{\listalgoritmoname}
%\newlistentry{algocf}{loa}{0}

%\counterwithout{algocf}{chapter}
%\renewcommand{\cftalgocfname}{\algoritmoname\space}
%\renewcommand*{\cftalgocfaftersnum}{\hfill--\hfill}

%\renewcommand{\algorithmautorefname}{Algoritmo}
%\def\equationautorefname~#1\null{Equa\c c\~ao~(#1)\null}

%------------------------------------------------------------------------
% Pacotes
%------------------------------------------------------------------------
% REFERÊNCIAS
\usepackage[
alf,
abnt-emphasize=bf,
bibjustif,
recuo=0cm,
abnt-url-package=url,  % Utiliza o pacote url
abnt-refinfo=yes,      % Utiliza o estilo bibliográfico abnt-refinfo
abnt-etal-cite=3,
abnt-etal-list=0,
abnt-thesis-year=final
]{abntex2cite}         % Configura conforme a norma ABNT

% PACOTES NECESSÁRIOS
\usepackage{hyperref}
\usepackage{afterpage}
\usepackage{pdfpages}
\usepackage[figurewithin=none,tablewithin=none]{caption}
\captionsetup[table]{singlelinecheck=false,skip=0.2cm}
\captionsetup[figure]{skip=0.2cm}
\usepackage[font={scriptsize}]{caption}
\usepackage{changepage}
\usepackage{makecell}
\usepackage{subcaption}
\usepackage{caption}
\usepackage{varwidth}
\usepackage{rotating}
\usepackage[utf8]{inputenc} % Codificação do documento
\usepackage[T1]{fontenc} % Seleção de código de fonte

\usepackage[left=3cm,right=2cm,top=3cm,bottom=2cm]{geometry}
\renewcommand{\familydefault}{\sfdefault}
\usepackage{booktabs} % Réguas horizontais em tabelas
\usepackage{color, colortbl} % Controle das cores
\usepackage{float} % Necessário para tabelas/figuras em ambiente multi-colunas
\usepackage{graphicx} % Inclusão de gráficos e figuras
\usepackage{icomma} % Uso de vírgulas em expressões matemáticas
\usepackage{indentfirst} % Indenta o primeiro parágrafo de cada seção
\usepackage{microtype} % Melhora a justificação do documento
\usepackage{multirow, array} % Permite tabelas com múltiplas linhas e colunas
\usepackage{subeqnarray} % Permite subnumeração de equações
\usepackage{lastpage} % Para encontrar última página do documento
\usepackage{verbatim} % Permite apresentar texto tal como escrito no documento, ainda que sejam comandos Latex
\usepackage{setspace}
\usepackage{amsfonts, amssymb, amsmath} % Fontes e símbolos matemáticos
\usepackage[algoruled, portuguese]{algorithm2e} % Permite escrever algoritmos em português
%\usepackage[scaled]{helvet} % Usa a fonte Helvetica
\usepackage{helvet} % Usa a fonte Helvetica
%\usepackage{times} % Usa a fonte Times
%\usepackage{palatino} % Usa a fonte Palatino
%\usepackage{lmodern} % Usa a fonte Latin Modern
%\usepackage[bottom]{footmisc} % Mantém as notas de rodapé sempre na mesma posição
\usepackage{ae, aecompl} % Fontes de alta qualidade
\usepackage{latexsym} % Símbolos matemáticos
\usepackage{lscape} % Permite páginas em modo "paisagem"
%\usepackage{picinpar} % Dispor imagens em parágrafos
%\usepackage{scalefnt} % Permite redimensionar tamanho da fonte
%\usepackage{subfig} % Posicionamento de figuras
%\usepackage{upgreek} % Fonte letras gregas
%\usepackage{breqn}

%------------------------------------------------------------------------
% Configurações do pdf
%------------------------------------------------------------------------
%\include{configuracoes/pacotes}
\makeatletter
\hypersetup{%
	portuguese,
	colorlinks=true,   % true: "links" coloridos; false: "links" em caixas de texto
	linkcolor=black,    % Define cor dos "links" internos
	citecolor=black,    % Define cor dos "links" para as referências bibliográficas
	filecolor=black,    % Define cor dos "links" para arquivos
	urlcolor=black,     % Define a cor dos "hiperlinks"
	breaklinks=true,
	pdftitle={\@title},
	pdfauthor={\@author},
	pdfkeywords={abnt, latex, abntex, abntex2}
}
\makeatother

% REDEFINIÇÃO DE LABELS
\renewcommand{\algorithmautorefname}{Algoritmo}
\def\equationautorefname~#1\null{Equa\c c\~ao~(#1)\null}

% CRIA ÍNDICE REMISSIVO
\makeindex

% HIFENIZAÇÃO DE PALAVRAS QUE NÃO ESTÃO NO DICIONÁRIO
\hyphenation{%
	qua-dros-cha-ve
	Kat-sa-gge-los
}


