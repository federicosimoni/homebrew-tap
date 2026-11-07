# federicosimoni/homebrew-tap

Homebrew casks by [federicosimoni](https://github.com/federicosimoni).

## That's it

*Drag & drop file converter for macOS* — [github.com/federicosimoni/thats-it](https://github.com/federicosimoni/thats-it)

```sh
brew install --cask federicosimoni/tap/thats-it
```

Update with `brew upgrade --cask thats-it`, remove with `brew uninstall --cask thats-it`
(add `--zap` to also delete its settings and logs).

The app is not notarized by Apple yet: on first launch open **System Settings → Privacy &
Security** and click **Open Anyway**, or run
`xattr -dr com.apple.quarantine "/Applications/That's it.app"`.

The cask in `Casks/thats-it.rb` is updated automatically by the
[That's it release workflow](https://github.com/federicosimoni/thats-it/blob/main/.github/workflows/release.yml);
don't edit it by hand.
