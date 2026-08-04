class Zwasm < Formula
  desc "From-scratch WebAssembly runtime in Zig — Wasm 3.0, WASI, JIT + AOT"
  homepage "https://github.com/clojurewasm/zwasm"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.4.1/zwasm-macos-aarch64.tar.gz"
      sha256 "f9c3e4fb07b1f246b31951b51cab1e48f8352e21b22113e224e34271302b9681"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.4.1/zwasm-linux-x86_64.tar.gz"
      sha256 "7b24467489490e574b7c521ca0ec68890ac710d8e809a070c7d93cf825db8a18"
    end
    on_arm do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.4.1/zwasm-linux-aarch64.tar.gz"
      sha256 "9a5247bbd0bfb9c9c6c4d0926e66f41db42a8e68d1a4c4de4147627294fc87d1"
    end
  end

  def install
    bin.install "zwasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zwasm --version")
  end
end
