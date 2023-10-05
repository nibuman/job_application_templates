%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------

\ProvidesClass{resume_config}[2023 v1.0 resume_config]
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------

\LoadClass[12pt]{article} % adjust font size here

%-------------------------------------------------------------------------------
%                Packages
%-------------------------------------------------------------------------------

\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{color}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
\RequirePackage{fontawesome5}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{etoolbox,refcount}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{lipsum}
\RequirePackage{xparse}
\RequirePackage{relsize}

\usepackage{graphicx}

\setmainfont{TeX Gyre Heros} % adjust font style here
% Additional fonts can be found at the following URL: https://www.draketo.de/anderes/latex-fonts.html#org9f59ea3

%-------------------------------------------------------------------------------
%                Formatting
%-------------------------------------------------------------------------------

\setlength{\tabcolsep}{0in}

\pagenumbering{gobble}
\pagestyle{empty}

\raggedbottom
\raggedright

\geometry{
    paper=a4paper, % Paper size, change to letterpaper for US letter size
    top=0.5in, % Top margin
    bottom=0.5in, % Bottom margin
    left=0.5in, % Left margin
    right=0.5in, % Right margin
    headheight=0.75cm, % Header height
    footskip=1cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm % Space from the top margin to the baseline of the header
% showframe, % Uncomment to show how the type block is set on the page
}

% section title format
\titleformat{\section}%
    {\vspace{-4pt}\scshape\raggedright\large\bfseries}% format
    {}% label
    {0em}% space between label and title
    {}% before code
    [\color{black}\titlerule\vspace{-5pt}]% after code

%-------------------------------------------------------------------------------
%                Custom Commands
%-------------------------------------------------------------------------------

\newcommand*{\CustomBullet}{%
    \hspace{0.1em}%
    \raisebox{-0.1em}{\scalebox{1.5}{$\cdot$}}%
    \hspace{0.5em}%
}

\NewDocumentCommand{\Header}{m m m m m}{
    \fancyhf{}
    \begin{center}
        {\Huge\textbf{\textsc{\textcolor{NavyBlue}{#1}}}}\\[4pt]
        \textcolor{black}{
            #2  \\
            #3 \CustomBullet \href{mailto:#4}{#4} \CustomBullet \href{https://#5}{#5} 
        }\\[3pt]
    \end{center}
    \vspace{-15pt}
}

\NewDocumentCommand{\Career}{m m m o o o}{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & #2 \CustomBullet #3 \\
    \end{tabular*}
    \IfValueT{#4}{
        \textit{#4} \\
        \vspace{5pt}
    }
    \IfValueT{#5}{
        Key Responsibilities:
        \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1em]
            #5 \\        
        \end{itemize}
        \vspace{5pt}
    }    
    \IfValueT{#6}{
        Specific Achievements:
        \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1em]
            #6
        \end{itemize}
        \vspace{5pt}
    }
    \vspace{5pt}    
}

\newcommand{\EducationTraining}[3]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#3} \\
        #2\\
    \end{tabular*}
}

\newcommand{\Affiliation}[2]{
    \noindent
    \textbf{#1} \hfill \textit{#2}\\
}

\newcommand{\SkillItem}[2]{\item \textbf{#1}{#2}}

\newcommand{\SkillList}[1]{
    \begin{itemize}[label={}, itemsep=-0.2em, leftmargin=0em]
                #1
        \end{itemize}
}