class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.0/fpv-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "84a8bdc8bfc4a3ce272cfbe6d74594c0a063a15d18d36dd986837b7d292eaca4"
    else
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.0/fpv-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6e07f6c2f45b61fc1539a000004fe05958e3fac847c97ba2efe0b30080c190ea"
    end
  end

  def install
    bin.install "fpv"
  end
end
