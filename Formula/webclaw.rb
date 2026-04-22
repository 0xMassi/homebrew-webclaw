class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.3/webclaw-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "ee5f121736cef052d54bbdbb0f016814ee31610060fd0582051fe45a2b49b240"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.3/webclaw-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "763fac416817c74541de91157e778cef01d3e1dcbb9304056909b9d5f2ad75d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.3/webclaw-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f2270f323bdcc98ae840e016eeb995e06d7c3a84a7fc16a2fc4560b8a8183c0"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.3/webclaw-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7254a2e5eea0f333afc3eed9e5a02166db368862286aa689ed80ac1e8c7c924"
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
