# Contributing

This is a [Stux.Group](https://stux.group) project under the [GaymerSocial](https://github.com/GaymerSocial) organization.

## Versioning and changelog

- The version lives in `VERSION.md` (a bare version string) — bump it on every release
- Every release gets a `CHANGELOG.md` entry using `### Added` / `### Changed` / `### Fixed` subsections
- `commit.sh` (bash) and `commit.bat` (Windows) read `VERSION.md` and tag the release — run one of them to commit and tag

## Project conventions

- Plain static site: `index.html` and `404.html` hold identical notice content — keep them in sync if you edit either
- `_redirects` is the Netlify catch-all (`/* / 301`) that sends every legacy Mastodon-style URL and anything else back to `/`; `404.html` is the fallback for hosts that only support redirects via a custom 404 page
- No build step, no framework, no analytics/tracking scripts
- The dev-mode banner is client-side (inline script in `index.html`/`404.html`), shown automatically on `localhost`/`127.0.0.1`; append `?nodev=1` to preview production behavior

## Legal pages

`/legal/` and its six sub-pages (`privacy`, `terms`, `cookies`, `imprint`, `disclaimer`, `opt-out`) are plain static HTML under `legal/<slug>/index.html`, each a standalone file mirroring the same inline styles as `index.html`/`404.html` (no shared template, no build step). Keep them honest and short — this site collects no data and has no accounts, so the policies say that plainly rather than padding with boilerplate that doesn't apply.
