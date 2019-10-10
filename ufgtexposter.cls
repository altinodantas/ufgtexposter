%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                     ufgtexposter.cls                             %%
%%                                                                  %%
%% Latex class for posters for Universidade Federal de Goiás        %%
%% Available at https://github.com/altinodantas/ufgtexposter        %%
%%                                                                  %%
%% Copyright (C) 2018 Altino Dantas and I4Soft research group       %%
%%                                                                  %%
%% This project is based on the .cls at                             %%
%% https://github.com/harveymuddcollege/hmcposter-class.            %%
%% This program is free software; you can redistribute it and/or    %%
%% modify it under the terms of the GNU General Public License as   %%
%% published by the Free Software Foundation; either version 2 of   %%
%% the License, or (at your option) any later version.              %%
%%                                                                  %%  
%% This program is distributed in the hope that it will be useful,  %%
%% but WITHOUT ANY WARRANTY; without even the implied warranty of   %%
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the    %%
%% GNU General Public License for more details.                     %%
%%                                                                  %%
%% Contact: Altino Dantas <altinoneto@ing.ufg.br>                   %%
%%          Institute of Informatic                                 %%    
%%          Universidade Federal de Goiás - Brazil                  %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufgtexposter}[2018/11/07 INF/UFG LaTeX poster class]

%%% Declare and set some options.

%% Set up if for i4soft template.
\newif\if@isoft
\@isoftfalse

%% Providing the i4soft document-class options.
\DeclareOption{isoft}{\@isofttrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ExecuteOptions{isoft}
\ProcessOptions

\LoadClass{article}

%% Require some packages.
\RequirePackage{sectsty}
\RequirePackage{ifthen}
\RequirePackage{mathpazo}
\RequirePackage[scaled=0.95]{helvet}
\RequirePackage[pages=some,scale=1,angle=0,opacity=1]{background}
\renewcommand{\ttdefault}{pcr}
\RequirePackage{sectsty}
\RequirePackage[font=small,font=sf,labelfont=bf]{caption}[2005/06/28]
\RequirePackage{graphics}
\RequirePackage{xcolor}
\RequirePackage{multicol}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}

%% Set some dimensions for layout.
\setlength{\paperwidth}{90cm}
\setlength{\paperheight}{120cm}
\setlength{\textwidth}{82cm}
\setlength{\textheight}{97.5cm}

\setlength{\oddsidemargin}{1.5cm}
\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\topmargin}{-0.3in}
\setlength{\headheight}{464pt}
\setlength{\headsep}{0.2in}
\setlength{\footskip}{1in}
\setlength{\voffset}{0pt}
\setlength{\hoffset}{0pt}

%% Defining colors.
\definecolor{gold}{cmyk}{0,0.2,0.5,0.3}
\definecolor{black}{rgb}{0,0,0}
\definecolor{dkblue}{rgb}{0,0,0.47}
\definecolor{ufglhblue}{rgb}{.65,.75,0.89}
\definecolor{ufgdkblue}{rgb}{0.0,0.39,.67}

%% Redefine the named font sizes so we can keep most of the code.
\renewcommand{\LARGE}{\fontsize{76pt}{82pt}\selectfont}
\renewcommand{\Large}{\fontsize{52pt}{58pt}\selectfont}
\renewcommand{\large}{\fontsize{42pt}{48pt}\selectfont}
\renewcommand{\normalsize}{\fontsize{32pt}{38pt}\selectfont}
\renewcommand{\small}{\fontsize{26pt}{32pt}\selectfont}
\renewcommand{\footnotesize}{\fontsize{20pt}{26pt}\selectfont}

%%% Define some new fields for use in the header/title/footer.

%% For an i4soft poster.
\if@isoft
\def\class#1{\gdef\@class{#1}}
\def\@class{\@latex@warning@no@line{No \noexpand\class given}}

\providecommand{\advisor}[1]{%
  \gdef\@advisor{#1}}

\providecommand{\reader}[1]{%
  \gdef\@reader{#1}}
\fi

%% Shared Definitions
\def\email#1{\gdef\@email{#1}}
\def\@email{\@latex@warning@no@line{No \noexpand\email given}}

\def\department#1{\gdef\@department{#1}}
\def\@department{\@latex@warning@no@line{No \noexpand\department given}}

\def\posteryear#1{\gdef\@posteryear{#1}}
\def\@posteryear{\@latex@warning@no@line{No \noexpand\posteryear given}}

\providecommand{\copyrightholder}[1]{%
  \gdef\@copyrightholder{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%            set commands             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Deal with separating columns.
\setlength{\columnsep}{1.5in}
\newcommand{\setcolumnseprule}[1]{\setlength{\columnseprule}{#1}}

%% Define 'setbackground' to provide background options.
\newcommand\setbackground[2][scale=1]{%
    \BgThispage
    \backgroundsetup{
        contents = {\includegraphics[#1]{backgrounds/#2}}
    }
}
\setbackground{1} % put background 1 by default.

%% Set up the header.

\newlength{\ignored@length}
\newcommand{\set@ess}[1]{%
  \renewcommand{\and}{%
    \global\def\@ess{s}%
  }%
  \global\def\@ess{}%
  \settowidth{\ignored@length}{#1}
}
\newcommand{\@andcommaspace}{, }

%% Lay out the header.
\pagestyle{fancy}
\fancyhf{}  % Clear all fields.

%%% Set up the header for the poster.

%% For i4soft.
\if@isoft

% Variable to adjust logos vertical position.
\newcommand{\logobox}{\def \@logobox}

\newcommand{\setlogos}[3][M]{ 
    
    % Positions: [T] = 13cm | [M] = 10cm | [B] = 5cm.
    \ifthenelse{\equal{#1}{T}}{
        \logobox{13cm}
    }{
        \ifthenelse{\equal{#1}{M}}{
            \logobox{10cm}
        }{
            \logobox{5cm}
        }
    }

    \ifthenelse{ \not \equal{#2}{} }{ %% Include the UFG Logo whether it was set.
        \fancyhead[L]{
            \raisebox{\@logobox}{ % Performs logo vertical position. 
                \begin{minipage}{4in}
                    \resizebox{4in}{!}{\includegraphics{#2}}
                \end{minipage}
            }
        }
    }{}
    
    \ifthenelse{ \not \equal{#3}{} }{ %% Include the Department Logo whether it was set.
        \fancyhead[R]{
            \raisebox{\@logobox}{ % Performs logo vertical position.
                \begin{minipage}{4in}
                    \resizebox{4in}{!}{\includegraphics{#3}}
                \end{minipage}
            }
        }
    }{}
}

\fi

%% Command to able resizing title.
\newcommand{\settitlesize}[2]{
    \renewcommand{\LARGE}{\fontsize{#1}{#2}\selectfont}
}

%% Command to able resizing the text of the content .
\newcommand{\setcontentfontesize}[2]{
    \renewcommand{\normalsize}{\fontsize{#1}{#2}\selectfont}
}

%% Command to able resizing the email (samll) font size.
\newcommand{\setemailfontesize}[2]{
    \renewcommand{\small}{\fontsize{#1}{#2}\selectfont}
}

%% For i4soft
\if@isoft
\fancyhead[C]{%
  \begin{center}
    {\color{ufglhblue}\large\textsf{\@class}\\[0.8em]}%
    {\color{white}\LARGE\textsf{\textbf{\@title}}\\[0.15em]}
    {\color{ufglhblue}\Large\textsf{\@author}\\}
    {\color{white}\large\textsf{\@department}\\[0.9em]}
    {\color{black}\small\textsf{\@email}}
  \end{center}
}
\fi

%% Define the footer.
\fancyfoot[C]{%
  \ifthenelse{\isundefined{\@copyrightholder}}%
  {}% Do nothing.
  {\textcolor{white}{\@posteryear\ -- \@copyrightholder}}
}

\fancyfoot[L]{%
  \ifthenelse{\isundefined{\@advisor}}%
  {}% Do nothing.
  {\textcolor{white}{\\[-0.2em]
      \set@ess{\@advisor}%
      \textbf{Orientador\@ess:}
      \global\let\and\@andcommaspace
      \@advisor%
    }
  }\quad%
  \ifthenelse{\isundefined{\@reader}}%
  {}% Do nothing.
  {\textcolor{black}{%
      \set@ess{\@reader}%
      \textbf{Reader\@ess:}
      \global\let\and\@andcommaspace
      \@reader%
    }
  }
}


\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}


%%% Colorize header and footer rules.
%%% This code taken from fancyhdr.sty; written by Piet van Oostrum.

\newcommand{\@rulecolor}{gold}

\renewcommand{\footrule}{{\color{\@rulecolor}\if@fancyplain\let\footrulewidth\plainfootrulewidth\fi
    \vskip-\footruleskip\vskip-\footrulewidth
    \hrule\@width\headwidth\@height\footrulewidth\vskip\footruleskip}}
\renewcommand{\headrule}{{\color{\@rulecolor}\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
    \hrule\@height\headrulewidth\@width\headwidth \vskip-\headrulewidth}}
%%% End code from fancyhdr.sty.

\setlength{\multicolsep}{2em}

\newenvironment{poster}{
    \thispagestyle{fancy}
    \begin{multicols*}{2}
    }
    {\end{multicols*}
}

\renewenvironment{figure}
               {\def\@captype {figure}}
               {}

\renewenvironment{table}
               {\def\@captype {table}}
               {}

%%% Make section headers sans-serif.

\allsectionsfont{\sffamily}

%%% Suppress section numbering.
\renewcommand{\@seccntformat}[1]{\relax}

\newcommand{\setsectioncolor}[1]{
    \sectionfont{\color{#1}}     
}

\AtBeginEnvironment{figure}{\addvspace{1.5cm}}\AtEndEnvironment{figure}{\addvspace{1.5cm}}