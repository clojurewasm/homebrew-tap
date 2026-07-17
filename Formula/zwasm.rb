class Zwasm < Formula
  desc "From-scratch WebAssembly runtime in Zig — Wasm 3.0, WASI, JIT + AOT"
  homepage "https://github.com/clojurewasm/zwasm"
  version "2.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.3.0/zwasm-macos-aarch64.tar.gz"
      sha256 "3058cd256dc965c9dd51cc668e10761012de0c663f705e32b59333659b6bec32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.3.0/zwasm-linux-x86_64.tar.gz"
      sha256 "2100a406e9722f259b1b97440ac489b4717829244764da264057d0853d023452"
    end
    on_arm do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.3.0/zwasm-linux-aarch64.tar.gz"
      sha256 "37af81f0e45601c75d3649d7c6903aa556fb6d5e5d0bb2b019ddbb94f8090711"
    end
  end

  def install
    bin.install "zwasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zwasm --version")
  end
end
