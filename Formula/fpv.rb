class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.9/fpv-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "0d0fb0ec39b493de6c06f23e66e460036a9b6b10b45ba5aa59709fbb098350bd"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.9/fpv-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "f9d704d5bb3a5d58a9f8204ed0385f948e5073f6a65991a4d294592e181a2864"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.9/fpv-v0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e0ad1cfefdf9ee279359ead34140199134761ea58099097bcebe9d2683c4860"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.9/fpv-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67d0dc278bb7396ac8e5d4e23a08c8400dbaecab440d2320c6ca45c639434a94"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
