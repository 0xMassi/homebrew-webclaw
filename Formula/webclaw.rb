class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.4.0/webclaw-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "86b36beff3ba3af1750736b70660adfce51db6478f4bb0eaececab7c9a7fecf3"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.4.0/webclaw-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e0e49f2bdd3db86317bb4df8bec3039c27d4d7c96a8515f02a5a1ccc902dd9aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.4.0/webclaw-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78a04a1f54f47bc4327f19509c81667345cd1837deb96b9bab98a5854f92f864"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.4.0/webclaw-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2fde8e370efb6ea9287c410fdb5c7803b48fab973ef674dc559ca801acffcd6"
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
