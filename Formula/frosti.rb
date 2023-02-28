class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.2.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.2.preview/Frosti-v3.2.preview-mac-arm64.tar.gz"
      sha256 "c395e07197877b87f1462ca4e8cf090c8803f115fbed218f78018d80f1caf911"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.2.preview/Frosti-v3.2.preview-mac-x64.tar.gz"
      sha256 "1e546f4d50cae0d5b1c3fcd9c11393621fa6d970f605430b5e8b3ffc4b660cb2"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
