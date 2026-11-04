# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.1.0"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.1.0"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "f0a62b4c52f3aa1226588ef6db3886b02f6c37ce0e663fc87e194354e496a490"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "c4c52aac9df9c87e7c21f65f13c090ba01e119813abfca826987afb5cbe8e3f2"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b836119b532c970d71bc7bfa94c4dec86eadd70556707ce744cf25074f53262b"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "580bd7f74492009cd38c422de2f0c286d8a02307acff41cb3486271172a2a3ad"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
