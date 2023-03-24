class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.8.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.8.preview/Frosti-v3.8.preview-mac-arm64.tar.gz"
      sha256 "c687f5a92440899fc360a9b5830955692a7f834216e05a1db634d5f4e4c312f9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.8.preview/Frosti-v3.8.preview-mac-x64.tar.gz"
      sha256 "e7168c8e8ca0f95f9e46b79b1c4a5ea58499266f3bdd153d6d08806292eaaab0"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
