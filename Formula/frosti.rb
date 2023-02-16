class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.2.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.2.preview/Frosti-v2.2.preview-x64.tar.gz"
      sha256 "80b5c92801e58dcd271338ec987dda6fe2f5667afc345c4190a811c491da5497"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.2.preview/Frosti-v2.2.preview-arm64.tar.gz"
      sha256 "87adee38fd24068184ce73142ea56c20e39f0d6bf2b8f61969c626e855035de6"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
