class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.9.0/cljw-macos-aarch64.tar.gz"
      sha256 "e111570273c69bb7536f3c7b7081dd0f76af55b68527247d0ea5c534c53a9dc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.9.0/cljw-linux-x86_64.tar.gz"
      sha256 "1a45a5945dbd5286d6f97fdfc5ee1b85807d08090a57237137b9bfb09ac60618"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
