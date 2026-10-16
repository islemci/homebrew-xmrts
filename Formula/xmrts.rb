class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.2/xmrts-macos-arm64.tar.gz"
      sha256 "de9696337b48d07dd2b41d59795fb0ae2aff2d25f62f1953c3d4ef58b8a23831"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.2/xmrts-linux-x86_64.tar.gz"
      sha256 "aa997c99db73b0fe79e130b095b8793c4fa522da1e2c5df62dfffcbf119d5476"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
