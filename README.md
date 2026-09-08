<p align="center">
  <img src="assets/logo.png" width="300" alt="Gaymer.Social">
</p>

# About.Gaymer.Social

Gaymer.Social and Gaymer.Coffee — our Mastodon instances for LGBTQ+ gaymers — were discontinued in September 2026, due to rising costs and the loss of hosting infrastructure in the NorthC data centre fire.

This repo is no longer a live informational site. It's now a minimal static shell that redirects every request from about.gaymer.social straight to the discontinuation notice at [gaymer.social](https://gaymer.social/).

## Local development

```
./dev-server.sh          # or dev-server.bat on Windows
```

Starts a plain static file server (Python's `http.server`, no dependencies). The page shows a "local development build" banner and suppresses the redirect automatically when viewed from `localhost`/`127.0.0.1`; open the printed URL with `?nodev=1` appended to preview the real redirect. Pass `--no-dev-mode` to the script to flip that default.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

Copyright &copy; Stux.Group. MIT licensed — see [LICENSE](LICENSE).

---

*Built & Maintained by <img src="https://github.com/GaymerSocial.png" height="14" alt="Gaymer.Social" valign="middle"> [Gaymer.Social](https://github.com/GaymerSocial), Hosted by <img src="https://github.com/Stuxedo.png" height="14" alt="Stuxedo" valign="middle"> [Stuxedo](https://stuxedo.com).    
Gaymer.Social is a part of the <img src="https://media.stux.group/global/icon.png" height="14" alt="Stux.Group" valign="middle"> Stux.Group brand of businesses.*
