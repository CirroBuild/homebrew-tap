class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.3.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.3.preview/Frosti-v2.3.preview-x64.tar.gz"
      sha256 "8e4b404de411f048459f5054f3f8bceb7b8641b7cdf0cce7a4daf4490c007cac"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.3.preview/Frosti-v2.3.preview-arm64.tar.gz"
      sha256 "02c574541104fb552498be6e8caf415c49e8ea53e625011a55b3063a7e41fd7b"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
