class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.2.0/xmrts-macos-arm64.tar.gz"
      sha256 "b01c3967afb1e8bfbd6df1400deff2d18140ae9dcb10337bf407cc4af351f134"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.2.0/xmrts-linux-x86_64.tar.gz"
      sha256 "31e26346cd3b85c3fba933cda8af7e2dc29b0a2d7acb0853a626cd8b6166cea2"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
