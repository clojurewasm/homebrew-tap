# clojurewasm/homebrew-tap

Homebrew tap for [ClojureWasm](https://github.com/clojurewasm/ClojureWasm) —
a JVM-free Clojure runtime in Zig, with a WebAssembly FFI.

## Install

```sh
brew install clojurewasm/tap/cljw
```

Supported: macOS arm64 and Linux x86_64.

The binaries are not code-signed. Homebrew installs them without a Gatekeeper
prompt on most setups; if macOS still blocks one as coming from an unidentified
developer, clear the quarantine flag once:

```sh
xattr -d com.apple.quarantine "$(which cljw)"
```

## zwasm has moved

The `zwasm` WebAssembly runtime now lives in its own tap. `brew update`
redirects it automatically; you can also install it directly:

```sh
brew install zwasm/tap/zwasm
```

## License

The formula here is MIT-licensed. The packaged software keeps its own license
(cljw is EPL-2.0).
