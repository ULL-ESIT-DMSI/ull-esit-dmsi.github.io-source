<!-- ## Personalizing your Codespace -->
Si quieres personalizar tu Codespace, puedes leer [Personalizing GitHub Codespaces for your account](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-github-codespaces-for-your-account).Puedes personalizar GitHub Codespaces usando 

1. Un [repositorio `dotfiles` en GitHub](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-github-codespaces-for-your-account#dotfiles) o 
2. Usando [Settings Sync](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-github-codespaces-for-your-account#settings-sync).

To speed up codespace creation, you can configure your project to **prebuild codespaces** for specific branches in specific regions. You create and configure prebuilds in your repository's settings. 

- Repository-level settings for GitHub Codespaces are available for all repositories owned by personal accounts.
- For repositories owned by organizations, repository-level settings for GitHub Codespaces are available for organizations on GitHub Team plans that there is the one you get from GH Education as a teacher. 

See the documentation at [codespaces/prebuilding-your-codespaces](https://docs.github.com/en/codespaces/prebuilding-your-codespaces).

A **prebuild** assembles the main components of a codespace for a particular combination of repository, branch, and `devcontainer.json` configuration file. 

It provides a quick way to create a new codespace. For complex and/or large repositories in particular, you can create a new codespace more quickly by using a prebuild.

Whenever you push changes to your repository, GitHub Codespaces uses GitHub Actions to automatically update your prebuilds.

See [codespaces-contrib/dotfiles](https://github.com/codespaces-contrib/dotfiles), 
[casiano-rodriguez/dotfiles](https://github.com/casiano-rodriguez/dotfiles) and [crguezl/dotfiles](https://github.com/crguezl/dotfiles) (the last two are private repos)

### Exercise: Personalizing your Codespace  

1. Generate a token with admin power (go to https://github.com/settings/tokens). Give them superpowers and save it as `admin` token 
2. Go to your **Codespace user secrets** section  <https://github.com/settings/codespaces> and
   - Add a `GH_TOKEN` secret in the codespace repository settings. See <https://cli.github.com/manual/gh_help_environment>.
   - As value use the token you generated in the previous step.
     
     ![/assets/images/codespaces-secrets-admin-token.png]({{site.baseurl}}/assets/images/codespaces-secrets-admin-token.png)
3. Activate the section **Dotfiles**. 
4. Create a `dotfiles` repository in your GitHub account. 
   - [![assets/images/codespaces-dotfile.png]({{site.baseurl}}/assets/images/codespaces-dotfile.png)](https://github.com/casiano-rodriguez/dotfiles)
   - Copy what you want of your `.gitconfig` and `.bashrc` files to the `dotfiles` repository.
   - Write a `install.sh` script that installs your favorite tools. Example:
  
     ```bash
      gh alias set cd '!gh config set current-org "$1" 2>/dev/null'
      gh alias set pwd '!gh config get current-org'
      #gh extension install github/gh-classroom
      #gh extension install github/gh-copilot
      gh extension install gh-cli-for-education/gh-org-teams
      gh extension install crguezl/gh-org-clone
      #gh extension install crguezl/gh-submodule-add
      ```
5. Put all you repos as **Trusted repositories** in the corresponding subsection of <https://github.com/settings/codespaces>.
6. Activate the [Settings Sync](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-github-codespaces-for-your-account#settings-sync) section.
   - ![]({{site.baseurl}}/assets/images/codespaces-settings-sync.png) 
   - [Settings Sync section of the Visual Studio Code documentation](https://code.visualstudio.com/docs/editor/settings-sync)
7. Enable [GPG verification]({{ site.baseurl}}/tema1-introduccion/gpg) in your Codespace


### Codespace Personalization: Troubleshooting

See the docs at [Troubleshooting personalization options for GitHub Codespaces](https://docs.github.com/en/codespaces/troubleshooting/troubleshooting-personalization-for-codespaces).

Check `/workspaces/.codespaces/.persistedshare/dotfiles` to see if your `dotfiles` were cloned.

- If your `dotfiles` were cloned, try manually re-running your install script to verify that it is executable.
  
- If your `dotfiles` were not cloned, check `/workspaces/.codespaces/.persistedshare/`

  ```bash
  @casiano-rodriguez ➜ /workspaces $ ls -a .codespaces/.persistedshare/*.log
  .codespaces/.persistedshare/creation.log
  @casiano-rodriguez ➜ /workspaces $ ls -a .codespaces/.persistedshare/*.txt
  .codespaces/.persistedshare/vsserverhostlog.txt  
  .codespaces/.persistedshare/vsserverterminallog.txt
  ```
  The file `.codespaces/.persistedshare/vsserverterminallog.txt` contains the output of the terminal including escape codes.

  The file `.codespaces/.persistedshare/vsserverhostlog.txt` contains the output of the host.
- Check `/workspaces/.codespaces/.persistedshare/creation.log` for possible issues. For more information, see [Creation logs](https://docs.github.com/en/codespaces/troubleshooting/github-codespaces-logs#creation-logs).

  ```bash
  @casiano-rodriguez ➜ /workspaces $ cat .codespaces/.persistedshare/creation.log
  ```

  See the [output of the previous `cat .codespaces/.persistedshare/creation.log` command]({{ site.baseurl}}/tema1-introduccion/codespaces-persistedhare-creation-log)


For instance, I notice that the `.gitconfig` file in the dotfiles repositoryis is in `/workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig`
but hasn't being copied to the home directory (`/home/codespace`). 
So I manually link it:

```bash
 ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/
 ```

### The codespaces shared folder

The shared folder is located at `/root/.codespaces/shared/`.

```bash
@casiano-rodriguez ➜ /workspaces/intro2sd-casiano-rodriguez-leon-alu0100291865 (main) $ ls -a ../.codespaces/shared
.environmentConfigurationCompleted  
devContainerTelemetry.json  
merged_devcontainer.json  
unifiedPostCreateOutput.json
.user-secrets.json                  
editors                            // folder
postCreateOutput.json     
user-secrets-envs.json
.env          
codespaceStatusTool.js              
environment-variables.json  
read-config.json
.env-secrets  
cs-agent.sock                       // a socket
first-run-notice.txt        
resource-usage.json
```

 It contains among others the `user-secrets.json` file:

`➜ /workspaces/dotfiles (main) $ cat ../.codespaces/shared/.user-secrets.json  | jq '.'`
```json
[
  {
    "type": "EnvironmentVariable",
    "name": "GITHUB_SERVER_URL",
    "value": "https://github.com"
  },
  {
    "type": "EnvironmentVariable",
    "name": "GITHUB_API_URL",
    "value": "https://api.github.com"
  },
  {
    "type": "EnvironmentVariable",
    "name": "GITHUB_GRAPHQL_URL",
    "value": "https://api.github.com/graphql"
  },
  ...
  {
    "type": "EnvironmentVariable",
    "name": "GITHUB_TOKEN",
    "value": "ghu_XXXX...XXX"
  },
  ...
  {
    "type": "EnvironmentVariable",
    "name": "GITHUB_USER",
    "value": "casiano-rodriguez"
  },
  ...
  {
    "type": "EnvironmentVariable",
    "name": "CODESPACES",
    "value": "true"
  },
  {
    "type": "EnvironmentVariable",
    "name": "CODESPACE_NAME",
    "value": "studious-potato-blah-blah"
  }
]
```
THE `GH_TOKEN` secret does not appear in the `user-secrets.json` file. 
