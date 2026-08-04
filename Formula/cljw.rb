class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.7.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.7.0/cljw-macos-aarch64.tar.gz"
      sha256 "d8b5dbeb3b1e87b3bac37ecfef3a5bd0215b083608b02f00862aeb7bdc5d0e98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.7.0/cljw-linux-x86_64.tar.gz"
      sha256 "14e5ef4e838c186eab23d2524b5a88e8095d215c8065bf63db041b62c7538ce9"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
