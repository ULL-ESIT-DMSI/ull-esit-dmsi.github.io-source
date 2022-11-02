---
title: "Building a Jekyll 404 dynamic page"
---

# {{ page.title }}

## Jekyll docs on 404

Puede servir fácilmente páginas de error 404 personalizadas con Jekyll  reemplazando la página predeterminada `Error 404 – File Not Found` que se muestra cuando uno intenta acceder a un enlace roto en su sitio. 

Cualquier fichero `404.html` en la raíz de su directorio `_site` será atendido automáticamente por GitHub Pages y el servidor de desarrollo WEBrick local.

Véase la documentación de Jekyllrb en [Custom 404 Page](https://jekyllrb.com/tutorials/custom-404-page/)

## The Cat API

* [TheCatApi // Developer Experience](https://docs.thecatapi.com/) docs

## Extensions for APIs

### Vscode Thunder Client

You can install the VSCode extension [Thunder Client](https://github.com/rangav/thunder-client-support) for testing the cat API.

<youtube id="AbCTlemwZ1k"></youtube>

### Chrome

For Chrome you can install:

* [JSON Formatter for API](https://chrome.google.com/webstore/detail/json-formatter-for-api/ipofikknncgcohpploljmbmpkgamedmi)
* [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo)
* [Altair GraphQL Client](https://chrome.google.com/webstore/detail/altair-graphql-client/flnheeellpciglgpaodhkhmapeljopja)

### Exercise: REST API request to GH

Make request to GitHub REST to [Get all contributor commit activity](https://docs.github.com/en/rest/metrics/statistics#get-all-contributor-commit-activity) using 

* github cli
* curl
* thunder client
* JS
* Postman
* Insomnia

Lea la sección [REST Clients]({{ site.baseurl }}/tema3-modelos-emergentes/rest-clients)


## An Example of a 404 page

```
~/.../pl1920/apuntes(master)]$ cat 404.md 
```

```md
---
layout: error
title: Error
---
# Error: ¡Ay Diós mío!

## Aún no he escrito esta página. 


<div>
<style>
img, #quote, #comment-cat {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
#author {
  float: right;
}
</style>


<div id="comment-cat"></div>
<div id="cat"></div>
<br/>
<div id="quote"></div>
<div id="author"></div>


<script type="text/javascript">

/*
  https://docs.thecatapi.com/ 
*/
const URL = 'https://api.thecatapi.com/v1/images/search?size=full';

(async function() {
  try {
    
    // CAT 
    let divTitle = document.getElementById("comment-cat");
    
    let divcat = document.getElementById("cat");
    let response = await fetch(URL, {
       headers: {
       'x-api-key': "56a4f1cc-7f60-468d-9dba-e4b6f04b7c7d"
       }
    });
    let cat = await response.json();
    // console.log(cat);   
    let img = document.createElement("img");
    let title = document.createElement("h2");
    title.innerText = "Consuélate con un gatito";   
    divTitle.append(title);
    img.src = cat[0].url;
    divcat.appendChild(img);   

    // QUOTE
    const quoteDiv = document.getElementById("quote");
    const authorDiv = document.getElementById("author");
    
    const quoteRes = await fetch('https://api.quotable.io/random');
    const data = await quoteRes.json();
    quoteDiv.innerHTML = `<h2>${data.content}</h2>`;
    authorDiv.innerHTML = `<h3>—${data.author}</h3>`;
  }
  catch(e) { 
    console.log(e);
  }
})();
</script>

</div>
```
puede ver la página en [funcionamiento en esta web](https://ull-esit-dmsi.github.io/2032/10/31/leccion.html)

