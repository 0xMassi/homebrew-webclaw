class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.8/webclaw-v0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "8e4a59a38e4a30cce9dda097fcb801a0aad21cfb9b101b57a8c7e23169a7d452"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.8/webclaw-v0.5.8-x86_64-apple-darwin.tar.gz"
      sha256 "7b608b2adf02216f3812897514697d21a15714a7fd4be131ee99eeac51e2d29e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.8/webclaw-v0.5.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "677a799a2b400044d113a984689eda90e578d0a1057eddf6f0c6c181af6853fa"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.8/webclaw-v0.5.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13db80286b11343d14e35b84913a3b74f5ff40433598d7f0efb5c5462590a5c3"
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
