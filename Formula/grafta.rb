# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.1.1"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.1.1"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "48c79ecbbe2df1b16bd8f4197e79cffea667da819f94fce2398715e256601e3b"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "dcf10e8537e196fca7c8576b0b64d6e9499d5c7419a609b88c2f03966f1c693b"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4726d65eabe20abada4763eefd89475dc2ee8a44e4f6d2391d317c6aadaf66a9"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e200708ffdc25e6cd2f6f1228683618e1360080a4d8178aae3d957bc8ebc1d6"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
