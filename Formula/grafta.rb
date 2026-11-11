# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.5.0"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.5.0"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "b3b1b5da186ecdf49889003f692797467be14f31f4f2578f9afa325306517dee"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "8e221592ad2fb2cd4be527915859d944ad8a6e895464f3c1d59f01942621aa25"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47480c47ebc544b279adf54d8ada4c02d477f6ce1450f875a390968c625172be"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3a36e16621209916b7a621baa0f2ed1d5727ff44d5a3c5afbfe6fa662e0f838"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
