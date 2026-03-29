class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.0/webclaw-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "af4d1b6c72a1b39eabdc95eff73d126941d88b0811c79cf88c9e60167a613d35"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d8cb7d6002446c6a63e307d10e2a0e8ca66d78268b1fd665906e0849fd6d5ba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc373c1bc56dd6644fe059d1d85d31335996ac53876f24087304cdab6e51c0b1"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1716a4ed3737ef02448aa64fa2967f9a8de70753f707644ea558ef25e898ae35"
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
