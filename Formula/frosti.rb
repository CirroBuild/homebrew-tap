class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0preview/Frosti-v0preview-arm64.tar.gz"
      sha256 "8ce992814d15e3bb6bebbb0ecc64014a3cd03ffc91ec8371d159a55e46b06fed"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0preview/Frosti-v0preview-x64.tar.gz"
      sha256 "1d4e38b33497e9b8c29b71ac3bf7c402eb8d495d345d0e384c492a4f5175489b"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
