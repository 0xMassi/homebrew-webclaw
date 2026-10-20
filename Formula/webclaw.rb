class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0-only"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.0/webclaw-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "14e39807f1562e72911f4e166e0493ecb8207f3f4188284d4ea671c529d4717a"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.0/webclaw-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cba9954348dfad76cc9ca99e8fccaae9b9ef9a7e9ed4946803dad12243d84061"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.0/webclaw-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c89d9634bfcd0fbf82e712cf2f7e8a500561b4d582e7c95f107f4b73be09a4e7"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.0/webclaw-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0eba7c8f2446b4f47b0dd7dec447162dcf861a364f62ebd5c0153117fa653f3d"
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
