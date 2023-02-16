class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.4.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.4.preview/Frosti-v2.4.preview-mac-arm64.tar.gz"
      sha256 "2839f9ae0138f2db47355d41718a4b51e064aea9f206d8ec7ec32feb16a16048"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.4.preview/Frosti-v2.4.preview-mac-x64.tar.gz"
      sha256 "b9ff2794f320b4c5011985753fddbcc32440408ac2059304ff74b650eeb222a9"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.4.preview/Frosti-v2.4.preview-linux-arm64.tar.gz"
      sha256 "966edd8cdbbf8e5dc8992b7166274883c8ff57a9172435e10ab9528012bcb09a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.4.preview/Frosti-v2.4.preview-linux-x64.tar.gz"
      sha256 "91c26efd8af6768faa65809dad852482200ae0fe012993b5ca1d96606dd806eb"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
