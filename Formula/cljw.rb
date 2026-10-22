class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.3/cljw-macos-aarch64.tar.gz"
      sha256 "c917bc6ee1bc03915d3b7b2f25c648ff1400d3667d71ded0b0566442fec0a67c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.3/cljw-linux-x86_64.tar.gz"
      sha256 "bbf45028e6164adfd43cfc1a3d4a5a9564533a750c183e917af6c7e016170cdb"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.3", shell_output("#{bin}/cljw --version")
  end
end
