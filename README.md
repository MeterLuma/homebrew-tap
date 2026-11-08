# MeterLuma Homebrew tap

Install [MeterLuma](https://meterluma.com), the menu-bar meter for AI coding tool allowances and reset times:

```sh
brew install --cask youssefrigale/tap/meterluma
```

The cask downloads the universal disk image from `downloads.meterluma.com` and checks it against the SHA-256 recorded here. It needs macOS 13 Ventura or later on Apple silicon or Intel.

MeterLuma is **unsigned**: the app is not signed with an Apple Developer ID or notarized. Homebrew keeps macOS's download quarantine, so the first time you open MeterLuma, macOS says it cannot verify the developer. Open **System Settings → Privacy & Security** and choose **Open Anyway** next to the MeterLuma message.

MeterLuma updates itself and asks before installing an update, so `brew upgrade` leaves it alone unless you pass `--greedy`.

- `brew uninstall meterluma` removes the app and its launch-at-login entry.
- `brew uninstall --zap meterluma` also deletes MeterLuma's settings and saved data in your Library folder. Tokens stored in your Keychain stay there; disconnect them in MeterLuma first.

MeterLuma is free for personal, noncommercial use under the [MeterLuma Personal Use License](https://github.com/youssefrigale/MeterLuma/blob/main/LICENSE). Source and releases: [youssefrigale/MeterLuma](https://github.com/youssefrigale/MeterLuma).
