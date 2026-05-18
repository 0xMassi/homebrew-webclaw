class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.2/webclaw-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "308f736196972e67c19a1786009eeda903735a8d15b7fee5efc30b94ed73d306"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.2/webclaw-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "c18f52bbff75048a40f753042b20ef1d1097bfec4ddf34dea952f5b8dd074446"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.2/webclaw-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5409960c362c4beb8b9b7fb7276119acf9a901449fe4ae5d7eb219aa65f9e0b"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.2/webclaw-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96bb5a09443529bef28be11bb652567106776fe9411ba9d11aff9f86f03f6e3b"
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
