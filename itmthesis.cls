%************************************
%1 Identification:
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{itmthesis}[2018/05/04 ITMorelia Thesis Class by Gerardo Marx]
%************************************
%2    Preliminary declarations
%2.1  The basic class:
\LoadClass{report}
%2.2  Packages:
\RequirePackage[utf8]{inputenc}
\RequirePackage[colorlinks=true]{hyperref}
\RequirePackage{blindtext}
\RequirePackage{scrextend}
\RequirePackage{booktabs}
\RequirePackage{calligra}
%2.2.1 Booleans  
\RequirePackage{ifthen}
  \newboolean{@drafting} % print version information on pages
  \newboolean{@spanish}  % activates the spanish version at babel otherwise english
  \newboolean{@listings} % loads the listings package
%2.2.2 Colors
\PassOptionsToPackage{dvipsnames}{xcolor}
\RequirePackage{xcolor}
  \definecolor{c1}{rgb}{0,0,1} % blue
  \definecolor{grisTec}{RGB}{125,125,125}
  \hypersetup{
    linkcolor={c1}, % internal links
    citecolor={c1}, % citations
    urlcolor={c1} % external links/urls
  }
%2.2.2 This package is essentially a replacement—partial or total—for the LATEX macros related with sections—namely titles, headers and contents.
\RequirePackage{titlesec}%
\RequirePackage{xargs} % needed for extended newcommand and others
\RequirePackage{array} % needed for extended options for array
\RequirePackage{amsmath}
\RequirePackage{graphicx}
%2.3  Page settings:
\RequirePackage[left=3cm,right=3cm,top=3cm,bottom=3cm]{geometry}
%2.4   Macros and Commands:
%Commands
\newcommand{\myVersion}{version 1.0\xspace}
%2.4.1    Derivatives
\newcommandx{\pd}[3][1=]{%
  \frac{\partial^{#1} #2}{\partial #3^{#1}}
  }
%2.4.1    Dbf   
\renewcommand{\d}{{\rm d}}
%2.5  Environments:
%2.5.1  Arrays of equations:
  
%************************************
%3 Options:
%	3.1 DeclareOptions
% Option sintax
% \DeclareOption{⟨option⟩}{⟨code⟩}
%Code option:
\DeclareOption{drafting}{
	%Code
	\setboolean{@drafting}{true}
	}
\DeclareOption{spanish}{
  	%Code 
  	\setboolean{@spanish}{true}
  	\typeout{spanish to babel}
  	}%end code option

\DeclareOption{listings}{
  \setboolean{@listings}{true}
  \typeout{listings option activated}
}

\ProcessOptions\relax
%	3.2 PassOptionsToPackage
%if sintax: \ifthenelse{⟨test⟩}{⟨then clause⟩}{⟨else clause⟩}
%	3.2.1 drafting
%+++++++++++++++++++++++++++++++++++++++++++++


\RequirePackage{scrtime} %time access
%Sintax: \newcommand{name}[num]{definition}
\newcommand{\finalVersionString}{Revised}%Final version text
\ifthenelse{\boolean{@drafting}}{%
%  Then clause 
%    \RequirePackage{draftwatermark}%
%     \SetWatermarkLightness{0.9}
%     \SetWatermarkScale{.5}
%     \SetWatermarkText{\today\ at \thistime}
    \RequirePackage{prelim2e}
    \PassOptionsToPackage{draft}{prelim2e}
        \renewcommand{\PrelimWords}{\relax}
        \renewcommand{\PrelimText}{\footnotesize[\,\today\ at \thistime\ -- \texttt{itmorelia} \myVersion\,]}
    }
    %else clause
    {\renewcommand{\finalVersionString}{\emph{Final Version} as of \today\ (\texttt{itmorelia} \myVersion).}}
%+++++++++++++++++++++++++++++++++++++++++++++
%	3.2.2 babel
	\ifthenelse{\boolean{@spanish}}%test
	    {	%then clause
	    	\@ifpackageloaded{babel}
	    	{\relax}{\RequirePackage[es-tabla,spanish,es-nodecimaldot]{babel}}%
	    }
	    {\relax}% else clause
%3.2.3 Listing related stuff
\ifthenelse{\boolean{@listings}}%
    {%then clause
      \@ifpackageloaded{listings}%
      {\relax}{\RequirePackage{listings}}%
    }
    %else clause
    {\relax}%      
%************************************
% 4 Declarations:
%-------------------------------------


%4.0 chapter
%\renewcommand{\thechapter}{\Roman{chapter}} %Roman enumeration
\titleformat{\chapter}[display]%shape
  {\Huge\filleft\sc}%Format applied to the title
  {\filleft\sc{\chaptertitlename} \thechapter}%Label text and format
  {4ex}%Separation between Label and Title
  {}%Before code 
  [\vspace{2ex}
\color{gray}\titlerule]%After code
 %

%4.1 section
%\titleformat{\section}%shape
%  {\large \scshape}%Format applied to the title
%  {\large\scshape \thesection}%Label text and format
%  {2ex}%Separation between Label and Title
%  {}%Before code 
%  []%After code
\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}
%4.2 subsection
\titleformat{\subsection}
  {\normalfont\large\bfseries}{\thesubsection}{1em}{}
%4.3 subsubsection  
\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}
%4.4 Paragraph  
\titleformat{\paragraph}[runin]
  {\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}
%4.5 subparagraph  
\titleformat{\subparagraph}[runin]
  {\normalfont\normalsize\bfseries}{\thesubparagraph}{1em}{}
 
%4.2 subsection  
\titleformat{\subsection}
  {\normalfont\Large\bfseries}{\thesubsection}{1em}{}


%4.x Spacing
\titlespacing*{\chapter}	 {0pt}{50pt}{40pt}
\titlespacing*{\section}	{0pt}{3.25ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\paragraph}{0pt}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing*{\subparagraph}{\parindent}{3.25ex plus 1ex minus .2ex}{1em}