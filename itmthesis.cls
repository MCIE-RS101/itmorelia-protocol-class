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
%2.2.1 Booleans  
\RequirePackage{ifthen}
  \newboolean{@drafting} % print version information on pages
  \newboolean{@spanish}  % activates the spanish version at babel otherwise english
%2.2.2 Colors
\RequirePackage{xcolor}
  \definecolor{c1}{rgb}{0,0,1} % blue
  \hypersetup{
    linkcolor={c1}, % internal links
    citecolor={c1}, % citations
    urlcolor={c1} % external links/urls
  }
%2.2.2 This package is essentially a replacement—partial or total—for the LATEX macros related with sections—namely titles, headers and contents.
\RequirePackage{titlesec}
%
\RequirePackage{xargs} % needed for extended newcommand and others
\RequirePackage{array} % needed for extended options for array
\RequirePackage{amsmath}
%2.3  Page settings:
\RequirePackage[left=3cm,right=3cm,top=3cm,bottom=3cm]{geometry}
%2.4    Macros and Commands:
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
\ProcessOptions\relax
%	3.2 PassOptionsToPackage
%if sintax: \ifthenelse{⟨test⟩}{⟨then clause⟩}{⟨else clause⟩}
%	3.2.1 drafting
%	3.2.2 babel
	\ifthenelse{\boolean{@spanish}}%test
	    {	%then clause
	    	\@ifpackageloaded{babel}
	    	{\relax}{\RequirePackage[spanish]{babel}}%
	    }
	    {\relax}% else clause
%************************************
% 4 Declarations:
%-------------------------------------


%4.0 chapter
\renewcommand{\thechapter}{\Roman{chapter}} %Roman enumeration
\titleformat{\chapter}[display]%shape
  %{\bfseries\Huge\scshape}%Format applyed to the title
  {\Huge\filleft\sc}%Format applyed to the title
  {\filleft\sc{\chaptertitlename} \thechapter}%Label text and format
  {4ex}%Separation between Label and Title
  {}%Before code 
  [\vspace{2ex}
\titlerule]%After code
 %

%4.1 section
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading  
%4.2 subsection  
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}


