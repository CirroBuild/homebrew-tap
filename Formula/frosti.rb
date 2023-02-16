class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.9.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.9.preview/Frosti-v1.9.preview-x64.tar.gz"
      sha256 "f8450b46ec6391ebe74a7bdce10ea6ef56fee7b59a3c9efb674dc1626d5ec13a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.9.preview/Frosti-v1.9.preview-arm64.tar.gz"
      sha256 "17bea3601a701fc944737c45aee40a242afed5b86f0fc6d2ec96803cedbbe50b"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
