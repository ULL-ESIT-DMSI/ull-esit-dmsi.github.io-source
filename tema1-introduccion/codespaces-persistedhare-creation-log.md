# Codespaces Troubleshooting: Creation Log

## cat .codespaces/.persistedshare/creation.log

```bash
@casiano-rodriguez ➜ /workspaces $ cat .codespaces/.persistedshare/creation.log
```

```bash
2024-09-25 11:51:21.179Z: Host information
2024-09-25 11:51:21.179Z: ----------------
2024-09-25 11:51:21.179Z: OS: Ubuntu 22.04.5 LTS (stable release)
2024-09-25 11:51:21.179Z: Image details: https://github.com/github/codespaces-host-images/blob/main/README.md
2024-09-25 11:51:21.179Z: ----------------

=================================================================================
2024-09-25 11:51:21.207Z: Configuration starting...
2024-09-25 11:51:21.227Z: Cloning...
2024-09-25 11:51:23.745Z: Using image: mcr.microsoft.com/devcontainers/universal

=================================================================================
2024-09-25 11:51:23.785Z: Creating container...

=================================================================================
2024-09-25 11:51:25.026Z: Running blocking commands...
2024-09-25 11:51:25.063Z: $ devcontainer up --id-label Type=codespaces --workspace-folder /var/lib/docker/codespacemount/workspace/intro2sd-casiano-rodriguez-leon-alu0100291865 --mount type=bind,source=/.codespaces/agent/mount/cache,target=/vscode --user-data-folder /var/lib/docker/codespacemount/.persistedshare --container-data-folder .vscode-remote/data/Machine --container-system-data-folder /var/vscode-remote --log-level trace --log-format json --update-remote-user-uid-default never --mount-workspace-git-root false --omit-config-remote-env-from-metadata --skip-non-blocking-commands --expect-existing-container --override-config /root/.codespaces/shared/merged_devcontainer.json --default-user-env-probe loginInteractiveShell --container-session-data-folder /workspaces/.codespaces/.persistedshare/devcontainers-cli/cache --secrets-file /root/.codespaces/shared/user-secrets-envs.json
2024-09-25 11:51:25.418Z: @devcontainers/cli 0.68.0. Node.js v18.20.4. linux 6.8.0-1014-azure x64.
2024-09-25 11:51:25.630Z: Outcome: success User: codespace WorkspaceFolder: /workspaces/intro2sd-casiano-rodriguez-leon-alu0100291865
2024-09-25 11:51:25.643Z: devcontainer process exited with exit code 0

=================================================================================
2024-09-25 11:51:25.696Z: Configuring codespace...
2024-09-25 11:51:25.697Z: Running oryx...

=================================================================================
2024-09-25 11:52:25.963Z: Running commands...
2024-09-25 11:52:26.029Z: $ devcontainer up --id-label Type=codespaces --workspace-folder /var/lib/docker/codespacemount/workspace/intro2sd-casiano-rodriguez-leon-alu0100291865 --expect-existing-container --skip-post-attach --mount type=bind,source=/.codespaces/agent/mount/cache,target=/vscode --container-data-folder .vscode-remote/data/Machine --container-system-data-folder /var/vscode-remote --log-level trace --log-format json --update-remote-user-uid-default never --mount-workspace-git-root false --override-config /root/.codespaces/shared/merged_devcontainer.json --default-user-env-probe loginInteractiveShell --container-session-data-folder /workspaces/.codespaces/.persistedshare/devcontainers-cli/cache --secrets-file /root/.codespaces/shared/user-secrets-envs.json
2024-09-25 11:52:26.470Z: @devcontainers/cli 0.68.0. Node.js v18.20.4. linux 6.8.0-1014-azure x64.
2024-09-25 11:52:26.999Z: Running the postCreateCommand from Feature 'ghcr.io/devcontainers/features/git-lfs:1'...

2024-09-25 11:52:27.003Z: /usr/local/share/pull-git-lfs-artifacts.sh
2024-09-25 11:52:27.141Z: Fetching git lfs artifacts...
2024-09-25 11:52:32.174Z: Outcome: success User: codespace WorkspaceFolder: /workspaces/intro2sd-casiano-rodriguez-leon-alu0100291865
2024-09-25 11:52:32.222Z: devcontainer process exited with exit code 0

=================================================================================
2024-09-25 11:52:32.222Z: Installing dotfiles...
2024-09-25 11:52:32.222Z: $ devcontainer up --id-label Type=codespaces --workspace-folder /var/lib/docker/codespacemount/workspace/intro2sd-casiano-rodriguez-leon-alu0100291865 --expect-existing-container --skip-post-attach --mount type=bind,source=/.codespaces/agent/mount/cache,target=/vscode --container-data-folder .vscode-remote/data/Machine --container-system-data-folder /var/vscode-remote --log-level trace --log-format json --update-remote-user-uid-default never --mount-workspace-git-root false --override-config /root/.codespaces/shared/merged_devcontainer.json --dotfiles-repository https://github.com/casiano-rodriguez/dotfiles --dotfiles-target-path /workspaces/.codespaces/.persistedshare/dotfiles --default-user-env-probe loginInteractiveShell --container-session-data-folder /workspaces/.codespaces/.persistedshare/devcontainers-cli/cache --secrets-file /root/.codespaces/shared/user-secrets-envs.json
2024-09-25 11:52:32.581Z: @devcontainers/cli 0.68.0. Node.js v18.20.4. linux 6.8.0-1014-azure x64.
2024-09-25 11:52:33.177Z: $ # Clone & install dotfiles
2024-09-25 11:52:33.185Z: Cloning into '/workspaces/.codespaces/.persistedshare/dotfiles'...

2024-09-25 11:52:33.997Z: Setting current directory to /workspaces/.codespaces/.persistedshare/dotfiles

2024-09-25 11:52:33.997Z: Setting /workspaces/.codespaces/.persistedshare/dotfiles/install.sh as executable

2024-09-25 11:52:33.998Z: Executing command /workspaces/.codespaces/.persistedshare/dotfiles/install.sh...

2024-09-25 11:52:35.130Z: Cloning into '/home/codespace/.local/share/gh/extensions/gh-org-teams'...

2024-09-25 11:52:39.179Z: Cloning into '/home/codespace/.local/share/gh/extensions/gh-org-clone'...

2024-09-25 11:52:41.399Z: Updating files:  79% (8825/11157)
2024-09-25 11:52:41.422Z: Updating files:  80% (8926/11157)
2024-09-25 11:52:41.441Z: Updating files:  81% (9038/11157)
2024-09-25 11:52:41.467Z: Updating files:  82% (9149/11157)
2024-09-25 11:52:41.477Z: Updating files:  83% (9261/11157)
2024-09-25 11:52:41.493Z: Updating files:  84% (9372/11157)
2024-09-25 11:52:41.504Z: Updating files:  85% (9484/11157)
2024-09-25 11:52:41.516Z: Updating files:  86% (9596/11157)
2024-09-25 11:52:41.532Z: Updating files:  87% (9707/11157)
2024-09-25 11:52:41.537Z: Updating files:  88% (9819/11157)
2024-09-25 11:52:41.547Z: Updating files:  89% (9930/11157)
2024-09-25 11:52:41.557Z: Updating files:  90% (10042/11157)
2024-09-25 11:52:41.570Z: Updating files:  91% (10153/11157)
2024-09-25 11:52:41.579Z: Updating files:  92% (10265/11157)
2024-09-25 11:52:41.597Z: Updating files:  93% (10377/11157)
2024-09-25 11:52:41.620Z: Updating files:  94% (10488/11157)
2024-09-25 11:52:41.627Z: Updating files:  95% (10600/11157)
2024-09-25 11:52:41.635Z: Updating files:  96% (10711/11157)
2024-09-25 11:52:41.644Z: Updating files:  97% (10823/11157)
2024-09-25 11:52:41.652Z: Updating files:  98% (10934/11157)
2024-09-25 11:52:41.662Z: Updating files:  99% (11046/11157)
Updating files: 100% (11157/11157), done. 100% (11157/11157)

2024-09-25 11:52:41.704Z: 
2024-09-25 11:52:41.704Z: 
2024-09-25 11:52:41.704Z: Stop: Run in container: # Clone & install dotfiles
2024-09-25 11:52:41.714Z: Outcome: success User: codespace WorkspaceFolder: /workspaces/intro2sd-casiano-rodriguez-leon-alu0100291865
2024-09-25 11:52:41.743Z: devcontainer process exited with exit code 0

=================================================================================
2024-09-25 11:52:41.743Z: Finished configuring codespace.
```