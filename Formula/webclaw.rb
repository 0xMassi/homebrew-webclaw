class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.9/webclaw-v0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "129a3d1cd00a8a73e82ff5651716f4f00fe753dafb604610ab93f1a19409d3fc"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.9/webclaw-v0.6.9-x86_64-apple-darwin.tar.gz"
      sha256 "ad64d8e146ae00a2ef85611467d23d0cade7d072502e91882e9ee4a1d5a6c05d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.9/webclaw-v0.6.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c38ad6176f707f72c65038608fac5e01ee8cbcce5a41cccfcf8e2db09fc9a045"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.9/webclaw-v0.6.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e12da01ad48db7a9ce240f9bce0737a8a657fc9266649bb82bdef0e501e658b2"
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
