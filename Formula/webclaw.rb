class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "MIT"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.1.3/webclaw-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "dbc99162ecc0b87b438d6f541fa8f5643e3f9ddfb86d1a55ced4230fa173ae4b"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d7d16fb21c0981e5a727fe7b1de4158890f41aa2476dadcbbcdd451b28e02e95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9228ef6a6288e77127f6ebe005c9c0c12a239582e153ec72057ed2eba409f59d"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v#{version}/webclaw-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "710c8718582c26bc87bdd97890acbd6090f95ec3bf0df74296aa9d9155360e7f"
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
