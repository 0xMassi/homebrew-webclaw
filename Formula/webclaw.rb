class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.5/webclaw-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "634d4aed77227a8dfa30b1b68f647398a3041a28b768e95f3bf08b7a6b1a4d76"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9fbadd252e72783c11d2a2dc73dc6ab1260489506de587e7c0a35ee8e235bfbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd7eabfda71603b32336d66ea175d047ddc7ef4ddd7130d6277fa79d90d2c5fe"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "870ee7bdbea3c1f77bb6dd6f0e80e6a318a629164f61d67d4f1461e6209a04c7"
    end
  end

  def install
    bin.install "webclaw"
    bin.install "webclaw-mcp"
  end

  test do
    assert_match "webclaw", shell_output("#{bin}/webclaw --version")
  end
end
