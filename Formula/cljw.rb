class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.10.0/cljw-macos-aarch64.tar.gz"
      sha256 "6266645ce1890245a9db9a8609f0f2d77b925c0ebfc9a029cecb52f4423a44bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.10.0/cljw-linux-x86_64.tar.gz"
      sha256 "5454683e06698d9d3fca368d93150d1482865b5eeb040c0d8f637bef9f2db078"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
  end
end
