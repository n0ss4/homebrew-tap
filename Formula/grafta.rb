# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.7.0"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.7.0"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "4d15046ef1b23da10807abe35d656d66512c309b99bd5baeaa21f82f7dadffbc"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "fcf9214a811313c2aa419ee7d3a31713e41f676f92ab44353c1febb7c14754d1"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cb3bffed0514a0b43cb581d7eb649e04d349c3286f2c4c9f473d5b4740b1fcb"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80e8dc065097e54d090bd648ccbdb3fab4ac9414041e86f642b0bab4dac422b6"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
