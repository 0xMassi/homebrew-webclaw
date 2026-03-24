class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-aarch64-apple-darwin.tar.gz"
      # sha256 will be updated by CI on each release
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
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
