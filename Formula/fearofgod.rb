class Fearofgod < Formula
  desc "FearofGod Test"
  homepage "https://fearofgod.com"
  url "https://github.com/CirroBuild/FoG/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "41f05f352a14f346971d1840df1b44b87aec736f9e9e3c4b679a88648bafb3ed"
  license "MPL-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install 'FearofGod'
  end

  test do
    system "#{bin}/FearofGod version"
  end
end
