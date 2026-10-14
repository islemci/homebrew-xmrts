class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.2.1/xmrts-macos-arm64.tar.gz"
      sha256 "10c0d3861c647cc37b630c9105b5af9c4e19b0957feb360317a882a75006766d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.2.1/xmrts-linux-x86_64.tar.gz"
      sha256 "c07969a622a97c2240dc9f0be93f4b5a2e3627624fd289d84ed6b6de44e00486"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
