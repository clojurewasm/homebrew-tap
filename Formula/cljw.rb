class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.8.0/cljw-macos-aarch64.tar.gz"
      sha256 "992528b757e14eb4bd60444647eac60fe822bc3ec4b625f3ba3a0b1943014a5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.8.0/cljw-linux-x86_64.tar.gz"
      sha256 "60d77be28f51c1129e3bfe7827f4397da9d456565a65c38407c07ff5889c2478"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
