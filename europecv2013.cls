%!TEX encoding = UTF-8 Unicode
%
% European curriculum vitae class
% Author: Giacomo Mazzamuto
% based on the europecv class by Nicola Vitacolonna (http://ctan.org/pkg/europecv)

% This material is subject to the LaTeX Project Public License.
% See  http://www.latex-project.org/lppl.txt
% for the details of that license
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{europecv2013}[2014/04/18 (beta) European curriculum vitae class, 2013 version]

% CV models and instructions:
%   http://europass.cedefop.eu.int/htm/index.htm
% Recommendations:
%   http://europa.eu.int/scadplus/leg/en/cha/c11057.htm

\newcommand\ecv@utf[1]{#1}

% Set language
\DeclareOption{english}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecven.def}{}{%
    \ClassError{europecv2013}{English definition file 'ecven.def' not found}%
     {The file should be inside the europecv2013 folder.\MessageBreak
    Try to re-install the europecv2013 class.}}%
  }%
}
\DeclareOption{italian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvit.def}{}{%
    \ClassWarningNoLine{europecv2013}{Italian definition file 'ecvit.def' not found}}%
  }%
}
\DeclareOption{spanish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecves.def}{}{%
    \ClassWarningNoLine{europecv2013}{Spanish definition file 'ecves.def' not found}}%
  }%
}
\DeclareOption{french}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvfr.def}{}{%
    \ClassWarningNoLine{europecv2013}{French definition file 'ecvfr.def' not found}}%
  }%
}
\DeclareOption{danish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvda.def}{}{%
    \ClassWarningNoLine{europecv2013}{Danish definition file 'ecvda.def' not found}}%
  }%
}
\DeclareOption{german}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvde.def}{}{%
    \ClassWarningNoLine{europecv2013}{German definition file 'ecvde.def' not found}}%
  }%
}
\DeclareOption{finnish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvfi.def}{}{%
    \ClassWarningNoLine{europecv2013}{Finnish definition file 'ecvfi.def' not found}}%
  }%
}
\DeclareOption{portuges}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvpt.def}{}{%
    \ClassWarningNoLine{europecv2013}{Portuguese definition file 'ecvpt.def' not found}}%
  }%
}
\DeclareOption{portuguese}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvpt.def}{}{%
    \ClassWarningNoLine{europecv2013}{Portuguese definition file 'ecvpt.def' not found}}%
  }%
}
\DeclareOption{swedish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvsv.def}{}{%
    \ClassWarningNoLine{europecv2013}{Swedish definition file 'ecvsv.def' not found}}%
  }%
}
\DeclareOption{norwegian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvno.def}{}{%
    \ClassWarningNoLine{europecv2013}{Norwegian definition file 'ecvno.def' not found}}%
  }%
}
\DeclareOption{dutch}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvnl.def}{}{%
    \ClassWarningNoLine{europecv2013}{Dutch definition file 'ecvnl.def' not found}}%
  }%
}
\DeclareOption{catalan}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvca.def}{}{%
    \ClassWarningNoLine{europecv2013}{Catalan definition file 'ecvca.def' not found}}%
  }%
}
\DeclareOption{polish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvpl.def}{}{%
    \ClassWarningNoLine{europecv2013}{Polish definition file 'ecvpl.def' not found}}%
  }%
}
\DeclareOption{hungarian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvhu.def}{}{%
    \ClassWarningNoLine{europecv2013}{Hungarian definition file 'ecvhu.def' not found}}%
    \ecvpage{\thepage\ifx\@empty\ecv@totpages.\else\ecv@totpages\fi~\ecv@pagekey}
    \def\ecv@lfoot{%
  \footnotesize\textrm{\ecv@page~- \textrm{\ecv@footername} \ecv@cvofkey}}%
  }%
}
\DeclareOption{estonian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvet.def}{}{%
    \ClassWarningNoLine{europecv2013}{Estonian definition file 'ecvet.def' not found}}%
  }%
}
\DeclareOption{icelandic}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvis.def}{}{%
    \ClassWarningNoLine{europecv2013}{Icelandic definition file 'ecvis.def' not found}}%
  }%
}
\DeclareOption{lithuanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvlt.def}{}{%
    \ClassWarningNoLine{europecv2013}{Lithuanian definition file 'ecvlt.def' not found}}%
  }%
}
\DeclareOption{czech}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvcs.def}{}{%
    \ClassWarningNoLine{europecv2013}{Czech definition file 'ecvcs.def' not found}}%
  }%
}
\DeclareOption{slovak}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvsk.def}{}{%
    \ClassWarningNoLine{europecv2013}{Slovak definition file 'ecvsk.def' not found}}%
  }%
}
\DeclareOption{latvian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvlv.def}{}{%
    \ClassWarningNoLine{europecv2013}{Latvian definition file 'ecvlv.def' not found}}%
  }%
}
\DeclareOption{slovenian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvsl.def}{}{%
    \ClassWarningNoLine{europecv2013}{Slovenian definition file 'ecvsl.def' not found}}%
  }%
}
\DeclareOption{romanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvro.def}{}{%
    \ClassWarningNoLine{europecv2013}{Romanian definition file 'ecvro.def' not found}}%
  }%
}
\DeclareOption{maltese}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvmt.def}{}{%
    \ClassWarningNoLine{europecv2013}{Maltese definition file 'ecvmt.def' not found}}%
  }%
}
\DeclareOption{bulgarian}{%
  \AtEndOfPackage{%
      \InputIfFileExists{ecvbg.def}{}{%
      \ClassWarningNoLine{europecv2013}{Bulgarian definition file 'ecvbg.def' not found}}%
  }%
}
\DeclareOption{greek}{%
  \AtEndOfPackage{%
     \InputIfFileExists{ecvgr.def}{}{%
    \ClassWarningNoLine{europecv2013}{Greek definition file 'ecvgr.def' not found}}%
  }%
}
\DeclareOption{galician}{%
  \AtEndOfPackage{%
     \InputIfFileExists{ecvgl.def}{}{%
    \ClassWarningNoLine{europecv2013}{Galician definition file 'ecvgl.def' not found}}%
  }%
}
\DeclareOption{serbian}{%
  \AtEndOfPackage{%
     \InputIfFileExists{ecvsr.def}{}{%
    \ClassWarningNoLine{europecv2013}{Serbian definition file 'ecvsr.def' not found}}%
  }%
}

% Input encodings
\DeclareOption{ascii}{\AtEndOfClass{\inputencoding{ascii}}}
\DeclareOption{latin1}{\AtEndOfClass{\inputencoding{latin1}}}
\DeclareOption{latin2}{\AtEndOfClass{\inputencoding{latin2}}}
\DeclareOption{latin3}{\AtEndOfClass{\inputencoding{latin3}}}
\DeclareOption{latin4}{\AtEndOfClass{\inputencoding{latin4}}}
\DeclareOption{latin5}{\AtEndOfClass{\inputencoding{latin5}}}
\DeclareOption{latin9}{\AtEndOfClass{\inputencoding{latin9}}}
\DeclareOption{latin10}{\AtEndOfClass{\inputencoding{latin10}}}
\DeclareOption{decmulti}{\AtEndOfClass{\inputencoding{decmulti}}}
\DeclareOption{cp850}{\AtEndOfClass{\inputencoding{cp850}}}
\DeclareOption{cp852}{\AtEndOfClass{\inputencoding{cp852}}}
\DeclareOption{cp858}{\AtEndOfClass{\inputencoding{cp858}}}
\DeclareOption{cp437}{\AtEndOfClass{\inputencoding{cp437}}}
\DeclareOption{cp437de}{\AtEndOfClass{\inputencoding{cp437de}}}
\DeclareOption{cp865}{\AtEndOfClass{\inputencoding{cp865}}}
\DeclareOption{applemac}{\AtEndOfClass{\inputencoding{applemac}}}
\DeclareOption{next}{\AtEndOfClass{\inputencoding{next}}}
\DeclareOption{cp1250}{\AtEndOfClass{\inputencoding{cp1250}}}
\DeclareOption{cp1252}{\AtEndOfClass{\inputencoding{cp1252}}}
\DeclareOption{cp1257}{\AtEndOfClass{\inputencoding{cp1257}}}
\DeclareOption{ansinew}{\AtEndOfClass{\inputencoding{ansinew}}}
\DeclareOption{utf8}{\AtEndOfClass{\inputencoding{utf8x}}}
\DeclareOption{utf8x}{\AtEndOfClass{\inputencoding{utf8x}}}
\DeclareOption{koi8-r}{\AtEndOfClass{\inputencoding{koi8-r}}}
\DeclareOption{koi8-ru}{\AtEndOfClass{\inputencoding{koi8-ru}}}
\DeclareOption{koi8-u}{\AtEndOfClass{\inputencoding{koi8-u}}}
\DeclareOption{cp1251}{\AtEndOfClass{\inputencoding{cp1251}}}
\DeclareOption{cp855}{\AtEndOfClass{\inputencoding{cp855}}}
\DeclareOption{cp866}{\AtEndOfClass{\inputencoding{cp866}}}
\DeclareOption{maccyr}{\AtEndOfClass{\inputencoding{maccyr}}}
\DeclareOption{macukr}{\AtEndOfClass{\inputencoding{macukr}}}

% Set font
\DeclareOption{helvetica}{%                       
  \renewcommand{\rmdefault}{phv}
  \renewcommand{\sfdefault}{phv}
}
\DeclareOption{arial}{%                       
  \renewcommand{\rmdefault}{ma1} % (this font is NOT installed by default!)
  \renewcommand{\sfdefault}{ma1}
}

\DeclareOption{narrow}{
 \def\ecv@narrow{}
}

\def\ecv@currvitaekey{}
\newcommand{\ecvcurrvitae}{\ifx\@empty\ecv@currvitaekey Curriculum vitae \else \ecv@currvitaekey \fi}
\newcommand{\ecvcoloredtitle}{\fontfamily{phv}\fontseries{m}\selectfont \textcolor{ecvhighlightcolor}{\ecvcurrvitae}}

% Europass logo
\DeclareOption{logo}{%
\providecommand*\draweuropasslogo[1][\ecv@logowidth]{%
   \includegraphics[width=#1]{europasslogo2013.pdf}}
}
\DeclareOption{nologo}{\renewcommand*\draweuropasslogo{}}
\DeclareOption{notitle}{\def\ecv@notitle{}}

% Flag pictures of the EC can be found at 
%   http://europa.eu.int/abc/symbols/emblem/index_en.htm
\DeclareOption{noflag}{\providecommand*\draweuropeflag{}}
\DeclareOption{flagWB}{%
  \renewcommand*\draweuropeflag{%
    \includegraphics[width=\ecv@flagwidth]{EuropeFlagWB}}
}
\DeclareOption{flagBW}{%
  \renewcommand*\draweuropeflag{%
    \includegraphics[width=\ecv@flagwidth]{EuropeFlagBW}}
}
\DeclareOption{flagCMYK}{%
  \renewcommand*\draweuropeflag{%
    \includegraphics[width=\ecv@flagwidth]{EuropeFlagCMYK}}
}
\DeclareOption{flagBlueCMYK}{%
 \renewcommand*\draweuropeflag{%
   \includegraphics[width=\ecv@flagwidth]{EuropeFlagBlueCMYK}}
}

% Page numbering
\DeclareOption{totpages}{%
  \AtEndOfPackage{\RequirePackage{totpages}%
  \def\ecv@totpages{~/~\ref{TotPages}}
  %\ecvpage{\ecv@pagekey~\thepage~/~\ref{TotPages}}%
  }%
}

\DeclareOption{nodocument}{%
  \def\ecv@nodocument{}
}

\DeclareOption{debug}{\def\ecv@debugmode{}}

% Pass all other options (a4paper, 10pt, draft, openbib, etc...) to article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
} 

\ExecuteOptions{english,noflag,logo,hrule,totpages} % Default options

\ProcessOptions\relax

\LoadClass{article}
% \RequirePackage{ucs}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{fancyhdr} % For page numbering
\RequirePackage{xcolor}
\RequirePackage{textpos}
\RequirePackage{pgf}
\RequirePackage{url}
\RequirePackage{soul}
\RequirePackage{tabu}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{textcomp} % For copyright symbol
\ifx\@empty\ecv@debugmode \RequirePackage{colortbl} \fi
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}


\def\ecv@totpages{}
\newcommand*{\ecvpage}[1]{\def\ecv@page{#1}}
\ecvpage{\ecv@pagekey~\thepage\ecv@totpages}

\def\ecv@lfoot{%
  \footnotesize{\@date}
}

% Right Footnote to be shown on every page
\newcommand\ecvfootnote[1]{\def\ecv@cfoot{#1}}
\ecvfootnote{\textcopyright~\ecv@europeanunionkey, 2002-2013 | http://europass.cedefop.europa.eu }


\AtBeginDocument{%
% Ensure that \ecv@leftcolwidth and \ecv@rightcolwidth
% are correctly defined
\ecvLeftColumnWidth{50mm}
\ecvColSep{10pt}

\ifx\@empty\ecv@nodocument\else
\newgeometry{body={18.5cm,24cm}, vratio={4:3}}

% Set layout

\fancyfoot{}
\fancyfoot[L]{\begin{minipage}{\ecv@leftcolwidth}
\begin{flushleft}
\footnotesize\textcolor{ecvhighlightcolor}{\fontfamily{phv}\fontseries{m}\selectfont\ecv@lfoot}\end{flushleft}
\end{minipage}
}
\fancyfoot[C]{\begin{minipage}{\textwidth}
\hspace{\ecv@leftcolwidth}
\hspace{0.5\ecv@colsep}
\footnotesize\textcolor{ecvhighlightcolor}{\fontfamily{phv}\fontseries{m}\selectfont\ecv@cfoot}
\end{minipage}
}
\fancyfoot[R]{\begin{minipage}{\ecv@rightcolwidth}
\begin{flushright}
\footnotesize\textcolor{ecvhighlightcolor}{\fontfamily{phv}\fontseries{m}\selectfont\ecv@page}\end{flushright}
\end{minipage}}

\fancypagestyle{ecvfancy}{
\setlength{\headheight}{13.5pt}
% \setlength{\footskip}{8.4pt}
\fancyhead{}
\fancyhead[L]{
  \ifx\@empty\draweuropasslogo\else
    \begin{minipage}[c]{\ecv@leftcolwidth}
    \raisebox{-10pt}[0pt][0pt]{\draweuropasslogo[0.6\ecv@logowidth]}
    \end{minipage}
  \fi
 \begin{minipage}[c]{0.5\textwidth}\hspace{2.5mm}\ecvcoloredtitle \end{minipage}
}

\fancyhead[R]{\begin{minipage}{0.2\textwidth}
\begin{flushright}
\textcolor{ecvhighlightcolor}{\fontfamily{phv}\fontseries{m}\selectfont \ecv@name}\end{flushright}
\end{minipage}
}
}

\fancypagestyle{first}{
\fancyhead[R]{}
\fancyhead[L]{}
}

\thispagestyle{first}
\pagestyle{ecvfancy}
\renewcommand{\headrulewidth}{0pt}%
\fi
} % End \AtBeginDocument

% Thanks to Roman Bertle for suggesting the following:
\renewcommand{\labelitemi}{\normalfont\bfseries \textendash}
\renewcommand{\labelitemii}{\textasteriskcentered}
\renewcommand{\labelitemiii}{\textperiodcentered}

\newcommand*{\ecvfirstname}[1]{\def\ecv@firstname{#1}} % Deprecated
\newcommand*{\ecvlastname}[1]{\def\ecv@lastname{#1}} % Deprecated
\newcommand*{\ecvname}[1]{\def\ecv@name{#1}} % Replaces the above
\newcommand*{\ecvfootername}[1]{\def\ecv@footername{#1}}
\newcommand*{\ecvaddress}[1]{\def\ecv@address{#1}}
\newcommand*{\ecvtelephone}[2][]{\def\ecv@telephone{#2}\def\ecv@mobile{#1}}
\newcommand*{\ecvfax}[1]{\def\ecv@fax{#1}}
\newcommand*{\ecvemail}[1]{\def\ecv@email{#1}}
\newcommand*{\ecvhomepage}[1]{\def\ecv@homepage{#1}}
\newcommand*{\ecvnationality}[1]{\def\ecv@nationality{#1}}
\newcommand*{\ecvdateofbirth}[1]{\def\ecv@birth{#1}}
\newcommand*{\ecvgender}[1]{\def\ecv@gender{#1}}
% Personal picture
\newcommand*{\ecvdrawpicture}{}
\newcommand*{\ecvbeforepicture}[1]{\def\ecv@beforepic{#1}}
\newcommand*{\ecvafterpicture}[1]{\def\ecv@afterpic{#1}}
\newcommand*\ecvpicture{%
\@ifnextchar[\ecv@picture{\ecv@picture[]}}
\def\ecv@picture[#1]#2{%
\def\ecvarg{#2}
\ifx\@empty\ecvarg\renewcommand*{\ecvdrawpicture}{}\else
\renewcommand*{\ecvdrawpicture}{\includegraphics[#1]{#2}}
\fi}
% The following must be used inside \ecvbeforepicture
% or \ecvafterpicture
\newcommand*{\ecvspace}[1]{\vspace{#1}\tabularnewline\tabularnewline}
\ecvbeforepicture{\raggedleft}
\ecvafterpicture{10pt}
\ecvfirstname{}
\ecvlastname{}
\ecvname{\ecv@lastname\ \ecv@firstname}
\ecvfootername{\ecv@name}
\ecvaddress{}
\ecvtelephone{}
\ecvfax{}
\ecvemail{}
\ecvhomepage{}
\ecvnationality{}
\ecvdateofbirth{}
\ecvgender{}
\ecvpicture{}

\providecommand{\ecvpersonalinfo}[1][0pt]{%
\textcolor{red!25}{\rule{0pt}{30pt}}
\textcolor{ecvsectioncolor}{\small \fontfamily{phv}\fontseries{m}\selectfont \expandafter\MakeUppercase{\expandafter{\ecv@infosectionkey}}} & {
\begin{doublespacing}
\begin{tabu} to 0.99\ecv@rightcolwidth {@{}X[0.7,l,p]  X[0.3,r,p]}
{
\Large{\fontfamily{phv}\fontseries{m}\selectfont \ecv@name}} \newline
\ifx\@empty\ecv@address\else
\raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{address_icon.pdf}}\hspace{0.2mm} {\fontfamily{phv}\fontseries{m}\selectfont \ecv@address} \newline
\fi
\ifx\@empty\ecv@mobile
  \ifx\@empty\ecv@telephone\else
  \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{telephone_icon.pdf}}\hspace{0.2mm} {\fontfamily{phv}\fontseries{m}\selectfont \ecv@telephone}\newline
  \fi
\else
 \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{mobile_icon.pdf}}\hspace{0.2mm} {\fontfamily{phv}\fontseries{m}\selectfont \ecv@mobile} \quad \ifx\@empty\ecv@telephone\else \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{telephone_icon.pdf}}\hspace{0.2mm} {\fontfamily{phv}\fontseries{m}\selectfont \ecv@telephone\newline}\fi
\fi
\ifx\@empty\ecv@fax\else
\ecv@faxkey \ecv@fax 
\fi
\ifx\@empty\ecv@email\else
 \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{mail_icon.pdf}} \hspace{0.2mm} {\fontfamily{phv}\fontseries{m}\selectfont \ecv@email}\newline
\fi
\ifx\@empty\ecv@homepage\else
 \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{website_icon.pdf}} {\fontfamily{phv}\fontseries{m}\selectfont \setul{.5pt}{.4pt}\href{\ecv@homepage}{ \ul{\ecv@homepage}}}\newline
\fi
\ifx\@empty\ecv@birth\else
{\fontfamily{phv}\fontseries{m}\selectfont \textcolor{ecvhighlightcolor}{\ecv@birthkey} \ecv@birth \ifx\@empty\ecv@nationality\else\textcolor{ecvhighlightcolor}{~| \ecv@nationalitykey}~\ecv@nationality\newline\fi }
\fi
\ifx\@empty\ecv@gender\else
\ecv@genderkey  \ecv@gender
\fi

& 
\raisebox{-0.8\height}{\ecvdrawpicture}\vspace*{\ecv@afterpic}
\end{tabu}\end{doublespacing}}\tabularnewline
}

% Spoken language information
\newcommand*\ecvmothertongue[2][0pt]{%
\ecvblueitem[#1]{\ecv@mothertonguekey}{#2}
}

\newlength\ecv@langparwidth

\newcommand*\ecvlanguageheader{%
\ecvspace{\bigskipamount}
\textcolor{ecvsectioncolor}{\ecv@otherlanguageskey}
&
\renewcommand{\arraystretch}{1.5}
{
\vspace{-\baselineskip}
\vspace{-0.06cm}
\begin{tabu} to \linewidth {|X[\ecv@langcola,c,m]  |[0.04cm ecvtablebordercolor] X[\ecv@langcolb,c,m] |[0.04cm ecvtablebordercolor] X[\ecv@langcolc,c,m]  |[0.04cm ecvtablebordercolor] X[\ecv@langcold,c,m] |[0.04cm ecvtablebordercolor] X[\ecv@langcole,c,m]}
\tabucline[0.04cm ecvtablebordercolor]-
\multicolumn2{|c|[0.04cm ecvtablebordercolor]}{\textcolor{ecvsectioncolor}{\expandafter\MakeUppercase{\expandafter{\ecv@understandkey}}}}&\multicolumn2{|c|[0.04cm ecvtablebordercolor]}{\textcolor{ecvsectioncolor}{\expandafter\MakeUppercase{\expandafter{\ecv@speakkey}}}}&\multicolumn1{|c|}{\textcolor{ecvsectioncolor}{\expandafter\MakeUppercase{\expandafter{\ecv@writekey}}}}\tabularnewline\cline{1-3}
\tabucline[0.04cm ecvtablebordercolor]-
\multicolumn1{c|[0.04cm ecvtablebordercolor]}{\textcolor{ecvsectioncolor}{\ecv@listenkey}}&\multicolumn1{c|[0.04cm ecvtablebordercolor]}{\textcolor{ecvsectioncolor}{\ecv@readkey}} &\multicolumn1{c|[0.04cm ecvtablebordercolor]}{\textcolor{ecvsectioncolor}{\ecv@interactkey}}&\multicolumn1{c|[0.04cm ecvtablebordercolor]}{\textcolor{ecvsectioncolor}{\ecv@productkey}}&\multicolumn1{c}{}\tabularnewline\cline{1-4}
\tabucline[0.04cm ecvtablebordercolor]-
\tabuphantomline
\end{tabu}
}
\tabularnewline[-\arrayrulewidth]
}
  
  
\newcommand*\ecvlangrow[8][0pt]{
#2 & 
\renewcommand{\arraystretch}{1.5}
% \vspace*{0.02cm}
{
\begin{tabu} to \linewidth {|X[\ecv@langcola,c,m]  |[0.04cm ecvtablebordercolor] X[\ecv@langcolb,c,m] |[0.04cm ecvtablebordercolor] X[\ecv@langcolc,c,m]  |[0.04cm ecvtablebordercolor] X[\ecv@langcold,c,m] |[0.04cm ecvtablebordercolor] X[\ecv@langcole,c,m]}
\multicolumn1{c}{#3}&\multicolumn1{c}{#4} &\multicolumn1{c}{#5}&\multicolumn1{c}{#6}&\multicolumn1{c}{#7}\tabularnewline\cline{1-4}
\tabucline[#8 ecvtablebordercolor]-
\tabuphantomline
\end{tabu}}
\tabularnewline[-\arrayrulewidth]
}

\newcommand*\ecvlanguage[7][0pt]{\ecvlangrow[#1]{#2}{#3}{#4}{#5}{#6}{#7}{0.02cm}}
\newcommand*\ecvlastlanguage[7][0pt]{\ecvlangrow[#1]{#2}{#3}{#4}{#5}{#6}{#7}{0.04cm}}

\newcommand*{\ecvlanguagefooter}{
\ecvitem[\smallskipamount]{}{\textcolor{ecvsectioncolor}{\ecv@langshortdesckey}}
\ecvitem[\smallskipamount]{}{\setulcolor{ecvlanglinkcolor}\setul{.5pt}{.4pt}\href{\ecv@langlinkkey}{\ul{\mbox{\textcolor{ecvlanglinkcolor}{\ecv@langfooterkey}}}}}
\renewcommand{\arraystretch}{0}
}

% See the Common European Framework of Reference for Languages:
% http://www.coe.int/T/E/Cultural_Co-operation/education/Languages/Language_Policy/Common_Framework_of_Reference/default.asp
\newcommand*\ecvCEF[2]{%
%   \setlength\tabcolsep{1mm}

\begin{tabular}{@{}>{}m{.2\ecv@langparwidth}@{\hspace{1mm}}>{\centering}m{.74\ecv@langparwidth}@{}}
#1 & \small{#2}\tabularnewline
\end{tabular}
}

\newcommand*\ecvAOne{A1}
\newcommand*\ecvATwo{A2}
\newcommand*\ecvBOne{B1}
\newcommand*\ecvBTwo{B2}
\newcommand*\ecvCOne{C1}
\newcommand*\ecvCTwo{C2}

\def\ecv@kern{\kern0.5pt}
%\def\ecv@kern{}
\newcommand*{\ecvTitleKern}[1]{\def\ecv@kern{\kern#1}}
\newlength\ecv@rulewidth
\newlength\ecv@colsep
\newlength\ecv@leftcolwidth
\newlength\ecv@rightcolwidth
\newlength\ecv@extrarowheight
\newcommand*{\ecvRuleWidth}[1]{\setlength\ecv@rulewidth{#1}}
\newcommand*{\ecvColSep}[1]{%
  \setlength\ecv@colsep{#1}
  \addtolength{\ecv@leftcolwidth}{-\ecv@colsep}
  }
\newcommand*{\ecvLeftColumnWidth}[1]{\setlength\ecv@leftcolwidth{#1}%
             \setlength{\ecv@rightcolwidth}{\textwidth}
            \addtolength{\ecv@rightcolwidth}{-\ecv@leftcolwidth}
            \addtolength{\ecv@rightcolwidth}{-\ecv@rulewidth}}
\newcommand*{\ecvExtraRowHeight}[1]{\setlength\ecv@extrarowheight{#1}}
\newcommand*{\ecvNoHorRule}{\def\ecv@hrule{}}
\newcommand*{\ecvWithHorRule}{\def\ecv@hrule{\cline{1-1}}}

% Initialization
\ecvRuleWidth{\arrayrulewidth}
\setlength\ecv@leftcolwidth{50mm} % Default left column width
\ecvExtraRowHeight{0pt}
\ecvWithHorRule

% Flag size
\newlength\ecv@flagwidth
\newcommand*{\ecvFlagWidth}[1]{\setlength\ecv@flagwidth{#1}}
\ecvFlagWidth{10mm}

% Logo size
\newlength\ecv@logowidth
\newlength\ecv@logooffset
\newcommand*{\ecvLogoWidth}[1]{\setlength\ecv@logowidth{#1}}
\newcommand*{\ecvLogoOffset}[1]{\setlength\ecv@logooffset{#1}}
\ecvLogoWidth{4.487cm}
\ecvLogoOffset{0.8cm}%\typeout{logo width=\the\ecv@logowidth}
%\typeout{logo offset=\the\ecv@logooffset}

% Text bullet
\newcommand{\ecvbullet}{\raisebox{.35ex}[0cm][0cm]{\tiny\textbullet}}
                                          
\newenvironment{europecv}{%
  \ecvLeftColumnWidth{\ecv@leftcolwidth}
  \setlength\arrayrulewidth{\ecv@rulewidth}
  \setlength\extrarowheight{\ecv@extrarowheight}
  \setlength\LTleft{0pt}
  \setlength\LTright{0pt}
  % Language table paragraph width
  \setlength\ecv@langparwidth{.199\ecv@rightcolwidth}
  \addtolength{\ecv@langparwidth}{-2\tabcolsep}
  \addtolength{\ecv@langparwidth}{-2\arrayrulewidth}
% Begin
\ifx\@empty\ecv@nodocument\else
\vspace*{-2.5cm}
\enlargethispage{2.5cm}
\fi
\addtolength{\ecv@rightcolwidth}{-\ecv@colsep}
\fontfamily{phv} \ifx\@empty\ecv@narrow \fontseries{mc} \else \fontseries{m} \fi \selectfont
% \color{ecvtextcolor}
\ifx\@empty\ecv@debugmode
\taburowcolors [1] 2 {green!25 .. yellow!50}
\taburulecolor{blue!25}
\else
\taburulecolor{white}
\fi
\renewcommand{\arraystretch}{0}
\begin{longtabu} to \textwidth {@{}>{\raggedleft}p{\ecv@leftcolwidth}@{}|@{\extracolsep{\ecv@colsep}}p{\ecv@rightcolwidth}@{}}
  \ifx\@empty\draweuropasslogo
    \ifx\@empty\ecv@notitle\else
      & \ecvcoloredtitle \vspace{0.5cm} \tabularnewline
    \fi
  \else
  \raisebox{-0.3\height}{\draweuropasslogo} & \ifx\@empty\ecv@notitle\else \ecvcoloredtitle \vspace{0.5cm} \fi \tabularnewline
  \fi
  
}
{
\end{longtabu}}

\newenvironment{ecvitemize}{
\
\vspace*{\ecv@itemizeskip}
\vspace*{-\dp\strutbox}
\begin{itemize}[leftmargin=*,nolistsep,nosep,topsep=0pt]
}{
\end{itemize}
\ \vspace{-0.8\baselineskip}
}

\newcommand*{\getlength}[2]{%
   \pgfmathsetmacro#1{#2}
}



% styles
\newcommand{\ecvsectionstyle}[1]{\textcolor{ecvsectioncolor}{\small \fontfamily{phv}\fontseries{m}\selectfont \MakeUppercase{\expandafter{#1}}}}
\newcommand{\ecvbluenormalstyle}[1]{\fontfamily{phv}\fontseries{m}\selectfont\textcolor{ecvsectioncolor}{#1}}
\newcommand{\ecvtitlestyle}[1]{\large{\ecvbluenormalstyle{#1}}}
\newcommand{\ecvlargenormalstyle}[1]{\large \fontfamily{phv}\fontseries{m}\selectfont #1}
\newcommand{\ecvhighlight}[1]{\textcolor{ecvhighlightcolor}{#1}}


% sectioning commands
\newlength{\ecv@itemskip}
\newlength{\ecv@itemizeskip}
\setlength\ecv@itemskip{\medskipamount}

\newcommand\ecvitem[3][\ecv@itemskip]{%
  \setlength\ecv@itemizeskip{1ex}
  \ecvspace{#1}
  #2 &  #3 \tabularnewline
} 

\newcommand{\ecvsection}[2][2\bigskipamount]{%
  \ecvitem[#1]{\ecvsectionstyle{#2}}
  {
  \setlength{\TPHorizModule}{1pt}\setlength{\TPVertModule}{1pt}
  \getlength{\rightScalarWidth}{\ecv@rightcolwidth}
  
  \textcolor{ecvrulecolor}{\noindent\makebox[\linewidth]{\rule{\ecv@rightcolwidth}{1pt}}  \begin{textblock}{7}[1,1](\rightScalarWidth,0) \makebox{\rule{7pt}{7pt}} \end{textblock}}
  }
  \nopagebreak
}

\newcommand\ecvtitle[3][2\bigskipamount]{%
  \ecvitem[#1]{\small \ecvbluenormalstyle{#2}}{\ecvtitlestyle{#3}}
}

\newcommand\ecvblueitem[3][\bigskipamount]{\ecvitem[#1]{\textcolor{ecvsectioncolor}{#2}}{\setlength\ecv@itemizeskip{-\bigskipamount}\addtolength{\ecv@itemizeskip}{\dp\strutbox} #3}}

\newcommand{\ecvjobappliedfor}[2][\bigskipamount]{
  \ecvitem[#1]{\ecvsectionstyle{\ecv@jobappliedforkey}}{\ecvlargenormalstyle{#2}}
}

\newcommand{\ecvbsector}[2][\ecv@itemskip]{
  \ecvitem[#1]{}{\ecvhighlight{\ecv@bsectorkey} {#2}}
}

\ecvRuleWidth{0pt}

% colors
\definecolor{ecvrulecolor}{HTML}{398dc9}
\definecolor{ecvsectioncolor}{HTML}{0e4194}
\definecolor{ecvhighlightcolor}{HTML}{1593cb}
\definecolor{ecvtablebordercolor}{HTML}{c6c6c6}
\definecolor{ecvlanglinkcolor}{HTML}{000080}
\definecolor{ecvtextcolor}{HTML}{3e3a38}
