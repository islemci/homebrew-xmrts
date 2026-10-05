# homebrew-xmrts

Homebrew tap for [xmrts](https://github.com/islemci/xmrts) — self-sovereign file timestamping on Monero.

```bash
brew tap islemci/xmrts
brew install xmrts
```

This tap is **maintained by automation, not by hand**: every xmrts release
regenerates `Formula/xmrts.rb` from the published checksums (see
`scripts/bump-tap-formula.py` in the main repo). Don't edit the formula
directly — the next release will overwrite it.
