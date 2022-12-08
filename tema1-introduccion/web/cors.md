---
title: Introduction to CORS
permalink: /temas/cors
---

- [{{ page.title }}](#-pagetitle-)
  - [Same origin policy](#same-origin-policy)
  - [Cross-Origin Resource Sharing CORS](#cross-origin-resource-sharing-cors)
  - [How CORS works](#how-cors-works)
  - [CORS and Fetch API](#cors-and-fetch-api)

# {{ page.title }}

## Same origin policy

The **default behavior of web browsers that initiate requests from a page via JavaScript is that they follow the same-origin policy**. 

Two URLs would be considered to be having different origins when they have different protocols, ports (if specified), or hosts.

![]({{site.baseurl}}/assets/images/same-origin-definition.png)

<em>Origin</em> includes the combination of <strong>protocol, domain,</strong> and <strong>port.</strong> This means 

- <em>https://</em><strong><em>api</em></strong><em>.mydomain.com</em> and 
- <em>https://mydomain.com</em> 

are actually different origins and thus impacted by same-origin policy.

In a similar way, 
- <em>https://localhost:</em><strong><em>9000</em></strong> and 
- <em>https://localhost:</em><strong><em>8080</em></strong> 

are also different origins. The **path** or **query** parameters  are ignored when considering the origin.

Under SOP requests can only be made to the same domain. 
**Requests to a different domain will fail**.

![]({{site.baseurl}}/assets/images/same-origin-error.png)

Websites use cookies to keep track of authentication or session info. 
Those **cookies are bounded to a certain domain** when they are created. 

On every HTTP call to that domain, **the browser will attach the cookies that were created for that domain**. This is on _every_ HTTP call, which could be for static images, HTML pages, or even AJAX calls.

This means when you log into <em>https://examplebank.com</em>, a cookie is stored for <em>https://examplebank.com</em>. If that bank is a single-page React app, they may have created a REST API at <em>https://examplebank.com/api</em> for the SPA to communicate via AJAX.

1. Let’s say you browse to a malicious website  <em>https://evilunicorns.com</em> while logged into <em>https://examplebank.com</em>. 
2. Without same-origin policy, that hacker website could make **authenticated** malicious AJAX calls to <em>https://examplebank.com/api</em> to <code>POST /withdraw</code> even though the hacker website doesn’t have direct access to the bank’s cookies.

**This is due to the browser behavior of automatically attaching any cookies bounded to <em>https://examplebank.com</em> for any HTTP calls to that domain**, including AJAX calls from <em>https://evilunicorns.com</em> to <em>https://examplebank.com</em>. 

By restricting HTTP calls to only ones to the same origin (i.e. the browser tab’s domain), same-origin policy closes some hacker backdoors such as around <a href="https://en.wikipedia.org/wiki/Cross-site_request_forgery" target="_blank" rel="noopener noreferrer">Cross-Site Request Forgery (CSRF)</a> and <a href="https://en.wikipedia.org/wiki/Cross-site_scripting" target="_blank" rel="noopener noreferrer">Cross-Site Scripting (XSS)</a>.

So, **all browsers simply restrict script-based network calls to their own domain** to make it simple and safe.

## Cross-Origin Resource Sharing CORS

CORS allows these cross-domain requests to happen, but **only when each side opts into CORS support**.

If your server is configured for CORS, it will return an extra header with `Access-Control-Allow-Origin` on each response.

![]({{site.baseurl}}/assets/images/cors-header.png)

Sometimes it's just a helpful website (say, https://my.first.site.foo) trying to use a public API from another origin (say, <https://api.github.com>). The programmers who worked hard on api.github.com want all origins to access their site's contents freely. In that case, the API server at api.github.com can use CORS headers to allow my.first.site.foo (or any other requesting origin) to access its API responses.

![]({{site.baseurl}}/assets/images/cors-header-github-rest-api.png)

So, most of the time cross-origin access is a bad thing, but there are cases where it's a good thing. 
CORS allows the good case to happen when the requested site wants it to happen.

CORS allows the server to explicitly whitelist certain origin and help to bypass the **same-origin** policy.

## How CORS works

This is how a **simple CORS request** works:

1.  A browser tab open to `https://www.mydomain.com` initiates AJAX request `GET https://api.mydomain.com/widgets`
2.  Along with adding headers like `Host`, the browser automatically adds the `Origin` Request Header for cross-origin requests:

  ```http
  GET /widgets/ HTTP/1.1
  Host: api.mydomain.com
  Origin: https://www.mydomain.com
  [Rest of request...]
  ```
3. The server checks the `Origin` request header. If the Origin value is allowed, it sets the `Access-Control-Allow-Origin` to the value in the request header `Origin`.
   
  ```http
     HTTP/1.1 200 OK  
     Access-Control-Allow-Origin: https://www.mydomain.com  
     Content-Type: application/json
     [Rest of response...]  
  ```
4. When the browser receives the response, 
   * the browser checks the `Access-Control-Allow-Origin` header to see if it matches the origin of the tab.  If not, the response is blocked. 
   * The check passes if either the `Access-Control-Allow-Origin` matches the single origin exactly or contains the wildcard `*` operator.
   * A server that responds `Access-Control-Allow-Origin: *` allows all origins.
     Use `*` if your application absolutely requires it, such as creating an open/public API.
   
If you want to know more about CORS continue reading the section [Cross-Origin Resource Sharing CORS: Second Part](/temas/cors-advanced) of the course.

## CORS and Fetch API

If you want to avoid the blocking, the server that hosts the resource needs to have CORS enabled. 
What you can do on the client side is set the mode of `fetch` to `cors`  (Not really needed, this is the default setting):

```js
fetch(request, {mode: 'cors'});
```

The `mode` option specifies the mode you want to use for the request, e.g., `cors`, `no-cors`, or `same-origin`.

- With `same-origin` you can perform requests only to your `origin`, otherwise the request will result in an error.
- With `no-cors`, you can perform requests to other origins, even if they don't set the required CORS headers, but you'll get an **opaque** response. With an opaque response we won't be able to read the data returned or view the status of the request, meaning we can't check if the request was successful or not.
  
However this still requires the server to enable CORS as well, and allow your domain to request the resource.

