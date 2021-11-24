---
---
## Debugging with Chrome

### Debugging Client Code with Chrome

* [Debugging in Chrome in the client in javascript.info](https://javascript.info/debugging-chrome)

### Debugging NodeJS with Chrome

En la terminal:

```
➜   node --version
v14.4.0
➜   node --inspect-brk logging-espree.js
Debugger listening on ws://127.0.0.1:9229/331b3011-c7f5-447f-8731-1371c53847a5
For help, see: https://nodejs.org/en/docs/inspector
```

the option `--inspect-brk=[host:port]` does the following:

* Enable inspector agent
* Bind to address or hostname `host` (default: 127.0.0.1)
* Listen on port `port` (default: 9229)
* Break before user code starts

En el navegador abrimos la URL `chrome://inspect` y hacemos `click` en el enlace *inspect*

![]({{site.baseurl}}/assets/images/chrome-debugging-nodejs-inspect.jpg)

Insert `debugger` statements wherever you want to set a break-point:

![]({{site.baseurl}}/assets/images/chrome-debugging-nodejs-debug-statements.png)

## Debugging with Visual Studio

If the <strong>Auto Attach</strong> feature is enabled, the Node debugger automatically attaches to certain Node.js processes that have been launched from VS Code's Integrated Terminal. To enable the feature, either use the <strong>Toggle Auto Attach</strong> command from the command palette (<span class="keybinding">F1</span>) or, if it's already activated, use the <strong>Auto Attach</strong> Status bar item

After enabling Auto Attach, you'll need to restart your terminal. 

![](https://code.visualstudio.com/assets/docs/nodejs/nodejs-debugging/auto-attach.gif)

See [Node.js debugging in VS Code](https://code.visualstudio.com/docs/nodejs/nodejs-debugging)

## References

* [Node.js debugging in VS Code](https://code.visualstudio.com/docs/nodejs/nodejs-debugging)
* [Node.JS Debugging Guide](https://nodejs.org/en/docs/guides/debugging-getting-started/)
* Mis viejos apuntes: [Debugging NodeJS](https://casianorodriguezleon.gitbooks.io/ull-esit-1617/content/apuntes/nodejs/)
* Debugging in 2017 with Node.js YouTube video https://youtu.be/Xb_0awoShR8
    * [Debugging in 2017 with Node.js](https://youtu.be/Xb_0awoShR8) YouTube
