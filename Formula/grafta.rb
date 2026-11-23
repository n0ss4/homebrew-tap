# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.6.0"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.6.0"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "c85f31880df6ddebc7c173c6ffae7b0b2cab9bd5d92c1870ea07eed9987927d4"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "f74ca0459e5e056d1a01545c44b73ce0d04a692449a8991f8e6ed9e34939eeab"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7105690d132602b8b420172e679654b14f5e71e52f9e1d95544cb419d3dfb42a"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c5f9adec88d95449703c3167e01eb5d2f8ec2aee39289205c6c233f7986d7f5"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
