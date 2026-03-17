class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.12/fpv-v0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "146ff309cd5fc1b87b50a92015495eface50d67cb223ecabcd4c7699856d36d3"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.12/fpv-v0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "53c59a751263803093800efae569bca8dc260d4cdb34a00ac8fd837fe1026fd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.12/fpv-v0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f3d1b056664f67b04f3c8088a1ad8294b6bfdd59347b92fa8607524cddc2d2d"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.12/fpv-v0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd5302d9385a0194c7500737cd14a6f60d8b05f182b920f178782cb759bae362"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
