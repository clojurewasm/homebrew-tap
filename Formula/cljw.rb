class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.8/cljw-macos-aarch64.tar.gz"
      sha256 "a3434e855a82a2426b43b62cd9f18819e5f891722c07c3ba4101ec11a6b9bec5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.8/cljw-linux-x86_64.tar.gz"
      sha256 "87d526d1e433a287b23a1aeaae91c18dc9a790bb5a05465a6064df33217d6888"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.8", shell_output("#{bin}/cljw --version")
  end
end
