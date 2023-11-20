---
permalink: /practicas/nextjs
key: nextjs
rubrica:
   - "Code of the lab is correct and works"
   - "Site deployed at netlify and Vercel"
   - "Images request added"
   - "REST answers to exercises are correct"
   - "Exercise Dynamic Routes reported"
   - "Report is correct and complete"
   - "Kanban Board Project reflects the rubric issues"
   - "The .zip has been delivered on the campus"
---

- [Introduction to the JAM Stack with NextJS, React, REST and Netlify](#introduction-to-the-jam-stack-with-nextjs-react-rest-and-netlify)
  - [Introduction to Open AI REST API](#introduction-to-open-ai-rest-api)
  - [Creating an Account](#creating-an-account)
  - [Generating an API key](#generating-an-api-key)
  - [REST exercises](#rest-exercises)
    - [Vscode Thunder Client](#vscode-thunder-client)
    - [Chrome](#chrome)
  - [Setup](#setup)
  - [Single Page Applications](#single-page-applications)
  - [What is Rendering](#what-is-rendering)
  - [Origin Servers, CDNs and Edges](#origin-servers-cdns-and-edges)
    - [Origin Servers](#origin-servers)
    - [Content Delivery Network](#content-delivery-network)
    - [The Edge](#the-edge)
  - [The pages folder](#the-pages-folder)
    - [References](#references)
  - [The pages folder: Dynamic routes](#the-pages-folder-dynamic-routes)
    - [Exercise on Dynamic Routes](#exercise-on-dynamic-routes)
  - [next.js pages/api folder](#nextjs-pagesapi-folder)
  - [Serverless Functions](#serverless-functions)
  - [pages/api/generate.js](#pagesapigeneratejs)
    - [Environment: `process.env.OPENAI_API_KEY`](#environment-processenvopenai_api_key)
      - [Exposing Environment to the browser](#exposing-environment-to-the-browser)
      - [Vercel: Environment Variables](#vercel-environment-variables)
      - [Netlify: Environment Variables](#netlify-environment-variables)
      - [References](#references-1)
    - [Request and Response objects: `export default async function (req, res) { ... }`](#request-and-response-objects-export-default-async-function-req-res---)
    - [OpenAI Completions: `const completion = await openai.createCompletion({ ... })`](#openai-completions-const-completion--await-openaicreatecompletion--)
  - [pages/index.js](#pagesindexjs)
    - [JSX](#jsx)
    - [Comments to `import Head from "next/head"`](#comments-to-import-head-from-nexthead)
    - [Comments to `import styles from "./index.module.css"`](#comments-to-import-styles-from-indexmodulecss)
    - [Comments to `<link rel="icon" href="/dog.png" />`](#comments-to-link-relicon-hrefdogpng-)
    - [Comments to `<main className={styles.main}>` Curly Braces in JSX](#comments-to-main-classnamestylesmain-curly-braces-in-jsx)
    - [Comments to `<form onSubmit={onSubmit}> ...</form>`](#comments-to-form-onsubmitonsubmit-form)
    - [Comments to `const response = await fetch("/api/generate", { ... })`](#comments-to-const-response--await-fetchapigenerate---)
  - [State in React](#state-in-react)
    - [React States](#react-states)
    - [The useState hook](#the-usestate-hook)
    - [State in our Application](#state-in-our-application)
      - [When the API returns the result](#when-the-api-returns-the-result)
      - [When the user types in the input box](#when-the-user-types-in-the-input-box)
    - [References](#references-2)
  - [Continue learning React](#continue-learning-react)
  - [Stages of a web application](#stages-of-a-web-application)
  - [build](#build)
    - [The NextJS Compiler](#the-nextjs-compiler)
    - [The command next build](#the-command-next-build)
  - [Production](#production)
  - [Exercise: Deploy at Netlify with the UI](#exercise-deploy-at-netlify-with-the-ui)
    - [Make public your repo](#make-public-your-repo)
    - [Deploy with the Netlify UI](#deploy-with-the-netlify-ui)
  - [Netlify Environment Variables](#netlify-environment-variables-1)
  - [Exercise: Deploy with the Netlify CLI](#exercise-deploy-with-the-netlify-cli)
    - [Install the Netlify CLI](#install-the-netlify-cli)
    - [Link the repo to Netlify](#link-the-repo-to-netlify)
    - [Check the status](#check-the-status)
    - [List/Get/Set the environment variables](#listgetset-the-environment-variables)
    - [Development mode with the Netlify CLI](#development-mode-with-the-netlify-cli)
    - [Deploying with the Netlify CLI](#deploying-with-the-netlify-cli)
  - [Exercise: Deploy the app to Vercel](#exercise-deploy-the-app-to-vercel)
    - [Deploying with the Vercel CLI](#deploying-with-the-vercel-cli)
  - [Exercise: Get images from OpenAI](#exercise-get-images-from-openai)
  - [Rubrica](#rubrica)
  - [References](#references-3)

# Introduction to the JAM Stack with NextJS, React, REST and Netlify

## Introduction to Open AI REST API

In this lab we will build a "pet name generator web app" wich is described in the 

* OpenAI API [quickstart tutorial](https://beta.openai.com/docs/quickstart).  
 
You can see a solution deployed at netlify:  <https://nextjs-oai.netlify.app/>

The code uses the [Next.js](https://nextjs.org/) framework with [React](https://reactjs.org/). 

[Next.js](https://nextjs.org/learn/foundations/about-nextjs) is a framework on top of React that handles the tooling and configuration needed for React, and provides additional structure, features, and optimizations for your application.

Read  both this tutorial and the original [OpenAI API quickstart tutorial](https://beta.openai.com/docs/quickstart).

## Creating an Account

[Create an account at openai api](https://openai.com/api/). Unfortunately, at some point is going to ask you for a phone number:

![openapi registration phone number]({{ site.baseurl }}/assets/images/openai-registration-phone-number.png)

It does not provide any alternatives. Let me know in advance if this is a problem for you.

## Generating an API key


Go to the user on the upper right corner and click on the API Keys tab. 
![](/assets/images/nextjs/menu-1.png)

Choose View API Keys.

![](/assets/images/nextjs/generate-api-key.png)

 Click on the "Create new secret Key" button and copy the key.


## REST exercises

Make requests to the OpenAI API using a client like the Thunder Client or Postman or Insomnia.

1. To get all models
2. To get info of a model
3. To get a cute image
4. To get a completion
5. To get a moderation

See <https://beta.openai.com/docs/api-reference/>

### Vscode Thunder Client

You can install the VSCode extension [Thunder Client](https://github.com/rangav/thunder-client-support) for testing the cat API.

{% include video provider="youtube" id="AbCTlemwZ1k?si=BAC6gcby6Fq1sNxD" %}

### Chrome

For Chrome you can install:

* [JSON Formatter for API](https://chrome.google.com/webstore/detail/json-formatter-for-api/ipofikknncgcohpploljmbmpkgamedmi)
* [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo)
* [Altair GraphQL Client](https://chrome.google.com/webstore/detail/altair-graphql-client/flnheeellpciglgpaodhkhmapeljopja)
  
## Setup

Here is the file tree hierarchy of the project:

```
✗ tree -I node_modules 
.
├── README.md
├── docs
│   └── images
│       ├── generate-api-key.png
│       ├── local-app-runnning.png
│       └── menu-1.png
├── package-lock.json
├── package.json
├── pages
│   ├── api
│   │   └── generate.js
│   ├── index.js
│   └── index.module.css
└── public
    └── dog.png

5 directories, 10 files
```

Proceed as follows:

1. Starting with the assignment repo, install the requirements

   ```bash
   $ npm install
   ```

   Which installs the dependencies listed in `package.json`:

   ```json
   ➜  openai-quickstart-node git:(main) ✗ jq '.dependencies' package.json 
    {
      "next": "^12.1.6",
      "openai": "^3.0.0",
      "react": "17.0.2",
      "react-dom": "17.0.2"
    }
   ```
   Notice that the `next` version major is 12 

2. Make a copy of the example environment variables file

   ```bash
   $ cp .env.example .env
   ```

3. Add your [API key](https://beta.openai.com/account/api-keys) to the newly created `.env` file

4. Run the app

   ```bash
   $ npm run dev
   ```

   The console shows:

   ``` 
   ➜  openai-quickstart-node git:(master) ✗ npm run dev

   > openai-quickstart-node@0.1.0 dev
   > next dev

   ready - started server on 0.0.0.0:3000, url: http://localhost:3000
   info  - Loaded env from /Users/casianorodriguezleon/campus-virtual/2223/learning/openai-learning/openai-quickstart-node/.env
   wait  - compiling...
   event - compiled client and server successfully in 1174 ms (113 modules)
   ```

5. You should now be able to access the app at [http://localhost:3000](http://localhost:3000)! 

   ![](/assets/images/nextjs/local-app-runnning.png)


For the context behind this example app, check out the [Open AI tutorial](https://beta.openai.com/docs/quickstart).

## Single Page Applications

Single Page Applications (SPAs) and Multi-Page Applications (MPAs) are architectural patterns for building web applications.

**SPA**s are reactive web applications that give a native look and feel without page loads. SPAs owe this to AJAX+Client-Side Rendering typically provided by a client-side framework such as react/vue/angular. 

**AJAX** stands for Asynchronous JavaScript And XML. It is the use of the XMLHttpRequest object to communicate with servers. It can send and receive information in various formats, including JSON, XML, HTML, and text files.

Many in the industry refer to more traditional web applications as Multi-Page Applications (MPAs). Such applications are comprised of multiple webpages that the user navigates between.

![spa-mpa-lifecycle.jpg]({{ site.baseurl }}/assets/images/spa-mpa-lifecycle.jpg)

## What is Rendering

**Rendering** is the conversion of the source code written in a reactive framework (React/Vue/AngularJS) into **the HTML representation of your User Interface**. 
Rendering can take place 
1. on the server or 
2. on the client. 
   
It can happen either 

1. ahead of time at **build time**, or 
2. on every request at runtime.

With Next.js, three types of rendering methods are available:

1. Server-Side Rendering, 
   
   ![](https://nextjs.org/static/images/learn/foundations/pre-rendering.png)

   On the client, the HTML is used to show a fast non-interactive page, while React uses the JSON data and JavaScript instructions to make components interactive. This process is called **hydration**.
2. Static Site Generation, and 
3. Client-Side Rendering.
   
   ![](https://nextjs.org/static/images/learn/foundations/client-side-rendering.png)

**Server-Side Rendering** and **Static Site Generation** are also referred to as **Pre-Rendering** 
because the fetching of external data and transformation of components into HTML happens **before** 
the result is sent to the client.

## Origin Servers, CDNs and Edges 

### Origin Servers

The origin server refers to the main computer that stores and runs the original version of your application code. When an origin server receives a request, it does some computation before sending a response. **The result of this computation work can be moved to a CDN (Content Delivery Network)**.

### Content Delivery Network

CDNs store **static content** (such as HTML and image files) in multiple locations around the world and are placed between the client and the origin server. When a new request comes in, the closest CDN location to the user can respond with the cached result.

![cdn.png]({{ site.baseurl }}/assets/images/cdn.png)

### The Edge

Edge servers are distributed to multiple locations around the world. Unlike CDNs, which store static content, Edge servers can run small snippets of code. Edge computing supports not only transmitting cached data but other types of computing like live streaming and gaming. 

## The pages folder

In Next.js, a **page** is a 

1. React Component. A React Component is a function that returns a UI element and can receive props as input.
2. exported from a `.js`, `.jsx`, `.ts`, or `.tsx` file and 
3. it must be in the `pages` directory. 
   
Each page is associated with a route based on its file name.

The `index.js` file is the main page `/` for the app. 

Pages can also be added under `src/pages` as an alternative to the root `pages` directory.

The `src` directory is very common in many apps and Next.js supports it by default.

**Example**: If you create `pages/about.js` that exports a React component like below, it will be accessible at `/about`.

```jsx
export default function About() {
  return <div>About</div>
}
```

### References

See <https://nextjs.org/docs/basic-features/pages>

## The pages folder: Dynamic routes

Next.js also supports pages with [dynamic routes](https://nextjs.org/docs/routing/dynamic-routes). 
For example, if you create a file called `pages/posts/[id].js`, then it will be accessible at `posts/1`, `posts/2`, etc.


See the full code of the examples used in this section in the repo [ULL-MII-SYTWS/nextjs-dynamic-routes](https://github.com/ULL-MII-SYTWS/nextjs-dynamic-routes)

```
➜  nextjs-dynamic-routes tree -I node_modules
.
├── README.md
├── package-lock.json
├── package.json
└── pages
    ├── index.jsx
    └── post
        ├── [pid]
        │   └── [comment].js
        └── [pid].js
```

Consider the following page `pages/post/[pid].js`:

```jsx
import { useRouter } from 'next/router'

const Post = () => {
  const router = useRouter()
  console.log(router.query)
  const { pid } = router.query
  return <p>Post: {pid}</p>
}

export default Post
```

Any route like `/post/1`, `/post/abc`, etc. will be matched by pages `/post/[pid].js`. 
The matched `path` parameter will be sent as a query parameter to the page, and it will be merged with the other query parameters.

For example, The page `pages/post/[pid]/[comment].js` 

```jsx
import { useRouter } from 'next/router'

const Comment = () => {
  const router = useRouter()
  console.log(router.query)
  const { pid, comment } = router.query

  return <p>pid: {pid} Comment: {comment}</p>
}

export default Comment
```

will match the route `/post/abc/a-comment` and its query object will be:

```json
{ "pid": "abc", "comment": "a-comment" }
```

```
➜  openai-quickstart-node git:(main) ✗ npx next --version 
Next.js v12.1.6
```

Client-side navigations to dynamic routes are handled with [next/link](https://nextjs.org/docs/api-reference/next/link). If we wanted to have links to the routes used above it will look like this:

```jsx
import Link from 'next/link'

function Home() {
  return (
    <ul>
      <li>
        <Link href="/post/abc">Go to pages/post/[pid].js</Link>
      </li>
      <li>
        <Link href="/post/abc?foo=bar">Also goes to pages/post/[pid].js</Link>
      </li>
      <li>
        <Link href="/post/abc/a-comment">
          Go to pages/post/[pid]/[comment].js
        </Link>
      </li>
    </ul>
  )
}

export default Home
```

NextJS provides through `next/link` a  React component called `Link` to do client-side route transitions.
See [Introduction to Routing](https://nextjs.org/docs/routing/introduction) in the NextJS docs.


See the code at [ULL-MII-SYTWS/nextjs-dynamic-routes](https://github.com/ULL-MII-SYTWS/nextjs-dynamic-routes)

### Exercise on Dynamic Routes

Follow the tutorial [Dynamic Routes](https://nextjs.org/learn/basics/dynamic-routes) at <https://nextjs.org/learn/basics/dynamic-routes> and solve the exercises. 

## next.js pages/api folder

Any file inside the folder `pages/api` is mapped to `/api/*` and **will be treated as an API endpoint instead of a page**. 

**They are server-side only bundles** and won't increase your client-side bundle size. See the section [API Routes](https://nextjs.org/docs/api-routes/introduction) introduction.

Each page is associated with a **route** based on its file name.

Since we have the file `pages/api/generate.js`, Next.js will make it accessible at the route `/api/generate`.

Create a file called `hello.js` in `pages/api` with the following code:

```js
export default function handler(req, res) {
  res.status(200).json({ text: 'Hello' });
}
```

Try accessing it at <http://localhost:3000/api/hello>. You should see `{"text":"Hello"}`. Note that:

* `req` is an instance of [http.IncomingMessage](https://nodejs.org/api/http.html#class-httpincomingmessage), plus some pre-built [middlewares](https://nextjs.org/docs/api-routes/api-middlewares).
* `res` is an instance of [http.ServerResponse](https://nodejs.org/api/http.html#http_class_http_serverresponse), plus some [helper functions](https://nextjs.org/docs/api-routes/response-helpers).

Functions exported by files inside the folder `pages/api` can be deployed as **Serverless Functions** (also known as **Lambdas**).  

API Routes can be dynamic, just like regular pages.


## Serverless Functions

[A **serverless** function](https://sytws.netlify.app/temas/web/serverless.html#serverless-functions) is a piece of code that is executed in response to a specific event, such as an HTTP request or a message being added to a queue. It is called "*serverless*" because the developer does not have to worry about the underlying infrastructure that the code will be running on. Instead, the infrastructure is managed by a third party, such as AWS Lambda or Google Cloud Functions. 

The developer only needs to provide the code and specify the events that should trigger the code to be executed. The **serverless provider** takes care of the rest, including automatically scaling the function to handle a large number of requests.

![https://sytws.netlify.app/images/how-do-serverless-functions-work.png](https://sytws.netlify.app/images/how-do-serverless-functions-work.png)

## pages/api/generate.js

See <https://www.npmjs.com/package/openai>. Check out the [full API documentation](https://beta.openai.com/docs/api-reference?lang=node.js) for examples of all the available functions in `openai`.


```js
import { Configuration, OpenAIApi } from "openai";

const configuration = new Configuration({
  apiKey: process.env.OPENAI_API_KEY,
});
const openai = new OpenAIApi(configuration);

export default async function (req, res) {
  const completion = await openai.createCompletion({
    model: "text-davinci-002",
    prompt: generatePrompt(req.body.animal),
    temperature: 0.6,
  });
  res.status(200).json({ result: completion.data.choices[0].text });
}

function generatePrompt(animal) {
  const capitalizedAnimal =
    animal[0].toUpperCase() + animal.slice(1).toLowerCase();
  return `Suggest three names for an animal that is a superhero.

Animal: Cat
Names: Captain Sharpclaw, Agent Fluffball, The Incredible Feline
Animal: Dog
Names: Ruff the Protector, Wonder Canine, Sir Barks-a-Lot
Animal: ${capitalizedAnimal}
Names:`;
}
```

For a [Nextjs API route](https://nextjs.org/docs/api-routes/introduction) to work, you need to export a function as `default` (a.k.a request handler), which then receives the following parameters:

* `req`: An instance of `http.IncomingMessage`, plus some pre-built middlewares
* `res`: An instance of `http.ServerResponse`, plus some helper functions



### Environment: `process.env.OPENAI_API_KEY` 

Next.js allows you to set environment variables in 

1. `.env` (all environments), 
2. `.env.development` (development environment), and 
3. `.env.production` (production environment).
4. `.env.local` always overrides the defaults set.

The variables are accesible into `process.env`.

By default **environment variables are only available in the Node.js environment, meaning they won't be exposed to the browser**.

#### Exposing Environment to the browser

In order to expose a variable to the browser you have to prefix the variable with `NEXT_PUBLIC_`. 

#### Vercel: Environment Variables

When deploying your Next.js application to Vercel, Environment Variables can be configured in the [Project Settings](https://vercel.com/docs/concepts/projects/environment-variables?utm_source=next-site&utm_medium=docs&utm_campaign=next-website).

#### Netlify: Environment Variables

In Netlify you can use the Netlify UI. Head over to the Build & Deploy settings in your Site Settings, and then plug your values in under "Environment variables" or alternatively, use the [Netlify CLI](https://docs.netlify.com/cli/get-started/?_ga=2.210632407.351830897.1670331128-1485033729.1667990322#link-with-an-environment-variable)

#### References

* <https://nextjs.org/docs/basic-features/environment-variables>

### Request and Response objects: `export default async function (req, res) { ... }`

The **Server Request Object** (`req`) includes a set of 
Express.js-like helper methods to improve the developer experience and increase the speed of creating new API endpoints:

* `req.cookies` - An object containing the cookies sent by the request. Defaults to `{}`
* `req.query` - An object containing the query string. Defaults to `{}`
* `req.body` - An object containing the `body` parsed by `content-type`, or `null` if no body was sent

   See the code fragment `generatePrompt(req.body.animal)`

The **Server Response object**, ( abbreviated as `res`) includes a set of 
Express.js-like helper methods to improve the developer experience and increase the speed of creating new API endpoints:

* `res.status(code)` - A function to set the status code. code must be a valid HTTP status code
* `res.json(body)` - Sends a JSON response. body must be a serializable object
* `res.send(body)` - Sends the HTTP response. body can be a string, an object or a Buffer

   See the code fragment `res.status(200).json({ result: completion.data.choices[0].text });`
* `res.redirect([status,] path)` - Redirects to a specified `path` or URL. `status` must be a valid HTTP status code. 
  * If not specified, `status` defaults to "307" "Temporary redirect".
  * If `path` starts with "http" or "//", the redirect is external.
  
### OpenAI Completions: `const completion = await openai.createCompletion({ ... })`

See the documentation at  <https://beta.openai.com/docs/api-reference/completions/create>

It makes a POST request to <https://api.openai.com/v1/completions>:

In the JSON body goes:

* `model`: `ID` of the model to use. You can use the List models API to see all of your available models
* `prompt`: string to generate completions for, encoded as a string, array of strings, array of tokens, or array of token arrays.
* `temperature`: Higher values means the model will take more risks. Try 0.9 for more creative applications, and 0  for ones with a well-defined answer.

The response is a JSON object with the following fields:

```json
{
  "id": "cmpl-uqkvlQyYK7bGYrRHQ0eXlWi7",
  "object": "text_completion",
  "created": 1589478378,
  "model": "text-davinci-003",
  "choices": [
    {
      "text": "\n\nThis is indeed a test",
      "index": 0,
      "logprobs": null,
      "finish_reason": "length"
    }
  ],
  "usage": {
    "prompt_tokens": 5,
    "completion_tokens": 7,
    "total_tokens": 12
  }
}
```

## pages/index.js

The `index.js` file inside the `pages` directory is the page that is rendered when the user visits the root of your application.
It exports a **React component** that renders the home page.

There are three core concepts of React that you'll need to be familiar with to start building React applications. These are:

* [Components](https://nextjs.org/learn/foundations/from-javascript-to-react/building-ui-with-components)
* [Props](https://nextjs.org/learn/foundations/from-javascript-to-react/displaying-data-with-props)
* [State](https://nextjs.org/learn/foundations/from-javascript-to-react/adding-interactivity-with-state)

In Next.js, a **page** is a React Component exported from a .js, .jsx, .ts, or .tsx file in the `pages` directory. 
Each page is associated with a route based on its file name.

thus, `index.js` is a **page** and `index.module.css` is a **module**.

```jsx
import Head from "next/head";
import { useState } from "react";
import styles from "./index.module.css";

export default function Home() {
  const [animalInput, setAnimalInput] = useState("");
  const [result, setResult] = useState();

  async function onSubmit(event) {
    event.preventDefault();
    const response = await fetch("/api/generate", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ animal: animalInput }),
    });
    const data = await response.json();
    setResult(data.result);
    setAnimalInput("");
  }
  return (
    <div>
      <Head>
        <title>OpenAI Quickstart</title>
        <link rel="icon" href="/dog.png" />
      </Head>

      <main className={styles.main}>
        <img src="/dog.png" className={styles.icon} />
        <h3>Name my pet</h3>
        <form onSubmit={onSubmit}>
          <input
            type="text"
            name="animal"
            placeholder="Enter an animal"
            value={animalInput}
            onChange={(e) => setAnimalInput(e.target.value)}
          />
          <input type="submit" value="Generate names" />
        </form>
        <div className={styles.result}>{result}</div>
      </main>
    </div>
  );
}
```


### JSX

JSX stands for JavaScript eXtended markup language. JSX is a syntax extension for JavaScript that allows you to describe your UI in a familiar HTML-like syntax. 
This code is JSX:

```jsx
(
    <div>
      <Head>
        <title>OpenAI Quickstart</title>
        <link rel="icon" href="/dog.png" />
      </Head>

      <main className={styles.main}>
        <img src="/dog.png" className={styles.icon} />
        <h3>Name my pet</h3>
        <form onSubmit={onSubmit}>
          <input
            type="text"
            name="animal"
            placeholder="Enter an animal"
            value={animalInput}
            onChange={(e) => setAnimalInput(e.target.value)}
          />
          <input type="submit" value="Generate names" />
        </form>
        <div className={styles.result}>{result}</div>
      </main>
    </div>
  );
```

It’s possible to use JavaScript inside JSX using curly braces. 
The example below sets the `value` property  of the  `input`
to the variable `animalInput` and the `onChange` property to a function that updates the `animalInput` variable to the value written by the user inside the input box:

```jsx
<input type="text" name="animal" placeholder="Enter an animal"
    value={animalInput}
    onChange={(e) => setAnimalInput(e.target.value)}
/>
```

The nice thing about JSX is that apart from [following three JSX rules](https://beta.reactjs.org/learn/writing-markup-with-jsx#the-rules-of-jsx), you don’t need to learn any new symbols or syntax outside of HTML and JavaScript:

1. Return a single root element: To return multiple elements from a component, wrap them with a single parent tag.
2. Close all the tags: self-closing tags like `<img>` must become `<img />`
3. **camelCase** most of the things: For example, instead of `stroke-width` you use `strokeWidth`. Since `class` is a reserved word, in React you write `className` instead. Event names are also camelCased

### Comments to `import Head from "next/head"`

nextjs provides a built-in **component** for appending elements to the `head` of the page so that it can 
be used in the JSX of the page:

```jsx
<Head>
   <title>OpenAI Quickstart</title>
   <link rel="icon" href="/dog.png" />
</Head>
```

![assets/images/nextjs/HeadComponent.png]({{ site.baseurl }}/assets/images/nextjs/HeadComponent.png)

### Comments to `import styles from "./index.module.css"`

This is a [CSS module](https://nextjs.org/docs/basic-features/built-in-css-support#adding-component-level-css). 

Next.js supports CSS Modules using the `[name].module.css` file naming convention.

CSS Modules **locally scope** CSS by automatically creating a **unique class name**. 

This allows you to use the same CSS class name in different files without worrying about collisions.

We can then use the `styles` object like in:

```jsx
        <img src="/dog.png" className={styles.icon} />
```
or in this:

```jsx
<div className={styles.result}>{result}</div>
```

###  Comments to `<link rel="icon" href="/dog.png" />`

This line in the `<Head>` component adds a favicon to the page. 
You'll find the image in the `public` directory.

Next.js can serve static files, like images, under a folder called `public` in the root directory.
Files inside `public` can then be referenced by your code starting from the base URL (`/`).

### Comments to `<main className={styles.main}>` Curly Braces in JSX

JSX lets you write HTML-like markup inside a JavaScript file, keeping rendering logic and content in the same place. 
Sometimes you will want to add a little JavaScript logic or reference a dynamic property inside that markup. 
In this situation, you can use curly braces in your JSX to open a window to JavaScript: `<main className={styles.main}>`

The only reason behind the fact that JSX uses `className` over `class` is that the `class` is a reserved keyword in JavaScript.

We are specifying that the `<main>` element should use the `main` class from the `index.module.css` file.

###  Comments to `<form onSubmit={onSubmit}> ...</form>`

The `onSubmit` **prop** is a special React **prop** that lets you specify a function that will be called when the form is submitted.

The async function `onSubmit` is called when the form is submitted:

```js
  async function onSubmit(event) {
    event.preventDefault();
    const response = await fetch("/api/generate", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ animal: animalInput }),
    });
    const data = await response.json();
    setResult(data.result);
    setAnimalInput("");
  }
```

###  Comments to `const response = await fetch("/api/generate", { ... })`

The `fetch` function makes a request to the `/api/generate` endpoint of the nextjs server. 

Thus, the exported function in `pages/api/generate.js` is called and the JSON  returned at line

```js
  res.status(200).json({ result: completion.data.choices[0].text });
```

will be received in `data` after the second `await`:

```
const data = await response.json()
```

## State in React

### React States

**React states** are used to store data that can be changed over time.
In that sense, they are similar to variables declared with the `let` keyword.

The difference between a **React state** and a 
normal variable is that when a **React state variable** changes, 
the **component is rendered again** and some other things happens,
but when a normal variable changes, this does not happen.

### The useState hook

The `useState` hook **allows us to create state variables for our components**. 

```js
const [state, setState] = useState(initialState);
```

`useState` takes in an initial value as an argument and returns an array containing

1. the **state** variable and 
2. a **setter** function `setState` to mutate it
 
During the initial render, the returned state (`state`) is the same as the value passed as the first argument (`initialState`).

The `setState` function is used to update the state. It accepts a new state value and **enqueues a re-render of the component**.

```js
setState(newState);
```

During subsequent re-renders, the first value returned by `useState` will always be the most recent state after applying updates.

It is common practice to de-structure this array and set its contents to be `const`. 
This is because 

* the state variable **should never be reassigned directly** and
* **should only be modified via the setter function**. 

The `setter` function accepts either 

1. a new value or 
2. If the new state is computed using the previous state, you can pass a function to `setState`. The function will receive the previous value, and return an updated value. Here’s an example of a counter component that uses both forms of setState:

```jsx
function Counter({initialCount}) {
  const [count, setCount] = useState(initialCount);
  return (
    <>
      Count: {count}
      <button onClick={() => setCount(initialCount)}>Reset</button>
      <button onClick={() => setCount(prevCount => prevCount - 1)}>-</button>
      <button onClick={() => setCount(prevCount => prevCount + 1)}>+</button>
    </>
  );
}
```

### State in our Application

In our code we have two states: `animalInput` and `result`.

Therefore, 

1. each time the `animalInput` state changes, the component is rendered again. 
   * The `animalInput`changes when the user types in the input field and when the API returns the result.
2. each time the `result` state changes, the component is rendered again. 
   * The `result` changes when the API returns the result.

####  When the API returns the result

Let's review the code fragment:

```js
async function onSubmit(event) {
    // ...
    const data = await response.json();
    setResult(data.result);
    setAnimalInput("");
}
```

Since `data` has arrived from the API, we can set the `result` state to the value of `data.result`:

```js
setResult(data.result); // data just arrived from the API
```

The component will be rendered showing the new `result`.

Also, the effect of  

```js
setAnimalInput("");
```

is that the input component 

```jsx 
<input  type="text" name="animal" placeholder="Enter an animal"
            value={animalInput}
            onChange={(e) => setAnimalInput(e.target.value)}
/>
```

will be rendered again with an empty value.

#### When the user types in the input box

To understand the line `onChange={(e) => setAnimalInput(e.target.value)` we need to know 

1. that the `onchange` event occurs when the value of the `<input>` has been changed.
2. The `target` property of the Event `e`  is a reference to the object onto which the event was dispatched, that is, the `<input>`. 
3. The `setAnimalInput(e.target.value)` will be executed each time the user types a character in the `input` field and will change the value of the `animalInput` state.

### References

* Read section [Adding Interactivity](https://beta.reactjs.org/learn/adding-interactivity) of the React docs 
* Section [Managing State](https://beta.reactjs.org/learn/managing-state) of the React docs
* Read the blog [Everything You Need To Know About useState](https://blog.webdevsimplified.com/2020-04/use-state/)

## Continue learning React

Check out these other React topics:

* [How React handles renders](https://beta.reactjs.org/learn/render-and-commit) and [how to use refs](https://beta.reactjs.org/learn/referencing-values-with-refs)
* [How to manage state](https://beta.reactjs.org/learn/managing-state)
* [How to use context for deeply nested data](https://beta.reactjs.org/learn/passing-data-deeply-with-context)
* [How to use React API hooks](https://beta.reactjs.org/reference) such as `useEffect()`
  
## Stages of a web application

A web application code must be in one of these different stages:

1. The **environment** where your code runs: **Development** vs. **Production**
   * During development, you’re building and running the application on your local machine. 
   * Going to production is the process of making your application ready to be deployed and consumed by users.
2. **When** your code runs: **Build Time** vs. **Runtime**
3. **Where** rendering happens: **Client** vs. **Server**

## build

### The NextJS Compiler

The **build stage** is the stage where the code is compiled and optimized for production.
Among other thins the JSX code is converted to JavaScript.

![compilingjsx2js.png]({{ site.baseurl }}/assets/images/nextjs/compilingjsx2js.png)

Another task is to minify the code. **Minification** refers to the process of removing unnecessary or redundant data without affecting how the resource is processed by the browser 
- code comments 
- formatting, 
- removing unused code, 
- using shorter variable and function names, 

and so on. The goal is to reduce the size of the code and improve the performance of the application.

![minifying]({{ site.baseurl }}/assets/images/nextjs/minifying.png)

Another stage of the Next.js compiler is **Bundling**. **Bundling** is the process of resolving the web of dependencies and merging (or ‘packaging’) the files (or modules) into optimized bundles for the browser, **with the goal of reducing the number of requests for files when a user visits a web page**:

![bundling]({{ site.baseurl }}/assets/images/nextjs/bundling.png)

Developers usually split their applications into multiple pages that can be accessed from different URLs. Each of these pages becomes a unique **entry point** into the application.

**Code-splitting** is the process of splitting the application’s bundle into smaller chunks required by each entry point. The goal is **to improve the application's initial load time by only loading the code required to run that page**.

![]({{ site.baseurl }}/assets/images/nextjs/code-splitting.png)

Next.js has built-in support for code splitting. Each file inside your `pages/` directory will be automatically code split into its own JavaScript bundle during the build step.

Other optimizations:

* Any code shared between pages is also split into another bundle to avoid re-downloading the same code on further navigation.
* After the initial page load, Next.js can start **pre-loading the code of other pages** users are likely to navigate to.


### The command next build

The command `next build` creates an optimized production build of your application. 
You can enable more verbose build output with the `--debug` flag in next build.

The output displays information about each route:


``` 
➜✗ npx next build --debug
info  - Loaded env from /Users/casianorodriguezleon/campus-virtual/2223/learning/openai-learning/openai-quickstart-node/.env
info  - Creating an optimized production build  
info  - Compiled successfully
info  - Collecting page data  
info  - Generating static pages (3/3)
info  - Finalizing page optimization  

Page                                       Size     First Load JS
┌ ○ /                                      998 B          73.8 kB
├   └ css/fc2c832f265f4111.css             522 B
├ ○ /404                                   193 B            73 kB
└ λ /api/generate                          0 B            72.8 kB
+ First Load JS shared by all              72.8 kB
  ├ chunks/framework-e70c6273bfe3f237.js   42 kB
  ├ chunks/main-f65e66e62fc5ca80.js        28.6 kB
  ├ chunks/pages/_app-02d0f4839caa4a8e.js  1.36 kB
  └ chunks/webpack-69bfa6990bb9e155.js     769 B

λ  (Server)  server-side renders at runtime (uses getInitialProps or getServerSideProps)
○  (Static)  automatically rendered as static HTML (uses no initial props)

Redirects

┌ source: /:path+/
├ destination: /:path+
└ permanent: true
```

This generates the site in the `.next` directory.

## Production

`next start` starts the application in *production* mode. 
The application should be compiled with `next build` before starting.

```
npx next start -p 4000

ready - started server on 0.0.0.0:4000, url: http://localhost:4000
info  - Loaded env from /Users/casianorodriguezleon/campus-virtual/2223/learning/openai-learning/openai-quickstart-node/.env
```

## Exercise: Deploy at Netlify with the UI

Netlify’s Next.js Runtime configures your site on Netlify to enable key Next.js functionality. 

It automatically generates **[serverless functions](https://sytws.netlify.app/temas/web/serverless.html)** that handle 

* server-side rendered (SSR) pages, 
* incremental static regeneration (ISR), 
* image optimization, and 
* other Next.js features.

See section [Next.js on Netlify](https://docs.netlify.com/integrations/frameworks/next-js/overview/)
for more details.

### Make public your repo 

Regarding prices and restrictions on deployment you can check the FAQ [Organization-owned private repository FAQ](https://www.netlify.com/pricing/private-org-repo-faq/)

### Deploy with the Netlify UI

In the Netlify UI, choose new deploy and import your GitHub repo to Netlify

![]({{ site.baseurl }}/assets/images/nextjs/netlify-deploy-1.png)

Click on **show advanced**. Go to **Environment Variables** and add the secret:

![netlify-add-variable]({{ site.baseurl }}/assets/images/nextjs/netlify-add-variable.png)

Finally, click on **deploy site** and after a while your site will be deployed and running:

![]({{site.baseurl}}/assets/images/nextjs/netlify-running-cookies.png)


## Netlify Environment Variables

Environment variables are set and securely stored on Netlify and provided to the Next.JS server. This means we can avoid committing any sensitive values to our repository. 

There are three ways to create site environment variables:

* In the Netlify UI, create site variables under **Site settings > Environment variables**.
* With the Netlify CLI, use `env:set` to create a site environment variable, and `env:import` to import from a `.env` file. 
* With the Netlify API, use `createEnvVars` to create a new site environment variable. 

The Netlify UI reflects any changes made using the CLI (ntl) or the API and vice versa.

## Exercise: Deploy with the Netlify CLI

The Netlify CLI is a command line interface that allows you to manage your Netlify sites from the terminal. 

### Install the Netlify CLI

You can install it with npm:

```
➜  explorers-up-and-running-with-serverless-functions git:(main) npm install netlify-cli -g
added 1438 packages, and audited 1439 packages in 26s
➜  explorers-up-and-running-with-serverless-functions git:(main) npm ls -g netlify-cli
/Users/casianorodriguezleon/.nvm/versions/node/v16.0.0/lib
└── netlify-cli@12.2.8
➜  explorers-up-and-running-with-serverless-functions git:(main) ✗ ntl --version
netlify-cli/12.2.8 darwin-x64 node-v16.0.0
➜  explorers-up-and-running-with-serverless-functions git:(main) ✗ node --version
v16.0.0
```

### Link the repo to Netlify

The first step is to **link** the repo to Netlify. Here we are using the `--gitRemoteName` option to specify the remote name `sytws` of the repo.

```
➜  nextjs-solution git:(main) ✗ ntl link --gitRemoteName sytws

netlify link will connect this folder to a site on Netlify

? How do you want to link this folder to a site? Use current git remote origin (https://github.com/ULL-MII-SYTWS/nextjs-solution)

Looking for sites connected to 'https://github.com/ULL-MII-SYTWS/nextjs-solution'...


Directory Linked

Admin url: https://app.netlify.com/sites/nextjs-oai
Site url:  https://nextjs-oai.netlify.app

You can now run other `netlify` cli commands in this directory
```

### Check the status

Once we have linked the repo to Netlify, we can check the status:

```
➜  nextjs-solution git:(main) ✗ ntl status
──────────────────────┐
 Current Netlify User │
──────────────────────┘
Name:   Casiano Rodriguez-Leon
Email:  crguezl@ull.edu.es
GitHub: crguezl
Teams:
  Casiano Rodriguez-Leon's team: Collaborator
────────────────────┐
 Netlify Site Info  │
────────────────────┘
Current site: nextjs-oai
Admin URL:    https://app.netlify.com/sites/nextjs-oai
Site URL:     https://nextjs-oai.netlify.app
Site Id:      blah-blah-blah-blah-blah
```

### List/Get/Set the environment variables

We can use `ntl env:<subcommand>` syntax to `list`, `set` or `get`  environment variables:

```
➜  nextjs-solution git:(main) ✗ ntl env:list
1 environment variable for site nextjs-oai
.---------------------------------------------------------------------.
|                        Environment variables                        |
|---------------------------------------------------------------------|
|      Key       |                       Value                        |
|----------------|----------------------------------------------------|
| OPENAI_API_KEY | ************************************************** |
'---------------------------------------------------------------------'
```

### Development mode with the Netlify CLI

We can see  the site locally using the `dev` command of `ntl`:

```
 openai-quickstart-node git:(main) ✗ ntl dev
```

Since `ntl` knows about Next.js, it will choose a suitable default configuration, it will create a `.netlify`folder:

```
✗ tree -I node_modules .netlify     
.netlify
├── edge-functions
│   ├── edge-shared
│   │   ├── next-utils.ts
│   │   ├── nextConfig.json
│   │   └── utils.ts
│   ├── manifest.json
│   └── next-dev
│       └── index.js
├── edge-functions-import-map.json
├── plugins
│   ├── package-lock.json
│   └── package.json
└── state.json
```

and it will start the Next.js server injecting the environment variables . 

We can change the settings adding a [netlify.toml](https://docs.netlify.com/configure-builds/file-based-configuration/) configuration file.

```
[[plugins]]
package = "@netlify/plugin-nextjs"

[build]
command = "npm run build"
publish = ".next"
```

### Deploying with the Netlify CLI

Netlify deploys are **atomic**, and your site is never in an inconsistent state while you’re uploading a new deploy.

With File Transfer Protocol (FTP) or Amazon Simple Storage Service (S3) uploads, each file is pushed live one after the other, so you can  get into situations where a new HTML page is live before the supporting assets (images, scripts, CSS) have been uploaded. And if your connection cuts out in the middle of an upload, your site could get stuck in a broken state for a long time.

Here is an example of a deploy:

```
➜  openai-quickstart-node git:(main) ✗ ntl deploy --prod
Deploy path: /Users/casianorodriguezleon/campus-virtual/2223/learning/openai-learning/openai-quickstart-node/.next
Deploying to main site URL...
✔ Finished hashing 
✔ CDN requesting 27 files
✔ Finished uploading 27 assets
✔ Deploy is live!

Logs:              https://app.netlify.com/sites/nextjs-oai/deploys/6395e63207648c16d41001b7
Unique Deploy URL: https://6395e63207648c16d41001b7--nextjs-oai.netlify.app
Website URL:       https://nextjs-oai.netlify.app
```

The `--prod` option deploys to production, the  `--open` flag  opens the site after deploy

## Exercise: Deploy the app to Vercel

Follow the instructions at the tutorial [Deploying Your Next.js App
](https://nextjs.org/learn/basics/deploying-nextjs-app)

If you have trouble with this or other Next.js steps use [GitHub Discussions: next.js](https://github.com/vercel/next.js/discussions)

### Deploying with the Vercel CLI

You can also use the [Vercel CLI](https://vercel.com/docs/cli) to interact with and configure your projects, enabling you to retrieve logs, manage certificates, replicate your deployment environment locally, manage Domain Name System (DNS) records, etc. It is a wrapper around the [Vercel API](https://vercel.com/docs/rest-api).

Here is an example of use:

```
➜  nextjs-blog git:(main) vercel login
Vercel CLI 28.10.1
> Log in to Vercel github
> Success! GitHub authentication complete for crguezl@ull.edu.es
Congratulations! You are now logged in. In order to deploy something, run `vercel`.
💡  Connect your Git Repositories to deploy every branch push automatically (https://vercel.link/git).
➜  nextjs-blog git:(main) vercel ls
Vercel CLI 28.10.1
? Set up “~/campus-virtual/2223/learning/nextjs-learning/nextjs-tutorial/nextjs-blog”? [Y/n] y
? Which scope should contain your project? crguezl
? Found project “crguezl/nextjs-blog”. Link to it? [Y/n] y
🔗  Linked to crguezl/nextjs-blog (created .vercel and added it to .gitignore)
> Deployments for nextjs-blog under crguezl [645ms]
> To list deployments for a project, run `vercel ls [project]`.

  Age     Deployment                                           Status      Duration
  22m     https://nextjs-blog-sfbadq2kr-crguezl.vercel.app     ● Ready     38s
```

Watch the video *Vercel - Create a Next.js App and Deploy with Vercel CLI*:

{% include video provider="youtube" id="4DbNUJ-9_U4" %}

## Exercise: Get images from OpenAI


Add routes to the app:

- On the first route  `/pet`  leave the current service
- On the second route `/image`add functionality to get an image from OpenAI and display it in the page.
- Update the landing page and navigation links
- Add a 404 page
- Consider the opportunity to solve it using a dynamic route

The youtube video *Build An AI Image Generator With OpenAI & Node.js* can help:

{% include video provider="youtube" id="fU4o_BKaUZE" %}

## Rubrica

{% include rubrica.md %}

## References

* [Netlify](https://www.netlify.com/)
* [Next.js](https://nextjs.org/)
  * [Next.js Foundations](https://nextjs.org/learn/foundations/about-nextjs)
* [React](https://reactjs.org/)
* [Netlify CLI](https://docs.netlify.com/cli/get-started/?_ga=2.210632407.351830897.1670331128-1485033729.1667990322#link-with-an-environment-variable) 
* [Next.js on Netlify](https://docs.netlify.com/integrations/frameworks/next-js/overview/#app)
* [Deploying a Next.js app to Vercel](https://vercel.com/guides/deploying-nextjs-with-vercel) 
  * [Environment Variables](https://vercel.com/docs/concepts/projects/environment-variables?utm_source=next-site&utm_medium=docs&utm_campaign=next-website)
* A solution deployed at netlify <https://nextjs-oai.netlify.app/>
  * [A repo with a solution](https://github.com/ULL-MII-SYTWS/nextjs-solution/)
* Here is YouTube video explaining a project similar to the one described in this lab: [Build An AI Image Generator With OpenAI & Node.js](https://youtu.be/fU4o_BKaUZE)
* Repo [ULL-MII-SYTWS/nextjs-dynamic-routes](https://github.com/ULL-MII-SYTWS/nextjs-dynamic-routes)
* [NextJS official examples folderx](https://github.com/vercel/next.js/tree/canary/examples/)  
