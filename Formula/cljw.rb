class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.5.1"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.5.1/cljw-macos-aarch64.tar.gz"
      sha256 "160b30a5c9ed7353b18ae0d1fbb9e98c50cc5fa3d19c563a5ab17c6a6cabaa23"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.5.1/cljw-linux-x86_64.tar.gz"
      sha256 "20834df86a11a3d53bb182595820804ce6291f389d9ea7bf517bc887cc2bae28"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
