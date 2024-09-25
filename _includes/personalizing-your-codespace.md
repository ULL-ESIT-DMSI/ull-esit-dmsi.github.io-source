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
