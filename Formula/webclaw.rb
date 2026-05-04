class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.7/webclaw-v0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "f5e843b95ba6fe91bfcc6d6c4507c77977fd53a6f0847e03322cd8379e6b5241"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.7/webclaw-v0.5.7-x86_64-apple-darwin.tar.gz"
      sha256 "5d04c7c62064324a40fa4faaf8e890d75d66200a69722fd5050004a749f99e69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.7/webclaw-v0.5.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "adc2f8760cd1cc1340b83de3db1b37fbbf8670715dcb7892473edcb9c1807852"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.7/webclaw-v0.5.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0874846c13367336ef61fc1859f1341944fc93c850ab1f29a185178a45d0c69"
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
