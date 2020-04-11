class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.14.tar.gz")
  sha256("8c26796781f1e97d7e069de7cb880f68c5cfe043f1668fcd35bc0f0f4120bd31")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("e35d573feb3a1bc81208f00f30b2d98a9cd4420ce69d7fbf1aff076118c8c96e" => :catalina)
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end