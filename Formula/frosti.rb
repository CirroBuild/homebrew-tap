class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.52.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.52.preview/Frosti-v2.52.preview-mac-arm64.tar.gz"
      sha256 "2bdad2207c6affbe7281ae130295ded1ed452867ffa372571ae03f5a73260440"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.52.preview/Frosti-v2.52.preview-mac-x64.tar.gz"
      sha256 "e921f340dab16bf3b25fa44c66d72e00acd182375e491f6fc67a84307e73110d"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
