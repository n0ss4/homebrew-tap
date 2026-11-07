# Rendered by scripts/homebrew-formula.sh on each release; the copy in
# n0ss4/homebrew-tap is the one `brew install n0ss4/tap/grafta` reads.
class Grafta < Formula
  desc "Figma's file format for your agent: read and write .fig files, offline"
  homepage "https://n0ss4.github.io/grafta"
  version "0.3.0"
  license "MIT"

  base = "https://github.com/n0ss4/grafta/releases/download/v0.3.0"

  on_macos do
    on_arm do
      url "#{base}/grafta-aarch64-apple-darwin.tar.gz"
      sha256 "b18a1268bcb23f6c965bf21f13ad33003b5a5b2b1d84c1d4082c05a185423d0e"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "2c9692f40303d913ee30b864473e63f429c9845c7791ad8a7c1adc7476064387"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9dfc93ba956c3d4761a857817882bccf9f756aae9b77875f75b1a7c56d798c3c"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af7be2be197337bdd948fedc2372be10efa8464d99e136db7e7bed889287e2c7"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
