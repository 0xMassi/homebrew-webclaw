class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.12/webclaw-v0.6.12-aarch64-apple-darwin.tar.gz"
      sha256 "6b0cec2ea88f22fa4b5d5c9838d2d9d34cd97a75d55462ed6bb5029cdfad2246"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.12/webclaw-v0.6.12-x86_64-apple-darwin.tar.gz"
      sha256 "95bbe2b1336e29fadfa0ab7baeea8e118a969d0af76f828c3f55fdb4aae6cbb1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.12/webclaw-v0.6.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dcf17f2eb016edcf7fc352d8b9624a47cb619faa338ecdbf40c7ab209c9ad0f"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.12/webclaw-v0.6.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a025f8d80b1001da1f93c64b2081061ed5ccbb48cda224996c156df86f85441c"
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
