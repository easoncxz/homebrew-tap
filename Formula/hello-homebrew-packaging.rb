class HelloHomebrewPackaging < Formula
  desc("A program to demonstrate Homebrew packaging")
  homepage("https://github.com/easoncxz/hello-homebrew-packaging")
  url("https://github.com/easoncxz/hello-homebrew-packaging/archive/v0.0.3.tar.gz")
  sha256("11afae7d62fc8b6ffd0580cb90c66f01f64d31de6ae03289a49eb1025b561cd8")
  depends_on("gcc@9" => :build)
  bottle do
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    cellar(:any_skip_relocation)
    sha256("040d71d9874b038d6bedfd9c490b32dbc93f41013cc505a270a6e22f735e1e91" => :catalina)
  end
  def install
    system("./build.sh")
    bin.install("bin/hello-homebrew-packaging")
  end
  test do
    system("hello-homebrew-packaging")
  end
end