class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  version "1.4.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.4.0/cljw-macos-aarch64.tar.gz"
      sha256 "4fbf662c24ae05b82aa05ed71babc2a64beb6c465456e634e6c7b5aa8ea5272c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.4.0/cljw-linux-x86_64.tar.gz"
      sha256 "87ebaa6b396f93b5c3f1f393334c5cc66857a5cccedbda97f4a9fe916303b148"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_match "42", shell_output("#{bin}/cljw -e '(+ 40 2)'")
  end
end
