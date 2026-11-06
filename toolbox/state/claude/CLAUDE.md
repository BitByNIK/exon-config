# Browser
- Open pages with `http://localhost:<port>`, not https and not `*.orb.local`: Chromium here does not trust
  OrbStack's certificate, and `http://localhost` is the one HTTP origin browsers treat as secure.
