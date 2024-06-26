%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Rutgers Beamer Class File
%% Author: Kailong Wang
%% Description: This file creates a custom beamer class for the Rutgers University, the State University of New Jersey.
%% Original Template: https://www.overleaf.com/latex/templates/template-beamer-lepten-ufsc/vjdrghyjyvrp
%% Color Profile based on the instruction from: http://identity.rutgers.edu/about-identity/colors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../../Formats/RU}[2023/11/16 v0.1.1 Rutgers template beamer]

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Colors
\definecolor{RUgray}{HTML}{6A757C} % gray = PANTONE 431
\definecolor{RUred}{HTML}{cc0033} % red = PANTONE 186(250 anniversary version)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Style of the blocks
\usecolortheme[named=RUred]{structure}
\usefonttheme{professionalfonts}
\useinnertheme{circles}
\useoutertheme[subsection=false]{miniframes}
% \setbeamertemplate{navigation symbols}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Packages to Load
%% Text and Math Environment Packages
\RequirePackage{csquotes} %Package to Facilities Quotations
\RequirePackage[backend=biber, style=numeric, sorting=none]{biblatex}
\RequirePackage[english]{babel} %Multilingual Support Must Load the First
% \RequirePackage[utf8]{inputenc} %utf8 Support. Preloaded in Distribution
\RequirePackage[T1]{fontenc} %Better Font Encoding for T1 Type Font
% \RequirePackage[shortlabels]{enumitem} %Better List. Conflict with Beamer
% \RequirePackage[svgnames]{xcolor} %Beamer Has This by Default
\RequirePackage[most]{tcolorbox} %Customized Box. Must Load after xcolor
\RequirePackage{mathtools} %Customize Math Symbols and Theorems
\RequirePackage{amsthm, thmtools, thm-restate} %Better Theorems
% \RiquirePackage{amsmath} %Loaded by mathtools
% \RequirePackage{amssymb} %Conflict with Fonts package
\RequirePackage{../../Formats/Fonts} %Set Fonts. Must Load after tcolorbox
% \let\openbox\undefined %Fix Some Font Issues
\RequirePackage{bm} %Boldface Math, Load after Other Math Font Packages
\RequirePackage{mleftright} %Fixes Some Annoying Spacing Issues
\RequirePackage{microtype} %Better Font Spacing

%% Table Packages
\RequirePackage{tabularx} %Including Tabular with More Space Option
\RequirePackage{colortbl} %Package to Use Color in Tables
\RequirePackage{multirow} %Package to Use Multirow in Tables
\RequirePackage{multicol} %Package to Use Multicols
\RequirePackage{array} %Math and More Spacing Support in Tables

%% Graphics Packages
\RequirePackage{epstopdf} %Package to Convert eps to pdf in pdfLatex
\RequirePackage{transparent} %Transparent Images
\RequirePackage{graphicx} %Graphics Backend with key-value Arguments
\RequirePackage[export]{adjustbox} %More Arguments for includegraphics
\RequirePackage{subcaption} %Package to Use Subfigure

%% Code Packages
% \RequirePackage{listings} %Loaded by tcolorbox and hence no need of minted.
\RequirePackage{algorithm} %Package to Insert Algorithm
\RequirePackage{algpseudocode} %Package to Insert Algorithm

%% Other Packages
\RequirePackage{xspace} %Package to Add Space after Macros
% \RequirePackage{calc} %Package of Calculation in Latex
% \RequirePackage{rotating} %Package to Rotate Objects
% \RequirePackage{pgf, tikz} %Package to Draw Figures.
% \RequirePackage{keyval}
% \RequirePackage{hyperref} %Beamer Has This by Default.
% \RequirePackage{cleveref} %Must Load at the end. Conflict with Beamer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Putting the background image in the frames
\usebackgroundtemplate{
\parbox[c][\paperheight][c]{\paperwidth}{\centering\transparent{0.1}\includegraphics[height=0.8\paperheight]{RULogos/RU_SHIELD_BLACK.eps}}
}

% \logo{\includegraphics[scale=0.075]{../formats/RULogos/RU_SHIELD_CMYK_RED.eps}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Theorem Style
% \declaretheoremstyle[
%     spaceabove=6pt, spacebelow=6pt,
%     headfont=\normalfont\bfseries,
%     notefont=\mdseries, notebraces={(}{)},
%     bodyfont=\normalfont,
%     postheadspace=1em
%     ]{mystyle}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Section Frame
\AtBeginSection[]{
    \begin{frame}
    \vfill
    \centering
    \begin{beamercolorbox}[
        % sep=8pt,
        center,
        % shadow=true,
        % rounded=true,
    ]{title}
    \usebeamerfont{title}\insertsectionhead\par%
    \end{beamercolorbox}
    \vfill
    \end{frame}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
