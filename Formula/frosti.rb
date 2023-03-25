class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "4.22.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.22.preview/Frosti-v4.22.preview-mac-arm64.tar.gz"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.22.preview/Frosti-v4.22.preview-mac-x64.tar.gz"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
