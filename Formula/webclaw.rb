class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.1/webclaw-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "7fd833a669977cf97472ea1d1f529ef77fc795b8dc9f48402abd606d5d084661"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.1/webclaw-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "440c4432c8f41815324e78274461b6f1ad6208ee1b6d03b2e445206803917627"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.1/webclaw-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8b4c3d9f5f959acbeb8302926d9f9f3f9d5e0b59671b3f1e35a1caf1772cda6"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.1/webclaw-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d0eaa14b85356759fea5d7e5de6ab7fee8ac8042b857e41d68482d2b75c558b"
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
