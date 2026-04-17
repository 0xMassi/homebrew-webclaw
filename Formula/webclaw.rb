class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.18/webclaw-v0.3.18-aarch64-apple-darwin.tar.gz"
      sha256 "c51ab72c97fe53fb997cc0d0950f8d899e628a5bca0df2a0a4dcdcd4a1f6882f"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.18/webclaw-v0.3.18-x86_64-apple-darwin.tar.gz"
      sha256 "4fec63fb8fc22ee65a7ca9b2c5e7eca841ebabc07deb9b505052317630d900a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.18/webclaw-v0.3.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41ecef498be42c859a58a8821422a2eca5fcf5629bf9f037a2e476f080292171"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.18/webclaw-v0.3.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba5be8ec75f96fba436233856a01d094e497670d8e06d8dcc5043b21ce1d5c6a"
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
