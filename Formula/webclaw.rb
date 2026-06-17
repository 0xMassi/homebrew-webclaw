class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.13/webclaw-v0.6.13-aarch64-apple-darwin.tar.gz"
      sha256 "da16e9467e5eec0bd3435d5ac6208d9041678c685a88154c5af7c2171ef7ca73"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.13/webclaw-v0.6.13-x86_64-apple-darwin.tar.gz"
      sha256 "355cdcc6fc73cd33b80084a4a1cdd3adf724d40b85818be25780bc7d2a7456cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.13/webclaw-v0.6.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce40c1cf4af1bd01528f7cb627e4bdc4d0e2b3dbd73debfa13e450d677912b62"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.13/webclaw-v0.6.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c35f21a6cb165abf4b9a8bcf23489721465b025b52bdf6afb5a06193fd898da9"
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
