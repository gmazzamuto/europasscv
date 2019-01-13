%!TEX encoding = UTF-8 Unicode
%
% Europass curriculum vitae class
% Author: Giacomo Mazzamuto
% based on the europecv class by Nicola Vitacolonna (http://ctan.org/pkg/europecv)

% This material is subject to the LaTeX Project Public License Version 1.3.
% See  http://www.latex-project.org/lppl.txt
% for the details of that license
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{europasscv}[2019/01/14 The new Europass curriculum vitae class]

\newcommand\ecv@utf[1]{#1}

\def\ecv@dcompcola{0.2}
\def\ecv@dcompcolb{0.2}
\def\ecv@dcompcolc{0.2}
\def\ecv@dcompcold{0.2}
\def\ecv@dcompcole{0.2}

% Set language
\DeclareOption{english}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_en.def}{}{%
    \ClassError{europasscv}{English definition file 'europasscv_en.def' not found}%
     {The file should be inside the europasscv folder.\MessageBreak
    Try to re-install the europasscv class.}}%
  }%
}
\DeclareOption{italian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_it.def}{}{%
    \ClassWarningNoLine{europasscv}{Italian definition file 'europasscv_it.def' not found}}%
  }%
}
\DeclareOption{spanish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_es.def}{}{%
    \ClassWarningNoLine{europasscv}{Spanish definition file 'europasscv_es.def' not found}}%
  }%
}
\DeclareOption{french}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_fr.def}{}{%
    \ClassWarningNoLine{europasscv}{French definition file 'europasscv_fr.def' not found}}%
  }%
}
\DeclareOption{danish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_da.def}{}{%
    \ClassWarningNoLine{europasscv}{Danish definition file 'europasscv_da.def' not found}}%
  }%
}
\DeclareOption{german}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_de.def}{}{%
    \ClassWarningNoLine{europasscv}{German definition file 'europasscv_de.def' not found}}%
  }%
}
\DeclareOption{finnish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_fi.def}{}{%
    \ClassWarningNoLine{europasscv}{Finnish definition file 'europasscv_fi.def' not found}}%
  }%
}
\DeclareOption{portuges}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_pt.def}{}{%
    \ClassWarningNoLine{europasscv}{Portuguese definition file 'europasscv_pt.def' not found}}%
  }%
}
\DeclareOption{portuguese}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_pt.def}{}{%
    \ClassWarningNoLine{europasscv}{Portuguese definition file 'europasscv_pt.def' not found}}%
  }%
}
\DeclareOption{swedish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_sv.def}{}{%
    \ClassWarningNoLine{europasscv}{Swedish definition file 'europasscv_sv.def' not found}}%
  }%
}
\DeclareOption{norsk}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_nb.def}{}{%
    \ClassWarningNoLine{europasscv}{Norwegian (Bokmål) definition file 'europasscv_nb.def' not found}}%
  }%
}
\DeclareOption{dutch}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_nl.def}{}{%
    \ClassWarningNoLine{europasscv}{Dutch definition file 'europasscv_nl.def' not found}}%
  }%
}
\DeclareOption{catalan}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_ca.def}{}{%
    \ClassWarningNoLine{europasscv}{Catalan definition file 'europasscv_ca.def' not found}}%
  }%
}
\DeclareOption{polish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_pl.def}{}{%
    \ClassWarningNoLine{europasscv}{Polish definition file 'europasscv_pl.def' not found}}%
  }%
}
\DeclareOption{hungarian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_hu.def}{}{%
    \ClassWarningNoLine{europasscv}{Hungarian definition file 'europasscv_hu.def' not found}}%
    \ecvpage{\thepage\ifx\@empty\ecv@totpages.\else\ecv@totpages\fi~\ecv@pagekey}
    \def\ecv@lfoot{%
  \footnotesize\textrm{\ecv@page~- \textrm{\ecv@footername} \ecv@cvofkey}}%
  }%
}
\DeclareOption{estonian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_et.def}{}{%
    \ClassWarningNoLine{europasscv}{Estonian definition file 'europasscv_et.def' not found}}%
  }%
}
\DeclareOption{icelandic}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_is.def}{}{%
    \ClassWarningNoLine{europasscv}{Icelandic definition file 'europasscv_is.def' not found}}%
  }%
}
\DeclareOption{lithuanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_lt.def}{}{%
    \ClassWarningNoLine{europasscv}{Lithuanian definition file 'europasscv_lt.def' not found}}%
  }%
}
\DeclareOption{czech}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_cs.def}{}{%
    \ClassWarningNoLine{europasscv}{Czech definition file 'europasscv_cs.def' not found}}%
  }%
}
\DeclareOption{slovak}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_sk.def}{}{%
    \ClassWarningNoLine{europasscv}{Slovak definition file 'europasscv_sk.def' not found}}%
  }%
}
\DeclareOption{latvian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_lv.def}{}{%
    \ClassWarningNoLine{europasscv}{Latvian definition file 'europasscv_lv.def' not found}}%
  }%
}
\DeclareOption{slovenian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_sl.def}{}{%
    \ClassWarningNoLine{europasscv}{Slovenian definition file 'europasscv_sl.def' not found}}%
  }%
}
\DeclareOption{romanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_ro.def}{}{%
    \ClassWarningNoLine{europasscv}{Romanian definition file 'europasscv_ro.def' not found}}%
  }%
}
\DeclareOption{maltese}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_mt.def}{}{%
    \ClassWarningNoLine{europasscv}{Maltese definition file 'europasscv_mt.def' not found}}%
  }%
}
\DeclareOption{bulgarian}{%
  \AtEndOfPackage{%
      \InputIfFileExists{europasscv_bg.def}{}{%
      \ClassWarningNoLine{europasscv}{Bulgarian definition file 'europasscv_bg.def' not found}}%
  }%
}
\DeclareOption{greek}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_el.def}{}{%
    \ClassWarningNoLine{europasscv}{Greek definition file 'europasscv_el.def' not found}}%
    \ifPDFTeX
      \PackageError{europasscv}{Please run XeLaTeX or LuaLaTeX for greek language support}{}
    \fi
  }%
}
\DeclareOption{galician}{%
  \AtEndOfPackage{%
     \InputIfFileExists{europasscv_gl.def}{}{%
    \ClassWarningNoLine{europasscv}{Galician definition file 'europasscv_gl.def' not found}}%
  }%
}
\DeclareOption{serbian}{%
  \AtEndOfPackage{%
     \InputIfFileExists{europasscv_sr.def}{}{%
    \ClassWarningNoLine{europasscv}{Serbian definition file 'europasscv_sr.def' not found}}%
  }%
}

\DeclareOption{narrow}{
 \def\ecv@narrow{}
}

\newif\if@ecvbigfont\@ecvbigfontfalse
\DeclareOption{bigfont} {
  \@ecvbigfonttrue
}

\def\ecv@textcolor{ecvtextcolor}
\DeclareOption{black} {
  \def\ecv@textcolor{black}
}

\def\ecv@currvitaekey{}
\newcommand{\ecvcurrvitae}{\ifx\@empty\ecv@currvitaekey Curriculum vitae \else \ecv@currvitaekey \fi}
\newcommand{\ecvcoloredtitle}{\selectecvfont \textcolor{ecvhighlightcolor}{\ecvcurrvitae}}

% Europass logo
\newif\if@ecvlogo\@ecvlogotrue
\DeclareOption{nologo}{\@ecvlogofalse}
\DeclareOption{notitle}{\def\ecv@notitle{}}

% Page numbering
\AtEndOfPackage{\RequirePackage{lastpage}}
\def\ecv@totpages{~/~\pageref{LastPage}}
\DeclareOption{nototpages}{
  \def\ecv@totpages{}
}

\newcommand*{\ecvpage}[1]{\def\ecv@page{#1}}
\ecvpage{\ecv@pagekey~\thepage\ecv@totpages}

\newif\if@ecvnodocument\@ecvnodocumentfalse
\DeclareOption{nodocument}{%
  \@ecvnodocumenttrue
}

\newif\if@ecvdebug\@ecvdebugfalse
\DeclareOption{debug}{\@ecvdebugtrue}

% Pass all other options (a4paper, 10pt, draft, openbib, etc...) to article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
} 

\ExecuteOptions{english,hrule} % Default options

\ProcessOptions\relax

\LoadClass{article}
\RequirePackage{iftex}
\ifPDFTeX
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}
\else
  \usepackage{fontspec}
\fi
\RequirePackage{array}
\RequirePackage{fancyhdr} % For page numbering
\RequirePackage{xcolor}
\RequirePackage{url}
\RequirePackage{soul}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{textcomp} % For copyright symbol
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{xparse}
\RequirePackage{substr}
\RequirePackage{keyval}
\if@ecvdebug \RequirePackage{showframe} \fi


\newcommand{\selectecvfont}{\ifPDFTeX\fontfamily{\ecv@font}\selectfont\fi}
\newcommand*{\ecvfont}[1]{\def\ecv@font{#1}}
\ifPDFTeX
  \ecvfont{phv}
\else
  \ifx\@empty\ecv@narrow
    \setmainfont{TeX Gyre Heros Cn}
  \else
    \setmainfont{TeX Gyre Heros}
  \fi
\fi

\def\ecv@lfoot{%
  \footnotesize{\@date}
}

% Right Footnote to be shown on every page
\newcommand\ecvfootnote[1]{\def\ecv@cfoot{#1}}
\ecvfootnote{\textcopyright~\ecv@europeanunionkey, 2002 -- \the\year\ | http://europass.cedefop.europa.eu }


\AtBeginDocument{%
% Ensure that \ecv@leftcolwidth and \ecv@rightcolwidth
% are correctly defined
\ecvLeftColumnWidth{50mm}
\ecvColSep{10pt}

% Set layout
\newlength{\difflength}
\if@ecvnodocument\else
    \newgeometry{body={18.5cm,24cm}, vratio={4:3}}
\fancyfoot{}
\fancyfoot[L]{\begin{minipage}{\ecv@leftcolwidth}
\begin{flushleft}
\footnotesize\textcolor{ecvhighlightcolor}{\selectecvfont\ecv@lfoot}\end{flushleft}
\end{minipage}\hspace*{\ecv@colsep}\footnotesize\textcolor{ecvhighlightcolor}{\selectecvfont\ecv@cfoot}
}

\fancyfoot[R]{\begin{minipage}{\ecv@rightcolwidth}
\begin{flushright}
\footnotesize\textcolor{ecvhighlightcolor}{\selectecvfont\ecv@page}\end{flushright}
\end{minipage}}

\fancypagestyle{ecvfancy}{
\setlength{\headheight}{13.5pt}
% \setlength{\footskip}{8.4pt}
\fancyhead{}
 
\fancyhead[R]{
\raggedleft \selectecvfont \textcolor{ecvhighlightcolor}{\ecv@name}
}

\fancyhead[L]{
  \setlength{\difflength}{\ecv@leftcolwidth}
  \addtolength{\difflength}{-0.6\ecv@logowidth}
  \noindent
  \begin{minipage}{0.5\textwidth}
    \noindent\makebox[\ecv@leftcolwidth][l]{\noindent\raisebox{-6.5pt}[0pt][0pt]{\if@ecvlogo\includegraphics[width=0.6\ecv@logowidth]{europasslogo2013.pdf}\else \hspace{0.6\ecv@logowidth}\fi}\hspace{\difflength}\hspace{\ecv@colsep}{\ifx\@empty\ecv@notitle \empty \else \ecvcoloredtitle \fi}}
  \end{minipage}
  }
}

\fancypagestyle{first}{
\fancyhead[R]{}
\fancyhead[L]{
  \setlength{\difflength}{\ecv@leftcolwidth}
  \addtolength{\difflength}{-\ecv@logowidth}
  \noindent
  \begin{minipage}{0.5\textwidth}
    \noindent\makebox[\ecv@leftcolwidth][l]{\noindent\raisebox{-10.5pt}[0pt][0pt]{\if@ecvlogo\includegraphics[width=\ecv@logowidth]{europasslogo2013.pdf}\else \hspace{\ecv@logowidth}\fi}\hspace{\difflength}\hspace{\ecv@colsep}{\ifx\@empty\ecv@notitle \empty \else \ecvcoloredtitle \fi}}
  \end{minipage}
  }
}

\thispagestyle{first}
\pagestyle{ecvfancy}
\renewcommand{\headrulewidth}{0pt}%
\fi % End \if@ecvnodocument
} % End \AtBeginDocument

\renewcommand{\labelitemi}{\normalfont\bfseries \textendash}
\renewcommand{\labelitemii}{\textbullet}
\renewcommand{\labelitemiii}{\normalfont\bfseries \textendash}
\renewcommand{\labelitemiv}{\textbullet}

\newcommand*{\ecvfirstname}[1]{\def\ecv@firstname{#1}} % Deprecated
\newcommand*{\ecvlastname}[1]{\def\ecv@lastname{#1}} % Deprecated
\newcommand*{\ecvname}[1]{\def\ecv@name{#1}} % Replaces the above
\newcommand*{\ecvfootername}[1]{\def\ecv@footername{#1}}
\newcommand*{\ecvaddress}[1]{\def\ecv@address{#1}}
\newcommand*{\ecvtelephone}[2][]{
  \def\ecv@telephone{#2}
  \ifx&#1&%
    % #1 is empty
  \else
    % #1 is nonempty
    \def\ecv@mobile{#1}
  \fi
}
\newcommand*{\ecvmobile}[1]{\def\ecv@mobile{#1}}
\newcommand*{\ecvworkphone}[1]{\def\ecv@workphone{#1}}
\newcommand*{\ecvfax}[1]{\def\ecv@fax{#1}}
\newcommand*{\ecvemail}[1]{\def\ecv@email{#1}}
\newcommand*{\ecvhomepage}[1]{\def\ecv@homepage{#1}}
\newcommand*{\ecvgithubpage}[1]{\def\ecv@githubpage{#1}}
\newcommand*{\ecvgitlabpage}[1]{\def\ecv@gitlabpage{#1}}
\newcommand*{\ecvlinkedinpage}[1]{\def\ecv@linkedinpage{#1}}

\newif\if@ecvorcidlink\@ecvorcidlinkfalse
\define@key{ecvorcid}{link}[true]{\@ecvorcidlinktrue}
\newif\if@ecvorcidlabel\@ecvorcidlabelfalse
\define@key{ecvorcid}{label}[true]{\@ecvorcidlabeltrue}
\newcommand*{\ecvorcid}[2][]{\setkeys{ecvorcid}{#1}\def\ecv@orcid{#2}}

\def\ecv@im{}
\newif\if@ecvIMalreadyprovided\@ecvIMalreadyprovidedfalse
\newcommand*{\ecvim}[2]{\if@ecvIMalreadyprovided \g@addto@macro\ecv@im{\quad} \fi \g@addto@macro\ecv@im{\ecvhighlight{#1} #2} \@ecvIMalreadyprovidedtrue}
\newif\if@ecvpiextrafields\@ecvpiextrafieldsfalse
\newcommand*{\ecvnationality}[1]{\def\ecv@nationality{#1}\@ecvpiextrafieldstrue}
\newcommand*{\ecvdateofbirth}[1]{\def\ecv@birth{#1}\@ecvpiextrafieldstrue}
\newcommand*{\ecvgender}[1]{\def\ecv@gender{#1}\@ecvpiextrafieldstrue}

% Personal picture
\newif\if@ecvpicture\@ecvpicturefalse
\newif\if@ecvpictureright\@ecvpicturerightfalse
\newif\if@ecvpictureleft\@ecvpictureleftfalse
\NewDocumentCommand{\ecvpictureleft}{O{,} m}{
  \@ecvpicturelefttrue \@ecvpicturetrue
  \def\ecv@pictureleftoptions{#1}
  \def\ecv@pictureleftfile{#2}
}
\NewDocumentCommand{\ecvpictureright}{O{,} m}{
  \@ecvpicturerighttrue \@ecvpicturetrue
  \def\ecv@picturerightoptions{#1}
  \def\ecv@picturerightfile{#2}
}
\newcommand{\ecvpicture}[2][]{\ecvpictureleft[#1]{#2}}

\ecvfirstname{}
\ecvlastname{}
\ecvname{\ecv@lastname\ \ecv@firstname}
\ecvfootername{\ecv@name}
\ecvaddress{}
\ecvtelephone{}
\ecvmobile{}
\ecvworkphone{}
\ecvfax{}
\ecvemail{}
\ecvhomepage{}
\ecvgithubpage{}
\ecvgitlabpage{}
\ecvlinkedinpage{}
\ecvorcid{}
\ecvnationality{}
\ecvdateofbirth{}
\ecvgender{}

% see http://tex.stackexchange.com/a/12811
\def\processlinks#1{%
    \begingroup
    \edef\@tempa{#1\space}%
    \expandafter\endgroup
    \expandafter\readwords\@tempa\relax
}
\def\readwords#1 #2\relax{%
      \convertstring{#1}%  #1 = substr, #2 = rest of string
      \begingroup
      \ifx\relax#2\relax  % is #2 empty?
         \def\next{\endgroup}% your own end-macro if required
      \else
	 \quad
         \def\next{\endgroup\readwords#2\relax}%
      \fi
      \next
}

\newif\if@processlinks@converttoemail
\def\convertstring#1{\if@processlinks@converttoemail \toemail{#1} \else \tourl{#1} \fi}
\newcommand{\tourl}[1]{%
\IfSubStringInString{://}{#1}{\def\temp{#1}}{\def\temp{http://#1}}%
\setul{.5pt}{.4pt}\href{\temp}{\ul{\mbox{#1}}}%
}
\def\toemail#1{\setul{.5pt}{.4pt}\href{mailto:#1}{\ul{\mbox{#1}}}}

\newif\if@ecvpineedspipe\@ecvpineedspipefalse
\newif\if@ecvphoneispresent\@ecvphoneispresentfalse
\newlength{\ecv@pileftcolwidth}
\newlength{\ecv@pirightcolwidth}
\providecommand{\ecvpersonalinfo}[1][0pt]{%
  \ecvitem[#1]{ %  left column
    \ecvsectionstyle{\ecv@infosectionkey}
    \if@ecvpicture
      \if@ecvpictureleft
	\raisebox{-\height}{\expandafter\includegraphics\expandafter[\ecv@pictureleftoptions]{\ecv@pictureleftfile}}
      \fi
    \fi
    }
    { %  right column
    \if@ecvpicture
        \if@ecvpictureright
            \setlength{\ecv@pileftcolwidth}{0.7\ecv@rightcolwidth}
        \else
            \setlength{\ecv@pileftcolwidth}{\ecv@rightcolwidth}
        \fi
    \else
        \setlength{\ecv@pileftcolwidth}{\ecv@rightcolwidth}
    \fi
    \if@ecvpictureright
        \setlength{\ecv@pirightcolwidth}{0.3\ecv@rightcolwidth}
    \else
        \setlength{\ecv@pirightcolwidth}{0pt}
    \fi
    \begin{doublespacing}
    \begin{tabular}[t]{@{}p{\ecv@pileftcolwidth}@{}p{\ecv@pirightcolwidth}@{}}
      \if@ecvdebug\cellcolor{green!25}\fi
      \raggedright
      {\ecvLargenormalstyle{\ecv@name}} \newline
      \ifx\@empty\ecv@address\else
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{address_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@address} \newline
      \fi
      \ifx\@empty\ecv@mobile\else
        \@ecvphoneispresenttrue
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{mobile_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@mobile} \quad
      \fi
	  \ifx\@empty\ecv@telephone\else
        \@ecvphoneispresenttrue
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{telephone_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@telephone} \quad
      \fi
      \ifx\@empty\ecv@workphone\else
        \@ecvphoneispresenttrue
        \ifx\@empty\ecv@mobile\else
            \ifx\@empty\ecv@telephone\else
                \if@ecvpicture
                    \if@ecvpictureright
                        \newline
                    \fi
                \fi
            \fi
        \fi
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{work_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@workphone}
      \fi
      \if@ecvphoneispresent
        \newline
      \fi          
      \ifx\@empty\ecv@fax\else
        \ecv@faxkey \ecv@fax
      \fi
      \ifx\@empty\ecv@email\else
        \@processlinks@converttoemailtrue
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{mail_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \processlinks{\ecv@email}} \newline
        \@processlinks@converttoemailfalse
      \fi
        \ifx\@empty\ecv@homepage\else
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{website_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \processlinks{\ecv@homepage}} \newline
      \fi
	  \ifx\@empty\ecv@githubpage\else
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{github_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \processlinks{\ecv@githubpage}} \newline
	  \fi
	  \ifx\@empty\ecv@gitlabpage\else
	  \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{gitlab_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \processlinks{\ecv@gitlabpage}} \newline
	  \fi
	  \ifx\@empty\ecv@linkedinpage\else
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{linkedin_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \processlinks{\ecv@linkedinpage}} \newline
	  \fi
	  \ifx\@empty\ecv@orcid\else
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{orcid_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont\if@ecvorcidlabel\ecvhighlight{ORCID}~\fi\if@ecvorcidlink\setulcolor{\ecv@textcolor}\setul{.5pt}{.4pt}\href{https://orcid.org/\ecv@orcid}{\ul{\mbox{\ecv@orcid}}}\else\ecv@orcid\fi} \newline
	  \fi
      \ifx\@empty\ecv@im\else
        \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{im_europass_icon.pdf}} \hspace{0.2mm}{\fontseries{m}\selectfont \ecv@im} \newline
      \fi
	\ifx\@empty\ecv@gender\else
	    \fontseries{m}\selectfont \ecvhighlight{\if@ecvpineedspipe ~| \fi \ecv@genderkey} \ecv@gender \@ecvpineedspipetrue
	\fi
	\ifx\@empty\ecv@birth\else
	    \fontseries{m}\selectfont \ecvhighlight{\if@ecvpineedspipe ~| \fi\ecv@birthkey} \ecv@birth \@ecvpineedspipetrue
	\fi
	\if@ecvpictureright
	  \if@ecvpicture
	    \ifx\@empty\ecv@nationality\else
	      \ifx\@empty\ecv@gender\else
		\ifx\@empty\ecv@birth\else
		\linebreak
		\@ecvpineedspipefalse
		\fi
	      \fi
	    \fi
	  \fi
	\fi
	\ifx\@empty\ecv@nationality\else
	    \fontseries{m}\selectfont \ecvhighlight{\if@ecvpineedspipe ~| \fi \ecv@nationalitykey}~\ecv@nationality \@ecvpineedspipetrue
	\fi
      &
      \if@ecvpictureright
	\if@ecvdebug\cellcolor{red!25}\fi
	\Large \vspace{-\baselineskip}
	\raisebox{-\height}{\expandafter\includegraphics\expandafter[\ecv@picturerightoptions]{\ecv@picturerightfile}}
      \fi
    \end{tabular}
    \end{doublespacing}
  }
}

% Spoken language information
\NewDocumentCommand\ecvmothertongue{om}{%
  \@ecvitemcommandfalse
  \ecvupdatecurrentskip{#1}{0pt}
  \ecvblueitem{\ecv@mothertonguekey}{#2}
}

\newlength\ecv@langparwidth
\newlength\ecv@langtablewidth %excluding vertical rules
\newlength\ecv@langouterborderwidth
\newlength\ecv@langinnerborderwidth

\setlength{\ecv@langouterborderwidth}{0.05cm}
\setlength{\ecv@langinnerborderwidth}{0.03cm}


\newif\if@ecvfirstlangrow\@ecvfirstlangrowfalse

\providecommand{\ecvlanguageheader}[1][0pt]{%
  \setlength{\arrayrulewidth}{\ecv@langouterborderwidth}
  \ecvblueitem{\ecv@otherlanguageskey}{
    \renewcommand{\arraystretch}{1.5}
    \setlength{\ecv@langtablewidth}{\ecv@rightcolwidth}
    \addtolength{\ecv@langtablewidth}{-4\arrayrulewidth}
    \arrayrulecolor{ecvtablebordercolor}
    \begin{tabular}[t]{m{\ecv@langcola\ecv@langtablewidth}|m{\ecv@langcolb\ecv@langtablewidth}|m{\ecv@langcolc\ecv@langtablewidth}|m{\ecv@langcold\ecv@langtablewidth}|m{\ecv@langcole\ecv@langtablewidth}}
      \firsthline
      \multicolumn{2}{c|}{\ecvsectionstyle{\ecv@understandkey}} & \multicolumn{2}{c|}{\ecvsectionstyle{\ecv@speakkey}} & \centering \ecvsectionstyle{\ecv@writekey}\tabularnewline
      \hline
      \centering \ecvbluestyle{\ecv@listenkey}& \centering \ecvbluestyle{\ecv@readkey} &\centering \ecvbluestyle{\ecv@interactkey}& \centering
      \ecvbluestyle{\ecv@productkey}&\tabularnewline
      \hline
    \end{tabular}
  }
  \@ecvfirstlangrowtrue
}
  
  
\newcommand*\ecvlangrow[8][-\dp\strutbox]{
  \vspace*{-\dp\strutbox}
  \setlength{\arrayrulewidth}{#8}
  \ecvitem[#1]{\raisebox{\if@ecvfirstlangrow -\arrayrulewidth \else -0.5\arrayrulewidth \fi}{#2}}{
    \setlength{\ecv@langtablewidth}{\ecv@rightcolwidth}
    \addtolength{\ecv@langtablewidth}{-4\arrayrulewidth}
    \arrayrulecolor{ecvtablebordercolor}
    \renewcommand{\arraystretch}{1.5}
    \begin{tabular}[t]{p{\ecv@langcola\ecv@rightcolwidth}p{\ecv@langcolb\ecv@rightcolwidth}p{\ecv@langcolc\ecv@rightcolwidth}p{\ecv@langcold\ecv@rightcolwidth}p{\ecv@langcole\ecv@rightcolwidth}}
      \centering{\raisebox{-\arrayrulewidth}{#3}} &\centering{\raisebox{-\arrayrulewidth}{#4}} &\centering{\raisebox{-\arrayrulewidth}{#5}} &\centering{\raisebox{-\arrayrulewidth}{#6}} &\centering{\raisebox{-\arrayrulewidth}{#7}} \tabularnewline
      \hline
    \end{tabular}
  }
  \@ecvfirstlangrowfalse
}

\newcommand*\ecvlanguagecertificate[1]{
%   \vspace*{-\dp\strutbox}
  \setlength{\arrayrulewidth}{\ecv@langouterborderwidth}
  \ecvitem[-0.7\dp\strutbox]{}{
    \setlength{\ecv@langtablewidth}{\ecv@rightcolwidth}
    \addtolength{\ecv@langtablewidth}{-4\arrayrulewidth}
    \arrayrulecolor{ecvtablebordercolor}
    \renewcommand{\arraystretch}{1.4}
    \begin{tabular}[t]{p{\ecv@rightcolwidth}}
       \centering #1 \cellcolor{ecvhighlightcellcolor}\tabularnewline
      \hline
    \end{tabular}
  }
  \@ecvfirstlangrowfalse
}

\newcommand*\ecvlanguage[7][0pt]{\ecvlangrow[#1]{#2}{#3}{#4}{#5}{#6}{#7}{\ecv@langinnerborderwidth}}
\newcommand*\ecvlastlanguage[7][0pt]{\ecvlangrow[#1]{#2}{#3}{#4}{#5}{#6}{#7}{\ecv@langouterborderwidth}}

\newcommand*{\ecvlanguagefooter}[1][0pt]{
\nopagebreak[4]
\ecvitem[0.5\dp\strutbox]{}{\footnotesize \textcolor{ecvsectioncolor}{\ecv@langshortdesckey}}
\nopagebreak[4]
% \vspace*{-0.5\dp\strutbox}
\ecvitem[-0.5\dp\strutbox]{}{\footnotesize \setulcolor{ecvlanglinkcolor}\setul{.5pt}{.4pt}\href{\ecv@langlinkkey}{\ul{\mbox{\textcolor{ecvlanglinkcolor}{\ecv@langfooterkey}}}}}
\renewcommand{\arraystretch}{0}
}

% commands from the old europecv class
\newcommand*\ecvCEF[2]{}
\newcommand*\ecvAOne{A1}
\newcommand*\ecvATwo{A2}
\newcommand*\ecvBOne{B1}
\newcommand*\ecvBTwo{B2}
\newcommand*\ecvCOne{C1}
\newcommand*\ecvCTwo{C2}


% Digital competences
\def\ecv@dccol{0.2}
\newcommand*\ecvdigitalcompetence[5]{%
	%header
	\setlength{\arrayrulewidth}{\ecv@langouterborderwidth}
	\ecvblueitem{\ecv@digitalcompetenceskey}{
		\renewcommand{\arraystretch}{1.5}
		\setlength{\ecv@langtablewidth}{\ecv@rightcolwidth}
		\addtolength{\ecv@langtablewidth}{-4\arrayrulewidth}
		\arrayrulecolor{ecvtablebordercolor}
		\begin{tabular}[t]{m{\ecv@dcompcola\ecv@langtablewidth}|m{\ecv@dcompcolb\ecv@langtablewidth}|m{\ecv@dcompcolc\ecv@langtablewidth}|m{\ecv@dcompcold\ecv@langtablewidth}|m{\ecv@dcompcole\ecv@langtablewidth}}
			\firsthline
			\multicolumn{5}{c}{\ecvsectionstyle{\ecv@assesskey}} \tabularnewline
			\hline
			\centering \ecvbluestyle{\ecv@informationprocessingkey}& \centering \ecvbluestyle{\ecv@communicationkey} &\centering \ecvbluestyle{\ecv@contentcreationkey}& \centering \ecvbluestyle{\ecv@safetykey}& \centering \ecvbluestyle{\ecv@problensolvingkey} \tabularnewline
			\hline
			\centering{#1} &\centering{#2} &\centering{#3} &\centering{#4} &\centering{#5} \tabularnewline
			\hline
		\end{tabular}
	}
	
	%footer
	\nopagebreak[4]
	\ecvitem[0.5\dp\strutbox]{}{\footnotesize \setulcolor{ecvlanglinkcolor}\setul{.5pt}{.4pt}\href{\ecv@digcomplinkkey}{\ul{\mbox{\textcolor{ecvlanglinkcolor}{\ecv@digcompfooterkey}}}}}
	\renewcommand{\arraystretch}{0}
}

\newcommand*\ecvBasic{\ecv@dcbasickey}
\newcommand*\ecvIndependent{\ecv@dcindepkey}
\newcommand*\ecvProficient{\ecv@dcprofkey}


\def\ecv@kern{\kern0.5pt}
%\def\ecv@kern{}
\newcommand*{\ecvTitleKern}[1]{\def\ecv@kern{\kern#1}}
\newlength\ecv@rulewidth
\newlength\ecv@colsep
\newlength\ecv@leftcolwidth
\newlength\ecv@rightcolwidth
\newlength\ecv@extrarowheight
\newcommand*{\ecvRuleWidth}[1]{\setlength\ecv@rulewidth{#1}}
\newcommand*{\ecvColSep}[1]{\setlength\ecv@colsep{#1}}
\newcommand*{\ecvLeftColumnWidth}[1]{
    \setlength\ecv@leftcolwidth{#1}
    \setlength{\ecv@rightcolwidth}{\textwidth}
    \addtolength{\ecv@rightcolwidth}{-\ecv@leftcolwidth}
    \addtolength{\ecv@rightcolwidth}{-\ecv@colsep}
}
\newcommand*{\ecvExtraRowHeight}[1]{\setlength\ecv@extrarowheight{#1}}
\newcommand*{\ecvNoHorRule}{\def\ecv@hrule{}}
\newcommand*{\ecvWithHorRule}{\def\ecv@hrule{\cline{1-1}}}

% Initialization
\ecvRuleWidth{\arrayrulewidth}
\setlength\ecv@leftcolwidth{50mm} % Default left column width
\ecvExtraRowHeight{0pt}
\ecvWithHorRule

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
                                          
\newenvironment{europasscv}{%
  \ecvLeftColumnWidth{\ecv@leftcolwidth}
  \ecvColSep{\ecv@colsep}
  \renewcommand{\tabcolsep}{0pt}
  \setlength\parindent{0pt}
  \setlength\arrayrulewidth{\ecv@rulewidth}
  \setlength{\arrayrulewidth}{0pt}
  % Language table paragraph width
  \setlength\ecv@langparwidth{.199\ecv@rightcolwidth}
  \addtolength{\ecv@langparwidth}{-2\tabcolsep}
  \addtolength{\ecv@langparwidth}{-2\arrayrulewidth}

 \ifPDFTeX
   \fontfamily{\ecv@font} \ifx\@empty\ecv@narrow \fontseries{mc} \else \fontseries{m} \fi
 \fi
 \if@ecvbigfont\else \fontsize{9}{10.8} \fi \selectfont

\setlength\baselineskip{0pt}
\color{\ecv@textcolor}
}

\newif\if@ecvinsideEcvItemize\@ecvinsideEcvItemizefalse
\newcommand{\newecvitemize}[2]{
  \newenvironment{#1}[1][leftmargin=*, nosep]{
  \par
  \begin{minipage}[t]{\linewidth}
  \if@ecvinsideEcvItemize \vspace*{-0.5\baselineskip} \fi
  \@ecvinsideEcvItemizetrue
    \begin{#2}[##1]
  }{
    \end{#2}
  \end{minipage}%
  \@ecvinsideEcvItemizefalse
  }
}
\newecvitemize{ecvitemize}{itemize}
\newecvitemize{ecvenumerate}{enumerate}

% styles
\newcommand{\ecvsectionstyle}[1]{\textcolor{ecvsectioncolor}{\MakeUppercase{\expandafter{#1}}}}
\newcommand{\ecvbluenormalstyle}[1]{\textcolor{ecvsectioncolor}{#1}}
\newcommand{\ecvtitlestyle}[1]{\large{\ecvbluenormalstyle{#1}}}
\newcommand{\ecvlargenormalstyle}[1]{\large #1}
\newcommand{\ecvLargenormalstyle}[1]{\Large #1}
\newcommand{\ecvhighlight}[1]{\textcolor{ecvhighlightcolor}{#1}}
\newcommand{\ecvbluestyle}[1]{\textcolor{ecvsectioncolor}{#1}}


% sectioning commands
\newcommand{\ecvupdatecurrentskip}[2]{
% #1: value to be tested
% #2: default value
\if@ecvdebug
  \message{^^J##################^^J}
  \message{[europasscv] ecvupdatecurrentskip #1 #2, override \if@ecvoverrideskip true \else false \fi^^J}
\fi

\IfNoValueTF{#1}
  {\if@ecvoverrideskip\else\setlength{\ecv@currentskip}{#2}\fi}
  {\setlength{\ecv@currentskip}{#1}}

\if@ecvdebug
  \message{[europasscv] set \the\ecv@currentskip}
  \message{^^J##################^^J}
\fi
}

\newif\if@ecvoverrideskip\@ecvoverrideskipfalse
\newlength{\ecv@itemskip}
\newlength{\ecv@itemizeskip}
\setlength\ecv@itemskip{2.8pt}

\newlength{\ecv@currentskip}

\newif\if@ecvitemcommand\@ecvitemcommandtrue

\newcommand{\ecv@secondarg}{}
\newcommand{\ecv@thirdarg}{}


\newcolumntype{P}[1]{>{%
  \setlength{\parskip}{\ecv@itemskip}
  \setlength{\baselineskip}{1.5\ht\strutbox}
  }p{#1}
}
\newcolumntype{R}[1]{>{\raggedleft}p{#1}}

\NewDocumentCommand\ecvitem{o+m+m}{%
  \if@ecvdebug
    \renewcommand{\ecv@secondarg}{#2}
    \renewcommand{\ecv@thirdarg}{#3}
    \message{^^J==================^^J}
    \message{[europasscv] typesetting ^^J}
    \message{[europasscv] \meaning\ecv@secondarg^^J}
    \message{[europasscv] \meaning\ecv@thirdarg^^J}
    \message{[europasscv] currentskip = \the\ecv@currentskip^^J}
    \message{[europasscv] leftcolwidth = \the\ecv@leftcolwidth^^J}
    \message{[europasscv] ecv@colsep = \the\ecv@colsep^^J}
    \message{[europasscv] rightcolwidth = \the\ecv@rightcolwidth^^J}
    \message{[europasscv] textwidth = \the\textwidth^^J}
  \fi

  \if@ecvitemcommand
    \ecvupdatecurrentskip{#1}{\ecv@itemskip}
  \fi

  \vspace{\ecv@currentskip}

  \setlength\ecv@itemizeskip{-\ht\strutbox}\addtolength{\ecv@itemizeskip}{-2\dp\strutbox}

  \begin{tabular}{@{}R{\ecv@leftcolwidth}@{\hspace{\ecv@colsep}}P{\ecv@rightcolwidth}@{}}
  \if@ecvdebug\cellcolor{yellow!25}\fi #2 & \if@ecvdebug\cellcolor{blue!25}\fi #3
  \end{tabular}
  \par
  \@ecvoverrideskipfalse
  \@ecvitemcommandtrue
} 

\newlength{\ecv@sectionrulelength}

\NewDocumentCommand\ecvsection{o+m}{%
  \@ecvitemcommandfalse
  \ecvupdatecurrentskip{#1}{\bigskipamount}
  \setlength{\ecv@sectionrulelength}{\ecv@rightcolwidth}
  \addtolength{\ecv@sectionrulelength}{-7pt}
  \ecvitem{\ecvsectionstyle{#2}}
          {\textcolor{ecvrulecolor}{\noindent\rule{\ecv@sectionrulelength}{1pt}\rule{7pt}{8pt}}}
  \nopagebreak
  \@ecvoverrideskiptrue
  \setlength{\ecv@currentskip}{\medskipamount}
}

\NewDocumentCommand\ecvtitle{o+m+m}{%
  \@ecvitemcommandfalse
  \ecvupdatecurrentskip{#1}{1.3\bigskipamount}
  \ecvitem{\small \ecvbluenormalstyle{#2}}{\ecvtitlestyle{#3}}
}

\NewDocumentCommand\ecvtitlelevel{o+m+m+m}{
  \@ecvitemcommandfalse
  \ecvupdatecurrentskip{#1}{1.3\bigskipamount}
    \ecvtitle{#2}{
        #3 \if@ecvdebug\cellcolor{green!25}\fi \hfill \ecvhighlight{\small #4}
        \nolinebreak[4]
    }
}

\NewDocumentCommand\ecvblueitem{o+m+m}{
  \@ecvitemcommandfalse
  \ecvupdatecurrentskip{#1}{1.3\bigskipamount}
  \ecvitem{\textcolor{ecvsectioncolor}{#2}}{#3}
}

\NewDocumentCommand\ecvbigitem{o+m+m}{%
  \@ecvitemcommandfalse
  \ecvupdatecurrentskip{#1}{0.8\bigskipamount}
  \ecvitem{\ecvsectionstyle{#2}}{\ecvlargenormalstyle{#3}}
  \@ecvoverrideskiptrue
  \setlength{\ecv@currentskip}{0.8\bigskipamount}
}

\newcommand{\ecvhighlightcell}[1]{\vspace{-4\dp\strutbox}\hspace{0.2cm}\parbox{0.95\ecv@rightcolwidth}{\vspace*{0.3cm} #1\vspace{0.1cm}} \cellcolor{ecvhighlightcellcolor}}

\ecvRuleWidth{0pt}

% colors
\definecolor{ecvrulecolor}{HTML}{398dc9}
\definecolor{ecvsectioncolor}{HTML}{0e4194}
\definecolor{ecvhighlightcolor}{HTML}{1593cb}
\definecolor{ecvtablebordercolor}{HTML}{c6c6c6}
\definecolor{ecvhighlightcellcolor}{HTML}{ebebeb}
\definecolor{ecvlanglinkcolor}{HTML}{000080}
\definecolor{ecvtextcolor}{HTML}{3e3a38}
