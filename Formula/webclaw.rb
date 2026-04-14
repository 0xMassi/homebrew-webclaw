class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.13/webclaw-v0.3.13-aarch64-apple-darwin.tar.gz"
      sha256 "3651611e5d2778bf430ee97c546360fcd907415e88b443b1c99005fe55ef3bdb"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.13/webclaw-v0.3.13-x86_64-apple-darwin.tar.gz"
      sha256 "4c191bec87d71a7fd7fa4fa9c2e1a47395a64f50a0ad48ecbde693ac9d22e431"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.13/webclaw-v0.3.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5349b094620bcc610733172a4277b73a43770b09426c97a5e973de3ba3adb948"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.13/webclaw-v0.3.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4238c9f3ef57e4eec12e22301232af16c6fd5c5052adaa26b63dcc97039c9611"
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
