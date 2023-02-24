class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.1.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.1.preview/Frosti-v3.1.preview-mac-arm64.tar.gz"
      sha256 "606a6d39041b1d323005d15272a22710eb94b2c06a30b372c63a48adf22c889a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.1.preview/Frosti-v3.1.preview-mac-x64.tar.gz"
      sha256 "f7970c2f9f6d5e3d8a07b75c9725da7efbf798bd2f00aa79083575dace7b7c05"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
