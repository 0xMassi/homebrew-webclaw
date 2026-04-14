class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.12/webclaw-v0.3.12-aarch64-apple-darwin.tar.gz"
      sha256 "95b8905b07b29c090e0c1e60b9639b74ac93907a54745ffb847a73929420052a"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.12/webclaw-v0.3.12-x86_64-apple-darwin.tar.gz"
      sha256 "4f72ea4d89aaeb56183a054fb9ed4a9dfe973842127f46129cf959496c292d89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.12/webclaw-v0.3.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f94413771e526f83401e0a900f2a37424f5d301da8f0961760f0a99767c2d0b"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.12/webclaw-v0.3.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "585d8111d0a3e338744f1e1bea6436c4671f15bcf23f94cc57fa5a2efdf983a8"
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
