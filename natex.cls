\LoadClass[a5paper]{article}

\RequirePackage[landscape]{geometry}

\RequirePackage{indentfirst}

% Modify the margins
\RequirePackage{geometry}
\geometry{left=1.5cm,right=1.5cm,top=1.5cm,bottom=1.5cm}

% Header and footers, wewill use the titles also
\RequirePackage{fancyhdr}
\RequirePackage{scrextend}


% Template-specific packages
\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc}
\usepackage{mathpazo}

\usepackage{enumerate} % To modify the enumerate environment

\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{mathtools}
\AddToHook{cmd/section/before}{\clearpage}
\DeclareMathOperator{\tg}{tg}
\newcommand{\tgx}{\tg x}
\usepackage{epsfig}

\usepackage{chngcntr}
\usepackage{tkz-euclide}
\usetikzlibrary{shapes.geometric}
\usetikzlibrary{decorations.markings,angles}
\usetikzlibrary{positioning, calc}

\usepackage{fontspec}

\setmainfont{BPG Arial}

\RequirePackage{titlesec}

\titleformat{\section}[block]
    {\vspace{3mm}\normalsize\bfseries\LARGE\normalfont}
    {\thesection}
    {.3cm}{}[]

\titleformat{\subsection}[block]
    {\bfseries\Large\normalfont}
    {\thesubsection}
    {0}{}[]

\titleformat{\subsubsection}[block]
    {\bfseries\normalfont}
    {\thesubsubsection}
    {1mm}{}[]


\renewcommand{\maketitle}{%
    \thispagestyle{plain}
    \begin{center}
        \ifx\instituteloc\undefined{}\else{\scshape \instituteloc} \\[10pt] \fi
        \hrule
        \vspace{10pt}
        {\LARGE \bfseries \@title} \\[5pt]
        \StudentLang: {\itshape \@author}
        \vspace{8pt}
        \hrule
        \vspace{10pt}
        \ifx\classlocal\undefined{}\else\CourseLang: {\itshape \classlocal{} \ifx\professorloc\undefined{}\else{-- }\fi  }\fi
        \ifx\professorloc\undefined{}\else{\ProfessorLang: {\itshape\professorloc}}\fi 
        \\
        \DateLang: {\itshape\@date}
        \vspace{20pt}
    \end{center}
}

% Create a *problem* environmet 
\newsavebox{\problembox}
\newenvironment{problem}
    {\begin{center}\begin{lrbox}{\problembox}\begin{minipage}{.60\textwidth}}
    {\end{minipage}\end{lrbox}\fbox{\usebox{\problembox}}\end{center} }

\endinput
