# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.4.0"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.4.0"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "22539a3f9eb586fb8d3bf501bce4573c8aaf6c1f810b5ee16f7ccd6066ef3dfe"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "ad658d05681500df5a34bd8dcf7038e3582bb6b95d6cc03f0870515879d88894"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61c341fd5652bba410e401d7e55926cefa03fb7f408fa1a57f47e34e74dc5066"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d886e9bd63d0d37c41264989c37e6662d79a656ad1b00b230920b7e5a6817da4"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
