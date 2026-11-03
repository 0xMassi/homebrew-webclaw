class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0-only"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.1/webclaw-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "57abd7b7d8332fa11bb4b0661c711ac40c3d5d1b2c4ff249acfb2224080d3a83"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.1/webclaw-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "a7bfcb13667a3c2977e5fb1f1e001c66ac7bc016c7ef3534af5bd72a2b81f351"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.1/webclaw-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f699b14e7b4f6aa277521e0fd313f46e6ffda1f081145b35691f0641137d856c"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.1/webclaw-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "507fb36ea9b5df2047bbdbcaa0654cfa8159197b5cf87ab3a8a08d6fd4f86ef3"
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
