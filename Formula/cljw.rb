class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.1.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.1.0/cljw-macos-aarch64.tar.gz"
      sha256 "8d102f179f8b525353f5068625bb04e89f350aeb2bad0b82953f17511f21b317"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.1.0/cljw-linux-x86_64.tar.gz"
      sha256 "ed6825c83c2e1266014575b61980fad4a9d4de2d2ca8cb6fd6cfedfedd560276"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_match "42", shell_output("#{bin}/cljw -e '(+ 40 2)'")
  end
end
