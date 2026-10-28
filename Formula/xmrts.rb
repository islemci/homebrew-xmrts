class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.4/xmrts-macos-arm64.tar.gz"
      sha256 "c4ad039fc3df0c99cfacc993cde33c863ed70423eb350b4d5ed9e2e27fbe2ebf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.4/xmrts-linux-x86_64.tar.gz"
      sha256 "7208a1816e4445fcf7a4e56495fec618ac3b7cb6451e1c7efac240be964e4078"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
