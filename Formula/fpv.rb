class Fpv < Formula
  desc "Terminal file tree preview tool written in Rust"
  homepage "https://github.com/digicrafts/fpv"

  on_macos do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.10/fpv-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "a11750dc5997bdd17f6345b75e8bf7e6225c5ca30c8707294ca527f08bf06eaf"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.10/fpv-v0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "6a58771abbb4ae7ca5ddd54caa80d4d304ac06bd35b08272e253af74cb94cda7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.10/fpv-v0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "180fcd7f65aff87be8ef8aa9a055c95ec1d1cc69eef55a049b180491022c7fcd"
    end

    on_intel do
      url "https://github.com/digicrafts/fpv/releases/download/v0.1.10/fpv-v0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5cb8d4c828f1afa41f681928fb2b36d73da91318cad284bfa154776237a944ba"
    end
  end

  def install
    bin.install Dir["*/fpv"].first || "fpv"
  end
end
