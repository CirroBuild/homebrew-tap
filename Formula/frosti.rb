class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.1.preview/Frosti-v0.1preview-x64.tar.gz"
      sha256 "3eabf96f55d910f496da1a35c8519b81e14de97fa31f255f98755aea7bdfc714"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.1.preview/Frosti-v0.1.preview-arm64.tar.gz"
      sha256 "57ebdf0a0fca8280ed46d0900169f6a8c61d08317fc7daeea12229891654b1a7"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
