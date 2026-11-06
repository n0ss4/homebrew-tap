# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.2.1"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.2.1"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "fc0fc10d28d51c5cf45ca452a8e7f0fe5341dc0b40d730e8197fcf3cf4f32872"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "16f94f37c0d7095e199a41960a1866f33008501330dd46073cf854714a620a9d"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fedc75c2d6fc34ee59745c1670d6117b6b7f1ad757977cb96ba70dbe9127999"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a9902bf548cf7e26da12dfe924c46d848a22c2dfd101dd7b5cf54c3000b8b85"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
