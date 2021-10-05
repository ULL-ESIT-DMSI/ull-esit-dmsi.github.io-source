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

Write and publish a gh extension `gh-repo-delete [org/repo]` that deletes the specified remote repo.