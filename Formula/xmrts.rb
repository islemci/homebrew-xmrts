class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.1/xmrts-macos-arm64.tar.gz"
      sha256 "16656cc021947de2194b3486be85c2a6ff231024c5cf7c372a7a233ffbd4bbea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.1/xmrts-linux-x86_64.tar.gz"
      sha256 "288da46eccfe1e6a4873558f973c30697f884f2cba504d8aa085660cc11c8ed2"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
