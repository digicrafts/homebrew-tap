class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.5/fpv-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "5f30df303bdb4d32e89b1feb06f8aef6ea25b3f30295e309bac055748529c0fb"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.5/fpv-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "b449ac93e14c148a9d506fb15b357e155539225de6f825279fcf98ebd91b42cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.5/fpv-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9664d8acc98746a4b0be8a8401ebcbbcdbf5e922bc77bb96ec6ec5087776126"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.5/fpv-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d09a14f505d7308311b441689f7d717d33a6adede38a803cfc7825232509725c"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
