class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "d22a6982a52bb58f8493224a88054657d135b756c5f911eab9f4624001eded6c"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "c94921266d18979d66b39f0537792f12d4b80270ced6905cd05ddccc475c0184"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bb72fde8fefa8ef404e4957173caadcb2647d6550862968608415efa594a4c3"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3ba03d69a7746bb50a6c1a5394e733bcd891eb9243a60286921d4a4020b8334"
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
