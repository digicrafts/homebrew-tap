class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.11/fpv-v0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "9fc260730e1493a82f0293948a8ba650b388ae812d0d36d07ef0b035613810a6"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.11/fpv-v0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "dadac1ddc1fbe303e90586fced0f144d71962496a1bf323c7f7b307c5325f435"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.11/fpv-v0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d80ea64d73aad5899401af493faec28c80e700f73f73a65493a276ac31bbdb95"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.11/fpv-v0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a897b02b5c4af7bb271f9bca431d8e8962547d88482833aa737f8b606fdb9fb7"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
