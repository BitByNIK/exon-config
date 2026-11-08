# Browser
- Open pages with `http://localhost:<port>`, not https and not `*.orb.local`: Chromium here does not trust
  OrbStack's certificate, and `http://localhost` is the one HTTP origin browsers treat as secure.
- If `PUPPETEER_EXECUTABLE_PATH` is set, Chromium is installed in this container: use the browser tool if you have
  one, and do not download or install another browser. If it is not set, this container has no browser: say so, do
  not install one.
- omp: if the `browser` tool will not start ("Shared browser daemon unavailable"), read the daemon's output before
  guessing: `~/.omp/run/daemons/*/daemons/omp.browser.headless/output.log`. omp already passes `--no-sandbox`;
  a "No usable sandbox" message from running `chromium` by hand is not the cause.

# codebase-memory MCP
- Always pass `name` to `index_repository`, set to the repo's folder name (the existing name in
  `list_projects`, e.g. `resume`). Most `/workspaces/<repo>` folders are symlinks into
  `/mnt/projects/<repo>`, and without `name` the indexer names the project from the real path,
  creating duplicates like `mnt-projects-resume`.

# Making changes
- Do not edit files, commit or push unless the user asks. A question, a review or a plan is not a request to
  change anything. When unsure, ask.
- Other projects are mounted read-only at `/mnt/projects` (and linked from `/workspaces/<name>`). Read them
  freely for reference. Never write, build or run anything there.

# Shared toolbox state
- `/opt/toolbox` is one volume shared by all of the user's dev containers and projects. It holds the tools, their
  logins, settings and every project's sessions and memory.
- Anything that changes this shared state affects every project and container. That includes installing or
  removing a tool, changing the user-level settings, and adding or removing a registration. Before you run such
  a command or installation, tell the user what it will change and wait for their go-ahead.
