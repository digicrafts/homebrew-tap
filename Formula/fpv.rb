class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.6/fpv-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "cc8fee838ac7652bd904eb8ee61155d497e3557e7edd3c0eee6d2bef84aa445d"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.6/fpv-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "cf3401ef859e65abfa46f3d0269601c75eb517308ddb65f59c1e6e0f340afcf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.6/fpv-v0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d90e0879fa7dc3e178908d364ca5a20157c43e69414c33216094fb036cd8f42b"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.6/fpv-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6dd1529b07aafdecc62f48e9293f68eb3737f6f1b5867afe22a5baca8854b0eb"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
