class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "2.0.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.0.preview/Frosti-v2.0.preview-x64.tar.gz"
      sha256 "5cead52a8e87dc76e3893b4cb0c9cd487a8b4d123827163d44dfc8d000d19a89"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v2.0.preview/Frosti-v2.0.preview-arm64.tar.gz"
      sha256 "75b01b84d3b9284e913285d5dbd7a52e6db4d3466d42bcb4485f5f11d64c9110"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
