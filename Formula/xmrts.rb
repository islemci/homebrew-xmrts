class Xmrts < Formula
  desc "Self-sovereign file timestamping on Monero"
  homepage "https://github.com/islemci/xmrts"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.0/xmrts-macos-arm64.tar.gz"
      sha256 "9bb9b60797db0c6bd112d18fde90e28e344db4bf5b1d970249c4d7486d7bb7b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/islemci/xmrts/releases/download/v0.3.0/xmrts-linux-x86_64.tar.gz"
      sha256 "0e71dfff32ab0ba79a15c7852c389a05529cde1bee20b98fdbddedb6e4d035e3"
    end
  end

  def install
    bin.install "xmrts", "monero-wallet-rpc"
  end

  test do
    assert_match "xmrts #{version}", shell_output("#{bin}/xmrts --version")
  end
end
