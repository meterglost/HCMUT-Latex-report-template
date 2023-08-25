\NeedsTeXFormat{LaTeX2e}

\usepackage{iftex}
\RequireXeTeX

\ProvidesClass{HCMUT-Report-Template}[2023/08/25-v1.0.0] % {Year}/{Month}/{Day}-v{Major}.{Minor}.{Patch}

\usepackage{xifthen}

% \newboolean{customoption}
% \setboolean{customoption}{false}
% \DeclareOption{customoption}{\setboolean{customoption}{true}}

\DeclareKeys{
    title.store = \pdftitle,
    author.store = \pdfauthor,
    subject.store = \pdfsubject,
    passwd.store = \pdfpasswd,
    print.store = \print,
}
\SetKeys{
    title = ,
    author = ,
    subject = ,
}

\ProcessOptions
\ProcessKeyOptions

\LoadClass[a4paper]{article}

\usepackage{silence}
\WarningFilter{bxcalcize}{Functionality}

\RequirePackage{settings/_init}
\RequirePackage{settings/_page}
\RequirePackage{settings/_text}
\RequirePackage{settings/_cite}
\RequirePackage{settings/_code}
\RequirePackage{settings/_math}
\RequirePackage{settings/_color}
\RequirePackage{settings/_image}
\RequirePackage{settings/_array}
\RequirePackage{settings/_final}
