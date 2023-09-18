---
prev: /tema0-presentacion/practicas/pb-gh-campus-expert/
permalink: /tema1-introduccion/practicas/markdown/
key: aprender-markdown
rubrica:
  - "Se incluyen todos los aspectos solicitados en el markdown y se visualizan correctamente"
  - "Kanban Board project conteniendo las incidencias en su estado"
  - "Convierto las notas en issues"
  - "He generado el issue de práctica terminada"
  - "Informe elaborado correcto"
  - "Ha creado un repo profile en GitHub"
  - "Ha entregado el .zip en el campus con el repo"
---
- [Aprender Markdown](#aprender-markdown)
  - [Aprender Markdown](#aprender-markdown-1)
    - [Introduccion al Lenguaje de Marcas MarkDown](#introduccion-al-lenguaje-de-marcas-markdown)
    - [Matemáticas](#matemáticas)
    - [Diagramas con mermaid](#diagramas-con-mermaid)
    - [Task lists](#task-lists)
    - [Special notes](#special-notes)
  - [Edición en la Nube de Repositorios GitHub](#edición-en-la-nube-de-repositorios-github)
    - [Introducción a la Edición en la Nube de Repositorios GitHub](#introducción-a-la-edición-en-la-nube-de-repositorios-github)
  - [Aprender a Usar Incidencias](#aprender-a-usar-incidencias)
  - [Crea tu repo profile](#crea-tu-repo-profile)
  - [Rúbrica](#rúbrica)
  - [Referencias](#referencias)
  - [Student  Activity](#student--activity)
  - [Prácticas](#prácticas)

# Aprender Markdown

La siguiente sección establece los objetivos y competencias que debes lograr.
Las subsiguientes secciones presentan los recursos para lograr estos objetivos.

Puede encontrar una descripción de esta práctica pero para la asignatura AET en [Aprender Markdown (aprender-markdown)](https://ull-mfp-aet.github.io/tema0-introduccion/practicas/aprender-markdown/)

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

### Introduccion al Lenguaje de Marcas MarkDown

Lee 

1. [Escribir en GitHub](https://docs.github.com/es/get-started/writing-on-github)
1. El tutorial <a href="https://guides.github.com/features/mastering-markdown/" target="_blank">Mastering Markdown</a> para saber mas sobre esta forma de elaborar documentos
2. Para mas detalles consulta la guía de usuario
<a href="https://docs.github.com/en/free-pro-team@latest/github/writing-on-github/getting-started-with-writing-and-formatting-on-github" target="_blank">Getting started with writing and formatting on GitHub</a>

### Matemáticas

Añade una fórmula matemática escrita en [\\(\LaTeX\\)](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/writing-mathematical-expressions)

Si escribes una fórmula  matemática en latex y la rodeas de `$$`, el markdown de GH la mostrará como un bloque. Por ejemplo: 

```
**The Cauchy-Schwarz Inequality**

$$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$
```
Se ve:

**The Cauchy-Schwarz Inequality**

$$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$

Para incluir una expresión matemática en línea con su texto, delimite la expresión con un símbolo de dólar `$`. Por ejemplo:

```
This sentence uses `$` delimiters to show math inline:  $\sqrt{3x-1}+(1+x)^2$
```
Se ve como esto:

This sentence uses `$` delimiters to show math inline: \\(\sqrt{3x-1}+(1+x)^2\\)
  
### Diagramas con mermaid

Puedes incluir diagramas en tus documentos usando [mermaid](https://mermaid-js.github.io/mermaid/). Por ejemplo:


    ```mermaid
      graph TD;
          A-->B;
          A-->C;
          B-->D;
          C-->D;
    ```

que se verá como:

![]({{ site.baseurl}}/assets/images/mermaid.png)

### Task lists

Ejemplo:

    - [x] #739
    - [ ] https://github.com/octo-org/octo-repo/issues/740
    - [ ] Add delight to the experience when all tasks are complete :tada:

Se verá así:

- [x] #739
- [ ] https://github.com/octo-org/octo-repo/issues/740
- [ ] Add delight to the experience when all tasks are complete :tada:

Este ejemplo muestra también como escribir un emoji por nombre `:tada:`.

Mas información en [Acerca de las listas de tareas](https://docs.github.com/es/issues/tracking-
See your-work-with-issues/about-task-lists)

###  Special notes

To better highlight and separate certain information from the rest in your documentation on GitHub, there is a way to render a special and accessible note or warning blockquote in Markdown documents. It uses
the existing syntax for blockquote and bold text.

```
> **Note**
> This is a note

> **Warning**
> This is a warning
```

> **Note**
> This is a note

> **Warning**
> This is a warning

See [An option to highlight a "Note" and "Warning" using blockquote](https://github.com/community/community/discussions/16925)

## Edición en la Nube de Repositorios GitHub

Hay múltiples formas de editar en la nube un repositorio GitHub.
en estas [notas]({{site.baseurl}}/pages/gitpod) recogemos estas alternativas:

1. Editar directamente usando el [editor on-line de GitHub](https://docs.github.com/es/repositories/working-with-files/managing-files/editing-files)
2. [Usar el editor GitHub.dev][githubdev]. Véase también las [notas en estos apuntes sobre GitHub.dev][githubdev]. Véase también las [notas en estos apuntes sobre GitHub.dev]({{site.baseurl}}/pages/gitpod#editing-with-githubdev-editor): se activa simplemente  tecleando el punto cuando se está visitando el repo
4. Usar [Codespaces][codespaces] (Probablemente la opción mas recomendable si dispones de este servicio)
3. Usar [GitPod]({{ site.baseurl }}/pages/gitpod#gitpod), una alternativa a [Codespaces][codespaces]

[githubdev]: https://docs.github.com/en/codespaces/the-githubdev-web-based-editor
[codespaces]: /pages/gitpod#codespaces

### Introducción a la Edición en la Nube de Repositorios GitHub

Para manejar todo el proceso de edición pueden ayudarte estas [notas sobre Edición en la Nube](editores-en-la-nube).


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


## Rúbrica

{% include rubrica.md -%}

## Referencias

* [Mastering (GitHub) Markdown](https://guides.github.com/features/mastering-markdown/#examples)
* [Documentación GitHub sobre la Interfaz Web](editores-en-la-nube#documentacion-github-interfaz-web)
* [How to use VS Code to submit an assignment to Github Classroom (initially empty repository)](https://youtu.be/iqW_yzZkU_8) Vídeo que muestra como deben hacer los estudiantes para aceptar, trabajar y entregar una tarea asignada con GHC usando el editor VS Code
* [GitHub Glossary](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/github-glossary)

## Student  Activity

{% assign lab = page.key %}
<h2>
  Students activity for {{ lab }}
</h2>

{% include students-activity.html lab=lab %}

## Prácticas 

{% include practicas.md %}