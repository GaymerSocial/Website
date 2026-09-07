# Changelog

All notable changes to this repo are documented here.

## v1.3.0

### Fixed
- Header alignment on `index.html`/`404.html`/`legal/index.html`: `.eyebrow` had accidentally been made `display: inline-block`, which pulled it onto the same line as the preceding logo `<img>` — the pair was then centered as a group instead of individually, visibly shifting the logo left and the eyebrow label right. Removed the unneeded `display` override (gradient text via `background-clip: text` never required it).
- Light-mode legibility of the animated gradient eyebrow/label text: several of the vivid logo-sampled colours (yellow `#F1C21B`, teal `#08BDBA`, pink `#FF7EB6`) had contrast ratios as low as 1.58:1 against the white card — nearly invisible at those points in the animation. Added a separate `--rainbow-text` gradient with darkened stops (verified ≥3.85:1 against white, most ≥4.5:1) used for all eyebrow text in light mode; dark mode still uses the original vivid `--rainbow` (which already had good contrast — 3.34–9.92:1 — against the dark card).

### Added
- A farewell message on `index.html`/`404.html`: "This service will be greatly missed. Thank you all for the memories over the years and being part of our journey since 2021. — The Team at Gaymer.Social / Gaymer.Coffee"

## v1.2.0

### Added
- `--rainbow` accent — an animated gradient sampled directly from the real pixel colours in the Gaymer.Social logo's pinwheel icon (`#DA1E28` red, `#FF832B` orange, `#F1C21B` yellow, `#42BE65` green, `#08BDBA` teal, `#0F62FE` blue, `#8A3FFC` purple, `#FF7EB6` pink), applied to the "SERVICE DISCONTINUED"/"Legal" eyebrow text, the card's top accent bar, and the dev-mode banner on all 9 pages
- A soft, blurred, slowly-animating "aurora" gradient wash behind the card on every page, using the same logo-derived palette

### Changed
- All animated gradients respect `prefers-reduced-motion: reduce` (frozen, no animation) for accessibility

## v1.1.0

### Added
- "A Stux.Group Project · Powered by Stuxedo" footer badge (matching the convention used on Stuxs.Tools/Downl.one) added to `index.html`, `404.html`, and all 7 `/legal` pages

## v1.0.0

### Added
- `index.html` — the gaymer.social discontinuation notice: Gaymer.Social was discontinued in September 2026 due to rising costs and the loss of infrastructure in the NorthC data centre fire, with no data export possible
- `404.html` — identical notice content, serving as the fallback for hosts that only support redirects via a custom 404 page
- `_redirects` — a catch-all 301 sending every legacy Mastodon-style URL (`/@user`, `/web/*`, `/tags/*`, `/statuses/*`, `/oauth/*`, etc.) and anything else back to the notice
- `CNAME` (`gaymer.social`) and `robots.txt`
- `dev-server.sh`/`dev-server.bat` — a zero-dependency static server (Python's `http.server`) with a client-side dev-mode banner, suppressed via `?nodev=1`
- `/legal` hub page ("Boring Legal Stuff") plus `privacy`, `terms`, `cookies`, `imprint`, `disclaimer`, and `opt-out` sub-pages, linked from the footer of `index.html`/`404.html`
- `assets/logo.png`/`assets/icon.png` — the real Gaymer.Social logo/icon, vendored locally instead of hotlinked
- Notice copy and all `/legal` pages updated to also cover Gaymer.Coffee, our other Mastodon instance discontinued in the same September 2026 shutdown; README documents that `gaymer.coffee` needs to be added as an additional custom domain alias pointing at this same site

## v0.1.0

### Added
- Initial project scaffolding: `README.md`, `CHANGELOG.md`, `VERSION.md`, `CONTRIBUTING.md`, `commit.sh`/`commit.bat`
