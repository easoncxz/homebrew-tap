class HelloHomebrewPackaging < Formula
  desc("A program to demonstrate Homebrew packaging")
  homepage("https://github.com/easoncxz/hello-homebrew-packaging")
  url("https://github.com/easoncxz/hello-homebrew-packaging/archive/v0.0.3.tar.gz")
  sha256("ba80ac7b239946c6d27c7632d5376a65ff08f25d6ec52aafe47f860fa9885e17")
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