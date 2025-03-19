% Yachay Tech University undergraduate thesis style class
% Duncan Mowbray <dmowbray@yachaytech.edu.ec>

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2006/06/25]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

\LoadClass{report}

% Standard LaTeX2e packages I am using (as seen in "The LaTeX Companion"):
\usepackage[T1]{fontenc} % ... if you want to use T1 fonts
\usepackage{lmodern}   % ... Times New Roman font

\RequirePackage[sort&compress,numbers,super]{natbib}
\usepackage{graphicx}
     % ... if you want to include encapsulated postscript figures
\usepackage{makeidx} % ... if you want an index
\usepackage{amsmath} % ... if you need lots of math symbols
\usepackage{amsthm} % ... use proper theorem styles
\usepackage{units}	 % ... allow nice fractions
\usepackage{mathrsfs}% ... fancy operator fonts
\usepackage{euscript}% ... real and imaginar I and R
\usepackage{upgreek} % ... upright greek letters for greek vectors
\usepackage{amssymb} % ... \hslash for proper hbar
\usepackage{enumerate} % ... specify numbering styles in enumerate
%\usepackage{txfonts}
\usepackage{xfrac}
\usepackage{makecell}
\usepackage{multirow}
\usepackage[symbol]{footmisc}
\usepackage[outercaption]{sidecap}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
%\usepackage[dvips=true,bookmarks=true]{hyperref} 
%
%linkcolor=blue, citecolor=blue, menucolor=black,pagecolor=blue,
%filecolor=blue, urlcolor=blue]{hyperref} 
%\usepackage[bookmarks=true,letterpaper=true,colorlinks=false,linkcolor=blue, citecolor=blue, menucolor=black,pagecolor=blue, filecolor=blue, urlcolor=blue]{hyperref} 
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{colortbl,cuted,bm}
%\definecolor{StyleColor}{RGB}{0,0,0} %% Black - for submission
%\definecolor{abstractcolor}{RGB}{255,255,255}  %% White - for submission
\usepackage[bookmarks=true,colorlinks=true,urlcolor=black,linkcolor=black,citecolor=blue]{hyperref} 

% Russian Language Support 
\usepackage[mathletters]{ucs}
\usepackage[OT2,T1]{fontenc}
\usepackage[UKenglish]{babel}
%\usepackage[utf8x]{inputenc}

% TiKz Support
\usepackage{tikz}
\usetikzlibrary{shapes,arrows,fit,decorations.pathmorphing,backgrounds,positioning,petri}

	% ... only needed for PDF generation
%----------------------------------------------------------------------
\makeindex % activate index-making
% Index/Glossary
%\usepackage[style=long,header=none,border=none,cols=2,toc=true,hyper=false,number=none]{glossaries}
\usepackage[acronym,toc,style=index,nopostdot=true,nomain]{glossaries}
%\usepackage{glossary-mcols}
%\renewcommand{\glsmcols}{1}
%\setglossarystyle{mcolindex}
%\usepackage[cols=2,toc=true,style=super,number=none]{glossary}
\makeglossary 
%\renewcommand{\glossaryname}{Nomenclature}
% redefine glossary entries at start of chapter
    % ... make a glossary of symbols called ``Nomenclature''
%\renewcommand{\Glossaryname}{NOMENCLATURE}
    % ... make a header of ``NOMENCLATURE'' for glossary
%----------------------------------------------------------------------
% The following command sets "1.2" as the line spacing throughout the
% thesis for readability (optional).
\renewcommand{\baselinestretch}{1.2}
%----------------------------------------------------------------------
% Reset page margins properly for doublesided pages
\setlength{\marginparwidth}{0pt}
\setlength{\marginparsep}{0pt}
\setlength{\oddsidemargin}{0.125in}
\setlength{\evensidemargin}{0.125in}
\setlength{\textwidth}{6.375in}
\raggedbottom

%%%%
%
% Text formatting:
%-----------------

                           % DOUBLE SPACING

% In the Table 3 on [2, p. 53] are recommended values for double
% spacing of lines depending on the point size. The table is not
% implemented in this code, but the only value we give is the one for
% 11pt which was used in my thesis.

%%%%
%
% Thesis specific macros:
%---

   % \@clearChapterPage

% Clears the last page of previous chapter (this is also true for
% ``PrepageEnvironment'') and properly positions the first page of the
% next chapter (perhaps skipping even page).

\def\@clearChapterPage{%
  \if@openright\cleardoublepage\else\clearpage \fi
}

%
% at cleardoublepage we don't want the possibly skipped even page to
% be numbered (taken from ``ltoutput.dtx''):
\renewcommand{\cleardoublepage}{%
  \clearpage%
  \if@twoside \ifodd\c@page\else \thispagestyle{empty}
    \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi%
  \fi\fi%
}


   % PrepageEnvironment

% PrepageEnvironment is used in prepages for abstract,
% acknowledgement etc. The first argument is a name of the new
% environment and the second one the title printed out for it.
%
% The PrepageEnvironment attempts to centre the text vertically on the
% page. If your text approaches or exceeds one page in length, you will
% probably find the title at the bottom of one page, and the text
% itself on the next page. To avoid this, remove the ``\null\vfil'' in
% the beginning and ending part of ``\newenvironment'', and latex
% won't try to centre it on the page.

\newcommand{\newPrepageEnvironment}[2]{
  \@ifundefined{#1}%
     {\let\@tempa=\newenvironment
     }{\let\@tempa=\renewenvironment}
  \@tempa{#1}{
    \@clearChapterPage
%    \thispagestyle{plain}
    \null\vfil
    \begin{center} \textbf{\large #2} \end{center}
  }{\par\vfil\null \clearpage}
}

   % \prepages and \mainbody

\RequirePackage{fancyhdr}
%%% changed by jamuir
%\renewcommand{\headrulewidth}{0pt}
%%%
\headheight 14.5 pt
\if@twoside
  \lhead[\fancyplain{}{\thepage}]%
          {\fancyplain{}{\slshape\leftmark}}
          \rhead[\fancyplain{}{\slshape{%\Title}}]
          \rightmark}}]
          {\fancyplain{}{\thepage}}
\else
    \lhead%
        {\fancyplain{}{\slshape\leftmark}}
    \rhead%
        {\fancyplain{}{\thepage}}
\fi

\cfoot[{}]%
          {\fancyplain{\thepage}{}}



\def\prepages{\pagenumbering{roman}}
\def\mainbody{
  \@clearChapterPage
  \pagenumbering{arabic}
  \pagestyle{fancyplain}
%  \pagestyle{myheadings}
}


%%%%
%
% Special pages of the thesis:
%-----------------------------

                             % TITLE PAGE

\newcommand{\discipline}[1]{\gdef\@discipline{#1}}
\newcommand{\university}[1]{\gdef\@university{#1}}
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\thesistype}[1]{\gdef\@thesistype{#1}}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\renewcommand{\maketitle}{%
\begin{titlepage} \setlength{\parindent}{0pt}
  \let\footnotesize\small      % Local definitions to make \thanks produce
  \let\footnoterule\relax      % \normalsize footnotes with no
                               % separating rule.
  \setcounter{page}{1}

\vfill
% \begin{center}
%  \includegraphics[width=7cm]{YTLogo} % also works with logo.pdf
% \end{center}
\vfill

  \parbox{\linewidth}{         % Title and author are at the top.
    \begin{center}
      {\Huge{\bf \@title}}\\
    \vspace*{1.0cm}
      {by}\\
	\vspace*{1.0cm}
      {\Large \lineskip .75em
       \begin{tabular}[t]{c} \@author \end{tabular}
      }
    \end{center}
  }

\vfill

\parbox{\linewidth}{
  \begin{center}
    \@supervisor
  \end{center}
  }

\vfill

  \parbox{\linewidth}{         % what is this thesis for is in the middle,
    \begin{center}
       A \@thesistype
    \\ presented to \@university
    \\ in fulfilment of the
    \\ thesis requirement for the degree of
    \\ \@degree
    \\ in
    \\ \@discipline    
    \end{center}
  }
\begin{center}
{\Large \includegraphics[height=4em]{SchoolLogo} \hfill\includegraphics[height=4em]{YTLogo}   \par}
\end{center}
  \parbox{\linewidth}{         % and place, date, and copyright are
    \begin{center}             % the bottom
       Urcuqu\'{i}, Julio del 2024% Place & date
    \\[3em]
       \copyright\ \@author\ \number\year
    \end{center}
  }
  \@thanks
\end{titlepage}
  \setcounter{footnote}{0}       % Footnotes start at zero again.
  \let\thanks\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\maketitle\relax
%  \cleardoublepage
}% \maketitle


                     % DECLARATION AND SIGNATURES

\def\edeclarationpage{
\@clearChapterPage
\setcounter{page}{2}  % page after title page is ii not i which is
                      % what LaTeX sets it to.
%--------------------------------------------------------------------
% Declaration page:
%---
\@clearChapterPage

\noindent
I hereby declare that I am the sole author of this thesis.  This is a
true copy of the thesis, including any required final revisions, as
accepted by my examiners.

\vspace{1cm}

\noindent
I understand that my thesis may be made electronically available to
the public.

} %\edeclarationpage

\def\sigpages{
\setcounter{page}{2}  % page after title page is ii not i which is
                      % what LaTeX sets it to.
%--------------------------------------------------------------------
% Declaration page:
%---
\@clearChapterPage

  I hereby declare that I am the sole author of this thesis.

  I authorize \@university to lend
  this thesis to other institutions or individuals
  for the purpose of scholarly research.

\vfill % \vskip 2in

  I further authorize \@university
  to reproduce this thesis by photocopying or by
  other means, in total or in part, at the request
  of other institutions or individuals for the
  purpose of scholarly research.

\vfill % \vskip 2in

%%--------------------------------------------------------------------
%% Signatures page
%%---
\clearpage
%\@clearChapterPage
  \@university requires the signatures of
  all persons using or photocopying this thesis. Please
  sign below, and give address and date.
\clearpage
}% \sigpages

                              % ABSTRACT

\newPrepageEnvironment{abstract}{Abstract}

\newPrepageEnvironment{Resumen}{Resumen}


                          % ACKNOWLEDGEMENTS

\newPrepageEnvironment{acknowledgements}{Acknowledgements}

						  % DEDICATION

\newPrepageEnvironment{dedication}{Dedication}

                             % TRADEMARKS

\newPrepageEnvironment{trademarks}{Trademarks}


                            % BIBLIOGRAPHY

  % Redefine bibliography from report.doc to add a table of
  % contents entry
\def\thebibliography#1{\chapter*{Bibliography\@mkboth
  {BIBLIOGRAPHY}{BIBLIOGRAPHY}}\addcontentsline{toc}{chapter}{Bibliography}\list
  {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}

\let\endthebibliography=\endlist
 
