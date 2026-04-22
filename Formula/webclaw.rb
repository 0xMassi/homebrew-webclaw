class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.1/webclaw-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "ff34d93e90dd7e53d71fd57edbfd3d12031ec4262f33370abf1fb1f5a2c7ec32"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.1/webclaw-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "ce89e9783ccffe415a00d85eced34fef30966b57f8d6cea2dae52bf3735e75a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.1/webclaw-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "545f4542597856ce104235b3eb577352a420951bb5d9a84e7d53582f7c844831"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.1/webclaw-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86cbd0a8ba4c53ad98094b91b537f9a43d44c8a7d12a50715575a145b8e98bed"
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
