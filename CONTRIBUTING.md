<p align="center">
  <img src="assets/logo.png" width="300" alt="Gaymer.Social">
</p>

# Contributing to About.Gaymer.Social

This is a [Stux.Group](https://stux.group) project under the [GaymerSocial](https://github.com/GaymerSocial) organization. Gaymer.Social was discontinued in September 2026; this repo is now a minimal static redirect shell, not a live site. This document exists for anyone with write access to the repo who wants to work on it consistently with how it's actually built.

## Local setup

See the [README](README.md#local-development) for running the site on your own machine with `dev-server.sh` / `dev-server.bat`.

## Project conventions

- Plain static site: `index.html` and `404.html` hold identical redirect/notice content — keep them in sync if you edit either
- `_redirects` is the Netlify catch-all (`/* https://gaymer.social/ 301`) that sends every legacy About.Gaymer.Social URL to the main notice; `404.html` is the fallback for hosts that only support redirects via a custom 404 page
- No build step, no framework, no analytics/tracking scripts
- The dev-mode banner is client-side (inline script in `index.html`/`404.html`), shown automatically on `localhost`/`127.0.0.1`; append `?nodev=1` to preview the real redirect

## Versioning and changelog

- The version lives in `VERSION.md` (a bare version string) — bump it on every release
- Every release gets a `CHANGELOG.md` entry using `### Added` / `### Changed` / `### Fixed` subsections — never a bare bullet list directly under a version heading
- `commit.sh` (bash) and `commit.bat` (Windows) hold the actual commit message and `git tag` for the current version — run one of them to commit and tag a release

## Before committing

- Run `dev-server.sh` (or `.bat`) and manually check `index.html`/`404.html` render and the redirect still fires with `?nodev=1`
- This project has no automated test suite — a live check via the local dev server is the only real verification
