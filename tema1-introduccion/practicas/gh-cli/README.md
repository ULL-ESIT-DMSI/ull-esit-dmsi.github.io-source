# Descripción de la Práctica gh-cli

## gh alias 

### gh create-repo

Using `gh api` and `gh alias --shell` add to `gh` 
an extension `gh create-repo` that creates the repo inside the given organization:

```
$ gh create-repo tuturepo ULL-ESIT-PL-2021
$ gh repo view ULL-ESIT-PL-2021/tuturepo -w
```

![]({{site.baseurl}}/assets/images/create-repo.png)

Use the GitHub REST API

### gh delete-repo

The same but with delete:

```
$ gh delete-repo tuturepo ULL-ESIT-PL-2021
```

Then, after issuing the command and refreshing the former page we get:

![]({{site.baseurl}}/assets/images/delete-repo.png)


* GitHub API doc for [Delete repository](https://docs.github.com/es/rest/reference/repos#delete-a-repository)

## Extension

Write and publish a gh extension. Choose the functionality you want to implement.
It may be:

* `gh-repo-delete [org/repo]` that deletes the specified remote repo.
* Another idea: `gh-repo-rename org/reponame newname` changes the name of the repo to `org/newname` . See <https://docs.github.com/en/rest/reference/repos#update-a-repository>
* Rewriting an existing extension in Node.js. For example [crguezl/gh-clone-org](https://github.com/crguezl/gh-clone-org)

## References

* [Apuntes de gh]({{site.baseurl}}/tema1-introduccion/gh.html)
* GitHub API doc for [Delete repository](https://docs.github.com/es/rest/reference/repos#delete-a-repository)
* See an example of extension at [crguezl/gh-clone-org](https://github.com/crguezl/gh-clone-org)
* GitHub docs for [Creating GitHub CLI extensions](https://docs.github.com/es/github-cli/github-cli/creating-github-cli-extensions)
* Here is a list of repos with the topic `gh-extension`: [gh-extension](https://github.com/topics/gh-extension) list
* [GitHub GraphQL Playground](https://docs.github.com/en/graphql/overview/explorer)
* [An Introduction to GraphQL via the GitHub API](https://www.cloudbees.com/blog/an-introduction-to-graphql-via-the-github-api)  by Derek Haynes


