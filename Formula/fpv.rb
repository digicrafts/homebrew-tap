class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.4/fpv-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "5f93cb7fd27f5ef8a6a7482b373386754dfd2a863db7b8822d09e9bbb6d5c6f4"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.4/fpv-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "4a1d36b43e050b1e63ee0bbed5e329d1c440d7a6650066345d778d66077f2aee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.4/fpv-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fb097146944f6aabf808fe76dc0fd7d34644d3fc023f4f39031e07d6c61e6b0"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.4/fpv-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc702e31f28329bbd054864d19ab16f80918f5794a5a137e2575bd2a8a6aa17d"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
