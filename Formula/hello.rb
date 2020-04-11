class Hello < Formula
  desc("A trivial program")
  homepage("https://github.com/easoncxz/hello")
  url("https://github.com/easoncxz/hello/archive/v0.0.16.tar.gz")
  sha256("aa9b1ed5a87ce8d53baf27f989a0f7b5ad345a805937ea0df4e76a37bbe21894")
  depends_on("gcc@9" => :build)
  bottle do
    cellar(:any_skip_relocation)
    root_url("https://dl.bintray.com/easoncxz/homebrew-bottles")
    sha256("88e9f880aaa0339585cdcda0fe7e1329fe86098479a49ad7717e0f7fff6cc538" => :high_sierra)
    sha256("37ff81b36f43d3d27296934e0cb32f4f27fb39cab12f798cc3ae23f0c5f2aabe" => :catalina)
  end
  def install
    system("./build.sh")
    bin.install("hello-easoncxz")
  end
  test do
    system("hello-easoncxz")
  end
end