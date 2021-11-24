---
title: Jest
---


[Jest](https://jestjs.io/) es un framework de prueba de código abierto. 

Desarrollado por Facebook e integrado en el popular paquete de [create-react-app](https://github.com/facebook/create-react-app).

```
npm install --save-dev jest
```

Jest viene con capacidades de built-in mocking y aserción incorporadas. Además, Jest ejecuta sus pruebas simultáneamente en paralelo, lo que proporciona una ejecución de prueba más suave y más rápida.

Jest también proporciona [snapshots testing](https://jestjs.io/docs/en/snapshot-testing). 

* [Getting Started](https://jestjs.io/docs/en/getting-started)

## Example

```js
// If you want debugging output run it this way:
// DEBUG=1 npm test
const debug = process.env["DEBUG"];
const { inspect } = require('util');
const ins = (x) => { if (debug) console.log(inspect(x, {depth: null})) };

const buildLexer = require('./index');

const SPACE = /(?<SPACE>\s+|\/\/.*)/;
const RESERVEDWORD = /(?<RESERVEDWORD>\b(const|let)\b)/;
const ID = /(?<ID>\b([a-z_]\w*))\b/;
const STRING = /(?<STRING>"([^\\"]|\\.")*")/;
const OP = /(?<OP>[+*\/=-])/;

const myTokens = [
  ['SPACE', SPACE], ['RESERVEDWORD', RESERVEDWORD], ['ID', ID], 
  ['STRING', STRING], ['OP', OP] 
];

let str, lexer, r;
lexer = buildLexer(myTokens);

str = 'const varName = "value"';
ins(str);
r = lexer(str);
ins(r);
let expected = [
  { type: 'RESERVEDWORD', value: 'const' },
  { type: 'ID', value: 'varName' },
  { type: 'OP', value: '=' },
  { type: 'STRING', value: '"value"' }
];

test(str, () => {
  expect(r).toEqual(expected);
});

str = 'let x = a + \nβ';
ins(str);
r = lexer(str);
expected = [
  { type: 'RESERVEDWORD', value: 'let' },
  { type: 'ID', value: 'x' },
  { type: 'OP', value: '=' },
  { type: 'ID', value: 'a' },
  { type: 'OP', value: '+' },
  { type: 'ID', value: 'β' }
];
ins(r);
test(str, () => {
  expect(r).toEqual(expected);
});


str = ' // Entrada con errores\nlet x = 42*c';
ins(str);
r = lexer(str);
ins(r);
expected = [
  { type: 'RESERVEDWORD', value: 'let' },
  { type: 'ID', value: 'x' },
  { type: 'OP', value: '=' },
  { type: 'ERROR', value: '42*c' }
];

test(str, () => {
  expect(r).toEqual(expected);
});
```

* [ULL-ESIT-PL-1920/lexer-generator](https://github.com/ULL-ESIT-PL-1920/lexer-generator) (private)