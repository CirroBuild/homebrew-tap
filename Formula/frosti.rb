class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.1.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.1.preview/Frosti-v1.1.preview-x64.tar.gz"
      sha256 "d03fda0b5971b18ab449f1dbeea1b78348071f1ce13190da5aefdbc0ac216c3c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.1.preview/Frosti-v1.1.preview-arm64.tar.gz"
      sha256 "629516393a572fc30abffb2cbfd5c46473d8c462fb0bf7b28ef5eabecb8bf5f0"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
