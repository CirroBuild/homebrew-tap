class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "4.2.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.2.preview/Frosti-v4.2.preview-mac-arm64.tar.gz"
      sha256 "48560926ca73c4ca95e2acb7d1e5bfcd18fc94305c8fc5ba5752f793616f4c49"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.2.preview/Frosti-v4.2.preview-mac-x64.tar.gz"
      sha256 "6fa5a350d6192346d27ff2e7618c8f5de05c72738ec8e9e11a2ebfcd94083a7d"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
