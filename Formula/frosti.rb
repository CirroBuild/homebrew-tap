class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "3.8.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.8.preview/Frosti-v3.8.preview-mac-arm64.tar.gz"
      sha256 "a66a362910337a6f6f8ae257b52b775bd38b6eb7d1c8a18a3868218e971170ee"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v3.8.preview/Frosti-v3.8.preview-mac-x64.tar.gz"
      sha256 "f99b4d18207ec4f783be1b2b61460a9f2a87df7c50b580f9728cdd02800e838a"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
