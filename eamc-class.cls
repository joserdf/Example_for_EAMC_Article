%% Esse arquivo foi produzido com base no arquivo FCEFyN-paper.tex, template das publicações da "Revista de la Facultad de Ciencias Exactas, Físicas y Naturales
%% de la Universidad Nacional de Córdoba, Argentina.

%% Originalmente feito por Ana Luiza Martins Karl, 17/06/2019

%% Revisado por Matheus Muller Pereira da Silva, 18/07/2019

%% Atualizado por José Renato Duarte Fajardo 15/08/2025
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eamc-class}[2025/08/15 eamc-class]

\DeclareOption{onecolumn}{\OptionUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}


\ProcessOptions\relax
\LoadClass[twoside, a4paper, 12pt, onecolumn]{article}

        

% Pacotes Necessários
\usepackage[utf8]{inputenc}
\usepackage[brazil]{babel}
\usepackage{graphicx}
\usepackage{setspace}
\usepackage{natbib}
\usepackage{float}
\usepackage{url} \Urlmuskip=0mu plus 1mu % break url lines
\usepackage{tabto}

\usepackage{lmodern}
\usepackage{lipsum} 
\usepackage{newpxtext}

% \usepackage{amsmath}
% \usepackage{amsfonts}
% \usepackage{amssymb}

%%% Configurações do PDF
\usepackage[     bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 colorlinks = true,
                 linkcolor = black,
                 urlcolor  = black,
                 citecolor = black,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}


% Configurações de página
\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\oddsidemargin}{3cm}
\setlength{\evensidemargin}{3cm}
\setlength{\topmargin}{0.7cm}
\setlength{\headheight}{2.0cm}
\setlength{\headsep}{0.4cm}
\setlength{\textheight}{23.0cm}
\setlength{\textwidth}{16cm}
\setlength{\footskip}{4.5cm}
%lmargin = 2.5cm, rmargin = 2.5cm, tmargin = 2.5cm, bmargin = 3.5cm


% Configurações para autores e afiliações
\usepackage[noblocks]{authblk}
\renewcommand\AB@affilsepx{\protect\par\protect\Affilfont}
  \renewcommand\Authands{ e }
\renewcommand{\Affilfont}{\fontsize{9}{12} \selectfont \itshape}
\renewcommand{\Authfont}{\fontsize{12}{14} \selectfont}


% Definições de macros para edição
\def\thisvolume#1{\gdef\@thevolume{#1}}        % Volume
\def\thisyear#1{\gdef\@theyear{#1}}             % Ano

\def\abstract#1{\gdef\@englishabstract{#1}}     
\def\keywords#1{\gdef\@englishkeywords{#1}}

% Configurações de contatos
\def\contactauthor#1{\gdef\@thecontactauthor{#1}}
\def\email#1{\gdef\@theemail{#1}}
\newcommand*{\contacto}{%
      \@thecontactauthor,
      \@theemail
}

\renewcommand*\footnoterule{}
\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}
\newcommand*{\printcontactdata}{%
  \blfootnote{\\ {\fontsize{8}{11} \selectfont
   Contato:
  \contacto}}
}


% Cabeçalho
\def\title#1{\gdef\@title{#1}\gdef\thetitle{#1}}
\def\shorttitle#1{\gdef\@theshorttitle{#1}}
\def\firstauthor#1{\gdef\@thefirstauthor{#1}}
\newcommand*{\authorheader}{
  \begingroup
  \ifnum\value{authors}<2 
        \MakeUppercase{\@thefirstauthor} 
    \else 
        {\MakeUppercase{\@thefirstauthor}~{\itshape et al.}}
    \fi
  \endgroup
  }
\newcommand{\vcenteredinclude}[1]{\begingroup
\setbox0=\hbox{\includegraphics[height=\headheight]{#1}}%
\parbox{\wd0}{\box0}\endgroup}


% Configurações de legendas
\usepackage{caption}
\captionsetup[figure]{font=small,labelfont=bf,justification=centering}
\captionsetup[figure]{name=Fig.}
%\DeclareCaptionFormat{myformat}{#1#2#3\rule{\linewidth}{0.3pt}}
%\captionsetup[figure]{format=myformat}

\captionsetup[table]{font={small,sc},labelfont={bf,sc},justification=centering}
  \captionsetup[table]{name=Tabela}

\usepackage{makecell} % break lines in cell tables
\renewcommand\theadalign{cc}
\renewcommand\theadgape{\Gape[4pt]}
\renewcommand\cellgape{\Gape[4pt]}
\addtolength{\belowcaptionskip}{-8pt}
\addtolength{\abovecaptionskip}{0pt}


% Confiurações de titulo
\newcommand*\varhrulefill[1][0.4pt]{\leavevmode\leaders\hrule height#1\hfill\kern0pt}
\renewcommand{\@maketitle}{%
  \newpage
  \null
  \begingroup
    \vspace{0cm}
    {\begin{center}
      {\bfseries \fontsize{20}{24} \selectfont \@title \par}
     \vspace{0.6cm}
     {\setlength{\tabcolsep}{0in}
        \begin{tabular}[c]{c}
                {\@author}
        \end{tabular}

      \vspace{0.1cm}
     }
    \end{center}}
    
    %% Abstract e keywords
    \noindent\varhrulefill[0.6mm] \par    
    \vspace{0.4cm}
        \noindent {\fontsize{10}{12} \selectfont {\bfseries{Abstract}} \par \@englishabstract} \par 
        \vspace{0.5cm} 
        \vspace{0.3cm}
        \noindent {\fontsize{10}{12} \selectfont {\bfseries{Keywords}}:\@englishkeywords}
        \vspace{0.1cm} \par
    \noindent\varhrulefill[0.6mm]
  
  \endgroup
  \vspace{0.5cm}
} 


%%% Cabeçalho e rodapé
\usepackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
%\fancyhead[LO]{{\fontsize{8}{11} \selectfont XIII Encontro Acadêmico de Modelagem Computacional, ~\@theyear}}
\fancyhead[LO]{
{\fontsize{8}{11} \selectfont Anais do XIX Encontro Acadêmico de Modelagem Computacional.}\\
{\fontsize{8}{11} \selectfont Laboratório Nacional de Computação Científica, 19 a 22 de Janeiro de 2026.}}
\fancyhead[CO]{ }
\fancyhead[RO]{\vcenteredinclude{eamc-classFiles/eamc_logo.png}}
\fancyhead[CE]{ }
\fancyhead[LE]{{\fontsize{8}{11} \selectfont \MakeUppercase{\@theshorttitle}}}
\fancyhead[RE]{{\fontsize{8}{11} \selectfont \authorheader}}
\fancyfoot[LO,LE]{ }
\fancyfoot[CO,CE]{ }
\fancyfoot[RO,RE]{{\fontsize{8}{11} \selectfont \thepage}}
   
   
% Formato das sessões
%\setcounter{secnumdepth}{0}      
\renewcommand{\section}{\@startsection{section}{1}{0mm}%
                                     {-12pt}%
                                     {6pt}%
                                     {\setlength\parindent{0em} \fontsize{12}{14} \selectfont \bfseries\textsc}}%
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
                                     {-12pt}%
                                     {6pt}%
                                     {\setlength\parindent{0em} \fontsize{11}{13} \selectfont \bfseries\textit}}%
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
                                     {-12pt}%
                                     {6pt}%
                                     {\setlength\parindent{0em} \fontsize{11}{13} \selectfont \textit}}

 
% Configurações de bibliografia
\newcounter{iteminbib}
\addtocounter{iteminbib}{0}
\newlength{\bibmargin}
\setlength{\bibmargin}{20pt}
\TabPositions{\bibmargin}
\newcommand{\quotes}[1]{``#1''}
\newcommand{\insertbibliography}[1]{%
\setlength{\parindent}{0pt}
\setlength{\bibsep}{4pt}
\setlength\itemindent{0pt}
\setlength{\bibhang}{\bibmargin}
{\setstretch{0.85}
\fontsize{8}{10} \selectfont
  \bibliographystyle{eamc-classFiles/eamc-ref.bib}
  \renewcommand\refname{REFERENCES}  
\bibliography{#1}}
}



 
