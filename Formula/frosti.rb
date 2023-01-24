class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.9.preview/Frosti-v0.9.preview-x64.tar.gz"
      sha256 "5f65669bb93b083398bcdb5f523bdfe101aa56873a0713b596d3ed309b496fa0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.9.preview/Frosti-v0.9.preview-arm64.tar.gz"
      sha256 "e7ba47e341c301ed4c5cdae8795dfbce32b1eeae52d59390fd7641366dec95b5"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
