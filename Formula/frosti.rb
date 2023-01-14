class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.4.preview/Frosti-v0.4preview-x64.tar.gz"
      sha256 "a0ba465e125ff7b1444577e131c06de8d7f0c4b8141e105a25e8e42347c34df8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.4.preview/Frosti-v0.4.preview-arm64.tar.gz"
      sha256 "7af31e5da9f66ee46898ce16d5c5d95f2bc689c4725e3df75290efdffdfd3ed4"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
