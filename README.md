# The ITMorelia Protocol Class

The present Redme file shows how to work with and compile the `Protocol-Class` in LaTeX. This class is mainly base in the `Thesis-Class`![](). If you want know what sections should be included and its content visit the **Wiki** of this repository.

# Repository structure
Below you can see the repository's contents. The repository is made of 27 files and 2 folders. The folder `Chapters` includes each `.tex` file that will be included on your portocol; later you will learn how to included. On the other hand, the folder `FrontBackMatter` folder includes `.tex` files related with common chapters/section required on protocols guides like: *Titlepage, Abstract, Colophon, Dedication, Glossary, and others*; you can include as much as you need.

In the `root` are files related with the organization and the structure of the **Protocol** (the `thesisStructure.tex` and `precontent.tex` files). Also, in `root` is included the main file that gives the special format to the document (`itmthesis.cls`), and finally the `Reference.bib` file to include a bibliography on your work.      

```bash
.
├── Chapters
│   ├── A01.tex
│   ├── Chapter01.tex
│   ├── Chapter02.tex
│   └── Chapter0A.tex
├── configuration.tex
├── FrontBackMatter
│   ├── Abstract.tex
│   ├── Bibliography.tex
│   ├── Colophon.tex
│   ├── Contents.tex
│   ├── Declaration.tex
│   ├── Dedication.tex
│   ├── Foreword.tex
│   ├── glossary-entries.tex
│   ├── Glossary.tex
│   ├── Resumen.tex
│   ├── Titleback.tex
│   ├── TitlepageIng.tex
│   └── TitlepageMC.tex
├── itm.jpg
├── itmthesis.cls
├── precontent.tex
├── README.md
├── Reference.bib
├── sepLogo.jpg
├── tecnmBW.png
├── thesisStructure.pdf
└── thesisStructure.tex
```



# The `thesisStructure` file
The main file in the project is the `thesisStructure.tex` file. 

```Tex
% Engineering, master and phd degree 
%PROPOSAL(PROTOCOL) format, April 2021, for the 
%**Instituto Tecnológico de Morelia**
\documentclass[listings,drafting,spanish]{itmthesis} %itm thesis class
\input{configuration}% configuration and packages
\input{FrontBackMatter/glossary-entries}
\begin{document}
\pagenumbering{roman} % Roman page numbering 
\input{precontent} %Includes titlepage, dedication, Foreword, abstract, publication, acknowledgement
\include{FrontBackMatter/Contents} % Contents, list of figures/tables/listings and acronyms
\pagenumbering{arabic} % Arabic page numbering
%-=-=-=-=-=-=-=-=-=-=-=-=-
% Thesis Main Contents
\include{Chapters/Chapter01} %Introduction
\cleardoublepage
\include{Chapters/Chapter02} %Results
%-=-=-=-=-=-=-=-=-=-=-=-=-
% Apendix

\appendix

\include{Chapters/Chapter0A} % Appendix A

%-=-=-=-=-=-=-=-=-=-=-=-=-
% References
\cleardoublepage
\include{FrontBackMatter/Bibliography}
%-=-=-=-=-=-=-=-=-=-=-=-=-
% Back Matter
\cleardoublepage
\include{FrontBackMatter/Colophon}
%-=-=-=-=-=-=-=-=-=-=-=-=-
\end{document}
```

## Chapters

## Apendix

## including images 

# The `configuration` file

# Defined variables

# Titlepage

# Glossary 



# References 

