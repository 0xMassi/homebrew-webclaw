class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.19/webclaw-v0.3.19-aarch64-apple-darwin.tar.gz"
      sha256 "23f86bc5af555e0db81e389d6b1828c9613f3fdee9e44a501d9adf9ec1c122c2"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.19/webclaw-v0.3.19-x86_64-apple-darwin.tar.gz"
      sha256 "aa72a772dbcd05d6bf71ab30ca435e988db1eb5857f54614eae1a239af929c40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.19/webclaw-v0.3.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c823276115badb5fa1a7fc91c920dbd7bc7a19a1800c779ceea128eae929eb04"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.19/webclaw-v0.3.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89e572fea72d870374d69566912513f6ade1b5514c90d9cfd3cbfc26ef0dd7cf"
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
