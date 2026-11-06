# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.2.0"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.2.0"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "c434c74fd068a41952ec55885a0b7aabf040dcbef03389442d212a02526e8cc4"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "a1e46d09da5c8db1696988117e98be03bf63dad0528e6902b8c6488b451c2b42"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68d95217e4bb42cd674bb08fc3932340eba6fe1147d7f2e63961f4cb3d2a3af6"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6c3c11fad4113978a6583f2fd386c1d8b76bb8c428aa0c0e93594a31852af69"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
