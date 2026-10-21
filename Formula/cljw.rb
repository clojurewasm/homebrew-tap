class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.1/cljw-macos-aarch64.tar.gz"
      sha256 "8854a62e74dcba6c8e07739ebb863c5d01661066558d20f78197eb19009be62e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.1/cljw-linux-x86_64.tar.gz"
      sha256 "586396f7732d7d036cf93b54916bd48fef71f455e4b93c54f7ffe7de9aaf454a"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.1", shell_output("#{bin}/cljw --version")
  end
end
