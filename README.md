# clojurewasm/homebrew-tap

Homebrew tap for [ClojureWasm](https://github.com/clojurewasm/ClojureWasm)
tools and the [zwasm](https://github.com/clojurewasm/zwasm) WebAssembly
runtime.

## Install

```sh
brew install clojurewasm/tap/cljw    # ClojureWasm — Clojure runtime in Zig
brew install clojurewasm/tap/zwasm   # zwasm — WebAssembly runtime (Wasm 3.0, WASI, JIT + AOT)
```

Supported: macOS arm64 and Linux x86_64 (zwasm also Linux aarch64).

The binaries are not code-signed. Homebrew installs them without a Gatekeeper
prompt on most setups; if macOS still blocks one as coming from an unidentified
developer, clear the quarantine flag once:

```sh
xattr -d com.apple.quarantine "$(which cljw)"   # or: $(which zwasm)
```

## License

The formulae here are MIT-licensed. The packaged software keeps its own license
(cljw is EPL-2.0; zwasm is Apache-2.0).
