---
title: "Working with different environments: url and baseurl and more"
---


Now you have to test your site locally and to deploy it in production. Sometimes, the `baseurl` is different and the `jekyll build` may not work out of the box in one of those environment.

We need to understand `site.url` and `site.baseurl` and `page.path` and in which situation we need them. Those variables don't serve the same purpose.

![]({{site.baseurl}}/assets/images/what-is-a-baseurl.jpeg)

## `site.url`

`site.url` is typically used in conjunction with `site.baseurl` when you want a link to something with the full URL to it. 

For example, in the page head for the `canonical` header and the `RSS link`. It's also used in the xml feed to point to site resources as the software that will manage this feed doesn't know resource's urls.

## `site.baseurl`

`site.baseurl` indicates the root folder of your Jekyll site. By default it is set to `""` (empty string). That means that your Jekyll site is at the root of `http://example.com`.

If your Jekyll site lives in `http://example.com/blog`, you have to set `site.baseurl` to `/blog` (*note the slash!*). This will allow assets (css, js) to load correctly.

See how assets must be loaded in your `head` section:

```html
{%raw%}<link rel="stylesheet" href="{{ site.baseurl }}/css/main.css">{%endraw%}
```  

or, more verbose:

```html
{%raw%}<link rel="stylesheet" href="{{ "/css/main.css" | prepend: site.baseurl }}">{%endraw%}
```   

## Use `jekyll serve`

Let's imagine that your site lives in a github repository `introduction` inside an organization `ULL-ESIT-PL-1819`:

```
$ git remote -v
origin	git@github.com:ULL-ESIT-PL-1819/introduccion.git
```

and is served at GitHub at the url: `https://ull-esit-pl-1819.github.io/introduccion/`.

You can setup the `baseurl` to `/introduccion` and test your site locally with `jekyll serve`, your site will be served at `http://127.0.0.1:4000/introduccion/`

## Use multiple configuration files

If, for one reason or another, you cannot use `jekyll serve`, you can set a configuration file for both environment and `jekyll build` depending on where you are deploying.

Let's say we have the local site served at `http://localhost` and the production site served at `https://username.github.io/myProject`.

We leave the `_config.yml` with 

```yml
url: https://username.github.io
baseurl: /myProject
```

We create a new `_config_dev.yml` with only 

```yml
url: https://localhost 
baseurl: ""
```

Now to test locally :

    jekyll build --config _config.yml,_config_dev.yml
    

or

    jekyll build --config _config.yml,_config_dev.yml --watch
    

When pushed on production, the <code>jekyll build</code> command will use the default <code>_config.yml</code>.
