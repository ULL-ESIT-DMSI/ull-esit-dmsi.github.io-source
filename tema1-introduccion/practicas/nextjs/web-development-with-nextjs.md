---
permalink: /web-development-with-nextjs
---
- [Web Development with Next.js](#web-development-with-nextjs)
  - [Single Page Applications](#single-page-applications)
  - [What is Rendering](#what-is-rendering)
    - [Server-Side Rendering (SSR)](#server-side-rendering-ssr)
    - [Client-Side Rendering (CSR)](#client-side-rendering-csr)
  - [Server Components](#server-components)
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

# Web Development with Next.js

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

1. Server-Side Rendering: <!-- ![](https://nextjs.org/static/images/learn/foundations/pre-rendering.png) -->
   On the client, the HTML is used to show a fast non-interactive page, while React uses the JSON data and JavaScript instructions to make components interactive. This process is called **hydration**.
3. Static Site Generation, and 
4. Client-Side Rendering. <!-- ![](https://nextjs.org/static/images/learn/foundations/client-side-rendering.png)-->

### Server-Side Rendering (SSR)

**Server-Side Rendering** and **Static Site Generation** are also referred to as **Pre-Rendering** 
because the fetching of external data and transformation of components into HTML happens **before** 
the result is sent to the client.

Imagine you're at a restaurant. You order a dish, and the kitchen (the server) prepares your meal completely and serves it to you ready to eat. This is like **server-side rendering**.

- **How it Works**: When you visit a website, the server prepares the entire webpage on the server itself. It processes the HTML, CSS, and JavaScript, and then sends the fully rendered page to your browser. Is what we did in the Jekyll labs.
- **Advantages**: The main advantage is that the webpage is ready to be displayed as soon as it loads, which can be good for SEO (Search Engine Optimization) and for users who need to see the content immediately.
- **Disadvantages**: Every time you request a new page, the server has to prepare the whole page from scratch, which can take more time and resources.

### Client-Side Rendering (CSR)

Now, imagine you're at a self-service buffet. You get an empty plate (a basic webpage structure), and you fill it with food (content and features) yourself. This is like client-side rendering.
![/assets/images/nextjs/ssr-vs-csr-restaurant.png]({{ site.baseurl }}/assets/images/nextjs/ssr-vs-csr-restaurant.png)

- **How it Works**: When you visit a website, the server sends a minimal, basic structure of the webpage. Your browser (the client) then uses JavaScript to load the content and build the page. This process happens on your device.
- **Advantages**: Once the initial setup is loaded, navigating to different parts of the website can be very fast, as only new content needs to be loaded, not the entire page.
- **Disadvantages**: The initial load might take longer, and if a user has JavaScript disabled or if it fails to load, they might not be able to see the website properly. Also, it can be less favorable for SEO.

## Server Components

React [Server Components](https://nextjs.org/docs/app/building-your-application/rendering/server-components) allow you to write UI that can be rendered and optionally cached on the server.
They allow the server and the client (browser) to collaborate in rendering your React application. Here’s a quick illustration from the React team, showing what the end goal is: **a React tree**, where the orange components rendered on the server, and blue components are rendered on the client.

![/assets/images/nextjs/react-server-components.png]({{ site.baseurl }}/assets/images/nextjs/react-server-components.png)

Imagine you're building a model airplane. Some parts of the airplane (like the wings and body) are pre-assembled at the factory (the server), while other parts (like the decals and paint) are added by you at home (the client).

In web development, a server component works similarly:

- **Pre-Assembled at the Server**: Server components are parts of a web page that are prepared and assembled on the server (the factory in our analogy). This means the server does the heavy lifting of creating these components before sending them to the user's browser. Server Components allow you to keep sensitive data and logic on the server, such as tokens and API keys, without the risk of exposing them to the client.

- **Sent to the Client**: Once these components are ready, they are sent to the client (your browser, like your home in the analogy). The client then displays these components as part of the web page.

- **Efficiency**: Because these components are processed on the server, they can reduce the amount of work the client's browser has to do. This can make the web page load faster and run more smoothly, especially on devices with less processing power.

- **Use Case**: Server components are particularly useful for parts of a web page that don't need to change often or don't require immediate interaction from the user. For example, a server component might be used for a navigation menu that stays the same on every page of a website.

In summary, server components are like pre-assembled parts of a web page. They are prepared on the server and then sent to the client's browser, making the web page more efficient and faster to load.


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
