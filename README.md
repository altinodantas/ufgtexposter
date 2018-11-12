![UFGTexPoster logo](https://raw.githubusercontent.com/altinodantas/ufgtexposter/master/images/ufgtexposter.png)

## What is it?
A Latex template to help student, professors and/or researchers from Universidade Federal de Goiás (UFG) 
preparing their works in posters with the format 120x80cm. The template provides different options to change its visual 
aspect as well as shows examples on exposing images, tables and bibliograpy references just by using common LaTex resources.

## How to use
After downloading or cloning this repository, you must edit the file **poster.tex** to properly provide the content of the poster. 
Firstly, take a look at "Configs" area in the begin of such a **.tex** and modify its parties whether is needed. 
Except for more deeper changes, it is expected to be enough editing the follow sections: 
  
  #### Appearance settings
  ```tex
  % Choose one color to the sections' title { ufglhblue | ufgdkblue | dkblue | black | gold }
  \setsectioncolor{gold} 

  % Define width of the rule or hide it by setting 0pt or commenting the follow command 
  \setcolumnseprule{2pt}

  % Inform the paths to the logo files or leave empty one or both parameters. 
  % There are three options [ T | M | B ] to positioning them. 
  \setlogos[T]{images/ufg-logo}{images/department-logo}

  % Choose one of the three backgrounds { 1 | 2 | 3 } 
  \setbackground{1}

  % Resize the title to keep it in two lines 
  \settitlesize{64pt}{68pt}
  ```
  #### General data
  ```tex
  \title{\uppercase{DeepText: usando semântica de contexto para\\ 
                    auto-completar palavras e gerar texto automaticamente}} 
  \author{Altino Dantas, Anderson Soares e Celso G. Camilo-Junior} 
  \department{Instituto de Informática - INF}
  \email{ \text{altinoneto@inf.ufg.br, anderson@inf.ufg.br, celso@inf.ufg.br} }
  \class{Projeto Ciência no Parque}
  \posteryear{2018}
  \copyrightholder{Intelligence for Software Research Group - i4Soft}
  ```
After **compiling** the project considering above configuration, the top of the poster will be likely the figure below.  
  
  ![Template example](https://raw.githubusercontent.com/altinodantas/ufgtexposter/master/images/background-1.png)

A complete example of the PDF output is available [here](https://github.com/altinodantas/ufgtexposter/blob/master/images/template.png).

## UFGTexPoster on Overleaf
This project was fully developed on the [Overleaf](https://www.overleaf.com), an online Latex tool that has joined with another widely famous service called ShareLatex. Therefore, if you have interesting in one of the aforementioned services, you may find UFGTexPoster available in the official Overleaf's Gallery at [here](https://www.overleaf.com/latex/templates/poster-ufg/rjwsyhyhkkfk), which is ready for using.

However, as you are here I'd like to recommend you download the project as ZIP then import it into Overleaf, instead of using the version from the Gallery. I know this is not an usual tip, but the process to submit for or update in Overleaf is a little bit boring, so, probally UFGTexPoster will be not updated there as rapid as here.     



