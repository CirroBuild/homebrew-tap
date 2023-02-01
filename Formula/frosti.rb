class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.5.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.5.preview/Frosti-v1.5.preview-x64.tar.gz"
      sha256 "22ef1f6294a014d273c69c3c978416a4e7c25a3b3bf4e0dc1710ab865a9a6c45"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.5.preview/Frosti-v1.5.preview-arm64.tar.gz"
      sha256 "35d5bc0185baea4b9f472c676e56874218737293c162adb4b4947ca38266a606"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
