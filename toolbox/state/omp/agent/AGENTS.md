# Browser
- If `PUPPETEER_EXECUTABLE_PATH` is set, Chromium is installed in this container: use the `browser` tool and do not
  download or install another browser. If it is not set, this container has no browser: say so, do not install one.
- Open pages with `http://localhost:<port>`, not https and not `*.orb.local`: Chromium here does not trust
  OrbStack's certificate, and `http://localhost` is the one HTTP origin browsers treat as secure.
- If the `browser` tool will not start ("Shared browser daemon unavailable"), read the daemon's output before
  guessing: `~/.omp/run/daemons/*/daemons/omp.browser.headless/output.log`. omp already passes `--no-sandbox`;
  a "No usable sandbox" message from running `chromium` by hand is not the cause.
