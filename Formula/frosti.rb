class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.7.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.7.preview/Frosti-v3.7.preview-mac-arm64.tar.gz"
      sha256 "84b78e98e15f5162f20d4f96e027d39071c8a1ba4a2fada5494f7c6b7514c1eb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.7.preview/Frosti-v3.7.preview-mac-x64.tar.gz"
      sha256 "d176edece4c62861b93634a64fd6af127ae7c49860b2f3270552d02cf02e9bbd"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
