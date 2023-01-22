class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.7.preview/Frosti-v0.7.preview-x64.tar.gz"
      sha256 "548ffae0c1edf8e2f4c9fd83522dd7f2cb91e302946759a781a7f5cec9aa185b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.7.preview/Frosti-v0.7.preview-arm64.tar.gz"
      sha256 "428bc539ff6ebfd7dbc041423144d159d905eba27a866af2f3d865914f15f508"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
