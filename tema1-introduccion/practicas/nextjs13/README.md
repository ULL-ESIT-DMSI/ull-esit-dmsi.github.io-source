---
permalink: /practicas/nextjs13
key: nextjs13
rubrica:
   - "Code of the lab is correct and works"
   - "It has followed the Next.js current version of the tutorial"
   - "Site deployed at netlify and Vercel"
   - "Report is correct and complete"
   - "Kanban Board Project reflects the rubric issues"
   - "The .zip has been delivered on the campus"
---

- [Introduction to the JAM Stack with NextJS, React, REST and Netlify](#introduction-to-the-jam-stack-with-nextjs-react-rest-and-netlify)
  - [Goals](#goals)
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
    - [JSX](#jsx)
  - [State in React](#state-in-react)
    - [React States](#react-states)
    - [The useState hook](#the-usestate-hook)
    - [State in our Application](#state-in-our-application)
      - [When the API returns the result](#when-the-api-returns-the-result)
      - [When the user types in the input box](#when-the-user-types-in-the-input-box)
    - [References](#references-1)
  - [Continue learning React](#continue-learning-react)
  - [Stages of a web application](#stages-of-a-web-application)
  - [build](#build)
    - [The NextJS Compiler](#the-nextjs-compiler)
    - [The command next build](#the-command-next-build)
  - [Production](#production)
  - [Exercise: Deploy at Netlify with the UI](#exercise-deploy-at-netlify-with-the-ui)
    - [Make public your repo](#make-public-your-repo)
    - [Deploy with the Netlify UI](#deploy-with-the-netlify-ui)
  - [Netlify Environment Variables](#netlify-environment-variables)
  - [Exercise: Deploy with the Netlify CLI](#exercise-deploy-with-the-netlify-cli)
    - [Install the Netlify CLI](#install-the-netlify-cli)
    - [Link the repo to Netlify](#link-the-repo-to-netlify)
    - [Check the status](#check-the-status)
    - [List/Get/Set the environment variables](#listgetset-the-environment-variables)
    - [Development mode with the Netlify CLI](#development-mode-with-the-netlify-cli)
    - [Deploying with the Netlify CLI](#deploying-with-the-netlify-cli)
  - [Exercise: Deploy the app to Vercel](#exercise-deploy-the-app-to-vercel)
    - [Deploying with the Vercel CLI](#deploying-with-the-vercel-cli)
  - [Rubrica](#rubrica)
  - [References](#references-2)

# Introduction to the JAM Stack with NextJS, React, REST and Netlify


## Goals


This labs intends to introduce to the current version (2023) of NextJS: NextJS 14. For that you have to follow the tutorial:

* [Next.js 13 Crash Course Tutorial #1 - Introduction & New Features](https://youtu.be/PbFH_VE1Iks?si=1EnwQwDvej_cFKcv) "Next.js Master Class" YouTube list by The Net Ninja
  * See repo [iamshaunjp/nextjs-masterclass](https://github.com/iamshaunjp/nextjs-masterclass/)

Follow also the tutorial at repo <https://github.com/ULL-prompt-engineering/vercel-sdk-ai-quickstart>. 

* It is based on the Vercel AI SDK [Quickstart Guide](https://sdk.vercel.ai/docs/getting-started). 
* Create a folder `vercel-sdk-ai-quickstart` and follow the steps in the tutorial.


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


## Rubrica

{% include rubrica.md %}

## References

* [Netlify](https://www.netlify.com/)
* [Next.js](https://nextjs.org/)
  * The official docs of NextJS  are here <https://nextjs.org/docs>
* [React](https://reactjs.org/)
* [Netlify CLI](https://docs.netlify.com/cli/get-started/?_ga=2.210632407.351830897.1670331128-1485033729.1667990322#link-with-an-environment-variable) 
* [Next.js on Netlify](https://docs.netlify.com/integrations/frameworks/next-js/overview/#app)
* [Deploying a Next.js app to Vercel](https://vercel.com/guides/deploying-nextjs-with-vercel) 
  * [Environment Variables](https://vercel.com/docs/concepts/projects/environment-variables?utm_source=next-site&utm_medium=docs&utm_campaign=next-website)
* A solution deployed at netlify <https://nextjs-oai.netlify.app/>
  * [A repo with a solution](https://github.com/ULL-MII-SYTWS/nextjs-solution/) to the lab ["OpenAI and Next.js"]({{ site.baseurl }}/practicas/nextjs/)
* Repo [ULL-MII-SYTWS/nextjs-dynamic-routes](https://github.com/ULL-MII-SYTWS/nextjs-dynamic-routes) (Next.js 12 and React 17)
* [NextJS official examples folderx](https://github.com/vercel/next.js/tree/canary/examples/)  
