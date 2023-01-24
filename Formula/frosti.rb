class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.0.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.0.preview/Frosti-v1.0.preview-x64.tar.gz"
      sha256 "c96c2c1decd974dcf1be18ca3cd53465b91b60764e51d403c616e3c05b3974fd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.0.preview/Frosti-v1.0.preview-arm64.tar.gz"
      sha256 "0b200db90ee311c96d2e60c42605519efb791be273d4d5e3ad40efe9d81240db"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
