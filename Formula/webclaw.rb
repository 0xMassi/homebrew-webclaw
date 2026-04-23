class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "4db4c18976294871a65804efa6925e6ddfff830d19c47ebf9e2958e3c61f119a"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "00b958945d2ee6499f49eb1bf57aee7afa2967cfaa01d46a5153cbf345dec412"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "848a6095b0713149b8f0bac388f8cf1aee3808e3b9aca4538d7edb40f9cab995"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a093939039045a76677dd5a79b855c9dacddfa9c2f48aaf2ac6ad0eadd6a3a73"
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
