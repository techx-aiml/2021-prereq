\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}

\LoadClass[a4paper,11pt]{ctexart}


%%%%%%%%%%%%%%%%%%%% Required Packages %%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{commath}

\RequirePackage[utf8]{inputenc}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage{biblatex}
\RequirePackage[hidelinks,breaklinks,bookmarks]{hyperref}

\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{placeins}
\RequirePackage[table]{xcolor}

\RequirePackage{xparse}
\RequirePackage{titlesec}
\RequirePackage{enumitem}


%%%%%%%%%%%%%%%%%%%% Page Options and Spacing %%%%%%%%%%%%%%%%%%%%

\geometry{paper=a4paper,margin=1in}

%\setlength{\parindent}{0.5in}
%\setlength{\parskip}{1em}
%\renewcommand{\baselinestretch}{1.5}
%\doublespacing

%\pagestyle{plain}

\setlist[itemize]{topsep=0pt}

% Remove space around \left \right
\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}


%%%%%%%%%%%%%%%%%%%% Numbers and Environments %%%%%%%%%%%%%%%%%%%%

\numberwithin{equation}{section}
\numberwithin{figure}{section}

\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}


%%%%%%%%%%%%%%%%%%%% Commands and Shorthands %%%%%%%%%%%%%%%%%%%%

\newcommand\numberthis{\addtocounter{equation}{1}\tag{\theequation}}

\renewcommand*{\em}[1]{\textit{#1}}
\newcommand*{\term}[1]{\textbf{#1}}

\newcommand{\NN}{\mathbb{N}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\RR}{\mathbb{R}}

\newcommand{\der}{\mathrm{d}}
\newcommand{\ider}{\,\der}
\NewDocumentCommand{\ddx}{O{} O{x}}{\frac{\der #1}{\der #2}}
\NewDocumentCommand{\ddt}{m O{t}}{\frac{\der #1}{\der #2}}
\newcommand{\limint}[4][]{\ifthenelse{\equal{#1}{}}{\left}{#1}[ #2 \ifthenelse{\equal{#1}{}}{\right}{#1}]_{#3}^{#4}} % brackets style
% \newcommand{\limint}[4][\bigr]{#2 \hspace{0.1em}#1|_{\hspace{0.1em}#3}^{\hspace{0.1em}#4}\hspace{0.2em}} % vertical line style

\newcommand*{\mean}[1]{\overline{#1}}
\DeclareMathOperator{\prob}{\mathrm{P}}


%%%%%%%%%%%%%%%%%%%% Path Settings %%%%%%%%%%%%%%%%%%%%

\graphicspath{{figures/}}
