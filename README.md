npx-git-version
==

[![ko-fi](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-orange?logo=buy-me-a-coffee&logoColor=white&style=flat-square)](https://www.buymeacoffee.com/mitchallen)
[![ko-fi](https://img.shields.io/badge/Support%20me%20on%20Ko--fi-29abe0?logo=ko-fi&logoColor=white&style=flat-square)](https://ko-fi.com/mitchallen)

## Bumping Git Tags Using npx

You can bump the git version tag directly from any git repo using this tool with npx. Use the `--yes` flag to skip the install prompt.

### Patch Version

```sh
npx --yes github:mitchallen/npx-git-version patch
```

### Minor Version

```sh
npx --yes github:mitchallen/npx-git-version minor
```

### Major Version

```sh
npx --yes github:mitchallen/npx-git-version major
```

When you run this for the first time on a machine without the flag, it will ask for permission to install:

```sh
npx github:mitchallen/npx-git-version patch
Need to install the following packages:
github:mitchallen/npx-git-version
Ok to proceed? (y) y

```

After that it will just run, unless there was an update:

* * *

## How it works

* The shell script is referenced in **package.json** as a **bin**.
* The script was made executable via `chmod +x bin/run.sh`
* Because the package is ***not*** published, it needs to be run using the format: `npx github:username/repo`

* * *

## References

* [mitchallen/npx-shell-101](https://github.com/mitchallen/npx-shell-101)


