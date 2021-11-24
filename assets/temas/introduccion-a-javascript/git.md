---
title: Some git tips 
---


## Removing Submodules

### git submodule deinit

```
git submodule deinit [-f|--force] (--all|[--] <path>...)
```

Unregister the given submodules, i.e. remove the whole 
submodule.$name 
section from `.git/config` together with their work tree. 

Further calls to git submodule update, git submodule foreach and git
submodule sync will skip any unregistered submodules **until they are initialized again**, so use this command if you don't want to have a local checkout of the submodule in your working tree anymore.

When the command is run without pathspec, it errors out, instead of deinit-ing everything, to prevent
mistakes.

If --force is specified, the submodule's working tree will be removed even if it contains local
modifications.

**If you really want to remove a submodule from the repository and commit that use git-rm(1) instead**. 

### git rm 

#### SUBMODULES

Only submodules using a gitfile (which means they were cloned with a Git version 1.7.8 or newer) will be
removed from the work tree, **as their repository lives inside the .git directory of the superproject**. 

If a submodule (or one of those nested inside it) still uses a .git directory, 
`git rm` **will move the submodules
git directory into the superprojects git directory to protect the submodule's history**. 

If it exists the
submodule.<name> section in the gitmodules(5) file will also be removed and that file will be staged
(unless --cached or -n are used).

A submodule is considered up to date when the HEAD is the same as recorded in the index, no tracked files are modified and no untracked files that aren't ignored are present in the submodules work tree. 
Ignored
files are deemed expendable and won't stop a submodule's work tree from being removed.

**If you only want to remove the local checkout of a submodule from your work tree without committing the removal, use `git-submodule(1) deinit` instead**. 
