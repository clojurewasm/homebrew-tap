class Cljw < Formula
  desc "JVM-free Clojure runtime in Zig, with a WebAssembly FFI"
  homepage "https://github.com/clojurewasm/ClojureWasm"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.4/cljw-macos-aarch64.tar.gz"
      sha256 "f8daceec8cfa232943e8af8aa1f7419046333d068c7a6084d1df9f7fe99ec800"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/ClojureWasm/releases/download/v1.15.4/cljw-linux-x86_64.tar.gz"
      sha256 "5dd2e64f63e360f5a3d0b229792f1f201a96fc70ed2421b54e55c4c3e975d562"
    end
  end

  def install
    bin.install "cljw"
  end

  test do
    assert_equal "3", shell_output("#{bin}/cljw -e '(+ 1 2)'").strip
    assert_match "1.15.4", shell_output("#{bin}/cljw --version")
  end
end
