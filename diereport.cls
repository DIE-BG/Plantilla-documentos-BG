\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diereport}%[2017/03/22 Plantilla para documentos de presentación DIE BANGUAT]

% Carga la clase 'article' con las opciones especificadas
\LoadClass[letterpaper, 11pt, twoside]{article}

% Configuración de idioma y codificación de archivos
% Se asume que la codificación siempre será en UTF-8 y para documentos en castellano
% \RequirePackage[spanish, es-tabla]{babel}
\RequirePackage[english]{babel}

% Configuración de punto en los decimales
% \spanishdecimal{.}
\RequirePackage[utf8]{inputenc}

% Requerido para el paquete Babel
\RequirePackage{csquotes}

% Para referencias con nombre, no es necesario si se utiliza hyperref
%\RequirePackage{nameref}

% Captions
\RequirePackage[]{caption}
\captionsetup{labelsep=period, labelfont=bf, textfont=it}
\captionsetup[table]{belowskip=0pt, aboveskip=0pt}
\captionsetup[figure]{belowskip=0pt, aboveskip=0pt}
\captionsetup[algorithm]{labelsep=period, belowskip=0pt, aboveskip=0pt}

% Para las tablas
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{colortbl}
\RequirePackage{longtable}
\RequirePackage{tabu}
\extrarowsep=0.5mm
\RequirePackage[table]{xcolor}

% Configuración de página
\RequirePackage{geometry}
\geometry{
	letterpaper,
	left=25mm,
	top=25mm,
}

% Para imágenes
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{tikz}

% Para poder introducir comentarios
\RequirePackage{comment}

% Para incluir párrafos de muestra
\RequirePackage{lipsum}

% Enlaces a url's y archivos
\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	allcolors=black,
	% linkcolor=black,
	% filecolor=magenta,      
	% urlcolor=blue,
	% hyperfootnotes=false,
	pdftitle={Economic Research Department - Bank of Guatemala}
}
\RequirePackage{url}

% Multiple footnotes
% \RequirePackage[multiple]{footmisc}
% \renewcommand{\multfootsep}{,}

% Configuración de párrafos
% Definición del tamaño de letra
\renewcommand{\normalsize}{\fontsize{12pt}{14.5pt}\selectfont}
% Interlineado (1.3 para 1.5, 1.6 para doble)
\linespread{1.3}
% Indentación de párrafo
\setlength{\parindent}{1cm}
% Espacio después de parráfos.
\setlength{\parskip}{1em}


% Formato de los títulos
\RequirePackage{titlesec}
%\titlespacing\section{0pt}{0pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing{\section}{0pt}{0\parskip}{0\parskip}
\titlespacing{\subsection}{0pt}{0\parskip}{0\parskip}

% -------------------------------------------
%	BIBLIOGRAFÍA
% -------------------------------------------

% Configuración de bibliografía
\RequirePackage[
	backend=biber,
	style=authoryear,
	sorting=nyt, 
	maxnames=2, 
	minnames=1,
	maxbibnames=99]{biblatex}
% maxnames y minnames configuran el número de autores para las citas en texto
% maxbibnames=99 muestra todos los autores en la lista de referencias

% Agregar la coma y espacio en las citas con paréntesis (Autor, año)
\renewcommand*{\nameyeardelim}{\addcomma\space}
% Configuración de "et al." cuando son más autores
\DefineBibliographyStrings{spanish}{andothers={et al.}}

% -------------------------------------------
%	MATEMÁTICA
% -------------------------------------------

% Configuración para las definiciones matemáticas
\RequirePackage{amsthm}
\newtheorem{definition}{Definition}
\theoremstyle{definition}

% Para estilo de letra blackboard 
\RequirePackage{amssymb}

% Alineación de las ecuaciones
\RequirePackage{amsmath}

% Cómo mostrar las ecuaciones en el texto
% \renewcommand{\theequation}{(\arabic{equation})}

% -------------------------------------------
%	ALGORITMOS
% -------------------------------------------
\RequirePackage{algorithm}
% Opción noend para quitar el 'end' de los bloques
% \RequirePackage[noend]{algpseudocode}
\RequirePackage{algpseudocode}
% Traducción para los algoritmos
% \floatname{algorithm}{Algoritmo}
% \renewcommand{\listalgorithmname}{Lista de algoritmos}

% English commands
\renewcommand{\algorithmicrequire}{\textbf{Required:}}

% Descomentar estos comandos para utilizar el paquete de algoritmos en español
% \renewcommand{\algorithmicrequire}{\textbf{Entrada:}}
% \renewcommand{\algorithmicensure}{\textbf{Asegurar:}}
% \renewcommand{\algorithmicprocedure}{\textbf{procedimiento}}
% \renewcommand{\algorithmicfunction}{\textbf{función}}
% \renewcommand{\algorithmicend}{\textbf{fin}}
% \renewcommand{\algorithmicif}{\textbf{si}}
% \renewcommand{\algorithmicthen}{\textbf{entonces}}
% \renewcommand{\algorithmicelse}{\textbf{si no}}

% \renewcommand{\algorithmicfor}{\textbf{para}}
% \renewcommand{\algorithmicforall}{\textbf{para todo}}
% \renewcommand{\algorithmicdo}{\textbf{hacer}}
% \renewcommand{\algorithmicwhile}{\textbf{mientras}}
% \renewcommand{\algorithmicloop}{\textbf{repetir}}
% \renewcommand{\algorithmicrepeat}{\textbf{repetir}}
% \renewcommand{\algorithmicuntil}{\textbf{hasta que}}
% \renewcommand{\algorithmicreturn}{\textbf{devolver}} 

% -------------------------------------------
%	LISTINGS
% -------------------------------------------

% % Title redefinition for captions
% \renewcommand\lstlistingname{\textbf{Código}}
% \renewcommand\lstlistlistingname{Códigos}

% % For MATLAB code, uncomment the following lines
% \RequirePackage{listings}
% \RequirePackage{color}
% % Configure MATLAB listing code style
% \input{code/matlab_style.tex}
% % Configurar el listing para el documento actual
% \lstset{
% 	style = custom_matlab 
% 	frame = lines
% }


% % For Julia code, uncomment the following lines
\RequirePackage{listings}
\RequirePackage{jlcode}
% % Configure Julia listing code style
\input{code/julia_style.tex}

% -------------------------------------------
%	Redefinición de la carátula para el documento
% -------------------------------------------

% Formato de la carátula
% \renewcommand{\maketitle}{
% 	\thispagestyle{empty}
% 	\begin{center}
% 		\vspace*{1cm}
% 		\textbf{{\LARGE \@title \\}}
% 		\vspace*{1cm}
% 		{\large \@author \par}
% 		\vspace*{1cm}
% 		%\vfill
% 		{\large Departamento de Investigaciones Económicas \\ Banco de Guatemala\footnote{El contenido de este trabajo de investigación es responsabilidad exclusiva de sus autores y no necesariamente representa la postura institucional del Banco de Guatemala.} \par}
% 		\vfill
% 		\includegraphics[width=0.2\textwidth]{banguat.png} \\
% 		\vfill
% 		{\large \@date}
% 	\end{center}
% 	\clearpage
% }
