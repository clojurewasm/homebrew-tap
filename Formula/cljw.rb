class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.5.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.5.0/cljw-macos-aarch64.tar.gz"
      sha256 "e2b0d1863795f176992bcb867957fecd622d4b10a62c35db406b42926155c84c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.5.0/cljw-linux-x86_64.tar.gz"
      sha256 "bde5db5d3627359f13bdaa6ab6edee6f521200689f390d591d170988227942d1"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
