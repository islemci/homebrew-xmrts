class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.3/xmrts-macos-arm64.tar.gz"
      sha256 "43e9478b85525c1c6e71c15a29ea9753dcb17f99736e42a789f41b196d34e68e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.3/xmrts-linux-x86_64.tar.gz"
      sha256 "ff6eb1eea98294d1fa169c3c50cc3321bc80db03bf3898641272b938f27ee763"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
