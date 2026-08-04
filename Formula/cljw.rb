class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.6.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.6.0/cljw-macos-aarch64.tar.gz"
      sha256 "730ce9fa9b7eb86a9f8ac48da4908e3cbbe9160c310c490751d57b08b9698fb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.6.0/cljw-linux-x86_64.tar.gz"
      sha256 "2b4e5ba190ce482b065c6f2613c72d7618e6d59a2b14c0f101c1ebe37caad7c9"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
