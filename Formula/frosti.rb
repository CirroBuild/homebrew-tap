class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.4.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.4.preview/Frosti-v3.4.preview-mac-arm64.tar.gz"
      sha256 "24d26080cb511a7280fa6f536eef148cb5e6ac5cd187620faaf186b2f4c209e7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.4.preview/Frosti-v3.4.preview-mac-x64.tar.gz"
      sha256 "5eb94fef4d96cc9f84795260e19f7b10ab8f6eaca609c2351b2dac88ca92976c"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
