class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.7/fpv-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "5842ef924cf2e2448d135d332b3e71434bd9631d08ce7a40cbb0643b2955b914"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.7/fpv-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "5b554efdb663fcbdd9f11f28fe2af10e74d67815a3f16d0a5ae9b252fd34f2a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.7/fpv-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bbc6bb4d6bfdd6c641663cf835fbff2bc70c11ca4d1f396b3268e3930186a87"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.7/fpv-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1401b20efb053660ad9a4e96f8bd99f24f4865712613604a25a36644f739f98"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
