class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.3.1"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.3.1/cljw-macos-aarch64.tar.gz"
      sha256 "7519e6dc25ca3b3c184ca02267b060b5c3d799370edb7232b643fa37aeeaf053"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.3.1/cljw-linux-x86_64.tar.gz"
      sha256 "dff7305d3577a31572cddbf4af56c81701ab62288d900d02c8d4f9c2ce083e78"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_match "42", shell_output("#{bin}/cljw -e '(+ 40 2)'")
  end
end
