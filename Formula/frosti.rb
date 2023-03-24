class Frosti < Formula
  desc "Frosti Test"
  homepage "https://frostibuild.com"
  version "4.0.preview"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.0.preview/Frosti-v4.0.preview-mac-arm64.tar.gz"
      sha256 "176f3afc36c5080f237da41a792b85fb58236fc5c84a0be98823d22fd03bacb3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/CirroBuild/FoG/releases/download/v4.0.preview/Frosti-v4.0.preview-mac-x64.tar.gz"
      sha256 "050b5fecca2333739f35150f588992dc52cb0be6fb3a42b91d85e5cba442be52"
    end
  end

  def install
    bin.install 'Frosti'
  end

  test do
    system "#{bin}/Frosti version"
  end
end
