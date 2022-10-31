---
title: Jekyll
---

- [Jekyll Documentation and Tutorials](#jekyll-documentation-and-tutorials)
- [Site Structure](#site-structure)
- [Using Jekyll with Docker](#using-jekyll-with-docker)
- [Jekyll: Como preparar un informe de Prácticas usando GitHub Pages](#jekyll-como-preparar-un-informe-de-prácticas-usando-github-pages)
- [Tutorials](#tutorials)
  - [Tutorials](#tutorials-1)
  - [Video Walkthroughs](#video-walkthroughs)
  - [Navigation](#navigation)
  - [Order of interpretation](#order-of-interpretation)
  - [Custom 404 Page](#custom-404-page)
    - [An Example of a 404 page](#an-example-of-a-404-page)
  - [Convert an HTML site to Jekyll](#convert-an-html-site-to-jekyll)
  - [Using Jekyll with Bundler](#using-jekyll-with-bundler)
- [The Jekyll Conference](#the-jekyll-conference)
- [CloudCannon: The Cloud CMS for Jekyll](#cloudcannon-the-cloud-cms-for-jekyll)
- [Editors](#editors)
- [Themes](#themes)
- [Converting a Jekyll Web Site to PDF](#converting-a-jekyll-web-site-to-pdf)
- [Blog: A Collection of Music Albums](#blog-a-collection-of-music-albums)
- [React and Jekyll](#react-and-jekyll)
- [Auth and Jekyll](#auth-and-jekyll)
- [E-commerce](#e-commerce)
- [Developing](#developing)
  - [Some explanations](#some-explanations)
    - [`site.url`](#siteurl)
    - [`site.baseurl`](#sitebaseurl)
  - [Working in different environments](#working-in-different-environments)
    - [Use `jekyll serve`](#use-jekyll-serve)
    - [Use multiple configuration files](#use-multiple-configuration-files)
- [Testing HTML pages](#testing-html-pages)
  - [HTMLProofer](#htmlproofer)
  - [Rakefile task for testing](#rakefile-task-for-testing)
  - [Testing with GitHub Actions](#testing-with-github-actions)
  - [Testing with HTMLProofer and Travis](#testing-with-htmlproofer-and-travis)
- [Jekyll as a Web Service](#jekyll-as-a-web-service)
- [Maths y Jekyll](#maths-y-jekyll)
- [Working with upcoming posts in Jekyll](#working-with-upcoming-posts-in-jekyll)
- [Cursos en YouTube de Jekyll and NetlifyCMS por Thomas Bradley](#cursos-en-youtube-de-jekyll-and-netlifycms-por-thomas-bradley)
- [Chen Hui Jing Talks on Jekyll](#chen-hui-jing-talks-on-jekyll)
- [Práctica jekyll-netlify](#práctica-jekyll-netlify)


A **static site generator (SSG)** (see [https://www.staticgen.com/](https://www.staticgen.com/) is a compromise between using a hand-coded static site and a full content management system (CMS). You generate an HTML-only website using raw data (such as Markdown files) and templates. The resulting build is transferred to your live server.

![](https://d1qmdf3vop2l07.cloudfront.net/quiet-lily.cloudvent.net/compressed/_min_/ac88548cb0c955ba3f21d06b34647a83.png)

Jekyll, [Elevently](https://www.11ty.dev/docs/) and [hexo](https://hexo.io/docs/) are examples of SSG.

Recuerda que GitHub provee un servicio de Hosting de páginas estáticas ([GitHub Pages](https://pages.github.com/)) que se sirven mediante Jekyll.

* [Jekyll docs](https://jekyllrb.com/docs/)
* [Using Jekyll with Bundler](https://jekyllrb.com/tutorials/using-jekyll-with-bundler/)
* [Accessing Content from Other Pages in Jekyll](https://edcupaioli.com/blog/accessing-content-from-other-pages-in-jekyll/)

## Jekyll Documentation and Tutorials 

*   [Pages](https://jekyllrb.com/docs/pages/)
*   [Posts](https://jekyllrb.com/docs/posts/)
*   [Front Matter](https://jekyllrb.com/docs/front-matter/)
*   [Collections](https://jekyllrb.com/docs/collections/)
   *   [Page Sections in Jekyll - Separating Content from Layout](https://dev-notes.eu/2016/08/page-sections-in-jekyll-seperating-content-from-layout/)
   * [Explain like I’m five: Jekyll collections](https://ben.balter.com/2015/02/20/jekyll-collections/)
*   [Data Files](https://jekyllrb.com/docs/datafiles/)
   * [Why I love Jekyll Data Files - Chen Hui Jing // JekyllConf 2019](https://youtu.be/CERXESTZ5w4) YouTube
*   [Assets](https://jekyllrb.com/docs/assets/)
*   [Static Files](https://jekyllrb.com/docs/static-files/)

## Site Structure

*   [Directory Structure](https://jekyllrb.com/docs/structure/)
*   [Liquid](https://jekyllrb.com/docs/liquid/)
  * Liquid Sandbox: [You can test your Liquid code here. This sandbox only loads the default Liquid methods ](https://jumpseller.com/support/liquid-sandbox/)
*   [Variables](https://jekyllrb.com/docs/variables/)
*   [Includes](https://jekyllrb.com/docs/includes/)
*   [Layouts](https://jekyllrb.com/docs/layouts/)
*   [Permalinks](https://jekyllrb.com/docs/permalinks/)
*   [Themes](https://jekyllrb.com/docs/themes/)
*   [Pagination](https://jekyllrb.com/docs/pagination/)

## Using Jekyll with Docker

* [docker](docker.html)

{% include jekyll-with-docker.md %}

## Jekyll: Como preparar un informe de Prácticas usando GitHub Pages

* [Como preparar un informe de Prácticas usando Jekyll y GitHub Pages](preparar-informe-de-practicas-con-ghpages)


## Tutorials

###  [Tutorials](https://jekyllrb.com/tutorials/home/)
###  [Video Walkthroughs](https://jekyllrb.com/tutorials/video-walkthroughs/)
###  [Navigation](https://jekyllrb.com/tutorials/navigation/)
###  [Order of interpretation](https://jekyllrb.com/tutorials/orderofinterpretation/)
  
### [Custom 404 Page](https://jekyllrb.com/tutorials/custom-404-page/)

#### An Example of a 404 page

You can install the VSCode extension [Thunder Client](https://github.com/rangav/thunder-client-support) for testing the cat API.


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

### [Convert an HTML site to Jekyll](https://jekyllrb.com/tutorials/convert-site-to-jekyll/)
### [Using Jekyll with Bundler](https://jekyllrb.com/tutorials/using-jekyll-with-bundler/)

## The Jekyll Conference

* [The free, online global conference for all things Jekyll](https://jekyllconf.com/)
Best Practices, Advanced Case Studies, The Future of Jekyll

## CloudCannon: The Cloud CMS for Jekyll

[CloudCannon](https://app.cloudcannon.com/) is cloud content management system and hosting provider for Jekyll websites. The way it works is this: 

1. A developer uploads a Jekyll site in the browser or syncs with GitHub, Bitbucket or Dropbox. 
2. CloudCannon builds the site, hosts it and
3. **provides an interface for non-technical people to update content**.

* [CloudCannon](https://app.cloudcannon.com/)
* [Client editable Jekyll sites](https://learn.cloudcannon.com/jekyll/client-editable-jekyll-sites/)

## Editors

* [Forestry](https://forestry.io/) is an editor-friendly interface over Git. This means that developers and editors can now use the same workflow and tool set.

## Themes

With gem-based themes, some of the site’s directories (such as the `assets`, `_layouts`, `_includes`, and `_sass` directories) are stored in the theme’s gem, hidden from your immediate view. Yet all of the necessary directories will be read and processed during Jekyll’s build process.

You can run `bundle update <THEME>`, replacing `<THEME>` with the theme name, such as `minima`, to just update the theme gem:

```
~/.../sytws1920/apuntes(master)]$ bundle update jekyll-theme-midnight
Fetching gem metadata from https://rubygems.org/...........
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies...
Using concurrent-ruby 1.1.5
...
Bundler attempted to update jekyll-theme-midnight but its version stayed the same
Bundle updated!
```

* [Themes documentation](https://jekyllrb.com/docs/themes/)
* [Jekyll and Project Documentation Themes](https://jekyllthemes.io/jekyll-documentation-themes)
* [documentation-theme-jekyll](https://github.com/ULL-MII-SYTWS-1920/documentation-theme-jekyll) Un tema muy interesante

## Converting a Jekyll Web Site to PDF

* [Prince](https://www.princexml.com/)
* [PDFKit](https://github.com/pdfkit/PDFKit)
* [GitHub repo wkhtmltopdf: Convert HTML to PDF using Webkit (QtWebKit)](https://github.com/wkhtmltopdf/wkhtmltopdf) see [https://wkhtmltopdf.org](https://wkhtmltopdf.org)



## Blog: A Collection of Music Albums

* [How to maintain a collection of music albums online, using Jekyll and Github Pages](https://dev.to/adrienjoly/how-to-maintain-a-collection-of-music-albums-online-using-jekyll-and-github-pages-3hd6). See it at [https:///adrienjoly.com/album-shelf/](https://adrienjoly.com/album-shelf/)

## React and Jekyll

* [A npm package providing a Jekyll Boilerplate with React using Webpack](https://www.npmjs.com/package/jekyll-react-webpack) (Not supported by GitHub Pages)
  - [Blog: Start building your great modern static website with this boilerplate using Jekyll, React and Webapck.](https://marcoslombog.com/2019/04/07/jekyll-react-webpack.html)

## Auth and Jekyll

* [benbalter/jekyll-auth: A simple way to use GitHub OAuth to serve a protected Jekyll site to your GitHub organization](https://github.com/benbalter/jekyll-auth)


## E-commerce

* [Jekyll E-Commerce Tutorial: Add a Shopping Cart to Your Static Website](https://snipcart.com/blog/jekyll-ecommerce-tutorial) 2019
* [Headless E-Commerce: What, Why, & How (Tools Included)](https://snipcart.com/blog/headless-ecommerce-guide) 2018
* [GitHub repo:A Jekyll based shopping cart built with simpleCart(js)](https://github.com/bradonomics/jekyll-cart)
* [Jekyll Cart Demo](https://youtu.be/jdp_XmogTEo) Video en YouTube

## Developing 

* [Change site.url to localhost during jekyll local development](https://stackoverflow.com/questions/27386169/change-site-url-to-localhost-during-jekyll-local-development)

"

This is a common problem between different Jekyll environments.

### Some explanations

We need to understand `site.url` and `site.baseurl` and in which situation we need them. Those variables don't serve the same purpose.

#### `site.url`

By default, this variable is only used in page head for the `canonical` header and the `RSS link`. It's also used in the xml feed to point to site resources as the software that will manage this feed doesn't know resource's urls.

This variable is only necessary for external systems.

#### `site.baseurl`

This variable indicates the root folder of your Jekyll site. By default it is set to `""` (empty string). That means that your Jekyll site is at the root of `https://example.com`.

If your Jekyll site lives in `https://example.com/blog`, you have to set `site.baseurl` to `/blog` (**note the slash**). This will allow assets (css, js) to load correctly.

See how assets are loaded in you head :

    <link rel="stylesheet" href="{{ "/css/main.css" | prepend: site.baseurl }}">
    

that can also be :

    <link rel="stylesheet" href="{{ site.baseurl }}/css/main.css">
    

### Working in different environments

Now you have to test your site locally and to deploy it in production. Sometimes, the `baseurl` is different and the `jekyll build` may not work out of the box in one of those environment.

Here we have two solutions :

#### Use `jekyll serve`

Let's imagine that your site lives in a github repository and is served at `https://username.github.io/myProject`.

You can setup the `baseurl` to `/myProject`. and test your site locally with `jekyll serve`, your site will be served at `https://127.0.0.1:4000/myProject/`

#### Use multiple configuration files

If, for one reason or another, you cannot use `jekyll serve`, you can set a configuration file for both environment and `jekyll build` depending on where you are deploying.

Let's say we have the local site served at `https://localhost` and the production site served at `https://username.github.io/myProject`.

We leave the `_config.yml` with `url: https://username.github.io` and `baseurl: /myProject`

We create a new `_config_dev.yml` with only `url: https://localhost` and `baseurl: ""`

Now to test locally :

    jekyll build --config _config.yml,_config_dev.yml
    

or

    jekyll build --config _config.yml,_config_dev.yml --watch
    

When pushed on production, the <code>jekyll build</code> command will use the default <code>_config.yml</code>.

## Testing HTML pages

### HTMLProofer

> When testing Jekyll output, there is no better tool than <a href="https://github.com/gjtorikian/html-proofer">html-proofer</a>.
> This tool checks your resulting site to ensure all links and images exist.
> Utilize it either with the convenient <code>htmlproofer</code> command-line executable,
> or write a Ruby script which utilizes the gem

```
usuario@ubuntu:~/src/ull-mii-sytws-1920.github.io$ bundle exec htmlproofer ./_site --disable-external
Running ["ImageCheck", "ScriptCheck", "LinkCheck"] on ["./_site"] on *.html... 


Ran on 158 files!


- ./_site/2019/09/30/leccion.html
  *  internally linking to /practicas, which does not exist (line 31)
     <a href="/practicas" title="Prácticas">✍</a>
  *  internally linking to /practicas, which does not exist (line 129)
     <a href="/practicas" title="Prácticas">✍</a>
- ./_site/404.html
  *  internally linking to /practicas, which does not exist (line 31)
     <a href="/practicas" title="Prácticas">✍</a>
     ... many more entries
```

Let us see if its true. Instead of running with `jekyll` serve, I use a static server to see if the build 
is really consistent:

```
usuario@ubuntu:~/src/ull-mii-sytws-1920.github.io/_site$ static-server -p 8080
options.index is now deprecated please use options.templates.index instead.
* Static server successfully started.
* Serving files at: https://localhost:8080
* Press Ctrl+C to shutdown.
<-- [GET] /2019/09/30/leccion.html
--> 200 OK /2019/09/30/leccion.html 5.63 KiB (15.964ms)
...
<-- [GET] /practicas/
--> 403 /practicas/ (2.199ms)
<-- [GET] /favicon.ico
```

See the `403 /practicas/ (2.199ms)` warning.

It seems `htmlproofer` is right in spite that it works in `github.io`

We use [HTMLProofer](https://github.com/gjtorikian/html-proofer) to test our web site.
Here is an example of use:

### Rakefile task for testing

```
~/.../sytws1920/ull-mii-sytws-1920.github.io(master)]$ cat Rakefile 
```

```ruby
desc "sytws: bundle exec jekyll serve --watch"
task :serve do
  sh "bundle exec jekyll serve --future --watch --port 8080 --host 10.6.128.216"
end

... # more tasks

require 'html-proofer'
desc "test links in the build web site"
task :test do
  sh "bundle exec jekyll build"
  options = { 
    :assume_extension => true, 
    :disable_external => true, 
    :empty_alt_ignore => true,
    :file_ignore => [ %r{categories} ]
  }
  HTMLProofer.check_directory("./_site", options).run
end
```

### Testing with GitHub Actions 

Here is an example of using the action [Proof-HTML](https://github.com/marketplace/actions/proof-html) to check the health of our site:

{% raw %}
```yml
➜  apuntes git:(main) ✗ cat .github/workflows/testHTML.yml
name: CI
on:
  push:
  schedule:
    - cron: '0 8 * * 6'
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-ruby@v1
        with:
          ruby-version: 2.7.x
      - uses: actions/cache@v2
        with:
          path: vendor/bundle
          key: ${{ runner.os }}-gems-${{ hashFiles('**/Gemfile.lock') }}
          restore-keys: |
            ${{ runner.os }}-gems-
      - run: |
          bundle config path vendor/bundle
          bundle install --jobs 4 --retry 3
      - run: bundle exec jekyll build
      - uses: anishathalye/proof-html@v1
        with:
          directory: ./_site
          enforce_https: false
          tokens: |
            {"https://github.com": "${{ secrets.GITHUB_TOKEN }}"}
          url_ignore: |
            https://www.example.com/
            https://en.wikipedia.org/wiki/Main_Page
          url_ignore_re: |
            ^https://twitter.com/
```
{% endraw %}

### Testing with HTMLProofer and Travis

* [Using HTMLProofer From Ruby and Travis](https://github.com/gjtorikian/html-proofer/wiki/Using-HTMLProofer-From-Ruby-and-Travis)


## Jekyll as a Web Service

* [Jekyll JSON API](https://www.techiediaries.com/how-to-use-jekyll-like-a-pro-output-data-as-json/)

## Maths y Jekyll

See the tutorial:

* [Adding MathJax to a GitHub Pages Jekyll Blog](https://sgeos.github.io/github/jekyll/2016/08/21/adding_mathjax_to_a_jekyll_github_pages_blog.html)

Summarizing, the simplest way is to add a line like:

```html
<!-- Mathjax Support  -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML' async></script>
```

at then end of your layout.

Here is an example of what you can do:

```latex
$$ r = h = \sqrt{\frac {1} {2}} = \sqrt{\frac {N} {N+1}} \sqrt{\frac {N+1} {2N}} $$
```

that renders as:

$$ r = h = \sqrt{\frac {1} {2}} = \sqrt{\frac {N} {N+1}} \sqrt{\frac {N+1} {2N}} $$

## Working with upcoming posts in Jekyll

We used to work on more than one post at a time and publish them in future. 
So you just want to test them while writing the blog, but you don't want publish them to your live blog immediately. There are  different ways to achieve this in jekyll. This article discuss several workflows:

* [Working with upcoming posts in Jekyll](https://www.fizerkhan.com/blog/posts/Working-with-upcoming-posts-in-Jekyll.html)

## Cursos en YouTube de Jekyll and NetlifyCMS por Thomas Bradley

* [Jekyll](https://www.youtube.com/playlist?list=PLWjCJDeWfDdfVEcLGAfdJn_HXyM4Y7_k-)
* [Jekyll + NetlifyCMS](https://www.youtube.com/playlist?list=PLWjCJDeWfDdcU8zbZZrr6L1zpf_2Eqt_w) 14 Youtube videos
* [Jekyll + Patternbot](https://www.youtube.com/playlist?list=PLWjCJDeWfDdcEBngBwpB8F7wtjZ12PIy0)

## Chen Hui Jing Talks on Jekyll

* [Chen Hui Jing talks on Jekyll](https://www.chenhuijing.com/blog/jekyll/#%F0%9F%91%BE)
* [Chen Hui Jing talks](https://www.chenhuijing.com/talks/#%F0%9F%8F%80) Slides in reveal.js


## Práctica jekyll-netlify

* [Práctica jekyll-netlify]({{site.baseurl}}/practicas/jekyll-netlify)
* [Práctica jekyll-search](practicas/jekyll-search)
