class Frosti < Formula
  desc "Frosti Test"
  homepage "https://fearofgod.com"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.6.preview/Frosti-v0.6.preview-x64.tar.gz"
      sha256 "fca963a25b0a0890871cdf08236cab9315ffcd4f494e3affa2a7bec7726d7459"
    end
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v0.6.preview/Frosti-v0.6.preview-arm64.tar.gz"
      sha256 "c3ca3926b025e77d8edf520fa8dc0f7059d8fb4451cf9e82772788f7a41156ec"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
