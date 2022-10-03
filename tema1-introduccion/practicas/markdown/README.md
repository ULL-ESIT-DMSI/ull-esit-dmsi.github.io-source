---
prev: /tema0-presentacion/practicas/pb-gh-campus-expert/
permalink: /tema1-introduccion/practicas/markdown/
rubrica:
  - "Se incluyen todos los aspectos solicitados en el markdown y se visualizan correctamente"
  - "He usado un tablero Kanban"
  - "Convierto las notas en issues"
  - "He generado el issue de práctica terminada"
  - "Informe elaborado correcto"
---
# Aprender Markdown

La siguiente sección establece los objetivos y competencias que debes lograr.
Las subsiguientes secciones presentan los recursos para lograr estos objetivos.


## Aprender Markdown

Un objetivo de esta tarea es aprender Markdown. Para ello, en el repositorio que se crea cuando aceptas la asignación  deberás rellenar los contenidos del fichero `README.md` con un pequeño curriculum vitae/carta de presentación usando markdown. 

* Incluye alguna imagen 
* Incluye algunos enlaces (por ejemplo un enlace a tu usuario en el campus virtual o el LMS de tu institución educativa).
* Incluya al menos una lista enumerada y una lista no ordenada (*bullets*)
* Una cita favorita (blockquote)
* Un fragmento de código inline de un lenguaje de programación 
* Incluye un trozo de código que ocupe varias líneas como este y asegúrate de que aparece coloreado:

  ```javascript
  function fancyAlert(arg) {
    if(arg) {
      $.facebox({div:'#foo'})
    }
  }
  ```
* Incluye una tabla. Puede hacerse así:

  ```md
    First Header | Second Header
    ------------ | -------------
    Content from cell 1 | Content from cell 2
    Content in the first column | Content in the second column
  ```
  y se verá así:

  First Header | Second Header
  ------------ | -------------
  Content from cell 1 | Content from cell 2
  Content in the first column | Content in the second column
* Incluye un emoji. Por ejemplo  `:+1:` se ve: :+1:
* Añade un fichero `master.md`  (puedes crearlo usando el menu o bien visitando una ruta con la sintáxis `https://github.com/:owner:/:repo:/new/main`) en el que describas tu experiencia hasta ahora en este master y lo enlazas desde el fichero `README.md`.  
1. Incluyas alguna imagen en el repo en una carpeta `img` y la muestres desde el texto
2. Añadas un segundo fichero en el repo con nombre  `objetivos.md`  contando cuáles son tus objetivos con respecto a este curso y lo referencies desde el fichero `README.md`. Añade una referencia/enlace  de vuelta en `objetivos.md` a  tu `README.md`

  * En el fichero 
`master.md` pon un enlace de vuelta al `README.md`

- Podemos hacer uso del editor que provee la interfaz web de GitHub.
- Pero hay editores alternativos mejores como [el editor web de GitHub  y GitPod]({{site.baseurl}}/pages/gitpod)
- Recuerda hacer "commits" para guardar los cambios.
- En la tarea entrega el enlace al repo con los contenidos de tu trabajo

* Añade una imagen-enlace. Se deberá ver la imagen pero esta será un enlace 
a otra página

En este [enlace puedes visitar ejemplos de lo que han hecho algunos alumnos de la asignatura *Aprendizaje y Enseñanza de la Tecnología* del master de Formación de Profesorado en el curso 21/22](https://github.com/orgs/ULL-MFP-AET-2122/repositories?q=aprender-markdown&type=all&language=&sort=)

Te puede ayudar el tutorial de [GitHub Markdown](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) 


## Aprender a Usar un Editor en la Nube 

Hay múltiples formas de editar en la nube un repositorio GitHub. 
En estas [notas](editores-en-la-nube) recogemos estas alternativas:

1. Editar directamente usando el [editor on-line de GitHub](https://docs.github.com/es/repositories/working-with-files/managing-files/editing-files)
2. [Usar el editor GitHub.dev](https://docs.github.com/en/codespaces/the-githubdev-web-based-editor): se activa simplemente  tecleando el punto cuando se está visitando el repo
4. Usar [Codespaces](editores-en-la-nube#codespaces) (Probablemente la opción mas recomendable si dispones de este servicio)
3. Usar [GitPod](editores-en-la-nube#gitpod), una alternativa a Codespaces

[githubdev]: https://docs.github.com/en/codespaces/the-githubdev-web-based-editor
[codespaces]: editores-en-la-nube#codespaces

## Aprender a Usar Incidencias

Cuando termines esta tarea puedes generar una incidencia comunicándoselo al profesor. Así practicas un poco mas de markdown.

## Crea tu repo profile

Siguiendo las instrucciones en la documentación de GitHub [Managing your profile README](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme) añade un README a tu perfil de GitHub para que otras personas sepan sobre ti.

GitHub muestra el README de tu perfil al inicio de tu página de perfil.

Tú decides qué información incluir en el README de tu perfil. Reutiliza el material creado en la práctica anterior.

Puedes encontrar ejemplos curiosos de *repos profile* en esta referencia:

* [abhisheknaiidu/awesome-github-profile-readme](https://github.com/abhisheknaiidu/awesome-github-profile-readme)
* La misma información pero en [la web](https://zzetao.github.io/awesome-github-profile/) asociada
* [articles about how to write a profile readme](https://github.com/abhisheknaiidu/awesome-github-profile-readme#articles). 


## Introducción a GitHub Classroom (como estudiante)

Los profesores de este curso han configurado la tarea asociada usando [GitHub Classroom  (que abreviaremos a veces como GHC)](https://docs.github.com/es/education/manage-coursework-with-github-classroom/teach-with-github-classroom). GitHub Classroom es una aplicación web para los docentes que proporciona herramientas para la administración de cursos integradas con GitHub. 

## Introduccion al Lenguaje de Marcas MarkDown

Lee 

1. [Escribir en GitHub](https://docs.github.com/es/get-started/writing-on-github)
1. El tutorial <a href="https://guides.github.com/features/mastering-markdown/" target="_blank">Mastering Markdown</a> para saber mas sobre esta forma de elaborar documentos
2. Para mas detalles consulta la guía de usuario
<a href="https://docs.github.com/en/free-pro-team@latest/github/writing-on-github/getting-started-with-writing-and-formatting-on-github" target="_blank">Getting started with writing and formatting on GitHub</a>

## Introducción a la Edición en la Nube de Repositorios GitHub

Para manejar todo el proceso de edición pueden ayudarte estas [notas sobre Edición en la Nube](editores-en-la-nube).

## Rúbrica

{% include rubrica.md -%}

## Referencias

* [Mastering (GitHub) Markdown](https://guides.github.com/features/mastering-markdown/#examples)
* [Documentación GitHub sobre la Interfaz Web](editores-en-la-nube#documentacion-github-interfaz-web)
* [How to use VS Code to submit an assignment to Github Classroom (initially empty repository)](https://youtu.be/iqW_yzZkU_8) Vídeo que muestra como deben hacer los estudiantes para aceptar, trabajar y entregar una tarea asignada con GHC usando el editor VS Code
* [GitHub Glossary](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/github-glossary)

## Prácticas 

{% include practicas.md %}