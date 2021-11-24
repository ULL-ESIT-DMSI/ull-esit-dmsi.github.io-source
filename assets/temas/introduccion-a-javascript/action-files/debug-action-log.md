---
title: Logs from the debug-action.yml
---


## PREAMBLE

Hare are the logs downloaded from the workflow [debug.yml](https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/blob/master/.github/workflows/debug.yml). 

See it life at <https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/actions/workflows/debug.yml>

```log
2021-03-08T09:25:31.0537652Z ##[section]Starting: Prepare job one
2021-03-08T09:25:31.0575838Z Evaluating strategy
2021-03-08T09:25:31.0576035Z Creating job '__default'
2021-03-08T09:25:31.0576301Z Evaluating timeout
2021-03-08T09:25:31.0576376Z Evaluating cancel timeout
2021-03-08T09:25:31.0576463Z Evaluating continue on error
2021-03-08T09:25:31.0576556Z Evaluating target
2021-03-08T09:25:31.0651576Z ##[section]Finishing: Prepare job one

2021-03-08T09:25:31.2598155Z ##[section]Starting: Request a runner to run this job
2021-03-08T09:25:31.8649659Z Can't find any online and idle self-hosted runner in current repository that matches the required labels: 'ubuntu-16.04'
2021-03-08T09:25:31.8649754Z Can't find any online and idle self-hosted runner in current repository's account/organization that matches the required labels: 'ubuntu-16.04'
2021-03-08T09:25:31.8649978Z Found online and idle hosted runner in current repository's account/organization that matches the required labels: 'ubuntu-16.04'
2021-03-08T09:25:31.9452448Z ##[section]Finishing: Request a runner to run this job
2021-03-08T09:25:39.7680243Z Current runner version: '2.277.1'
2021-03-08T09:25:39.7707821Z ##[group]Operating System
2021-03-08T09:25:39.7709023Z Ubuntu
2021-03-08T09:25:39.7709462Z 16.04.7
2021-03-08T09:25:39.7709867Z LTS
2021-03-08T09:25:39.7710273Z ##[endgroup]
2021-03-08T09:25:39.7710790Z ##[group]Virtual Environment
2021-03-08T09:25:39.7711336Z Environment: ubuntu-16.04
2021-03-08T09:25:39.7711871Z Version: 20210302.0
2021-03-08T09:25:39.7712744Z Included Software: https://github.com/actions/virtual-environments/blob/ubuntu16/20210302.0/images/linux/Ubuntu1604-README.md
2021-03-08T09:25:39.7713918Z Image Release: https://github.com/actions/virtual-environments/releases/tag/ubuntu16%2F
2021-03-08T09:25:39.7714716Z ##[endgroup]
2021-03-08T09:25:39.7716574Z ##[group]GITHUB_TOKEN Permissions
2021-03-08T09:25:39.7717793Z Actions: write
2021-03-08T09:25:39.7718291Z Checks: write
2021-03-08T09:25:39.7718718Z Contents: write
2021-03-08T09:25:39.7719174Z Deployments: write
2021-03-08T09:25:39.7719743Z Issues: write
2021-03-08T09:25:39.7720480Z Metadata: read
2021-03-08T09:25:39.7721072Z OrganizationPackages: write
2021-03-08T09:25:39.7721798Z Packages: write
2021-03-08T09:25:39.7722335Z PullRequests: write
2021-03-08T09:25:39.7722906Z RepositoryProjects: write
2021-03-08T09:25:39.7723661Z SecurityEvents: write
2021-03-08T09:25:39.7724219Z Statuses: write
2021-03-08T09:25:39.7724950Z ##[endgroup]
2021-03-08T09:25:39.7728160Z Prepare workflow directory
2021-03-08T09:25:39.8445002Z Prepare all required actions
```

## GITHUB_CONTEXT

```js
2021-03-08T09:25:39.9471897Z ##[group]Run echo "$GITHUB_CONTEXT"
2021-03-08T09:25:39.9473098Z [36;1mecho "$GITHUB_CONTEXT"[0m
2021-03-08T09:25:40.1340060Z shell: /bin/bash -e {0}
2021-03-08T09:25:40.1340957Z env:
2021-03-08T09:25:40.1380210Z   GITHUB_CONTEXT: {
  "token": "***",
  "job": "one",
  "ref": "refs/heads/master",
  "sha": "8644e75a9cb769f219d064695eeb20e64324f263",
  "repository": "ULL-ESIT-DSI-1617/prueba-scapegoat",
  "repository_owner": "ULL-ESIT-DSI-1617",
  "repositoryUrl": "git://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat.git",
  "run_id": "631804367",
  "run_number": "2",
  "retention_days": "90",
  "actor": "crguezl",
  "workflow": "Debugging contexts",
  "head_ref": "",
  "base_ref": "",
  "event_name": "push",
  "event": {
    "after": "8644e75a9cb769f219d064695eeb20e64324f263",
    "base_ref": null,
    "before": "e2840e77a0b20158e5e1f1efa4790e47e457cc86",
    "commits": [
      {
        "author": {
          "email": "crguezl@ull.edu.es",
          "name": "Casiano Rodriguez-Leon",
          "username": "crguezl"
        },
        "committer": {
          "email": "crguezl@ull.edu.es",
          "name": "Casiano Rodriguez-Leon",
          "username": "crguezl"
        },
        "distinct": true,
        "id": "8644e75a9cb769f219d064695eeb20e64324f263",
        "message": "debug-workflow",
        "timestamp": "2021-03-08T09:25:23Z",
        "tree_id": "18fdc4d87094853a1476f5ce03e09428e65a2d80",
        "url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/commit/8644e75a9cb769f219d064695eeb20e64324f263"
      }
    ],
    "compare": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/compare/e2840e77a0b2...8644e75a9cb7",
    "created": false,
    "deleted": false,
    "forced": false,
    "head_commit": {
      "author": {
        "email": "crguezl@ull.edu.es",
        "name": "Casiano Rodriguez-Leon",
        "username": "crguezl"
      },
      "committer": {
        "email": "crguezl@ull.edu.es",
        "name": "Casiano Rodriguez-Leon",
        "username": "crguezl"
      },
      "distinct": true,
      "id": "8644e75a9cb769f219d064695eeb20e64324f263",
      "message": "debug-workflow",
      "timestamp": "2021-03-08T09:25:23Z",
      "tree_id": "18fdc4d87094853a1476f5ce03e09428e65a2d80",
      "url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/commit/8644e75a9cb769f219d064695eeb20e64324f263"
    },
    "organization": {
      "avatar_url": "https://avatars.githubusercontent.com/u/19915179?v=4",
      "description": "",
      "events_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/events",
      "hooks_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/hooks",
      "id": 19915179,
      "issues_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/issues",
      "login": "ULL-ESIT-DSI-1617",
      "members_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/members{/member}",
      "node_id": "MDEyOk9yZ2FuaXphdGlvbjE5OTE1MTc5",
      "public_members_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/public_members{/member}",
      "repos_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/repos",
      "url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617"
    },
    "pusher": {
      "email": "crguezl@ull.edu.es",
      "name": "crguezl"
    },
    "ref": "refs/heads/master",
    "repository": {
      "archive_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/{archive_format}{/ref}",
      "archived": false,
      "assignees_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/assignees{/user}",
      "blobs_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/blobs{/sha}",
      "branches_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/branches{/branch}",
      "clone_url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat.git",
      "collaborators_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/collaborators{/collaborator}",
      "comments_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/comments{/number}",
      "commits_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/commits{/sha}",
      "compare_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/compare/{base}...{head}",
      "contents_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/contents/{+path}",
      "contributors_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/contributors",
      "created_at": 1506425027,
      "default_branch": "master",
      "deployments_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/deployments",
      "description": "Testing the installation and functionality of a npm module ",
      "disabled": false,
      "downloads_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/downloads",
      "events_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/events",
      "fork": false,
      "forks": 1,
      "forks_count": 1,
      "forks_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/forks",
      "full_name": "ULL-ESIT-DSI-1617/prueba-scapegoat",
      "git_commits_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/commits{/sha}",
      "git_refs_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/refs{/sha}",
      "git_tags_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/tags{/sha}",
      "git_url": "git://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat.git",
      "has_downloads": true,
      "has_issues": true,
      "has_pages": false,
      "has_projects": true,
      "has_wiki": true,
      "homepage": "https://ull-esit-pl-1819.github.io//introduccion/tema1-introduccion-a-javascript/nodejspackages.html",
      "hooks_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/hooks",
      "html_url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat",
      "id": 104875770,
      "issue_comment_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/issues/comments{/number}",
      "issue_events_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/issues/events{/number}",
      "issues_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/issues{/number}",
      "keys_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/keys{/key_id}",
      "labels_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/labels{/name}",
      "language": "JavaScript",
      "languages_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/languages",
      "license": null,
      "master_branch": "master",
      "merges_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/merges",
      "milestones_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/milestones{/number}",
      "mirror_url": null,
      "name": "prueba-scapegoat",
      "node_id": "MDEwOlJlcG9zaXRvcnkxMDQ4NzU3NzA=",
      "notifications_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/notifications{?since,all,participating}",
      "open_issues": 0,
      "open_issues_count": 0,
      "organization": "ULL-ESIT-DSI-1617",
      "owner": {
        "avatar_url": "https://avatars.githubusercontent.com/u/19915179?v=4",
        "email": null,
        "events_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/events{/privacy}",
        "followers_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/followers",
        "following_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/following{/other_user}",
        "gists_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/gists{/gist_id}",
        "gravatar_id": "",
        "html_url": "https://github.com/ULL-ESIT-DSI-1617",
        "id": 19915179,
        "login": "ULL-ESIT-DSI-1617",
        "name": "ULL-ESIT-DSI-1617",
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE5OTE1MTc5",
        "organizations_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/orgs",
        "received_events_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/received_events",
        "repos_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/repos",
        "site_admin": false,
        "starred_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/subscriptions",
        "type": "Organization",
        "url": "https://api.github.com/users/ULL-ESIT-DSI-1617"
      },
      "private": false,
      "pulls_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/pulls{/number}",
      "pushed_at": 1615195528,
      "releases_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/releases{/id}",
      "size": 25,
      "ssh_url": "git@github.com:ULL-ESIT-DSI-1617/prueba-scapegoat.git",
      "stargazers": 0,
      "stargazers_count": 0,
      "stargazers_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/stargazers",
      "statuses_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/statuses/{sha}",
      "subscribers_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/subscribers",
      "subscription_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/subscription",
      "svn_url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat",
      "tags_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/tags",
      "teams_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/teams",
      "trees_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/trees{/sha}",
      "updated_at": "2021-03-08T09:23:53Z",
      "url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat",
      "watchers": 0,
      "watchers_count": 0
    },
    "sender": {
      "avatar_url": "https://avatars.githubusercontent.com/u/1142554?v=4",
      "events_url": "https://api.github.com/users/crguezl/events{/privacy}",
      "followers_url": "https://api.github.com/users/crguezl/followers",
      "following_url": "https://api.github.com/users/crguezl/following{/other_user}",
      "gists_url": "https://api.github.com/users/crguezl/gists{/gist_id}",
      "gravatar_id": "",
      "html_url": "https://github.com/crguezl",
      "id": 1142554,
      "login": "crguezl",
      "node_id": "MDQ6VXNlcjExNDI1NTQ=",
      "organizations_url": "https://api.github.com/users/crguezl/orgs",
      "received_events_url": "https://api.github.com/users/crguezl/received_events",
      "repos_url": "https://api.github.com/users/crguezl/repos",
      "site_admin": false,
      "starred_url": "https://api.github.com/users/crguezl/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/crguezl/subscriptions",
      "type": "User",
      "url": "https://api.github.com/users/crguezl"
    }
  },
  "server_url": "https://github.com",
  "api_url": "https://api.github.com",
  "graphql_url": "https://api.github.com/graphql",
  "workspace": "/home/runner/work/prueba-scapegoat/prueba-scapegoat",
  "action": "run1"
}
2021-03-08T09:25:40.1422120Z ##[endgroup]
```

### GITHUB_CONTEXT more info

```js
2021-03-08T09:25:40.8128538Z {
2021-03-08T09:25:40.8129545Z   "token": "***",
2021-03-08T09:25:40.8130078Z   "job": "one",
2021-03-08T09:25:40.8130571Z   "ref": "refs/heads/master",
2021-03-08T09:25:40.8131641Z   "sha": "8644e75a9cb769f219d064695eeb20e64324f263",
2021-03-08T09:25:40.8133486Z   "repository": "ULL-ESIT-DSI-1617/prueba-scapegoat",
2021-03-08T09:25:40.8134656Z   "repository_owner": "ULL-ESIT-DSI-1617",
2021-03-08T09:25:40.8135842Z   "repositoryUrl": "git://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat.git",
2021-03-08T09:25:40.8137175Z   "run_id": "631804367",
2021-03-08T09:25:40.8137827Z   "run_number": "2",
2021-03-08T09:25:40.8138591Z   "retention_days": "90",
2021-03-08T09:25:40.8139555Z   "actor": "crguezl",
2021-03-08T09:25:40.8140175Z   "workflow": "Debugging contexts",
2021-03-08T09:25:40.8140861Z   "head_ref": "",
2021-03-08T09:25:40.8141517Z   "base_ref": "",
2021-03-08T09:25:40.8142462Z   "event_name": "push",
2021-03-08T09:25:40.8142935Z   "event": {
2021-03-08T09:25:40.8143864Z     "after": "8644e75a9cb769f219d064695eeb20e64324f263",
2021-03-08T09:25:40.8145098Z     "base_ref": null,
2021-03-08T09:25:40.8145862Z     "before": "e2840e77a0b20158e5e1f1efa4790e47e457cc86",
2021-03-08T09:25:40.8146673Z     "commits": [
2021-03-08T09:25:40.8147151Z       {
2021-03-08T09:25:40.8147663Z         "author": {
2021-03-08T09:25:40.8148250Z           "email": "crguezl@ull.edu.es",
2021-03-08T09:25:40.8149491Z           "name": "Casiano Rodriguez-Leon",
2021-03-08T09:25:40.8150283Z           "username": "crguezl"
2021-03-08T09:25:40.8151007Z         },
2021-03-08T09:25:40.8151985Z         "committer": {
2021-03-08T09:25:40.8152933Z           "email": "crguezl@ull.edu.es",
2021-03-08T09:25:40.8154310Z           "name": "Casiano Rodriguez-Leon",
2021-03-08T09:25:40.8155145Z           "username": "crguezl"
2021-03-08T09:25:40.8155714Z         },
2021-03-08T09:25:40.8156179Z         "distinct": true,
2021-03-08T09:25:40.8156837Z         "id": "8644e75a9cb769f219d064695eeb20e64324f263",
2021-03-08T09:25:40.8157841Z         "message": "debug-workflow",
2021-03-08T09:25:40.8158841Z         "timestamp": "2021-03-08T09:25:23Z",
2021-03-08T09:25:40.8159638Z         "tree_id": "18fdc4d87094853a1476f5ce03e09428e65a2d80",
2021-03-08T09:25:40.8161290Z         "url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/commit/8644e75a9cb769f219d064695eeb20e64324f263"
2021-03-08T09:25:40.8162283Z       }
2021-03-08T09:25:40.8162699Z     ],
2021-03-08T09:25:40.8163909Z     "compare": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/compare/e2840e77a0b2...8644e75a9cb7",
2021-03-08T09:25:40.8164847Z     "created": false,
2021-03-08T09:25:40.8165355Z     "deleted": false,
2021-03-08T09:25:40.8165950Z     "forced": false,
2021-03-08T09:25:40.8166441Z     "head_commit": {
2021-03-08T09:25:40.8166957Z       "author": {
2021-03-08T09:25:40.8167495Z         "email": "crguezl@ull.edu.es",
2021-03-08T09:25:40.8168396Z         "name": "Casiano Rodriguez-Leon",
2021-03-08T09:25:40.8169056Z         "username": "crguezl"
2021-03-08T09:25:40.8170238Z       },
2021-03-08T09:25:40.8171224Z       "committer": {
2021-03-08T09:25:40.8171801Z         "email": "crguezl@ull.edu.es",
2021-03-08T09:25:40.8172775Z         "name": "Casiano Rodriguez-Leon",
2021-03-08T09:25:40.8173443Z         "username": "crguezl"
2021-03-08T09:25:40.8173975Z       },
2021-03-08T09:25:40.8174432Z       "distinct": true,
2021-03-08T09:25:40.8175087Z       "id": "8644e75a9cb769f219d064695eeb20e64324f263",
2021-03-08T09:25:40.8176059Z       "message": "debug-workflow",
2021-03-08T09:25:40.8177085Z       "timestamp": "2021-03-08T09:25:23Z",
2021-03-08T09:25:40.8178414Z       "tree_id": "18fdc4d87094853a1476f5ce03e09428e65a2d80",
2021-03-08T09:25:40.8180276Z       "url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat/commit/8644e75a9cb769f219d064695eeb20e64324f263"
2021-03-08T09:25:40.8181267Z     },
2021-03-08T09:25:40.8181736Z     "organization": {
2021-03-08T09:25:40.8182655Z       "avatar_url": "https://avatars.githubusercontent.com/u/19915179?v=4",
2021-03-08T09:25:40.8184144Z       "description": "",
2021-03-08T09:25:40.8185759Z       "events_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/events",
2021-03-08T09:25:40.8186997Z       "hooks_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/hooks",
2021-03-08T09:25:40.8187763Z       "id": 19915179,
2021-03-08T09:25:40.8188755Z       "issues_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/issues",
2021-03-08T09:25:40.8189987Z       "login": "ULL-ESIT-DSI-1617",
2021-03-08T09:25:40.8191804Z       "members_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/members{/member}",
2021-03-08T09:25:40.8193418Z       "node_id": "MDEyOk9yZ2FuaXphdGlvbjE5OTE1MTc5",
2021-03-08T09:25:40.8194833Z       "public_members_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/public_members{/member}",
2021-03-08T09:25:40.8196422Z       "repos_url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617/repos",
2021-03-08T09:25:40.8198663Z       "url": "https://api.github.com/orgs/ULL-ESIT-DSI-1617"
2021-03-08T09:25:40.8200613Z     },
2021-03-08T09:25:40.8201212Z     "pusher": {
2021-03-08T09:25:40.8201860Z       "email": "crguezl@ull.edu.es",
2021-03-08T09:25:40.8202842Z       "name": "crguezl"
2021-03-08T09:25:40.8203355Z     },
2021-03-08T09:25:40.8203891Z     "ref": "refs/heads/master",
2021-03-08T09:25:40.8204436Z     "repository": {
2021-03-08T09:25:40.8205999Z       "archive_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/{archive_format}{/ref}",
2021-03-08T09:25:40.8207199Z       "archived": false,
2021-03-08T09:25:40.8208416Z       "assignees_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/assignees{/user}",
2021-03-08T09:25:40.8210008Z       "blobs_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/blobs{/sha}",
2021-03-08T09:25:40.8211736Z       "branches_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/branches{/branch}",
2021-03-08T09:25:40.8213692Z       "clone_url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat.git",
2021-03-08T09:25:40.8215336Z       "collaborators_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/collaborators{/collaborator}",
2021-03-08T09:25:40.8217103Z       "comments_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/comments{/number}",
2021-03-08T09:25:40.8218707Z       "commits_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/commits{/sha}",
2021-03-08T09:25:40.8220860Z       "compare_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/compare/{base}...{head}",
2021-03-08T09:25:40.8222471Z       "contents_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/contents/{+path}",
2021-03-08T09:25:40.8224868Z       "contributors_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/contributors",
2021-03-08T09:25:40.8225999Z       "created_at": 1506425027,
2021-03-08T09:25:40.8226593Z       "default_branch": "master",
2021-03-08T09:25:40.8227945Z       "deployments_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/deployments",
2021-03-08T09:25:40.8229554Z       "description": "Testing the installation and functionality of a npm module ",
2021-03-08T09:25:40.8230351Z       "disabled": false,
2021-03-08T09:25:40.8231780Z       "downloads_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/downloads",
2021-03-08T09:25:40.8235047Z       "events_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/events",
2021-03-08T09:25:40.8235985Z       "fork": false,
2021-03-08T09:25:40.8236780Z       "forks": 1,
2021-03-08T09:25:40.8237986Z       "forks_count": 1,
2021-03-08T09:25:40.8239320Z       "forks_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/forks",
2021-03-08T09:25:40.8240632Z       "full_name": "ULL-ESIT-DSI-1617/prueba-scapegoat",
2021-03-08T09:25:40.8242060Z       "git_commits_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/commits{/sha}",
2021-03-08T09:25:40.8244396Z       "git_refs_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/refs{/sha}",
2021-03-08T09:25:40.8246300Z       "git_tags_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/tags{/sha}",
2021-03-08T09:25:40.8248480Z       "git_url": "git://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat.git",
2021-03-08T09:25:40.8249481Z       "has_downloads": true,
2021-03-08T09:25:40.8250049Z       "has_issues": true,
2021-03-08T09:25:40.8250700Z       "has_pages": false,
2021-03-08T09:25:40.8251433Z       "has_projects": true,
2021-03-08T09:25:40.8252387Z       "has_wiki": true,
2021-03-08T09:25:40.8254362Z       "homepage": "https://ull-esit-pl-1819.github.io//introduccion/tema1-introduccion-a-javascript/nodejspackages.html",
2021-03-08T09:25:40.8256431Z       "hooks_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/hooks",
2021-03-08T09:25:40.8258317Z       "html_url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat",
2021-03-08T09:25:40.8259471Z       "id": 104875770,
2021-03-08T09:25:40.8261259Z       "issue_comment_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/issues/comments{/number}",
2021-03-08T09:25:40.8263117Z       "issue_events_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/issues/events{/number}",
2021-03-08T09:25:40.8264770Z       "issues_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/issues{/number}",
2021-03-08T09:25:40.8266277Z       "keys_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/keys{/key_id}",
2021-03-08T09:25:40.8267936Z       "labels_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/labels{/name}",
2021-03-08T09:25:40.8268873Z       "language": "JavaScript",
2021-03-08T09:25:40.8270114Z       "languages_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/languages",
2021-03-08T09:25:40.8271076Z       "license": null,
2021-03-08T09:25:40.8271669Z       "master_branch": "master",
2021-03-08T09:25:40.8273211Z       "merges_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/merges",
2021-03-08T09:25:40.8275647Z       "milestones_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/milestones{/number}",
2021-03-08T09:25:40.8276653Z       "mirror_url": null,
2021-03-08T09:25:40.8277461Z       "name": "prueba-scapegoat",
2021-03-08T09:25:40.8278543Z       "node_id": "MDEwOlJlcG9zaXRvcnkxMDQ4NzU3NzA=",
2021-03-08T09:25:40.8281182Z       "notifications_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/notifications{?since,all,participating}",
2021-03-08T09:25:40.8282366Z       "open_issues": 0,
2021-03-08T09:25:40.8282879Z       "open_issues_count": 0,
2021-03-08T09:25:40.8283755Z       "organization": "ULL-ESIT-DSI-1617",
2021-03-08T09:25:40.8284351Z       "owner": {
2021-03-08T09:25:40.8285280Z         "avatar_url": "https://avatars.githubusercontent.com/u/19915179?v=4",
2021-03-08T09:25:40.8286146Z         "email": null,
2021-03-08T09:25:40.8287207Z         "events_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/events{/privacy}",
2021-03-08T09:25:40.8288612Z         "followers_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/followers",
2021-03-08T09:25:40.8290003Z         "following_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/following{/other_user}",
2021-03-08T09:25:40.8291399Z         "gists_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/gists{/gist_id}",
2021-03-08T09:25:40.8292214Z         "gravatar_id": "",
2021-03-08T09:25:40.8293183Z         "html_url": "https://github.com/ULL-ESIT-DSI-1617",
2021-03-08T09:25:40.8293987Z         "id": 19915179,
2021-03-08T09:25:40.8295366Z         "login": "ULL-ESIT-DSI-1617",
2021-03-08T09:25:40.8296242Z         "name": "ULL-ESIT-DSI-1617",
2021-03-08T09:25:40.8297135Z         "node_id": "MDEyOk9yZ2FuaXphdGlvbjE5OTE1MTc5",
2021-03-08T09:25:40.8298609Z         "organizations_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/orgs",
2021-03-08T09:25:40.8301057Z         "received_events_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/received_events",
2021-03-08T09:25:40.8302644Z         "repos_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/repos",
2021-03-08T09:25:40.8303785Z         "site_admin": false,
2021-03-08T09:25:40.8304931Z         "starred_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/starred{/owner}{/repo}",
2021-03-08T09:25:40.8306412Z         "subscriptions_url": "https://api.github.com/users/ULL-ESIT-DSI-1617/subscriptions",
2021-03-08T09:25:40.8307916Z         "type": "Organization",
2021-03-08T09:25:40.8309116Z         "url": "https://api.github.com/users/ULL-ESIT-DSI-1617"
2021-03-08T09:25:40.8309802Z       },
2021-03-08T09:25:40.8310531Z       "private": false,
2021-03-08T09:25:40.8311908Z       "pulls_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/pulls{/number}",
2021-03-08T09:25:40.8312935Z       "pushed_at": 1615195528,
2021-03-08T09:25:40.8314249Z       "releases_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/releases{/id}",
2021-03-08T09:25:40.8315249Z       "size": 25,
2021-03-08T09:25:40.8316259Z       "ssh_url": "git@github.com:ULL-ESIT-DSI-1617/prueba-scapegoat.git",
2021-03-08T09:25:40.8317123Z       "stargazers": 0,
2021-03-08T09:25:40.8317696Z       "stargazers_count": 0,
2021-03-08T09:25:40.8318921Z       "stargazers_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/stargazers",
2021-03-08T09:25:40.8320589Z       "statuses_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/statuses/{sha}",
2021-03-08T09:25:40.8322228Z       "subscribers_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/subscribers",
2021-03-08T09:25:40.8324269Z       "subscription_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/subscription",
2021-03-08T09:25:40.8325885Z       "svn_url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat",
2021-03-08T09:25:40.8327375Z       "tags_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/tags",
2021-03-08T09:25:40.8329018Z       "teams_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/teams",
2021-03-08T09:25:40.8330754Z       "trees_url": "https://api.github.com/repos/ULL-ESIT-DSI-1617/prueba-scapegoat/git/trees{/sha}",
2021-03-08T09:25:40.8331871Z       "updated_at": "2021-03-08T09:23:53Z",
2021-03-08T09:25:40.8332935Z       "url": "https://github.com/ULL-ESIT-DSI-1617/prueba-scapegoat",
2021-03-08T09:25:40.8333721Z       "watchers": 0,
2021-03-08T09:25:40.8334272Z       "watchers_count": 0
2021-03-08T09:25:40.8334753Z     },
2021-03-08T09:25:40.8335419Z     "sender": {
2021-03-08T09:25:40.8336496Z       "avatar_url": "https://avatars.githubusercontent.com/u/1142554?v=4",
2021-03-08T09:25:40.8337646Z       "events_url": "https://api.github.com/users/crguezl/events{/privacy}",
2021-03-08T09:25:40.8338690Z       "followers_url": "https://api.github.com/users/crguezl/followers",
2021-03-08T09:25:40.8339879Z       "following_url": "https://api.github.com/users/crguezl/following{/other_user}",
2021-03-08T09:25:40.8340938Z       "gists_url": "https://api.github.com/users/crguezl/gists{/gist_id}",
2021-03-08T09:25:40.8341651Z       "gravatar_id": "",
2021-03-08T09:25:40.8342365Z       "html_url": "https://github.com/crguezl",
2021-03-08T09:25:40.8343119Z       "id": 1142554,
2021-03-08T09:25:40.8343891Z       "login": "crguezl",
2021-03-08T09:25:40.8344533Z       "node_id": "MDQ6VXNlcjExNDI1NTQ=",
2021-03-08T09:25:40.8345740Z       "organizations_url": "https://api.github.com/users/crguezl/orgs",
2021-03-08T09:25:40.8347242Z       "received_events_url": "https://api.github.com/users/crguezl/received_events",
2021-03-08T09:25:40.8348784Z       "repos_url": "https://api.github.com/users/crguezl/repos",
2021-03-08T09:25:40.8349571Z       "site_admin": false,
2021-03-08T09:25:40.8350485Z       "starred_url": "https://api.github.com/users/crguezl/starred{/owner}{/repo}",
2021-03-08T09:25:40.8351790Z       "subscriptions_url": "https://api.github.com/users/crguezl/subscriptions",
2021-03-08T09:25:40.8352784Z       "type": "User",
2021-03-08T09:25:40.8353423Z       "url": "https://api.github.com/users/crguezl"
2021-03-08T09:25:40.8354450Z     }
2021-03-08T09:25:40.8356248Z   },
2021-03-08T09:25:40.8356897Z   "server_url": "https://github.com",
2021-03-08T09:25:40.8357888Z   "api_url": "https://api.github.com",
2021-03-08T09:25:40.8359061Z   "graphql_url": "https://api.github.com/graphql",
2021-03-08T09:25:40.8360473Z   "workspace": "/home/runner/work/prueba-scapegoat/prueba-scapegoat",
2021-03-08T09:25:40.8361334Z   "action": "run1"
2021-03-08T09:25:40.8361783Z }
```

## JOB_CONTEXT

```log
2021-03-08T09:25:40.8432072Z ##[group]Run echo "$JOB_CONTEXT"
2021-03-08T09:25:40.8432958Z [36;1mecho "$JOB_CONTEXT"[0m
2021-03-08T09:25:40.8479316Z shell: /bin/bash -e {0}
2021-03-08T09:25:40.8479858Z env:
2021-03-08T09:25:40.8480380Z   JOB_CONTEXT: {
  "status": "success"
}
2021-03-08T09:25:40.8480948Z ##[endgroup]
2021-03-08T09:25:40.8554693Z {
2021-03-08T09:25:40.8556937Z   "status": "success"
2021-03-08T09:25:40.8559309Z }
```

## STEPS_CONTEXT

```
2021-03-08T09:25:40.8592514Z ##[group]Run echo "$STEPS_CONTEXT"
2021-03-08T09:25:40.8593239Z [36;1mecho "$STEPS_CONTEXT"[0m
2021-03-08T09:25:40.8637337Z shell: /bin/bash -e {0}
2021-03-08T09:25:40.8638076Z env:
2021-03-08T09:25:40.8638596Z   STEPS_CONTEXT: {}
2021-03-08T09:25:40.8639285Z ##[endgroup]
2021-03-08T09:25:40.8770017Z {}
```

## RUNNER_CONTEXT

```
2021-03-08T09:25:40.8813050Z ##[group]Run echo "$RUNNER_CONTEXT"
2021-03-08T09:25:40.8815153Z [36;1mecho "$RUNNER_CONTEXT"[0m
2021-03-08T09:25:40.9096040Z shell: /bin/bash -e {0}
2021-03-08T09:25:40.9096514Z env:
2021-03-08T09:25:40.9097644Z   RUNNER_CONTEXT: {
  "os": "Linux",
  "tool_cache": "/opt/hostedtoolcache",
  "temp": "/home/runner/work/_temp",
  "workspace": "/home/runner/work/prueba-scapegoat"
}
2021-03-08T09:25:40.9098613Z ##[endgroup]
2021-03-08T09:25:40.9175581Z {
2021-03-08T09:25:40.9176270Z   "os": "Linux",
2021-03-08T09:25:40.9177347Z   "tool_cache": "/opt/hostedtoolcache",
2021-03-08T09:25:40.9179327Z   "temp": "/home/runner/work/_temp",
2021-03-08T09:25:40.9181556Z   "workspace": "/home/runner/work/prueba-scapegoat"
2021-03-08T09:25:40.9182379Z }
```

## STRATEGY_CONTEXT

```
2021-03-08T09:25:40.9215918Z ##[group]Run echo "$STRATEGY_CONTEXT"
2021-03-08T09:25:40.9216786Z [36;1mecho "$STRATEGY_CONTEXT"[0m
2021-03-08T09:25:40.9262542Z shell: /bin/bash -e {0}
2021-03-08T09:25:40.9263028Z env:
2021-03-08T09:25:40.9263761Z   STRATEGY_CONTEXT: {
  "fail-fast": true,
  "job-index": 0,
  "job-total": 1,
  "max-parallel": 1
}
2021-03-08T09:25:40.9264908Z ##[endgroup]
2021-03-08T09:25:41.7851009Z {
2021-03-08T09:25:41.7852026Z   "fail-fast": true,
2021-03-08T09:25:41.7852610Z   "job-index": 0,
2021-03-08T09:25:41.7853630Z   "job-total": 1,
2021-03-08T09:25:41.7854202Z   "max-parallel": 1
2021-03-08T09:25:41.7854582Z }
```

## MATRIX_CONTEXT

```
2021-03-08T09:25:41.7886176Z ##[group]Run echo "$MATRIX_CONTEXT"
2021-03-08T09:25:41.7888342Z [36;1mecho "$MATRIX_CONTEXT"[0m
2021-03-08T09:25:41.7931615Z shell: /bin/bash -e {0}
2021-03-08T09:25:41.7931997Z env:
2021-03-08T09:25:41.7932444Z   MATRIX_CONTEXT: null
2021-03-08T09:25:41.7932835Z ##[endgroup]
2021-03-08T09:25:41.7996260Z null
2021-03-08T09:25:41.8010618Z Cleaning up orphan processes
```