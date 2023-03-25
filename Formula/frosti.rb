class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "4.21.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.21.preview/Frosti-v4.21.preview-mac-arm64.tar.gz"
      sha256 "3d98f8f2e156c6813826fd6e787105a033f8e8699726273d6da09c1bd2050bf5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.21.preview/Frosti-v4.21.preview-mac-x64.tar.gz"
      sha256 "63c336ef95faa88077242006d6ea923d0cf20e6d1ef1e6e2ce2f79c478b7f69a"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
