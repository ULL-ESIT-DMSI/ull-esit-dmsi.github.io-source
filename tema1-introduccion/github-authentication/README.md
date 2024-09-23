#  GitHub Authentication documentation

Keep your GH account and data secure with features

- like two-factor authentication, 
- SSH, and 
- commit signature verification.


## GH_CONFIG_DIR environment variable

`GH_CONFIG_DIR`: the directory where gh will store configuration files. 
If not specified, the default value will be one of the following paths (in order of precedence):

- $XDG_CONFIG_HOME/gh (if $XDG_CONFIG_HOME is set),
- $AppData/GitHub CLI (on Windows if $AppData is set), or
- $HOME/.config/gh.


```bash
~ ls -l .config/gh
total 16
-rw-------@ 1 casianorodriguezleon  staff  172 19 sep 13:19 config.yml
-rw-------@ 1 casianorodriguezleon  staff   82 18 sep 13:11 hosts.yml
```

### gh config file

```
~ cat ~/.config/gh/config.yml
aliases: {cd: '!gh config set current-org "$1" 2>/dev/null', pwd: '!gh config get current-org'}
version: "1"
gh-owner: gh-cli-for-education
current-org: ULL-ESIT-DMSI-2425
```
### gh hosts and users

```
➜  ~ cat ~/.config/gh/hosts.yml
github.com:
    user: crguezl
    git_protocol: https
    users:
        crguezl:
```

## The ~/.local/share/gh directory

```
➜  apuntes git:(master) ✗ ls ~/.local/share/gh           
extensions templates
```


## The error

"message": "Although you appear to have the correct authorization credentials, the `ULL-MII-SYTWS-2425` organization has enabled OAuth App access restrictions, meaning that data access to third-parties is limited. For more information on these restrictions, including how to enable this app, visit <https://docs.github.com/articles/restricting-access-to-your-organization-s-data/>."


## ULL-ESIT-DMSI-2223 organization

Only approved applications can access data in this organization. Applications owned by ULL-ESIT-DMSI-2223 always have access.

[![Third-party application access policy]({{site.baseurl}}/assets/images/oauth-application-policy.png)](https://github.com/organizations/ULL-ESIT-DMSI-2223/settings/oauth_application_policy)

## cli/oauth

- <https://github.com/cli/oauth>


## Salida de gh api graphql --paginate -f query='...' con 2425 

``` 
➜  gh-learning git:(master) ✗ gh api graphql --paginate -f query='
query($endCursor: String) {
  search(type: REPOSITORY, query: "org:ULL-ESIT-DMSI-2425 aprender-markdown in:name", first: 100, after: $endCursor) {
    pageInfo {
      hasNextPage
      endCursor
    }
    edges {
      node {
        ... on Repository {
          name
        }
      }
    }
  }
}
'
``` 

```json 
{
  "data": {
    "search": {
      "pageInfo": {
        "hasNextPage": false,
        "endCursor": "Y3Vyc29yOjI="
      },
      "edges": [
        {
          "node": {
            "name": "ull-esit-dmsi-2425-aprender-markdown-aprender-markdown-template"
          }
        },
        {
          "node": {
            "name": "aprender-markdown-prueba"
          }
        }
      ]
    }
  }
}
```

aprender-markdown-prueba es un repo privado!