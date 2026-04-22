class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.2/webclaw-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "9d59b5c3eb62f4c94fbc6550bbd81b67d3bb98bcd03ad9ea6d8cf61cf8a14928"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.2/webclaw-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "fd743723a6e3569c89940210126b4c72a6f68b185147887a1fda70d55aa34654"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.2/webclaw-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3312cd6b5f0a49408a08eb73f3bf7368a967a96d72d67bea7147dfc0d7d728e8"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.2/webclaw-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "979014042d94389b87f77c9f511fa8ec97ab7aea0005ee6886806a4c841ec48b"
    end
  end

  def install
    bin.install "webclaw"
    bin.install "webclaw-mcp"
    bin.install "webclaw-server"
  end

  test do
    assert_match "webclaw", shell_output("#{bin}/webclaw --version")
  end
end
