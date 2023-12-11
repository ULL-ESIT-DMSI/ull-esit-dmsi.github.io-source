---
permalink: /practicas/nextjs13
key: nextjs13
rubrica:
   - "Code of the lab is correct and works"
   - "It has followed the Next.js current version of the tutorial"
   - "Site deployed at netlify and Vercel"
   - "Report is correct and complete"
   - "The .zip has been delivered on the campus"
---

- [Web Development with NextJS](#web-development-with-nextjs)
  - [Goals](#goals)
  - [Web Development with Next.js](#web-development-with-nextjs-1)
  - [Exercise: Deploy at Netlify](#exercise-deploy-at-netlify)
  - [Exercise: Deploy the app to Vercel](#exercise-deploy-the-app-to-vercel)
  - [Rubrica](#rubrica)
  - [References](#references)

# Web Development with NextJS


## Goals

This labs intends to introduce to the current version (2023) of NextJS: NextJS 14. For that you have to follow the tutorial:

* [Next.js 13 Crash Course Tutorial](https://www.youtube.com/watch?v=TJQbDPGzm0Y&list=PL4cUxeGkcC9jZIVqmy_QhfQdi6mzQvJnT) List
* [Enrolled link](https://netninja.dev/courses/enrolled/2154826) (private)
* See repo [iamshaunjp/nextjs-masterclass](https://github.com/iamshaunjp/nextjs-masterclass/)
* Full Course ["Next.js version 13 MasterClass"](https://netninja.dev/p/next-13-masterclass)
* [ULL-ESIT-DMSI/nextjs13-template](https://github.com/ULL-ESIT-DMSI/nextjs13-template) is the fork of [iamshaunjp/nextjs-masterclass](https://github.com/iamshaunjp/nextjs-masterclass/) we have used for this assignment
* [Differences between Next.js 13 y 14](/nextjs/differences-13-14)

For each `lesson-#` in the tutorial:, 

- Create a branch `learn-#` from `lesson-#` and push your code in it.
- Fill a report in the `README.md` of each branch `learn-#` summarizing your experience along the lesson.
- Create a new orphan branch `learn-next-ai` and use it to follow the tutorial at repo <https://github.com/ULL-prompt-engineering/vercel-sdk-ai-quickstart> which it is based on the Vercel AI SDK [Quickstart Guide](https://sdk.vercel.ai/docs/getting-started). 

## Web Development with Next.js

The section [Web Development with Next.js]({{ site.baseurl }}/web-development-with-nextjs) in this tutorial introduces some basic concepts 
about Next.js and React.

## Exercise: Deploy at Netlify

Deploy the app at Netlify. 
For the details, see section [Deploying a Next.js app to Netlify]({{ site.baseurl }}/nextjs/netlify-deployment) in this tutorial.


## Exercise: Deploy the app to Vercel

Deploy the app at Vercel. 
Follow the instructions at the tutorial [Deploying to Vercel]({{ site.baseurl }}/nextjs/vercel-deployment) in this tutorial.


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
