class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.53.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.53.preview/Frosti-v2.53.preview-mac-arm64.tar.gz"
      sha256 "ab419aa7209514233e6854d163d8744c36b0c186cfb8f6e73e313b4e610c6aaf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.53.preview/Frosti-v2.53.preview-mac-x64.tar.gz"
      sha256 "79ffe25394f37ee4d4139e3990ce0cd406fa87aa5e4ced1880062a64911d7712"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
