class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.5/xmrts-macos-arm64.tar.gz"
      sha256 "c21346d24a1ab1e91e1ef1bcb3bc98024de681bdd266b06749caff79c695b900"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.5/xmrts-linux-x86_64.tar.gz"
      sha256 "24621cbd857027b65e2e80cd54200feefb3f5747eaa92424a35b94586ed36dd3"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
