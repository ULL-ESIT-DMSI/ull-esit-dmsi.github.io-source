---
title: Introduction to CORS
permalink: /temas/cors
---

# {{ page.title }}

The **default behavior of web browsers that initiate requests from a page via JavaScript is that they follow the same-origin policy**. 

Two URLs would be considered to be having different origins when they have different protocols, ports (if specified), or hosts.

![]({{site.baseurl}}/assets/images/same-origin-definition.png)

This means that requests can only be made to the same domain (or sub domain). 
**Requests to an entirely different domain will fail**.

![]({{site.baseurl}}/assets/images/same-origin-error.png)

This restriction exists because requests made at other domains by your browser would carry along your cookies which often means you'd be logged in to the other site. 

So, without **same-origin**, any site could host JavaScript that called logout on <campusvirtual.ull.es>
for example, and it would log you out. 

:+: Now imagine the complications when we talk about banking sites, government sites, etc.

So, **all browsers simply restrict script-based network calls to their own domain** to make it simple and safe.

CORS allows these cross-domain requests to happen, but **only when each side opts into CORS support**.

If your server is configured for CORS, it will return an extra header with `Access-Control-Allow-Origin` on each response.

![]({{site.baseurl}}/assets/images/cors-header.png)

Sometimes it's just a helpful website (say, https://my.first.site.foo) trying to use a public API from another origin (say, <https://api.github.com>). The programmers who worked hard on api.github.com want all origins to access their site's contents freely. In that case, the API server at api.github.com can use CORS headers to allow my.first.site.foo (or any other requesting origin) to access its API responses.

![]({{site.baseurl}}/assets/images/cors-header-github-rest-api.png)

So, most of the time cross-origin access is a bad thing, but there are cases where it's a good thing. 
CORS allows the good case to happen when the requested site wants it to happen.

CORS allows the server to explicitly whitelist certain origin and help to bypass the **same-origin** policy.

