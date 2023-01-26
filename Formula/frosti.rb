class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.2.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.2.preview/Frosti-v1.2.preview-x64.tar.gz"
      sha256 "2725f8cda4162b75e7f4a8a1f72550095a556e9bda736080be3dfc59108f9647"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.2.preview/Frosti-v1.2.preview-arm64.tar.gz"
      sha256 "8087cee3500115d9ae2c1ba8403408a9064f6ca39105da84175d0d9a66c2b666"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
