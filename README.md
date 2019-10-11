![UFGTeXPoster logo](https://raw.githubusercontent.com/altinodantas/ufgtexposter/master/images/ufgtexposter.png)

## What is it?
A Latex template to help students, professors and/or researchers from Universidade Federal de Goiás (UFG) preparing their works in posters (120x90cm). The template provides different options to change its visual aspect as well as shows examples of exposing images, tables, and bibliography references just by using common LaTex resources.

## How to use
After downloading or cloning this repository, you must edit the file **poster.tex** to provide the content of the poster. Firstly, take a look at "Configs" part, at the begin of such a **.tex**, and modify its parties, whether is needed. Except for more significant changes, you can customize your poster just by editing the following sections: 
  
  #### Appearance settings
  ```tex
  % Choose one color to the sections' title { ufglhblue | ufgdkblue | dkblue | black | gold }.
  \setsectioncolor{gold} 

  % Define the width of the vertical rule or hide it by setting 0pt or commenting the following command.  
  \setcolumnseprule{2pt}

  % Inform the paths to the logo files or leave empty one or both parameters. 
  % There are three options [ T | M | B ] to positioning the logos. 
  \setlogos[T]{images/ufg-logo}{images/department-logo}

  % Choose one of the background options {1 | 2 | 3}. 
  % Actually, one can select any graphic file in the directory 'backgrounds'. 
  \setbackground{1}

  % Resize the title to keep it up to two lines // {font size}{line height}
  \settitlesize{64pt}{68pt}

  % Resize the font of the content. Default {32pt}{38pt} // {font size}{line height}
  \setcontentfontesize{32pt}{40pt}
  
  % Resize the font of the emails. Default {26pt}{32pt} // {font size}{line height}
  \setemailfontesize{42pt}{40pt}
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
After **compiling** the project considering the above configuration, the top of the poster must be likely the figure below.  
  
  ![Template example](https://raw.githubusercontent.com/altinodantas/ufgtexposter/master/images/example.PNG)

A complete example of the PDF output is available [here](https://github.com/altinodantas/ufgtexposter/blob/master/images/template.png).

## UFGTeXPoster on Overleaf
This project was fully developed on the [Overleaf](https://www.overleaf.com), an online LaTeX editor that has joined with another well-known web service called ShareLatex. Thus, if you have interesting in one of the services above, you may find UFGTexPoster available in the official Overleaf's templates gallery at [here](https://www.overleaf.com/latex/templates/poster-ufg/rjwsyhyhkkfk), which is ready for use.

## Disclaimer

This project is a personal initiative, under open source and collaborative principles, which until now has no formal association with the Federal University of Goiás institution. Thus, this template is not an official artifact from such a university.

If you have some comments or suggestion, let me know by sending email to tinodantas@gmail.com.
