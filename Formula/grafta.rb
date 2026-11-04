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
      sha256 "473d672e2763ccb58fabf56e77b27fb2936e5b8a7376558c9975dee718271e09"
    end
    on_intel do
      url "#{base}/grafta-x86_64-apple-darwin.tar.gz"
      sha256 "4308266d6766e07533436ff223d544ad99f0ba484fdbad0d626b7df935ee5fbe"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/grafta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7404e8241c53ddf76e064bf48ca331fe333fed01dc9257ac91d05a7ec87a7d42"
    end
    on_intel do
      url "#{base}/grafta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a638e96e9eb2b69f361c16bcc52e89aa594462fded75ff77f601d3ff93a6287"
    end
  end

  def install
    bin.install "grafta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grafta --version")
  end
end
