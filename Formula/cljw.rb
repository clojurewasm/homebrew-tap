class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.2.1"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.2.1/cljw-macos-aarch64.tar.gz"
      sha256 "d3d9059c3ea2c5dbbee80411679f9032f153f991e8064b11a48fb7ac0df62ef5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.2.1/cljw-linux-x86_64.tar.gz"
      sha256 "42e853aebcc61586f64d9470976da46c2864143da36d2d365b8b5d1e8b68140f"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_match "42", shell_output("#{bin}/cljw -e '(+ 40 2)'")
  end
end
