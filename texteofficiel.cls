\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{texteofficiel}

\LoadClass{scrartcl}
\RequirePackage{ifthen}
\RequirePackage[french]{babel}
\RequirePackage{graphicx}
\RequirePackage[angle=0, scale=3.0,opacity=0.05, pages=all, contents=\includegraphics{logo.png}]{background}
\RequirePackage[headsepline]{scrlayer-scrpage}
\RequirePackage[hidelinks]{hyperref}
\ohead{\thepage}
\chead{JOURNAL OFFICIEL DE L'ERNESTIE}
\ihead{\today}
\cfoot{}


\newcommand{\setvariable}[2]{%
\expandafter\edef\csname var@{#1}\endcsname{#2}%
}


\newcommand{\getvariable}[1]{%
\csname var@{#1}\endcsname%
}


\newcommand{\target}[2]{%
\hypertarget{#1}{}%
\setvariable{#1}{#2}%
}


\newcommand{\reftarget}[1]{%
\hyperlink{#1}{\getvariable{#1}}%
}

