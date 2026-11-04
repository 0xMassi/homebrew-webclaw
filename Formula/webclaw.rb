class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0-only"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.2/webclaw-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "79c617c914433a6fa2fce9612eb1c9cb39702e435d147dfe82c312beeddc4447"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.2/webclaw-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "f340522b21f146243e128804e1b84d4fbcc0e393b2acc5f1eadc3519e6e36e43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.2/webclaw-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e908d756a8ddfaf7b262d765cb88e5176dc2a2133ca45168a8aaadf6f677e173"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.7.2/webclaw-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcff7f51afcff29f70c27af9369e5c350a4b0b8facbc4ace52388e8a454d0d0b"
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
