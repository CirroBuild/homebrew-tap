class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.5.preview/Frosti-v0.5.preview-x64.tar.gz"
      sha256 "c959d4bdd16b66afe52b3f70f797c37dad058e65be2b6b7e494a163789832240"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.5.preview/Frosti-v0.5.preview-arm64.tar.gz"
      sha256 "d3ad724bf8d24642c698ea6a73888b193989df1135c6ceb9cc664f4f9f089d65"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
