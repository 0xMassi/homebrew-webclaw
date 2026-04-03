class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.7/webclaw-v0.3.7-aarch64-apple-darwin.tar.gz"
      sha256 "81f3538984a02b6eb605a5e8256351ea5259dc478dcb9d4b574ea52e9ec372db"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.7/webclaw-v0.3.7-x86_64-apple-darwin.tar.gz"
      sha256 "a97835dc7b75d4ee2fb3d9a9ba084d03dff872f8ae12c0391bf3171febdabadc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.7/webclaw-v0.3.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79b4d7c0c45d62fd0a339ba29ebfe8bdafb4e83dfed2e3440aeada18e357c9b7"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.7/webclaw-v0.3.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10b8bf1965d57e0a8d6ddce95b29ab79389592ca96db1e6fc3f28b28a1b9709f"
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
