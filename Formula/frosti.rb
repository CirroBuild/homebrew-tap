class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "4.1.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.1.preview/Frosti-v4.1.preview-mac-arm64.tar.gz"
      sha256 "0c93459800cf5174a18edf7378795d0265ab09e109e6b40421500dec982bb2e1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.1.preview/Frosti-v4.1.preview-mac-x64.tar.gz"
      sha256 "796479fd5eb912dc132073b42d31568c3636aa199fbecb427bd80af7e46ebfa8"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
