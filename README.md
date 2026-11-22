# InternSwarm Homebrew tap

Installs the [InternSwarm](https://github.com/agenticfabriq/internswarm) desktop
app with Homebrew:

```bash
brew install --cask agenticfabriq/tap/internswarm
```

- **Apple silicon only.** The app is built for arm64 Macs.
- **Stable releases only.** The cask follows the latest stable release of
  `agenticfabriq/internswarm`; release candidates are not published here.
- **Already installed from the DMG?** Homebrew will not overwrite an app it did
  not install. Remove `/Applications/InternSwarm.app` first, or see
  `brew install --help` for `--adopt`.

## Updates

The app updates itself, so the cask is marked `auto_updates`: a plain
`brew upgrade` leaves it alone, and `brew outdated --greedy` names a new
release.

Homebrew remembers the version it installed, not the one the app updated
itself to. After an in-app update, `brew outdated --greedy` keeps listing
InternSwarm until `brew upgrade --greedy internswarm` reinstalls that same
version.

## Uninstalling

`brew uninstall --cask internswarm` removes the app. A server the app runs in
the background on this Mac keeps running, since an uninstall also runs on every
upgrade and would end its sessions.

`brew uninstall --zap --cask internswarm` also removes the app's caches,
preferences and web storage. It never removes
`~/Library/Application Support/iswarm`, which holds the sessions database a
server on the same Mac can share.

## How the cask is kept current

Each stable release's publish renders `Casks/internswarm.rb` and pushes it
here. The cask's text lives in the app's repository, so a change to it goes
there too.
