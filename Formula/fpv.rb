class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.1/fpv-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "a4643e6169be03f690c197603393e62089f572f6a57a10c1900fb467944699b6"
    else
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.1/fpv-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "2478df5cba2b3ea7d42126d4716094d6107342104a93c488df99d25440c12053"
    end
  end

  on_linux do
    url "https://github.com/digicrafts/fpv/releases/download/v0.1.1/fpv-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6c5a70c0af067f263657edec68c4d62676eab0d556e55e84d77263dda0c6875"
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
