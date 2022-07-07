\LoadClass[]{article}

% \RequirePackage[landscape]{geometry}

\RequirePackage{indentfirst}

% Modify the margins
\RequirePackage{geometry}
\geometry{left=1.5cm,right=1.5cm,top=1.5cm,bottom=1.5cm}

\RequirePackage{tasks}


% Template-specific packages
\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc}
\usepackage{mathpazo}

\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{mathtools}

\DeclareMathOperator{\tg}{tg}
\newcommand{\tgx}{\tg x}
\usepackage{epsfig}

\usepackage{chngcntr}

\usepackage{fontspec}

% \setmainfont{BPG Arial}
\setmainfont{GA Sylvia}

\usepackage{pgffor}
% \RequirePackage{filecontents}

\newcommand{\answers}[4]{
    \vspace*{0.5cm}
    \begin{tasks} (4)
        \task[ა)] #1
        \task[ბ)] #2
        \task[გ)] #3
        \task[დ)] #4
    \end{tasks}
}

\endinput
