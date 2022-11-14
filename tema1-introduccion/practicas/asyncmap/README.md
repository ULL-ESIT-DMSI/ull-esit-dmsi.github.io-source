---
title: Async map
permalink: /tema1-introduccion/practicas/asyncmap/
#published: true
#date: "2022/10/10 02"
#campus: "https://campusdoctoradoyposgrado2223.ull.es/mod/assign/view.php?id=781"
#delivery: "2022/11/03"
key: asyncmap
#layout: Practica
order: 7
prev: intro2sd.md
next: 
rubrica:
  - "Código de la práctica correcto"
  - "Se da una solucion paralela usando la librería async"
  - "Se da una solucion paralela sin usar la librería async al problema de la lectura de ficheros"
  - "Se crea una función <code>asyncmap</code> genérica que funciona como el <code>map</code> de async"
  - "Se da una función <code>series</code> que resuelve el problema de serializar llamadas a funciones asíncronas"
  - "El informe incluye el ejemplo de las <i>race conditions</i>"
  - "Informe bien elaborado"
  - "Kanban Board project conteniendo las incidencias de la rúbrica"
  - "Ha entregado el .zip en el campus con el repo"
---

# {{ page.title }}


## Descripción de la Práctica 

Para la realización de esta práctica estudie /repase el tema [Async Programming in JavaScript]({{ site.baseurl }}/tema1-introduccion/async/).

El objetivo es escribir un programa Node.js que usando `fs.readFile` 

1. lea **en paralelo** un conjunto de ficheros pasados como argumentos en línea de comandos y 
2. produzca como salida la concatenación de los mismos en el orden especificado. 
 
No se considera una solución usar `fs.readFileSync` o timers (`setTimeout` etc.) o usar promesas. Se pide una solución usando callbacks.
Use `fs.readFile(path[, options], callback)`. 

Este sería un ejemplo de uso:

```
$ concat -f one.txt -f two.txt -f three.txt -o salida.txt
```

## commander

Con [commander](https://www.npmjs.com/package/commander?activeTab=readme) es posible indicar una opción que se puede repetir

```js
const program = require('commander');
function collect(value, previous) {
  return previous.concat([value]);
}
program.option('-c, --collect <value>', 'repeatable value', collect, []);
program.parse(process.argv);
console.log(program.collect)
```

Ejecución:

```
$ node repeatable-option-commander.js -c a -c b -c c
[ 'a', 'b', 'c' ]
```
## Entrega

### Solución con el Módulo async-js

Lea la sección [The Async Module]({{ site.baseurl }}/temas/async/async-js) de los apuntes y encuentre una solución usando `Async`. 

Considere la posibilidad de excepciones debidas a que alguno de los ficheros no exista. 

Si no se le ocurre una solución, puede consultar las soluciones a la pregunta [NodeJS - How to read multiple files asynchronously and write read contents to one file](https://stackoverflow.com/questions/39020704/nodejs-how-to-read-multiple-files-asynchronously-and-write-read-contents-to-on) en StackOverflow.

### Solucion sin usar el Módulo async-js

A continuación, busque  una solución para este problema sin hacer uso de `Async` ¿Cómo lo haría?
No se considera una solución usar `fs.readFileSync` o timers (`setTimeout` etc.) o usar promesas. Se pide una solución usando callbacks.

### Abstracción de la solución

Haciendo abstracción de la solución encontrada en el paso anterior escriba una función `asyncMap` que funcione como el `map` del módulo `Async` y que sirva 
para cualuier función asíncrona que siga el patrón de `callback(err, result)`:

  ```js
  asyncMap(inputs, (item, cb) => fs.readFile(item, cb), (err, contents) => { ... });
  ```

### Variante del Problema: Serial en vez de paralelo

Ahora cambiamos el problema para lea **en secuencial** el conjunto de ficheros pasados como argumentos en línea de comandos y 
produzca como salida la concatenación de los mismos en el orden especificado. Las mismas restricciones que en el caso anterior.

Provea una  función general `series` que secuencialice cualquier array de funciones asíncronas.
Debe funcionar tal como lo hace la función `series`  del módulo [Async.js]({{ site.baseurl }}/temas/async/async-js).

Esta sería la forma de uso de la función `series`:

```js
series(program.files, (file, cb) => fs.readFile(file, cb),  function(err, results)  {
    if (err == null) {
      let file = fs.createWriteStream(program.output);
      file.on('error', err => { throw new Error("Error en la apertura del archivo " + program.output + " " + err) });
      results.forEach(i => { file.write(i + '\n'); });
      file.end();
    } else {
         throw new Error("Fallo en la lectura de los ficheros\n" + err)
    }
});
```

## Módulos CommonJS y ES6 

Esta es la estructura del template de la práctica:

```
➜  asyncmap-solution git:(main) tree -I node_modules
.
├── README.md
├── concatSerialize.js
├── my-async.mjs
├── package-lock.json
├── package.json
├── scripts
│   ├── create-inputs.bash
│   └── make-big-file.bash
├── sol-using-async.mjs
└── test
    ├── expected.txt
    ├── f1.txt
    ├── f2.txt
    ├── f3.txt
    └── output.txt
```

En `concatSerialize.js` los módulos son cargados usando `require` (ver [CommonJS](https://nodejs.org/api/modules.html#modules_modules_commonjs_modules)) mientras que en `sol-using-async.mjs`  y `my-async.mjs` 
se usan los módulos ES6 (ver [ECMAScript Modules](https://nodejs.org/api/esm.html#esm_ecmascript_modules)).

## Variables en el package.json

En el directorio `scripts` hay dos scripts para la creación de ficheros de prueba y que son usados en la sección `scripts` del `package.json`. 


```
➜  asyncmap-solution git:(main) npm run
Lifecycle scripts included in asyncmap-solution@1.0.0:
  test
    npm run clean; npm run create-inputs 3 7; npm run my-async.mjs; cmp --silent test/output.txt test/expected.txt && echo 'OK'

available via `npm run-script`:
  create-inputs
    scripts/create-inputs.bash ${npm_package_config_numfiles} ${npm_package_config_size}
  my-async.mjs
    node my-async.mjs -f test/f*.txt -o test/output.txt
  sol-using-async.mjs
    node sol-using-async.mjs -f test/f*.txt -o test/output.txt
  concatSerialize.js
    node concatSerialize.js -f test/f{1..3}.txt -o test/output.txt
  test-err
    node my-async.js -f f1.txt -f no-existe.txt -f f3.txt -o test/output.txt
  save
    git commit -am save && git push -u origin main
  clean
    rm -f test/f*.txt test/output.txt
```

El `package.json` ilustra como se pueden definir variables en la sección `"config"` y usarlas en los `scripts` de `npm` referenciándolas con `${npm_package_config_varname}`.:

```json
  ...  
  "config": {
    "numfiles": 3,
    "size": 7
  },
  "scripts": {
    ...
    "create-inputs": "scripts/create-inputs.bash ${npm_package_config_numfiles} ${npm_package_config_size}",
    ...
  },

```

# Rúbrica

{% include rubrica.md -%}


## Referencias

* Tema [Async Programming in JavaScript]({{ site.baseurl }}/tema1-introduccion/async/)
* Sección [The Async Module]({{ site.baseurl }}/tema1-introduccion/async/async-js) de estos apuntes
* El manual del módulo async: <https://caolan.github.io/async/v3/>
* Pregunta [NodeJS - How to read multiple files asynchronously and write read contents to one file](https://stackoverflow.com/questions/39020704/nodejs-how-to-read-multiple-files-asynchronously-and-write-read-contents-to-on) en StackOverflow
