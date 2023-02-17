class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.5.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.5.preview/Frosti-v2.5.preview-mac-arm64.tar.gz"
      sha256 "677001e0afa9c403c163010b2c52a4f57cdd5be5515af5807b6b622b75a7326d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.5.preview/Frosti-v2.5.preview-mac-x64.tar.gz"
      sha256 "b4f946ca94137c97ca836b1aca1e08e95dca9116bbfa40973a9a0503e5b1dcc9"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
