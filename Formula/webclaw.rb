class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.10/webclaw-v0.3.10-aarch64-apple-darwin.tar.gz"
      sha256 "09c5ec4fb62a6f5cd72cd35a0936627bba7e1179bae0c74a8407cee1ed9224c2"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.10/webclaw-v0.3.10-x86_64-apple-darwin.tar.gz"
      sha256 "d6cd428782dcaaa1585e8957fd0926a89878b2b5bcf85fae69681e87874658f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.10/webclaw-v0.3.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3de3ceee91339f1f98aca0e701f077e9b41ea087ac9705c2b3769da596653ff"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.10/webclaw-v0.3.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e39ba8be189c3bd1b95ed69cc699d804a89d5241f4fa2e5c20d3eff83e5f9dfb"
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
