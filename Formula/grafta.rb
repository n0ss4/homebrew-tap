# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.2.2"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.2.2"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "f82a4b3a9785ad497528565ecae833d71df512f25e25d919592ee747acf5262b"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "5ee069304eecc41669f8836baf4369bc0468382f66944982b28b9ba256db2429"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b3e0353fa71ed994e6f3f28acc5b48dfd3c30b0854916b8f7d164eccc9cb1bd"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e00c0e4c901d6ac51c0040f491405a8cd3c6d2dbc50012101553c84cc741785"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
