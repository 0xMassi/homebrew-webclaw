class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.9/webclaw-v0.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "cf77b3ee28d8cd56b05afa72e345b1c15b91fd9499acc9edbb944f0f9cd77b62"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.9/webclaw-v0.5.9-x86_64-apple-darwin.tar.gz"
      sha256 "c6d3260b1cac1b2d0414aba1d5f1cddddc21a1362cef9943b9c7dd87868b7410"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.9/webclaw-v0.5.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba1723d6eb781a8bcc4ab4be9b6ce44407ca6b4b53c53831258bc6f5a9145793"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.9/webclaw-v0.5.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d796874dc2c3fbdf6e2eee580ec0b1ba98f5c58dd09a44fd254a55ffab8f92b"
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
