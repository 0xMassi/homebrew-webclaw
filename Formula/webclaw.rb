class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.7/webclaw-v0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "eafc53697ae677364c4f71c482735d6015d78b32f098d6131eea39c0c6084cb1"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.7/webclaw-v0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "2f7363f297aff04a6f25bec4f9ed260c24d3a50b52e06554251e9c74eb99faae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.7/webclaw-v0.6.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a3e883526c07bb28312cc6d71e7d81099a98e42d051f32035ee54ff2762a02c"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.7/webclaw-v0.6.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5224fe3d01b8b82ba27511a584b125af6e0d73f7551b7b8e91eae0848b3cb4a"
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
