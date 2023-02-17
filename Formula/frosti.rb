class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.51.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.51.preview/Frosti-v2.51.preview-mac-arm64.tar.gz"
      sha256 "1f4f8ddcd6172646dab08ca2b2c1113b53f353e0021468e33d2e8b226ac92366"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.51.preview/Frosti-v2.51.preview-mac-x64.tar.gz"
      sha256 "d10bfdf2020085c3350786c03c37f09bc14899bae66a8e1ed9e361ceaa35fc85"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
