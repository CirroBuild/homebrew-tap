class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.5.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.5.preview/Frosti-v3.5.preview-mac-arm64.tar.gz"
      sha256 "8845b23ab051abd68ca16f6b0fcd64b1fdd89e5b03426753c38bc3818b16f3ef"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.5.preview/Frosti-v3.5.preview-mac-x64.tar.gz"
      sha256 "c59eb99105235862b25490a417bb358976dc552bfb75073114cacef8ac7a7718"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
