class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.0/webclaw-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c9929eb60e60d1a33c8f5772702ce9894cfc27d556112b59469fb5603355192"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.0/webclaw-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "3436934eae905cb582c98596e5c38161a278f2e8839eb036c19db977fd5d5fef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.0/webclaw-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9997781678dd5b36f96bc182787661f1550d2389c919139e367a0e7850c0885c"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.0/webclaw-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8087c8c7bc693fce17e671ddfe77519ae6d1b4d04a0cbb1e20bb3799b96e80ae"
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
