class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.8/fpv-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "38f1dc36916c7c93024995002aaf872fb1c0eed714ac302fa9a8c72ff848a773"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.8/fpv-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "f0d2e031fb18231f8d818e13dbf1198efa22da1c0b170458549ba367831accae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.8/fpv-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "174b7c09d17d76537574c62676e832cdbe89987db58b2be4dc681e8f82a8235a"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.8/fpv-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd453a1d88b3710718f9e6d15f16b05e3bacd962df02eefa83257644a6160e47"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
