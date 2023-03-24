class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.9.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.9.preview/Frosti-v3.9.preview-mac-arm64.tar.gz"
      sha256 "e4c65eb562718645568f1d8c8f1ca542c546e2a3bbd5e7e8c96ea1d04277329b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.9.preview/Frosti-v3.9.preview-mac-x64.tar.gz"
      sha256 "0a33af7b1a8c12e9428e12c51b9543626e7fceffeafb0f8af045d274ac70e940"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
