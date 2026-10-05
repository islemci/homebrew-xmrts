class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.0/xmrts-macos-arm64.tar.gz"
      sha256 "5fa125a97056c9e1069074cfdb6c4c6aa577caa4224e434b5ecee6faaf2319da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.0/xmrts-linux-x86_64.tar.gz"
      sha256 "3c695e0bef88fa77f8762b3387c049f134d9a6a1349b76f063f898a25633edb1"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
