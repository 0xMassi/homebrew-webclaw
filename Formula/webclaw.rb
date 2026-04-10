class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.11/webclaw-v0.3.11-aarch64-apple-darwin.tar.gz"
      sha256 "44ec11e12d3ef6ee1057c0b1deffe19dc083a3ccd687cd9557090a2b0aafaa0b"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.11/webclaw-v0.3.11-x86_64-apple-darwin.tar.gz"
      sha256 "ed0abaaf07ec3c88f13b762a64028b8b3203dcab0db4d82dd4a6bec1da99a8c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.11/webclaw-v0.3.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4eb3fe6514d46288791f5bd46975dc5dfaf03d2dce6100b1c4e2bc82a6ad4233"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.11/webclaw-v0.3.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "766360af408e909da599e5f64f274006c2d364e8d7748e121287761a6cbc83fd"
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
