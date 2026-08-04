class Zwasm < Formula
  desc "From-scratch WebAssembly runtime in Zig — Wasm 3.0, WASI, JIT + AOT"
  homepage "https://github.com/clojurewasm/zwasm"
  version "2.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.4.0/zwasm-macos-aarch64.tar.gz"
      sha256 "fe402598ff7c25e8fb596913f68f2fb44163aa1f87a2802be4d0efff881876b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.4.0/zwasm-linux-x86_64.tar.gz"
      sha256 "69eb1225e6f2d357e05f8d3ab51347853320a5c332b17ecc70f23fac0407d5a1"
    end
    on_arm do
      url "https://github.com/clojurewasm/zwasm/releases/download/v2.4.0/zwasm-linux-aarch64.tar.gz"
      sha256 "a141294474bff90f1cc868329c491331e57cfeb6582eabf6d59bfb59c0fec826"
    end
  end

  def install
    bin.install "zwasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zwasm --version")
  end
end
