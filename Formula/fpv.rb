class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.2/fpv-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "1cc8f5c03a09b8ce55608a8e1df9aafd83e037264d3503fec47b70757fa47bc2"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.2/fpv-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "bf3560eba811a4486a4e5e8d802f998e1c780fff2baaedaa21100e73adc5e27d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.2/fpv-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4760291d270c67187d057bdd307e171d7e8ddd93c5ccad07a430a9a43bf3cad8"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.2/fpv-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df6ae22e6c771851193f9c442c8eac677da91eb05972181cf893941ae17dcb18"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
