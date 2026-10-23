class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.3/xmrts-macos-arm64.tar.gz"
      sha256 "09667f621d785734bac76a16fc6497c8b7f6f357a2d5774dd37c76d5055217cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.3/xmrts-linux-x86_64.tar.gz"
      sha256 "dca636445413736e3efb52f10a98c25f42b2fa0a77feff76220077fe2bcb3a42"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
