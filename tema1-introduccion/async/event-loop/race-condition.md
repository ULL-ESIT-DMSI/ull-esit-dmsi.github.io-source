---
title: "Race Condition: Loading an image with some delay"
layout: default

rubrica:
  - "Encontrada explicación correcta"
  - "Informe bien elaborado"
---

# {{ page.title }}


## The code

Consider this file `index.html`: 

```html
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Asynchronous Image Loading</title>
</head>
<body>
  <div id="holder-div"></div>

  <script type="text/javascript">
    let image = new Image(100),
        //url = "https://elementscpa.com/wp-content/uploads/2017/08/elementscpa-business-infinity-loop-tal-e1504182065499.png", 
        url = "infinity-loop.png", 
        container = document.getElementById("holder-div");

    image.src = url; // I suppose the "load" process starts here

    let waitFor = 0;
    //let waitFor = 2000;
    setTimeout(function(){
      // The onload event occurs when an object has been loaded
      // We only append it to the container when the load has finished
      // If 1000 the handler is inserted in the event queue too late
      // If an EventListener is added to an EventTarget while it is 
      // processing an event, that event does not trigger the listener.
      image.addEventListener("load", function() {
        console.trace();
        container.appendChild(image)
      });
    }, waitFor);

  </script>
  <a href="http://www.infoq.com/presentations/javascript-concurrency-parallelism">Concurrency and Parallel Computing in JavaScript (Recorded at: StrangeLoop) by Stephan Herhut on Mar 05, 2014 </a>
</body>
</html>
```

The `EventTarget.addEventListener()` method of the [EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget) sets up a function that will be called whenever the specified event is delivered to the target.

## The Experiment

Install  [http-server](https://www.npmjs.com/package/http-server).

Then  serve this `index.html` file with:

```
http-server -p 9000 -o
```

with this line uncommented 

```js
let waitFor = 2000;
```

Can you see the infinite loop image?

Now  comment the line where `waitFor` is initialized and uncomment the other:

```js
let waitFor = 0;
```

and run:

```
http-server -p 8000 -o
```

(Change the port to avoid cache problems)

What do you think it will happen? Can you explain it?

## Think

Here is again our image of the event loop:

![]({{ site.baseurl }}/assets/images/event-loop.png)


## Comments

El código:

```js
 image.addEventListener("load", function() {
        console.trace();
        container.appendChild(image)
      });
```

hace que el evento `load` sea registrado en el elemento `image` que ha sido creado dinámicamente, pero el `setTimeout` que lo envuelve hace que dicho registro ocurra 
después de al menos `waitFor` milisegundos. 

Por tanto, si pasa cierto tiempo es posible que el evento `load` (la carga de la imagen)
haya ocurrido antes que el manejador sea registrado.

*Event listeners are not called if they are attached after the event has already fired. "You snooze, you lose."*

## Test adicional

Con `let waitFor = 0` pruebe a recargar la página. ¿Que ocurrirà?
¿Pasa lo mismo con todos los navegadores?

<hr/>

## Objetivo

In your report, develop an explanation for the observed behaviors.

## Referencias

* Tema [Async Programming in JavaScript](/temas/async/event-loop) The Event Loop
* [Meta repo de la Charla UAI2015](https://github.com/ULL-MII-SYTWS-1920/uai2015)
  * [Repo de Ejemplo ULL-MII-SYTWS-1920/js-race](https://github.com/ULL-MII-SYTWS-1920/js-race)
* Charla en InfoQ: [https://www.infoq.com/presentations/javascript-concurrency-parallelism/](https://www.infoq.com/presentations/javascript-concurrency-parallelism/)
* [Abstract de la charla UAI2015](uai-2015-abstract)
* [Race Condition in JavaScript](https://youtu.be/wNwBzgDm0BI) YouTube Video
