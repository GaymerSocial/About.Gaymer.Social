# Changelog

All notable changes to this repo are documented here.

## v2.1.4

### Changed
- `assets/logo.png`/`assets/icon.png` moved from being vendored locally in this repo to the shared CDN at `https://global.media.gaymer.social/logo.png` / `/icon.png` (the same file was previously duplicated across all four GaymerSocial repos) — the favicon and README/CONTRIBUTING header logo references were updated accordingly and no longer carry the `?v=` cache-buster, since cache invalidation for that asset is now the CDN's concern rather than this repo's release version

## v2.1.3

### Added
- Favicon (`assets/icon.png`) reference in `index.html`/`404.html` now carries `?v=2.1.3` so browser/CDN caches invalidate if the icon is ever replaced — this is a plain static site with no build step, so the version string has to be bumped by hand alongside any future icon change

## v2.1.2

### Changed
- `README.md`'s footer brand-attribution block updated to the new two-line format (Built & Maintained by Gaymer.Social, Hosted by Stuxedo / Gaymer.Social is a part of the Stux.Group brand of businesses), replacing the older single-line disclaimer

## v2.1.1

### Changed
- `commit.sh`/`commit.bat` tag messages updated from `GaymerSocial/AboutPage` to `GaymerSocial/About`, following the GitHub repo rename that dropped "Page" from the name

## v2.1.0

### Added
- "A Stux.Group Project · Powered by Stuxedo" footer badge (matching the convention used on Stuxs.Tools/Downl.one) added to `index.html`/`404.html`

## v2.0.0

### Changed
- Gaymer.Social was discontinued in September 2026, due to rising costs and the loss of infrastructure from the NorthC data centre fire. This repo is no longer a live informational site — it's now a minimal static shell that redirects every request to the discontinuation notice at https://gaymer.social/
- Replaced the Jekyll dev server with a zero-dependency static file server (`dev-server.sh`/`dev-server.bat`, Python's `http.server`), with a client-side dev-mode banner (suppressed via `?nodev=1`) instead of a Jekyll config overlay

### Removed
- The entire Jekyll site: `index.md`, `coc.md`, `contact.md`, `support.md`, `team.md`, `404.md`, the `/legal` hub page and its 6 sub-pages, `_layouts/`, `_includes/`, `_data/`, `_posts/`, `_drafts/`, `assets/`, `Gemfile`/`Gemfile.lock`, `_config.yml`/`_config.dev.yml`

### Added
- `index.html` / `404.html` — a static redirect to https://gaymer.social/ with a brief discontinuation message
- `_redirects` — a Netlify catch-all 301 sending every legacy About.Gaymer.Social URL to the notice
- `assets/logo.png`/`assets/icon.png` — the real Gaymer.Social logo/icon, vendored locally for the favicon and README header (replaces the old deleted `assets/` and the brief external hotlink that stood in for it)

## v1.0.0

### Added
- Root compliance docs: `README.md` (logo header), `CONTRIBUTING.md`, `VERSION.md`
- `commit.sh` / `commit.bat` — commit + tag release script, reads `VERSION.md`
- `/legal` hub page ("Boring Legal Stuff") linking to Privacy, Terms and Ethics, Cookies, Imprint, Disclaimer, and Opt-Out Preferences sub-pages, with matching nav and footer links
- `dev-server.sh` / `dev-server.bat` — local Jekyll dev server, dev-mode banner on by default via `_config.dev.yml`, `--no-dev-mode` to test production config locally

### Changed
- `LICENSE` copyright holder updated to Stux.Group
