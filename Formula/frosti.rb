class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.2.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.3.preview/Frosti-v1.3.preview-x64.tar.gz"
      sha256 "9129e6f0c116a031e0428d424c791d888df0da56a9f219bfaabe289add4b93ee"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.3.preview/Frosti-v1.3.preview-arm64.tar.gz"
      sha256 "36ddcb47583bf4b0bceb8cd1515f5b64e61065f0bb18ef19e8bc94ceb8206573"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
