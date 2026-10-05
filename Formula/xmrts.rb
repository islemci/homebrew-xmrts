class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.1/xmrts-macos-arm64.tar.gz"
      sha256 "f4026649f1e474ca1e8e7b96059b785751f715d9674bb18f70451eaa0fa7623c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.1.1/xmrts-linux-x86_64.tar.gz"
      sha256 "a25c65b2243837f439d530208a9592f5bbde13de67714bd688fb942fdc933ce9"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
