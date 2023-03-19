class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.6.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.6.preview/Frosti-v3.6.preview-mac-arm64.tar.gz"
      sha256 "4146367ecc5df6f0a53543c31e593988247236631188b82bb879a63a6376fdd9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.6.preview/Frosti-v3.6.preview-mac-x64.tar.gz"
      sha256 "3084831e0b8986b8273d12083e7ade486bdc5cb804aca6e5d66e7fc5f7b0b03c"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
