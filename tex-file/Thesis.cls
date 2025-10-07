%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% The original template was downloaded from:
% http://www.latextemplates.com
%
% The current version of the class file borrows heavily from the one available
% on latextemplates.com but has been modified to meet the needs of those trying
% to create a report for presentation in BITS Pilani.
%
% This class file defines the structure and design of the template.
%
% There is one part that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the variables.tex file.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com. Later modified by Darshit Shah
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-------------------------------------------------------------------------------
% Base Class Definition
%-------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
%-------------------------------------------------------------------------------

\RequirePackage[utf8]{inputenc}% Allows the use of international characters (e.g. Umlauts)
% \RequirePackage[utf8x]{inputenc}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}} % New command to make the lines in the title page

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}

%-------------------------------------------------------------------------------
% SPACING RULES
%-------------------------------------------------------------------------------
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% MARGINS
%-------------------------------------------------------------------------------
\usepackage{vmargin}
\setmarginsrb  { 1.0in}  % left margin
               { 0.6in}  % top margin
               { 1.0in}  % right margin
               { 0.8in}  % bottom margin
               {  20pt}  % head height
               {0.25in}  % head sep
               {   9pt}  % foot height
               { 0.3in}  % foot sep
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% DECLARATION OF AUTHORSHIP
%
% Use the \Declaration command to print the Declaration of Authorship page
%-------------------------------------------------------------------------------

\newcommand\Authorship{
	% Add gap in the Contents, for aesthetics
	\thispagestyle{plain}
	\null\vfil
	\begin{center}{\large\bf AUTOR\'{I}A\par}\end{center}
	{\normalsize
		Yo, \textbf{Balarezo Balarezo Juan Gabriel}, con c\'{e}dula de identidad 0106019219, declaro que las ideas, juicios, valoraciones, interpretaciones, consultas bibliogr\'{a}ficas, definiciones y conceptualizaciones expuestas en el presente trabajo; as\'{i} c\'{o}mo, los procedimientos y herramientas utilizadas en la investigaci\'{o}n, son de absoluta responsabilidad de el/la autora (a) del trabajo de integraci\'{o}n curricular. As\'{i} mismo, me acojo a los reglamentos internos de la Universidad de Investigaci\'{o}n de Tecnolog\'{i}a Experimental Yachay. 
		
		Urcuqu\'{i}, Octubre - 2025. \\[2cm]
		
		
		\begin{center}
			\rule[1em]{20em}{0.5pt} \\% This prints a line for the signature
			Juan Gabriel Balarezo Balarezo \\
			C.I: 0106019219
		\end{center}
		% This prints a line to write the date
	}
	
	\vfil\vfil\null
	\clearpage % Start a new page
}

\newcommand\Declaration{
	 % Add gap in the Contents, for aesthetics
	\thispagestyle{plain}
	\null\vfil
	\begin{center}{\large\bf AUTORIZACI\'{O}N DE PUBLICACI\'{O}N\par}\end{center}
	{\normalsize
		Yo, \textbf{Balarezo Balarezo Juan Gabriel}, con cédula de identidad 0106019219, cedo a la Universidad de Investigaci\'{o}n de Tecnolog\'{i}a Experimental Yachay, los derechos de publicaci\'{o}n de la presente obra, sin que deba haber un reconocimiento econ\'{o}mico por este concepto. Declaro adem\'{a}s que el texto del presente trabajo de titulaci\'{o}n no podr\'{a} ser cedido a ninguna empresa editorial para su publicaci\'{o}n u otros fines, sin contar previamente con la autorizaci\'{o}n escrita de la Universidad.
		
		Asimismo, autorizo a la Universidad que realice la digitalizaci\'{o}n y publicaci\'{o}n de este trabajo de integraci\'{o}n curricular en el repositorio virtual, de conformidad a lo dispuesto en el Art. 144 de la Ley Org\'{a}nica de Educaci\'{o}n Superior
		
		Urcuqu\'{i}, Octubre - 2025. \\[2cm]
		
		
		\begin{center}
			\rule[1em]{20em}{0.5pt} \\% This prints a line for the signature
			Juan Gabriel Balarezo Balarezo \\
			C.I: 0106019219
		\end{center}
		% This prints a line to write the date
	}
	
	\vfil\vfil\null
	\clearpage % Start a new page
}


\newcommand\Dedicacion{
	\thispagestyle{plain}
	\vspace*{0.5cm}
	%\begin{center}{\large\bf \par}\end{center}
	{\normalsize
    \begin{center}
		  Para mis padres:
		  
		  Lorena y Luis
		  
		  Y mis hermanos:
		  
		  Xavier y Diego
	    \end{center}
		% This prints a line to write the date
	}
	
	\vspace{16cm} % Add vertical space to push the name to the bottom
	\begin{flushright}
    {\normalsize Balarezo J. Gabriel} % Student's name at the left bottom
	\end{flushright}
	\clearpage % Start a new page
}




\newcommand\Acknowledgements{
	\thispagestyle{plain}
	\vspace*{0.5cm}
	\begin{center}{\large\bf Acknowledgments\par}\end{center}
	{\normalsize
    It was near six years ago when I found myself at a fateful crossroad---whether to dwell in the quiet ease of my beloved Cuenca, embracing the safe pursuit of engineering, or to heed the restless summons of my heart, and journey to Ibarra in devotion to my everlasting passion for physics. Today I stand here, a testament to the courage of that choice, and the unwavering support of those who believed in me.\\
    Yachay Tech University gave me more than just an education---it bestowed upon me a family, 
}
	
	\vspace{10cm} % Add vertical space to push the name to the bottom
	\begin{flushright}
		{\normalsize Balarezo J. Gabriel} % Student's name at the left bottom
	\end{flushright}
	\clearpage % Start a new page
}


\newcommand\Abstract{
	\thispagestyle{plain}
	\vspace*{0.5cm}
	\begin{center}{\large\bf Abstract\par}\end{center}
	{\normalsize
		Concrete is the second most used substance in the world after water, with more than 35 billion tonnes produced annually. Yet, understanding the atomic and mechanical properties of its principal component, calcium-silicate-hydrate (C-S-H)---the complex binder phase of concrete---remains a considerable challenge owing to its structural complexity and disordered nature. This works aims to develop and validate a machine learning force field (MLFF) capable of accurately reproducing the structural and mechanical behaviour of C--S--H. To this end, density functional theory (DFT) calculations were employed to study the electronic structure, bonding characteristics, and elastic response of C--S--H at the atomic level. Subsequently, an \emph{on-the-fly} MLFF was trained using \emph{ab initio} molecular dynamics (AIMD) simulations at 400~K. After a thorough refitting and validation process, the resulting MLFFs were assessed through structure relaxation and molecular dynamics simulations, yielding energy, force, and stress tensor predictions comparable to accurate DFT results. The MLFFs were then used to compute key thermodynamic and mechanical properties, including the equation of state (EOS) and bulk modulus, obtaining values bwetween 55--58 GPa, in favourable agreement with available experimental data. Furthermore, the transferability of the MLFF was evaluated and confirmed across a temparature range of 200--400 K, maintaining physical consistency throughout. 
	}
	
	\textbf{Keywords:} Density Functional Theory, Calcium Silicate Hydrates, Machine Learning, Force Fields, Ab Initio Molecular Dynamics, Equation of State, Bulk Modulus.
	
	\clearpage % Start a new page
}


\newcommand\Resumen{
	\thispagestyle{plain}
	\vspace*{0.5cm}
	\begin{center}{\large\bf Resumen\par}\end{center}
	{\normalsize
		El concreto es el segundo material m\'{a}s  utilizado en el mundo despu\'{e}s del agua, con m\'{a}s de 35 mil millones de toneladas producidas anualmente. Sin embargo, comprender las propiedades at\'{o}micas y mec\'{a}nicas de su componente principal, el silicato cálcico hidratado (C-S-H), la fase aglutinante compleja del concreto, sigue siendo un desaf\'{i}o considerable debido a su complejidad estructural y naturaleza desordenada. Este trabajo tiene como objetivo desarrollar y validar un campo de fuerza basado en aprendizaje autom\'{a}tico (MLFF) capaz de reproducir con precisi\'{o}n el comportamiento estructural y mec\'{a}nico del C--S--H. Para ello, se emplearon c\'{a}lculos de teor\'{i}a del funcional de la densidad (DFT) para estudiar la estructura electr\'{o}nica, las caracter\'{i}sticas de enlace y la respuesta el\'{a}stica del C--S--H a nivel at\'{o}mico. Posteriormente, se entren\'{o} un MLFF \emph{on-the-fly} utilizando simulaciones de din\'{a}mica molecular \emph{ab initio} (AIMD) a 400~K. Despu\'{e}s de un exhaustivo proceso de ajuste y validaci\'{o}n, los MLFF resultantes fueron evaluados mediante relajaci\'{o}n estructural y simulaciones de din\'{a}mica molecular, obteniendo predicciones de energ\'{i}a, fuerza y tensor de esfuerzo comparables a resultados precisos de DFT. Luego, los MLFF se utilizaron para calcular propiedades termodin\'{a}micas y mec\'{a}nicas clave, incluida la ecuaci\'{o}n de estado (EOS) y el m\'{o}dulo volumétrico, obteniendo valores entre 55-58 GPa, en favorable acuerdo con los datos experimentales disponibles. Asimismo, se evalu\'{o} y confirm\'{o} la transferibilidad del MLFF en un rango de temperatura de 200-400 K, manteniendo la coherencia f\'{i}sica a lo largo de dicho intevalo.
		% Esto imprime una línea para escribir la fecha
	}
	
	\textbf{Palabras clave:} Teor\'{i}a del Funcional de la Densidad, Silicatos C\'{a}lcicos Hidratados, Aprendizaje Autom\'{a}tico, Campos de Fuerza, Din\'{a}mica Molecular \emph{Ab Initio}, Ecuaci\'{o}n de Estado, M\'{o}dulo Volum\'{e}trico.
	
	\clearpage % Comenzar una nueva página
}
%-------------------------------------------------------------------------------
%-------------------------------------------------------------------------------
% CERTIFICATE PAGE
%
% Use the \Certificate command to print the Certificate in the document
%-------------------------------------------------------------------------------
\newcommand\Certificate{
    \btypeout{Certificate}
    \addtotoc{Certificate}
    \addtocontents{toc}{\vspace{1em}}
    \thispagestyle{plain}
    \null\vfil
    \begin{center}{\huge\bf Certificate\par}\end{center}
    {\normalsize
This is to certify that the thesis entitled, ``\emph{\ttitle}'' and submitted by
\underline{\authornames} ID No. \underline{\idnum} in partial fulfillment of the
requirements for obtaining the degree of Physicist done by him under my
supervision.\\[2.5cm]
\begin{minipage}{0.5\textwidth}
    \begin{flushleft} \large
        \vspace{2cm}
        \rule[0.5em]{13em}{0.5pt}\\
        \emph{Tutor}\\
        \supname\\
        \suppos,\\
        \supinst,\\
        \supinstcount\\
        Date:\\
    \end{flushleft}
\end{minipage}
\begin{minipage}{0.5\textwidth}
    \begin{flushleft} \large
        \vspace{2cm}
        \rule[0.5em]{13em}{0.5pt}\\
        \emph{Co-tutor} \\
        \cosupname\\
        \cosuppos,\\
        \cosupinst,\\
        \cosupinstcount\\
        Date:\\
    \end{flushleft}
\end{minipage}
    }

    \vfil\vfil\null
    \clearpage
}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% QUOTATION PAGE
%
% Use the command \Quotation{Quote}{Author} to create a single page with a
% quotation in the document.
%-------------------------------------------------------------------------------
\newcommand\Quotation[2]{
    \btypeout{Quotation}
    \pagestyle{empty} % No headers or footers for the following pages

    \null\vfill % Add some space to move the quote down the page a bit

    \textit{``#1''}

    \begin{flushright}
        #2
    \end{flushright}

    % Add some space at the bottom to position the quote just right
    \vfill\vfill\vfill\vfill\vfill\vfill\null

    \clearpage % Start a new page
}
%-------------------------------------------------------------------------------

\usepackage{pifont}
\usepackage[flushleft]{threeparttable}
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace,mathtools}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}

\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

\usepackage{graphicx,lipsum}

\usepackage[labelfont=bf,justification=raggedright,singlelinecheck=false, font={footnotesize}]{caption}
\usepackage{subcaption}
\captionsetup{subrefformat=parens} % will result in references (typeset with \ref) like  1a  but sub-references (typeset with\subref) like  (a)
%\usepackage{subfig} % not compatible with subcaption

\newcommand{\sidecaption}[1]% #1 = label name
{\begin{subfigure}[t]{1.6em}
		\captionsetup{singlelinecheck=off, skip=0pt}%
		\caption{}
		\ifx\empty#1\relax\else\label{#1}\fi
	\end{subfigure}\ignorespaces}

\usepackage{floatrow}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{enumitem}
\usepackage{listings}
\usepackage{lstpatch}
\usepackage{microtype}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}

\usepackage[toc]{glossaries}
\setglossarystyle{long}

\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\pdfstringdefDisableCommands{
   \let\\\space
}
%\newcommand{\supercite}[1]{\textsuperscript{\cite{#1}}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\cosupervisor}[1]{\def\cosupname{#1}}
\newcommand*{\documenttype}[1]{\def\doctype{#1}}
\newcommand*{\coursecode}[1]{\def\ccode{#1}}
\newcommand*{\coursename}[1]{\def\cname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\IDNumber}[1]{\def\idnum{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\UNIVERSITYCOUNTRY}[1]{\def\UNIVCOUNT{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\supervisorposition}[1]{\def\suppos{#1}}
\newcommand*{\supervisorinstitute}[1]{\def\supinst{#1}}
\newcommand*{\cosupervisorposition}[1]{\def\cosuppos{#1}}
\newcommand*{\cosupervisorinstitute}[1]{\def\cosupinst{#1}}
\newcommand*{\cosupervisorinstitutecountry}[1]{\def\cosupinstcount{#1}}
\newcommand*{\supervisorinstitutecountry}[1]{\def\supinstcount{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}


%-------------------------------------------------------------------------------
% TITLE PAGE
%
% Redefine the \maketitle command to create a custom title page
% ------------------------------------------------------------------------------
\renewcommand\maketitle{
    \btypeout{Title Page}

    % PDF meta-data
    \hypersetup{pdftitle={\ttitle}}
    \hypersetup{pdfsubject=\subjectname}
    \hypersetup{pdfauthor=\authornames}
    \hypersetup{pdfkeywords=\keywordnames}

    \begin{titlepage}
        \begin{center}

        %\textsc{\LARGE \univname}\\[1.5cm] % University name
        %\textsc{\Large \doctype}\\[0.5cm] % Thesis type
        \includegraphics[width=0.5\textwidth]{Figures/logo-yachay.png} % Adjusts width relative to text width
        \\[0.5cm]
        
        
        \begin{center}
        	\fontsize{18}{22}\selectfont
        	\textbf{UNIVERSIDAD DE INVESTIGACION DE TECNOLOGIA EXPERIMENTAL YACHAY}
        \end{center}
        
        \begin{center}
        	\fontsize{14}{26}\selectfont
        	\textbf{ Escuela de Ciencias F\'{i}sicas y Nanotecnolog\'{i}a}
        \end{center}
        
        \begin{center}
        	\fontsize{16}{26}\selectfont
          \textbf{ \texorpdfstring{T\'{I}TULO: First-Principles and Machine Learning Investigations into the Atomic and Mechanical Properties of Cement Hydrates.}{T\'{I}TULO: First Principles and Machine Learning Investigations into the Atomic and Mechanical Properties of Cement Hydrates (C-S-H).}}
        \end{center}

        \begin{center}
          	\fontsize{16}{26}\selectfont
          	 Trabajo de integraci\'{o}n curricular presentado como requisito para la obtenci\'{o}n del t\'{i}tulo de F\'{i}sico
        \end{center}
        
        \begin{center}
        	\fontsize{14}{26}\selectfont
        	\textbf{Autor:}
        \end{center}
        
        \begin{center}
        	\fontsize{14}{8}\selectfont
        	Balarezo J. Gabriel
        \end{center}
		
		\begin{center}
			\fontsize{14}{26}\selectfont
			\textbf{Tutor:}
		\end{center}
		
		
		\begin{center}
			\fontsize{14}{8}\selectfont
			Ph.D. - Pinto Henry
		\end{center}
		
	%	\begin{center}
	%		\fontsize{14}{26}\selectfont
%			\textbf{Cotutor:}
%		\end{center}
		
		
%		\begin{center}
%			\fontsize{14}{8}\selectfont
%			Ph.D - Garay Tapia
%		\end{center}
		
		%\large \textit{Submitted in partial fulfillment of the
        %requirements of\\\ccode{} \cname}\\[1cm] % University requirement text
        
        \begin{center}
        	\fontsize{14}{26}\selectfont
        	Urcuqu\'{i}, Octubre 2025
        \end{center}
        \vfill
    \end{center}

\end{titlepage}
}
% ------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% ABSTRACT PAGE DESIGN
%-------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \addtotoc{Abstract}
  \addtocontents{toc}{\vspace{1em}}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par} % University name in capitals
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize \degreename\par} % Degree name
    \bigskip
    {\normalsize\bf \@title \par} % Thesis title
    \medskip
    {\normalsize by \authornames \par} % Author name
    \bigskip
  \end{center}
}
{\clearpage}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% ACKNOWLEDGEMENTS
%-------------------------------------------------------------------------------
\newenvironment{acknowledgements}
{
    \btypeout{Acknowledgements}
    \addtotoc{Acknowledgements}
    \addtocontents{toc}{\vspace{1em}}
    \setstretch{1.3}
    \thispagestyle{plain}
    \begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
    \normalsize
}
{
    \vfil\vfil\null
    \clearpage
}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% DEDICATORY
%-------------------------------------------------------------------------------
\newcommand\Dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\textit{#1}}\end{center}
\vspace{10cm} % Add vertical space to push the name to the bottom
\begin{flushright}
{\normalsize Balarezo J. Gabriel} % Student's name at the left bottom
\end{flushright}
\vfil\null
\cleardoublepage
}
%-------------------------------------------------------------------------------


\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{3}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\addtotoc{Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Nomenclature}
\newcommand\listofnomenclature[0]{
\printglossaries
    \cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
