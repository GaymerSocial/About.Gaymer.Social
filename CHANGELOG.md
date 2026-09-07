# Changelog

All notable changes to this repo are documented here.

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
