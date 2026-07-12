# clojurewasm/homebrew-tap

Homebrew tap for [ClojureWasm](https://github.com/clojurewasm/ClojureWasm) tools.

## Install

```sh
brew install clojurewasm/tap/cljw
```

Supported: macOS arm64 and Linux x86_64.

The `cljw` binary is not code-signed. Homebrew installs it without a Gatekeeper
prompt on most setups; if macOS still blocks it as coming from an unidentified
developer, clear the quarantine flag once:

```sh
xattr -d com.apple.quarantine "$(which cljw)"
```

## License

The formulae here are MIT-licensed. The packaged software keeps its own license
(cljw is EPL-2.0).
