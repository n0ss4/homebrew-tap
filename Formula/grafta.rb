# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.2.3"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.2.3"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "0ae81985a91aeb4c1ac8fb2b523291a7f601c8280bf7e3c94cba74b0a13544e4"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "8898c190a2e10d42816872fc83378b2883dafbff39bc8409cd9e5b59d8fbc60c"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4fa73e8199b176bf53c83f28b384fce5878d6c39e9e5c6b4c1ac8ea212d11a6b"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08048f418ce9056e89584eceb11a769598a97c436e429010a3fc64e00f886bf1"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
