\LoadClass[11pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2020/09/09 SAM custom CV class]

% Page setup
\RequirePackage[left=.5in, right=.5in, top=1in, bottom=1in,   % margins
                headsep=.5in, headheight=0.5in]{geometry}     % header size
\setlength{\parskip}{6pt}

% Header / footer
\RequirePackage{fancyhdr}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
% \fancyhead[L]{\scshape Curriculum Vitae}
\fancyfoot[C]{\thepage}
\pagestyle{fancy}

% Colors
\RequirePackage{xcolor}
% \definecolor{theme}{cmyk}{1, .34, .0, .02}          % blue
\definecolor{theme}{RGB}{15, 46, 90}                % BYU blue
% \definecolor{theme}{RGB}{35, 87, 178}               % royal blue
% \definecolor{theme}{RGB}{0, 169, 183}               % Oden blue
% \definecolor{theme}{cmyk}{0, .65, 1, .09}           % burnt orange
% \definecolor{theme}{cmyk}{.7, 0, 1, .09}            % green
% \definecolor{theme}{RGB}{51, 63, 72}                % gray

% Citation listings.
\RequirePackage{bibentry}
% \makeatletter\let\saved@bibitem\@bibitem\makeatother
% \RequirePackage[colorlinks=true,urlcolor=burnt_orange]{hyperref}
% \makeatletter\let\@bibitem\saved@bibitem\makeatother
% CONFLICT with bibentry and hyperref, so no hyperlinks.

% Title
\newcommand{\name}[1]{%
    \centerline{\Huge\scshape{#1}}%
    \fancyhead[C]{\scshape #1}\thispagestyle{empty}%
    \nobibliography{references}\bibliographystyle{apalike}%
}
% Contact Info
\newcommand{\ssep}{\hspace{.125in}$\sim$\ \hspace{.125in}}
\newcommand{\contact}[3]{\vspace{6pt}\centerline{\makebox[0pt][c]{%
                         \url{#1} \ssep \url{#2} \ssep \url{#3}}}}

% Section headers
\RequirePackage{titlesec}
\titleformat{\section}{     % custom \section headers
  \Large                        % text size
  \color{theme}                 % text color
  \scshape                      % small capitals
  \raggedright                  % left aligned
  \rmfamily}                    % serif font
  {}{0em}                       % no prefix ("Section")
  {}                            % no code before the heading
[\titlerule]                    % horizontal line after the heading

\titleformat{\subsection}{  % custom \subsection headers
  % \large                        % text size
  \color{theme}                 % text color
  % \scshape                      % small capitals
  \bfseries                     % bold text
  \raggedright                  % left aligned
  \rmfamily}                    % serif font
  {}{0em}                       % no prefix ("Section")
  % {\underline}                  % underline heading
  {}                            % no code before the heading
[]                              % no horizontal line after the heading

% Entries
\RequirePackage{tabto}
\RequirePackage{url}

\newcommand{\education}[3]{%
    \par\noindent\textbf{#1} \tabto{.5in}\hangindent=.5in #2\\#3}

\newcommand{\experience}[4]{%
    \par\noindent\textbf{#1} \tabto{1in}\hangindent=1in #2, \textit{#3}}% \\  #4}
\newcommand{\award}[3]{%
    \par\noindent\textbf{#1} \tabto{1in}\hangindent=1in #2, \textit{#3}}

\newcommand{\software}[2]{#1\\\url{#2}}

% Running publications list.
\newcounter{publicationCounter}
\newenvironment{publications}%
    {\begin{enumerate}\setcounter{enumi}{\value{publicationCounter}}}%
    {\setcounter{publicationCounter}{\value{enumi}}\end{enumerate}%
    \vspace{-.325in}}
