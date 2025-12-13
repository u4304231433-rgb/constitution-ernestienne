\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{constitution}

\LoadClass{texteofficiel}
\author{}

\title{CONSTITUTION DE LA DÉMOCRATIE ERNESTIENNE NORMALIENNE ET SUPERCOOL}
\newcounter{nbtitre}
\newcounter{nbarticle}
\newcounter{nbsubarticle}[nbarticle]
\newcounter{nbsubsubarticle}[nbsubarticle]
\newcounter{nbsubsubsubarticle}[nbsubsubarticle]

\newcommand{\titre}[1]{
    \stepcounter{nbtitre}
    \newpage
    \part*{Titre \Roman{nbtitre} - #1}
    \addcontentsline{toc}{part}{Titre \Roman{nbtitre} - #1}
}

\newcommand{\Article}[1]{
    \stepcounter{nbarticle}
    \section*{\underline{Article \arabic{nbarticle} : (#1)}}
    \addcontentsline{toc}{section}{Article \arabic{nbarticle} : (#1)}
}
\newcommand{\article}[1]{
    \stepcounter{nbsubarticle}
    \subsection*{Article \arabic{nbarticle}.\arabic{nbsubarticle} : #1}
    \addcontentsline{toc}{subsection}{Article \arabic{nbarticle}.\arabic{nbsubarticle} : #1}
}

\newcommand{\articleref}[2]{
    \stepcounter{nbsubarticle}
    \subsection*{Article \arabic{nbarticle}.\arabic{nbsubarticle} : #1}
    \addcontentsline{toc}{subsection}{Article \arabic{nbarticle}.\arabic{nbsubarticle} : #1}
    \target{#2}{article \arabic{nbarticle}.\arabic{nbsubarticle}}
}

\newcommand{\subarticle}[1]{
    \stepcounter{nbsubsubarticle}
    \subsubsection*{\quad Article \arabic{nbarticle}.\arabic{nbsubarticle}.\arabic{nbsubsubarticle} : #1}
}

\newcommand{\subsubarticle}[1]{
    \stepcounter{nbsubsubsubarticle}
    \paragraph*{\quad\quad Article \arabic{nbarticle}.\arabic{nbsubarticle}.\arabic{nbsubsubarticle}.\alph{nbsubsubsubarticle} : #1}
}
