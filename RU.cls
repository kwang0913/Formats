%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Rutgers Beamer Class File
%% Author: Kailong Wang
%% Description: This file creates a custom beamer class for the Rutgers University, the State University of New Jersey.
%% Original Template: https://www.overleaf.com/latex/templates/template-beamer-lepten-ufsc/vjdrghyjyvrp
%% Color Profile based on the instruction from: http://identity.rutgers.edu/about-identity/colors

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Formats/RU}[2023/02/11 v0.0.1 Rutgers template beamer]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[
    compress,
    xcolor={
        % dvipsnames,
        svgnames,
        },
    notheorems,
    ]{beamer}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Packages to Load
%% Font Packages
\RequirePackage[english]{babel} %Multilingual Support
\RequirePackage[utf8]{inputenc} %utf8 Support
\RequirePackage[T1]{fontenc} %Better Font Encoding for pdflatex
\RequirePackage{mathtools} %Define Math Symbols and Load amsmath
\RequirePackage{amssymb} %Math Fonts and Symbols
\RequirePackage{lmodern} %Change both Text and Math Font, Load before libertinus
\RequirePackage{libertinus} %Ubuntu Times New Roman Text Font
% \RequirePackage{fontspec} %Better Font Encoding for xelatex
% \RequirePackage{kpfonts} %Better Font Encoding for xelatex
\RequirePackage{microtype} %Better Font Spacing
\RequirePackage{mleftright}  %Fixes Some Annoying Spacing Issues
\RequirePackage{bm} %Boldface Math, Load after Other Math Font Packages

%% Graphics Packages
\RequirePackage{graphicx} %Graphics Backend with key-value Arguments
\RequirePackage[export]{adjustbox} %More Arguments for includegraphics
% \RequirePackage[svgnames]{xcolor} %Beamer Has This by Default
\RequirePackage[most]{tcolorbox} %Customized Box
\RequirePackage{transparent} %Transparent Images
\RequirePackage{subcaption} %Package to Use Subfigure

%% Table Packages
\RequirePackage{tabularx} %Including Tabular with More Space Option
\RequirePackage{multirow} %Package to Use Multirow in Tables
\RequirePackage{colortbl} %Package to Use Color in Tables
\RequirePackage{array} %Math and More Spacing Support in Tables

%% Theorems etc (also  problems)
\RequirePackage[shortlabels]{enumitem} %Better List
% \RequirePackage{hyperref} %Beamer Has This by Default
% \RequirePackage{cleveref} %Must Load before amsthm. Conflict with Beamer
\RequirePackage{amsthm, thmtools, thm-restate} %Better Theorems

%% Code Packages
\RequirePackage{listings} %Package to Insert Code. Better than Minted
\RequirePackage{algorithm} %Package to Insert Algorithm
\RequirePackage{algpseudocode} %Package to Insert Algorithm
% \RequirePackage{keyval}

%% Display Packages
% \RequirePackage[document]{ragged2e} %Replaced by Microtype
\RequirePackage{csquotes} %Package to Facilities Quotations
\RequirePackage{multicol} %Package to Use Multicols

%% Other Packages
\RequirePackage{xspace} %Package to Add Space after Macros
\RequirePackage{calc} %Package of Calculation in Latex
\RequirePackage{rotating} %Package to Rotate Objects
% \RequirePackage{pgf, tikz} %Package to Draw Figures.
\RequirePackage{epstopdf} %Package to Convert eps to pdf
\RequirePackage[backend=biber, style=numeric, sorting=none]{biblatex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Colors
\definecolor{RUgray}{HTML}{6A757C} % gray = PANTONE 431
\definecolor{RUred}{HTML}{cc0033} % red = PANTONE 186(250 anniversary version)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Putting the background image in the frames
\usebackgroundtemplate{
\parbox[c][\paperheight][c]{\paperwidth}{\centering\transparent{0.1}\includegraphics[height=0.8\paperheight]{RULogos/RU_SHIELD_BLACK.eps}}
}

% \logo{\includegraphics[scale=0.075]{../formats/RULogos/RU_SHIELD_CMYK_RED.eps}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Style of the blocks
\usecolortheme[named=RUred]{structure}
\usefonttheme[onlymath]{serif}
\useinnertheme{circles}
\useoutertheme[subsection=false]{miniframes}
% \setbeamertemplate{navigation symbols}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Header and foot
\setbeamercolor*{section in head/foot}{fg=RUred}
% \setbeamercolor{subsection in head/foot}{bg=RUgray, fg=white}
% \setbeamerfont{block title}{size={}}

\setbeamercolor*{author in head/foot}{bg=RUred, fg=white}
\setbeamercolor*{institute in head/foot}{bg=RUred, fg=white}
\setbeamercolor*{title in head/foot}{bg=RUgray, fg=white}
\setbeamercolor*{date in head/foot}{bg=RUred, fg=white}

% Headline style
\setbeamertemplate{headline}{%
\begin{minipage}[c][0.09\paperheight]{\paperwidth}
    \begin{minipage}{0.25\paperwidth}
        ~\includegraphics[height=0.081\paperheight]{RULogos/RU_SHIELD_CMYK_RED.eps}
    \end{minipage}
    \begin{minipage}{0.75\paperwidth}
        \insertnavigation{0.75\paperwidth}
    \end{minipage}
\end{minipage}
\color{RUred}\rule{\paperwidth}{1pt}
}

% footline style
\defbeamertemplate*{footline}{infolines theme}{%
\leavevmode%
\hbox{%
\begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
\usebeamerfont{author in head/foot}\insertshortauthor
\end{beamercolorbox}%

\begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex,center]{institute in head/foot}%
\usebeamerfont{institute in head/foot}\insertshortinstitute
\end{beamercolorbox}%

\begin{beamercolorbox}[wd=.45\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
\usebeamerfont{title in head/foot}\insertshorttitle
\end{beamercolorbox}%

\begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
\usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{4ex}
\insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
\end{beamercolorbox}
}%
}
\mode
<all>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Create the blocks of the beamer template

% draw the blocks
\setbeamertemplate{blocks}[rounded][shadow=true]

% block
\setbeamercolor*{block title}{fg=white, bg=MediumVioletRed}
\setbeamercolor*{block body}{fg=black, bg=white}
% alert block
\setbeamercolor*{block title alerted}{fg=white, bg=MediumSlateBlue}
\setbeamercolor*{block body alerted}{fg=black, bg=white}
% example block
\setbeamercolor*{block title example}{fg=white, bg=MediumSeaGreen}
\setbeamercolor*{block body example}{fg=black, bg=white}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Theorem Style
% \declaretheoremstyle[
%     spaceabove=6pt, spacebelow=6pt,
%     headfont=\normalfont\bfseries,
%     notefont=\mdseries, notebraces={(}{)},
%     bodyfont=\normalfont,
%     postheadspace=1em
%     ]{mystyle}