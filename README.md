<p align="center">
  <img src="assets/logo.png" width="300" alt="Gaymer.Social">
</p>

# GaymerSocial Website

The [gaymer.social](https://gaymer.social) root domain, under the [GaymerSocial](https://github.com/GaymerSocial) organization.

Gaymer.Social and Gaymer.Coffee — our Mastodon instances for LGBTQ+ gaymers — were discontinued in September 2026, due to rising costs and the loss of hosting infrastructure in the NorthC data centre fire. This repo is a plain static site (no framework, no build step) that serves the discontinuation notice at the root domain, and is the redirect target for:

- Every legacy Mastodon-style URL either instance used to serve (`/@username`, `/web/*`, `/tags/*`, `/statuses/*`, `/oauth/*`, etc.) — caught by the `_redirects` catch-all and by `404.html` on hosts that don't support real redirects
- The sibling [About](https://github.com/GaymerSocial/AboutPage) and [Hub](https://github.com/GaymerSocial/HubPage) repos, which now redirect here in full
- **gaymer.coffee** — this domain needs to be added as an additional custom domain alias for this site in the hosting provider's dashboard (e.g. Netlify's domain settings), pointed at the same deploy. That's account/DNS configuration outside this repo — the `CNAME` file here only declares the primary `gaymer.social` domain (a GitHub Pages convention with a one-domain limit); it doesn't need a second file for gaymer.coffee, just the host-side domain alias.

## Files

- `index.html` / `404.html` — the notice itself (identical content; `404.html` is the fallback for hosts that only support redirects via a custom 404 page)
- `_redirects` — Netlify-style catch-all 301 to `/`
- `CNAME` — `gaymer.social` (primary domain; `gaymer.coffee` is a dashboard-level alias, see above)
- `robots.txt` — allows everything, nothing else to index

## Local development

```
./dev-server.sh          # or dev-server.bat on Windows
```

Starts a plain static file server (Python's `http.server`, no dependencies). The page shows a "local development build" banner automatically when viewed from `localhost`/`127.0.0.1`; open the printed URL with `?nodev=1` appended to preview it as it looks in production.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

Copyright &copy; Stux.Group.
