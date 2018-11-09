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
  \site{Acesse i4soft.com.br}
  \class{Projeto Ciência no Parque}
  \posteryear{2018}
  \copyrightholder{Intelligence for Software Research Group - i4Soft}
  ```
After **compiling** the project considering above configuration, the top of the poster will be likely the figure below.  
  ![Template example](https://raw.githubusercontent.com/altinodantas/ufgtexposter/master/images/background-1.png)
  A complete example is available [here](https://github.com/altinodantas/ufgtexposter/blob/master/images/template.png).
  
