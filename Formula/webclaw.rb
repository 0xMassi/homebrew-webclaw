class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.5/webclaw-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "698639e03754cd994eee6e9041b2a52b158a87059e1b3f71750d2d8cf7c54c56"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.5/webclaw-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "7a0cb056c0f95f51fe36f7891adfa869ae8b976995b83fb3d359e2141d0aa09c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.5/webclaw-v0.5.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "311b908630fc68519d08d32be639849cda1b15991ff17be9763f8cbca16eca0a"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.5/webclaw-v0.5.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6540f9b64337a6333acc7730c2be672c12f92b2259368df84166224da940510"
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
