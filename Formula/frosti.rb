class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.6.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.6.preview/Frosti-v1.6.preview-x64.tar.gz"
      sha256 "0043d8adb816e569574585303c856ad590569da0c3f96b097f3d697077ce6d66"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.6.preview/Frosti-v1.6.preview-arm64.tar.gz"
      sha256 "ffdb089c5f33a40e7160f26b6a0636be227dc87d294e2a7f938c648d9225a897"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
