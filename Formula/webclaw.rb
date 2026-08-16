class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.20/webclaw-v0.6.20-aarch64-apple-darwin.tar.gz"
      sha256 "186f2327db4a02174a8c0d106d0954f952a1abfdce0da52b22d4eae5abe4719c"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.20/webclaw-v0.6.20-x86_64-apple-darwin.tar.gz"
      sha256 "7825d9052d7e4f1c059f03a0f89490a448f56ebbbb06c16aa1d4459688396c42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.20/webclaw-v0.6.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65d628fc26198e7dde8ef03e43aca264e314573839e372cdf1bdf674833c9e15"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.20/webclaw-v0.6.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6c8a4bcc2834edb64fd742bcfe32a04ca1c748704fa782bf8a92943cce21902"
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
