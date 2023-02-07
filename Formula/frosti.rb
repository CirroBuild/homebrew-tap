class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.7.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.7.preview/Frosti-v1.7.preview-x64.tar.gz"
      sha256 "e61e616d3020eb03256b2a43d5db5f9b4a917c4a0812ba0e6e133a0b4a7b8490"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.7.preview/Frosti-v1.7.preview-arm64.tar.gz"
      sha256 "540bef08596fba94ddb62096bff6a9695e8bb5dc3e4eb1ca0cd7b5dbad3e4000"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
