class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.8.preview/Frosti-v0.8.preview-x64.tar.gz"
      sha256 "fdb4966aa2a2273d6602952fb13acf4a609180a3264652b32aae1be328e130ed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.8.preview/Frosti-v0.8.preview-arm64.tar.gz"
      sha256 "b17e5bdf53c3c6c8072ada33d4da6dc48304d560a0afab671a35a2507a93af3e"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
