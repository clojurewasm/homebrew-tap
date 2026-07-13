class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.2.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.2.0/cljw-macos-aarch64.tar.gz"
      sha256 "c7e591b2178577fc406f67d1c3fc00394c3d47ddddd0958a1dcc9b45a434de63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.2.0/cljw-linux-x86_64.tar.gz"
      sha256 "deabb532799953ddd183a47d1d545eb526d86592d0ad91c591b545b077fe3c4f"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_match "42", shell_output("#{bin}/cljw -e '(+ 40 2)'")
  end
end
