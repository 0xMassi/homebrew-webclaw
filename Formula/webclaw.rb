class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "1a078dddaa5f1c552bf4cda7f38924a9f6d77a68b2a272604d37410036ff0beb"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "aaa45b75c56eb4fdf24544589a9008636ad09ebe5fe6367ee7944db29a7434c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29a04ea538bd38cca93b40d966f5721eb18041eaf924c94800b43980c2752306"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d302198208c84b62ba6ba029619d3741bedea92f4acaf644c369dccb80333e2"
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
