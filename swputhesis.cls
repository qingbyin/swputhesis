%%
%% This is file `swputhesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% swputhesis.dtx  (with options: `cls')
%%
%% This is a generated file.
%%
%% Copyright (C) 2019-2021 by Qing Yin <qingbyin@gmail.com>
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%%
\NeedsTeXFormat{LaTeX2e}[2018/04/01]
\ProvidesClass{swputhesis}
[2021/09/01 1.0.0 SWPU Thesis Template]
\RequirePackage{ifxetex}
\ifxetex\else
\ClassError{swputhesis}{XeLaTeX is required to compile the document}{}
\fi
\hyphenation{Swpu-Thesis}
\def\swputhesis{\textsc{SwpuThesis}}

\LoadClass[zihao=-4,UTF8,openany,fontset=none,scheme=chinese]{ctexbook}
\PassOptionsToPackage{no-math}{fontspec}
\RequirePackage{newtxmath} % 用于单独设置公式使用Times New Roman字体
\RequirePackage{xeCJKfntef} % 用于实现汉字下划线和盒子内两段对齐
\RequirePackage{fancyhdr} % 用于设置页眉页脚
\RequirePackage{geometry} % 用于设置页面大小、边距
\RequirePackage{pifont} % 实现脚注编号使用漂亮的带圈数字符号
\RequirePackage[perpage]{footmisc} % 实现让脚注每页清零编号
\RequirePackage{graphicx} % 插图导入支持
\RequirePackage{color}
\RequirePackage{caption} % 设置图表标题格式
\RequirePackage{booktabs} % 设置三线表
\RequirePackage{tocloft} % 设置目录格式
\RequirePackage{enumitem} % 设置列表格式
\RequirePackage{etoolbox} % dev tool
\RequirePackage[style=gb7714-2015]{biblatex} % 参考文献工具（使用国标）
\def\swpu@def@prm#1#2{%
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname swpu@#1\endcsname{##1}%
  }%
  \csname #1\endcsname{#2}%
}
\swpu@def@prm{cauthor}{中文名}
\swpu@def@prm{eauthor}{English Name}
\swpu@def@prm{cmajor}{学科专业中文名}
\swpu@def@prm{emajor}{major}
\swpu@def@prm{research}{研究方向}
\swpu@def@prm{id}{学号}
\swpu@def@prm{ctitle}{}
\swpu@def@prm{etitle}{}
\swpu@def@prm{csupervisor}{}
\swpu@def@prm{esupervisor}{}
\swpu@def@prm{cdate}{}
\swpu@def@prm{edate}{}
\swpu@def@prm{clc}{}
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}
\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}
\setCJKfamilyfont{song}{Noto Serif CJK SC}
\setCJKfamilyfont{hei}{Noto Sans CJK SC}
\linespread{1.25}
\selectfont
\newcommand{\swpu@linegap}{6bp}
\geometry{
    paper      = a4paper,
    margin     = 2.5cm,
    headheight = 0.55cm,
    headsep    = 0.45cm,
    footskip   = 0.75cm
}
\fancypagestyle{plain}{%
\fancyhf{}
\cfoot{\zihao{-5}\selectfont\thepage}
\renewcommand{\headrulewidth}{0bp}
}
\fancypagestyle{headings}{%
\fancyhf{}
\fancyhead[CO]{\zihao{5}\CJKfamily{song}\selectfont 西南石油大学博士研究生学位论文}
\fancyhead[CE]{\zihao{5}\CJKfamily{song}\selectfont \swpu@ctitle}
\renewcommand{\headrulewidth}{1.5bp}
\cfoot{\zihao{-5}\selectfont\thepage}
}
\renewcommand{\frontmatter}{%
    \clearpage
    \@mainmatterfalse
    \pagenumbering{Roman}
    \pagestyle{plain}
}
\renewcommand{\mainmatter}{%
    \clearpage
    \@mainmattertrue
    \pagenumbering{arabic}
    \pagestyle{headings}
}
\ctexset{chapter/pagestyle=headings}
\newcommand{\swpu@zhcoverformat}[3]{%
\parbox[#1][#2][c]{3.71cm}%
{\zihao{-3}\sffamily\selectfont
\makebox[3.2cm][s]{#3 ：}}
}
\newcommand{\swpu@zhinfoformat}[3]{%
    \parbox[#1][#2][c]{12cm}{%
        \zihao{4}\ziju{0.3}\sffamily%
        \linespread{1.7}\selectfont
    \CJKunderline[thickness=1bp, format=\color[rgb]{0,0.424,0.647}, textformat=\color[rgb]{0,0.424,0.647}]{#3 \hfill}}%
}
\newcommand{\swpu@makezhtitle}{%
{\zihao{5}\sffamily\bfseries\selectfont
$\vcenter{\hbox{\includegraphics[height=1.94cm]{swpu_logo.jpg}}}$%
\hspace{0.68cm}%
图书分类号：\swpu@clc\hfill%
学校代码：10615
\vspace{2.2cm}\par}
\includegraphics[height=1.22cm]{swpu.jpg}
\vspace{0.83cm}\par
\includegraphics[height=1.83cm]{doctor_thesis_logo.jpg}
\vspace{2cm}\par
\swpu@zhcoverformat{t}{2cm}{论文题目}%
\swpu@zhinfoformat{t}{2cm}{\swpu@ctitle}

\swpu@zhcoverformat{b}{1cm}{学科专业}%
\swpu@zhinfoformat{b}{1cm}{\swpu@cmajor}

\swpu@zhcoverformat{b}{1cm}{研究方向}%
\swpu@zhinfoformat{b}{1cm}{\swpu@research}

\swpu@zhcoverformat{b}{1cm}{研究生姓名}%
\swpu@zhinfoformat{b}{1cm}{\swpu@cauthor}

\swpu@zhcoverformat{b}{1cm}{学号}%
\swpu@zhinfoformat{b}{1cm}{\addfontfeatures{LetterSpace=12}\swpu@id}

\swpu@zhcoverformat{b}{1cm}{导师姓名}%
\swpu@zhinfoformat{b}{1cm}{\swpu@csupervisor}

\vspace{3.7cm}\par
{\zihao{-3}\ziju{0.3}\sffamily\selectfont
论文完成时间：\swpu@cdate}
}
\newcommand{\swpu@makeentitle}{%
{\quad}\vspace{2cm}\par
{\zihao{1}\selectfont
Southwest Petroleum University\par
Doctoral Dissertation\par}
\vspace{5.2cm}\par
{\zihao{2}\selectfont
\swpu@etitle}
\vspace{5.2cm}\par
{\zihao{-3}\selectfont
\begin{tabular}{l}
Candidate: \swpu@eauthor\par  \\
Speciality: \swpu@emajor\par  \\
Supervisor: \swpu@esupervisor\par
\end{tabular}

\vspace{2cm}\par
\swpu@edate
}%
}
\newcommand{\swpu@makecopyright}{%
\quad\par
\quad\par
\begin{center}
\sffamily\selectfont
西南石油大学研究生学位论文知识产权声明书及 \par 学位论文版权使用授权书
\end{center}
\hspace{2\ccwd}本人完全了解学校有关保护知识产权的规定，
即：研究生在校攻读学位期间论文工作的知识产权单位属于西南石油大学。
学校有权保留并向国家有关部门或机构送交论文的复印件和电子版。
本人允许论文被查阅和借阅。学校可以将本学位论文的全部或部分内容编入有关数据库进行检索，
可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。
同时，本人保证，毕业后结合学位论文研究课题再撰写的文章一律注明作者单位为西南石油大学。\par
本学位论文属于\par
1、保密（\hspace{2\ccwd}），在\hspace{2\ccwd}年解密后适用本授权书。\par
2、不保密（ \hspace{2\ccwd}）\par
(请在以上相应括号内打 `` √ ''）\par
\quad\par
\hspace{7.5\ccwd}学位论文作者签名：\underline{\hspace{6\ccwd}}%
指导教师签名：\underline{\hspace{6\ccwd}}\par
\hspace{11.5\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日%
\hspace{6\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日\par
\quad\par
\quad\par
\quad\par
\begin{center}
\sffamily\selectfont
西南石油大学研究生学位论文独创性声明\par
\end{center}
\hspace{2\ccwd}本人声明：所呈交的研究生学位论文是本人在导师指导下进行的研究工作及取得的研究成果。
据我所知，除了文中特别加以标注和致谢的地方外，本论文不包含其他人已经发表或撰写过的研究成果，
也不包含其他人为获得西南石油大学或其它教育机构的学位或证书而使用过的材料。
与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。\par
\quad\par
\quad\par
\hspace{14\ccwd}学位论文作者签名：\par
\hspace{17\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日
}
\def\makecover{%
\pagestyle{empty}
\begin{titlepage}
\centering
\swpu@makezhtitle
\clearpage
\swpu@makeentitle
\end{titlepage}
\swpu@makecopyright
}
\swpu@def@prm{ckeywords}{}
\swpu@def@prm{ekeywords}{}
\newenvironment{cabstract}{\chapter{摘\hspace{\ccwd}要}}{%
\thispagestyle{plain}

\quad\par
\noindent\textsf{关键词：} \swpu@ckeywords
}
\newenvironment{eabstract}{\chapter{Abstract}}{%
\thispagestyle{plain}

\quad\par
\noindent \textbf{Key words：} \swpu@ekeywords

\clearpage
}
\setcounter{tocdepth}{2}
\renewcommand{\cftdot}{…}
\renewcommand{\cftdotsep}{0}
\renewcommand{\contentsname}{目\hspace{\ccwd}录}
\renewcommand{\cfttoctitlefont}{\hfill\zihao{-2}\sffamily}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftbeforetoctitleskip}{24 bp}
\renewcommand{\cftaftertoctitleskip}{18 bp}
\renewcommand{\cftchapfont}{\zihao{-4}\sffamily}
\renewcommand{\cftbeforechapskip}{0bp}
\renewcommand{\cftsecfont}{\zihao{-4}}
\renewcommand{\cftbeforesecskip}{0bp}
\renewcommand{\cftsubsecfont}{\zihao{-4}}
\renewcommand{\cftbeforesubsecskip}{0bp}
\setcounter{secnumdepth}{2}
\ctexset{
chapter = {
format = \zihao{-2}\sffamily\centering,
nameformat = {},
numberformat = {},
titleformat = {},
aftername = \hspace{\ccwd},
name = {第,章},
beforeskip = 24 bp,
afterskip = 18 bp,
fixskip = true,
afterindent = true
}
}
\ctexset{
section = {
format = \zihao{-3}\sffamily\raggedright,
aftername = \hspace{\ccwd},
beforeskip = 24 bp,
afterskip = \swpu@linegap,
fixskip = false,
afterindent = true
}
}
\ctexset{
subsection = {
format = \zihao{4}\sffamily\raggedright,
aftername = \hspace{\ccwd},
beforeskip =12 bp,
afterskip = \swpu@linegap,
fixskip = false,
afterindent = true
}
}

\ctexset{
subsubsection = {
format = \zihao{-4}\sffamily\raggedright,
aftername = \hspace{\ccwd},
beforeskip = \swpu@linegap,
afterskip = \swpu@linegap,
fixskip = true,
afterindent = true
}
}

\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true
}
\raggedbottom
\setlength{\parskip}{\z@}
\renewcommand{\thefootnote}{\ding{\numexpr171+\value{footnote}}}
\DeclareCaptionLabelSeparator{zhspace}{\hspace{\ccwd}}
\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand*{\thetable}{\thechapter-\arabic{table}}
\captionsetup{
format = hang,
font = small,
labelsep = zhspace,
skip = \swpu@linegap
}
% 设置表格内字体为5号
\patchcmd\@floatboxreset{\normalsize}{\small}{}{Failed to set float font}
\setlength{\intextsep}{\swpu@linegap}
\setlength{\textfloatsep}{\swpu@linegap}
\setlength{\floatsep}{\swpu@linegap}
\renewcommand*{\theequation}{\thechapter-\arabic{equation}}
\AtBeginDocument{%
  \abovedisplayskip = 12bp \@plus 3bp \@minus 7bp
\belowdisplayskip = \abovedisplayskip
\abovedisplayshortskip = 0 bp \@plus 3bp
\belowdisplayshortskip = 6.5bp \@plus 3.5bp \@minus 3bp
}
\setlist{wide,noitemsep,nosep}
\setlist[enumerate]{label=(\arabic*)}
\newcommand\swpu@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\swpu@atendpackage{hyperref}{
  \hypersetup{
    bookmarksopen      = true,
    bookmarksnumbered  = true,
    bookmarksopenlevel = 1,
    linktoc            = all,
  }
\hypersetup{
colorlinks = true,
allcolors  = black
}
\AtBeginDocument{
\hypersetup{
pdftitle = \swpu@ctitle,
pdfauthor = \swpu@cauthor
}
}
}
\swpu@atendpackage{cleveref}{
\crefformat{equation}{公式(#2#1#3)}
\crefrangeformat{equation}{公式(#3#1#4) 至 (#5#2#6)}
\crefmultiformat{equation}{公式(#2#1#3)}{和(#2#1#3)}{，(#2#1#3)}{和(#2#1#3)}
\crefformat{figure}{图~#2#1#3}
\crefrangeformat{figure}{图~#3#1#4 至 #5#2#6}
\crefmultiformat{figure}{图~#2#1#3}{ 和~#2#1#3}{，#2#1#3}{ 和~#2#1#3}
\crefformat{table}{表~#2#1#3}
\crefrangeformat{table}{表~#3#1#4 至 #5#2#6}
\crefmultiformat{table}{表~#2#1#3}{ 和~#2#1#3}{，#2#1#3}{ 和~#2#1#3}
}
\endinput
%%
%% End of file `swputhesis.cls'.
