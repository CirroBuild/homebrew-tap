class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "1.8.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.8.preview/Frosti-v1.8.preview-x64.tar.gz"
      sha256 "4934a24cdbb905d350ff8f11f1e358bf9713e9c3d8618be2fa5f68c538d312d8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v1.8.preview/Frosti-v1.8.preview-arm64.tar.gz"
      sha256 "79ecd6a8807a07c547fb4e5610d86a7b6ab897524f3aae1a26a2f71a63c194ee"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
