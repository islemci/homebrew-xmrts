class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.2/xmrts-macos-arm64.tar.gz"
      sha256 "e97bcb3f3639fc1d79a7153e902691f34bb705e6ccf8217d17cd160066f6ca96"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.2/xmrts-linux-x86_64.tar.gz"
      sha256 "d2d6554a35a0ce621aca4b90a390c16bf89811fdbd88d63954960689686c4d73"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
