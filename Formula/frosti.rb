class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.0.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.0.preview/Frosti-v3.0.preview-mac-arm64.tar.gz"
      sha256 "ec165af17a37d8e49bbc0761c5762a8c6efa17d521d401ce44ba70743f8d7ed8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.0.preview/Frosti-v3.0.preview-mac-x64.tar.gz"
      sha256 "6532e7333c487065db692c9ccde8555297d02e2ed6f326f620bbc6c8d5eef67d"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
