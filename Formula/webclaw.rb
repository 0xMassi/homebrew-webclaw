class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.22/webclaw-v0.6.22-aarch64-apple-darwin.tar.gz"
      sha256 "c22d292550c00d57e1e23e83240ee400cf9bef5590f98b3c03e7b819b6c117b1"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.22/webclaw-v0.6.22-x86_64-apple-darwin.tar.gz"
      sha256 "6448c963b94359ca3bd171873a8cbf453025031b9bf2cccd87b08b2a15d93272"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.22/webclaw-v0.6.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "193a72ddc3d8e2eb2401a622e26f126d89f208d3d13a0a73cb94775a9d1f50d6"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.22/webclaw-v0.6.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ef787d9e0818ae3870736f3024bc3d934b96dab9b922771d68c5ae367b81b14"
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
