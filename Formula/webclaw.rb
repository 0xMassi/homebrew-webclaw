class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.17/webclaw-v0.3.17-aarch64-apple-darwin.tar.gz"
      sha256 "8b3518e7a3c7a4aff445194fcd40c971f1b2f7a48104922f34ed8a303fc7ec1b"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.17/webclaw-v0.3.17-x86_64-apple-darwin.tar.gz"
      sha256 "5bc23648e31de7dd254ae42bff0e0bda3a8a72f8671eb69796d53be2bef2d331"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.17/webclaw-v0.3.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a771791e286bb00c6f66817e882317a9cd0a5f366f4822c2b3da5b8b6c245ed1"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.17/webclaw-v0.3.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea599aff64439209cf412be243ceb84a79f028b1c58acbb3dc8160d98d76e80c"
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
