---
permalink: /nextjs/vercel-deployment
---

# Deploying to Vercel

Follow the instructions at the tutorial [Deploying Your Next.js App](https://nextjs.org/learn/basics/deploying-nextjs-app)

## Deploying with the Vercel CLI

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


## Troubleshooting

If you have trouble with this or other Next.js steps use [GitHub Discussions: next.js](https://github.com/vercel/next.js/discussions)
