class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.3/fpv-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "0dc3691d8bd92fabcd2f08212db4d857bcc38f88c2787fe4760ac62eeb851538"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.3/fpv-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "ea79c3528edc0f9c7b258e690299a80892a67a7a7afc35666f46d4a89c4185f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.3/fpv-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21d2d3a50d5ce7d0768d478d74ceac13cd30cecb54877eba3477ca1b851dd36a"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.3/fpv-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cb4a306595f62fa3dfc4a014c40e672ebf1af52618c91905b66e8e0e4f9100c"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
