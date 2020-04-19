class HelloHomebrewPackaging < Formula
  desc("A program to demonstrate Homebrew packaging")
  homepage("https://github.com/easoncxz/hello-homebrew-packaging")
  url("https://github.com/easoncxz/hello-homebrew-packaging/archive/v0.0.2.tar.gz")
  sha256("eecb34aa22b796e971e9ae26203ade9c35494bb422c6bdc7eff531ee84484596")
  depends_on("gcc@9" => :build)
  bottle do
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    cellar(:any_skip_relocation)
    sha256("04716b943dba7ec68be2ca28fe11d3bcf3f86332022b77a5e53df64e4b2bfd56" => :high_sierra)
  end
  def install
    system("./build.sh")
    bin.install("bin/hello-homebrew-packaging")
  end
  test do
    system("hello-homebrew-packaging")
  end
end