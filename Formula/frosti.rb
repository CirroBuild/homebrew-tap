class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.3.preview/Frosti-v0.3preview-x64.tar.gz"
      sha256 "e57e076d6a30d17586dc2feeecf1e0d5a35aff0d7a76260243084bb5a6970622"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.3.preview/Frosti-v0.3.preview-arm64.tar.gz"
      sha256 "ff6e74d2ed26720a07ee975382e66784cc361a1b4cb304c873a2eb70fc17f8c6"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
