# exon-config

My Mac setup, applied with [exon](https://github.com/BitByNIK/exon).

```sh
brew install bitbynik/tap/exon
exon setup bitbynik/exon-config
```

- `exon.toml`: the apps to install, and the dev tools for containers (`[dev]`)
- `home/`: config files, copied to the same place under `~`
- `toolbox/`: starter files for the shared toolbox that my dev containers use. It has the same layout as the toolbox volume. A file is copied in only if the volume doesn't have it yet, so changes made inside a container are kept.
  - `toolbox/state/omp/agent/config.yml`: omp's settings in containers
  - `toolbox/state/omp/agent/mcp.json`: registers the codebase-memory MCP with omp in containers
  - `toolbox/shell/bashrc`, `toolbox/shell/inputrc`: the shell setup in containers

## Dev containers

```sh
exon dev install bitbynik/exon-config   # the tools and these starter files, once
exon dev init                           # in a project: adds its personal dev container
```

Then open the project in Zed and choose "personal". In any one container, sign in once and every container has it:

```sh
gh auth login --web --git-protocol https && gh auth setup-git
omp   # then /login
```

Contains no logins, tokens or keys.
