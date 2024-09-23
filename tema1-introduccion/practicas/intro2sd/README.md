---
permalink: /tema1-introduccion/practicas/intro2sd/
rubrica:
  - "Se ha desplegado el sitio Web en GitHub pages usando Jekyll"
  - Se resumen correctamente los conceptos del capítulo
  - "Kanban Board project conteniendo las incidencias de la rúbrica"
  - "Despliegue en netlify"
  - Se ha creado una Jekyll Collection 
  - Se ha hecho uso de liquid (mostrar ejemplo en el informe)
  - Se ha hecho uso de un .csv o .json en `_data` (mostrar ejemplo en el informe)
  - Ha reconfigurado los defaults del _config.yml
  - Página 404 personalizada
  - "Página personal en GitHub Pages"
  - "Página personal en GitHub Pages enlazada desde el perfil GitHub del alumno"
  - "Ha entregado el .zip en el campus con el repo"
---

# Introduction to Systems Development

Lea el capítulo 1 del libro 

> Ahmed, Tahir, Cadle, James, Cox, Julian, Girvan, Lynda, Paul, Alan, Paul, Debra, Thompson, Pete, and BCS, The Chartered Institute for IT. **Developing Information Systems: Practical Guidance for IT Professionals**. Swindon U.K: BCS Learning & Development Limited, 2014. Web.

Haga un resumen de los conceptos más importantes del capítulo y publíquelo como un post usando [Jekyll]({{site.baseurl}}/assets/temas/introduccion-a-javascript/jekyll) y [GitHub Pages](https://pages.github.com/) para desplegar el sitio web con el informe.

El template usa el tema [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/).

Puede encontrar el pdf y el HTML del libro en este enlace:

* [Capítulo 1: Introduction to Systems Development](https://ebookcentral-proquest-com.accedys2.bbtk.ull.es/lib/bull-ebooks/detail.action?docID=1713962#) 

para acceder al capítulo es conveniente que está conectado a la red de la ULL y al [PuntoQ](https://www.ull.es/servicios/biblioteca/servicios/puntoq/) de la BULL.

Recuerde cambiar `baseurl` en `_config.yml` para que contenga el nombre de su repositorio en GitHub:

```yaml
baseurl                  : "/intro2sd-template/" # the subpath of your site, e.g. "/blog"
```

Haga un segundo despliegue en Netlify. Puede usar las referencias:

* [A Step-by-Step Guide: Jekyll 3.0 on Netlify](https://www.netlify.com/blog/2015/10/28/a-step-by-step-guide-jekyll-3.0-on-netlify/)
* [A Step-by-Step Guide: Jekyll 4.0 on Netlify](https://www.netlify.com/blog/2020/04/02/a-step-by-step-guide-jekyll-4.0-on-netlify/)
* La sección [Cursos en YouTube de Jekyll and NetlifyCMS por Thomas Bradley]({{ site.baseurl}}//assets/temas/introduccion-a-javascript/jekyll#cursos-en-youtube-de-jekyll-and-netlifycms-por-thomas-bradley)

Con lo aprendido desarrolle su página personal en GitHub (si no es que ya tiene una).

Puede servir fácilmente páginas de error 404 personalizadas con Jekyll  reemplazando la página predeterminada `Error 404 – File Not Found` que se muestra cuando uno intenta acceder a un enlace roto en su sitio. 

Cualquier fichero `404.html` en la raíz de su directorio `_site` será atendido automáticamente por GitHub Pages y el servidor de desarrollo WEBrick local.

Véase la documentación de Jekyllrb en [Custom 404 Page](https://jekyllrb.com/tutorials/custom-404-page/)

Para hacer una página 404 personalizada puede inspirarse en la que se describe en estos apuntes [404.md]({{ site.baseurl }}/assets/temas/introduccion-a-javascript/jekyll#custom-404-page)
 

Para saber más sobre Jekyll y para resolver dudas de esta práctica 
puede consultar la [sección de Jekyll en estos apuntes]({{ site.baseurl }}/assets/temas/introduccion-a-javascript/jekyll)

## Tips 2024/2025

Abra codespaces en el repositorio de la práctica.

La versión de ruby en 2025 en el docker es 
```bash
@crguezl ➜ /workspaces/intro2sd-casiano-rodriguez-leon-alu0100291865 (main) $ rvm ls
   ruby-3.3.2 [ x86_64 ]
=* ruby-3.3.4 [ x86_64 ]

# => - current
# =* - current && default
#  * - default
```
Mientras que el template está con la 3.1:

```bash
@crguezl ➜ /workspaces/intro2sd-casiano-rodriguez-leon-alu0100291865 (main) $ cat .rvm
ruby-3.1
```

Parece que podemos usar la instalada pero dará un problema en la instalación. Para ello quitemos el `Gemfile.lock`:

```bash
mv Gemfile.lock Gemfile.lock.3.1
``` 

y ejecutemos:

```bash
bundle install
```

Si todo va bien ejecutamos el servidor:

```bash
rake serve
```

que en ralidad ejecuta el comando:

```bash
bundle exec jekyll s --watch --incremental --future -V -P 4001
```

# Rúbrica

{% include rubrica.md -%}

## Prácticas
  
{% include practicas.md %}