---
title: Service Workers
permalink: /temas/service-workers
---
Basically, a Service Worker is a type of Web Worker, and more specifically it’s like a <a href="https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker" rel="noopener ugc nofollow" target="_blank">Shared Worker</a>.

**Service workers** essentially act as proxy servers that sit between web applications, the browser, and the network (when available). 

They are intended, among other things, to enable the creation of effective offline experiences by


1. intercept network requests and 
2. take appropriate action based on whether the network is available, and 
3. update assets residing on the server.

![](/assets/images/service-workers-1.webp)