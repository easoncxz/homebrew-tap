class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.15.tar.gz")
  sha256("38f83273d90a92ae0b6f8d6703d4e74f5ec53bb25d63da0748b47ed9c7bf15c5")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("81fdb34e5bb0cd469b3f4afeddeaca5ccdbdca27327c7de5f9077295f7dfffb6" => :catalina)
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end