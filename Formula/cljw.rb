class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.3.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.3.0/cljw-macos-aarch64.tar.gz"
      sha256 "4806a7cdc7414bd23906c6b9616056b5c1d8eb6aac5484fc0088b2584138116b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.3.0/cljw-linux-x86_64.tar.gz"
      sha256 "8a7a6497a9a976665287732f94a8fa884e2284a5780083178f9e6d791e38bbaf"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_match "42", shell_output("#{bin}/cljw -e '(+ 40 2)'")
  end
end
