   % -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "harvard-thesis.cls",
%     version         = "0.4",
%     date            = "4 April 2012",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, harvard-thesis",
%     supported       = "send email to suchow@fas.harvard.edu",
%     docstring       = "A thesis class for a Harvard dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{harvard-thesis}[2012/04/05 v0.4 Harvard University Thesis Class]
\LoadClass[12pt, oneside, b5paper]{book}
%\DeclareMathSizes{12pt}{14.5pt}{14.5pt}{14.5pt} 


% Required packages
\let\oldcentering\centering
\usepackage[document]{ragged2e}

%\RequirePackage[hmarginratio=1:1,textwidth=6in, bottom=.75in, top=1in, a4paper]{geometry}

\RequirePackage{graphicx}
\RequirePackage{boxhandler}
\RequirePackage{hyperref}
%\usepackage[doi=false,hyperref,backend=biber,backref,backrefstyle=none,isbn=false,eprint=false,maxnames=5,style=nature,url=false]{biblatex}
\RequirePackage{wrapfig}
\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=myblue,
    filecolor=black,
    linkcolor=black,
    urlcolor=myblue,
}

\RequirePackage{wrapfig}
\RequirePackage[centertags]{amsmath}
\RequirePackage{braket}
\RequirePackage{amssymb}
\RequirePackage[toc,page]{appendix}

%\RequirePackage[numbers, comma, sort&compress]{natbib}
\RequirePackage[small, md, sc]{titlesec}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\RequirePackage{wrapfig}
% colors
\RequirePackage{xcolor}
\definecolor{myblue}{rgb}{0, 0.125, 0.38}

\RequirePackage{url}
\RequirePackage[titles]{tocloft}
\setcounter{tocdepth}{1}
\renewcommand{\cftchapfont}{\normalsize \scshape}

\renewcommand\bibname{References}
%\renewcommand\listfigurename{Listing of figures}
\raggedright

\RequirePackage{pdfsync} %do pdf synchronization [andy]
%\usepackage[closeFloats, noSeparatorLine]{fltpage} %use the custom modified fltpage package
\RequirePackage{afterpage} 

 
\synctex=1 % turn synctex on automatically to sync between pdf viewer [andy]

%   list an entire bibliography entry inline. Useful for acknowledging when my paper was previously published
\RequirePackage{bibentry} 
%\nobibliography*        


\RequirePackage{lettrine} % big letter at start of chapter

%\usepackage[a4paper, total={6in, 9in}, bottom=1.35in, oddsidemargin=1in, headsep=0.35in]{geometry}

\RequirePackage[b5paper, total={5 in, 8.5in}, bottom=1.75in]{geometry}
\RequirePackage{fancyhdr} 
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage[palatino]{quotchap}
\definecolor{chaptergrey}{rgb}{0, 0.125, 0.38}
\RequirePackage{titling}
\RequirePackage{setspace} 
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[labelfont={bf,small},textfont={small},width=4.5 in, justification= justified,,figurewithin=section, tablewithin=section, singlelinecheck= false]{caption} %justification= raggedright
\onehalfspacing


\parindent 10pt


\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text, Numbers=OldStyle}
\aliasfontfeatureoption{Ligatures}{Historic}{Historical}


% some definitions

\def\title#1{\gdef\@title{A cool title }}  
\def\university#1{\gdef\@university{University of X}}
\def\author#1{\gdef\@author{You}}



% You might also consider licensing your work under Creative Commons). See: http://creativecommons.org/weblog/entry/12824 for other PhD students who have released their work under creative commons.


\newcommand{\abstractpage}{
	\newpage
	%\doublespace 
	\justifying
	\chapter*{Abstract}
	\input{frontmatter/abstract} 
    \chapter*{Resumen}
	\input{frontmatter/resumen}
}

\newcommand{\impactpage}{
	\chapter*{Impact statement}
	\noindent
	\justifying
	\input{frontmatter/Impact_statement}
	\vspace*{\fill} 
}

\newcommand{\dedicationpage}{
    \newpage
	\noindent
	%\justifying
    \begin{center}
	\input{frontmatter/dedication} 
    \end{center}
	%\vspace*{\fill} 
%\pagestyle{fancy}
    
}

\newcommand{\publicationspage}{
	\chapter*{List of Publications}
	%\noindent
	\justifying
	\input{frontmatter/publications}
	%\vspace*{\fill} 
	%\newpage
}


% the acknowledgments page
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\justifying
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	%\newpage
}

% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}