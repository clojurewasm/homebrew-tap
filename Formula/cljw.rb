class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.10.1/cljw-macos-aarch64.tar.gz"
      sha256 "f2c0e1dcead51f0724200946ef98c226588cf4bb2f5b2c902dae448ebf2b5d5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.10.1/cljw-linux-x86_64.tar.gz"
      sha256 "82a300345ab389d9b777aefacae21b9d54271a21e33238194091fd6d60afe937"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
