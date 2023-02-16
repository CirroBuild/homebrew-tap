class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.1.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.1.preview/Frosti-v2.1.preview-x64.tar.gz"
      sha256 "fd1969e4b3b29077fae89e9a939c571a72400ce464c8937b2553a4ee28f96dee"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.1.preview/Frosti-v2.1.preview-arm64.tar.gz"
      sha256 "019fc387872b65b2a58c06ed98fca56c99621d2112ec18c63dd425849a639eab"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
