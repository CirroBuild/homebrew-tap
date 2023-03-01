class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.3.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.3.preview/Frosti-v3.3.preview-mac-arm64.tar.gz"
      sha256 "678e0170e1d7c559c669272bbff1a8e9678bf45aaedad6d67ba1e6b4f54dde0d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.3.preview/Frosti-v3.3.preview-mac-x64.tar.gz"
      sha256 "fd4fe1ab854d3d9f9cc190fb60b03951b18bf3d31efd93cc5d84ebe68af57b25"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
