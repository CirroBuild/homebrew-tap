class Fearofgod < Formula
  desc "FearofGod Test"
  homepage "https://fearofgod.com"
  url "https://github.com/CirroBuild/FoG/releases/download/v1.1.0/FGM.tar.gz"
  sha256 "84fd4fb16d2d59e5436d5942bfd578769944606546dbef0b04ade19dd84c8de4"
  license "MPL-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install 'FearofGod'
  end

  test do
    system "#{bin}/FearofGod version"
  end
end
