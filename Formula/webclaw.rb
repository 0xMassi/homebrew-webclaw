class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "634d4aed77227a8dfa30b1b68f647398a3041a28b768e95f3bf08b7a6b1a4d76"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8558a9ac467b26686bc9136c05da9fe1816e5a999f00470e5c93423f60c160c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc9d4c31c59aef0a946753fee90386178d8d3ad22774223c57ed7d0ce6de0e97"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e42718bd062dcabacd775c2b9ceb3b1d595360d4d5acb3fd3822efbf42245a6"
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
