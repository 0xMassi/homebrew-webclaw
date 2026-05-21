class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "d36753ee41c60c4846cf7cf9fdfb6e04c9e7afca70786ffd25e78331134cb82f"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "824c6de6af6db3f2af59a046ca857767752279674dc7b4753f5e34d34f80b4d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "863223ef111398ad90356958f5c65152df4a779bad0555cd2dc081584847f835"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1354f5b27e95d8159b4934fb277a627b2f190f92d5ebe95b82c7c40d13d6e38"
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
