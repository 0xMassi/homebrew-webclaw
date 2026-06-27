class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.14/webclaw-v0.6.14-aarch64-apple-darwin.tar.gz"
      sha256 "d4af184422e411f1762ae38d94d57439607bbf61da3991c797e13502c66ac4fe"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.14/webclaw-v0.6.14-x86_64-apple-darwin.tar.gz"
      sha256 "0299163d10830e32950dcb9c4473a9c61a6215ccfa27732d49d06abe44bbf639"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.14/webclaw-v0.6.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54ff83beb29d0c257f6c322e279cae0fd0ea151ff6c7499a454c9dfdc495d0f0"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.14/webclaw-v0.6.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a16bb7d7335d938c7c9ccfdcfb392601fcc7b42e4e2e4f7757c4a150882584f5"
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
